<?php

namespace oldspice;

use oldspice\Database;
use oldspice\Session;
use oldspice\Query;
use \Exception;

class WishList extends Database {

  public function __construct() {
    parent::__construct();
  }

  public function addItem( $product_id ) {
    // check if user is authenticated
    if ( Session::get('auth') == false ) {
      return false;
    }
    else {
      $account_id = Session::get('auth');
      // see if the user already has a wishlist
      // we run the query using the query class
      $query = "SELECT wishlist_id FROM wishlist WHERE account_id= UNHEX( ? )";
      $query_class = new Query( $query );
      $result = $query_class -> execute( array($account_id) );

      if( count($result['data']) == 0 ) {
        // the user does not have a wishlist in database
        // create a new wishlist
        $wishlist_id = $this -> createWishList( $account_id );
      }
      else {
        // the user has a wishlist in database
        $wishlist_id = $result['data'][0]['wishlist_id'];
      }
      // insert the item into the wishlist_item table
      $add_query = "
      INSERT INTO 
      wishlist_item 
      (wishlist_id,product_id,created)
      VALUES
      ( ?, ?, NOW() )
      ";
      $statement = $this -> connection -> prepare( $add_query );
      $statement -> bind_param( 'ii', $wishlist_id, $product_id );
      $statement -> execute();

      if( $this -> connection -> errno == '1062' ) {
        // item is already in list
        return false;
      }
      else {
        return true;
      }
    }
  }

  private function createWishList( $account_id ) {
    $query = "
    INSERT INTO 
    wishlist 
    ( account_id, created, active )
    VALUES 
    ( UNHEX(?) , NOW(), 1 )";

    $statement = $this -> connection -> prepare( $query );
    $statement -> bind_param('s', $account_id);
    $statement -> execute();
    // return the wishlist id
    return $this -> connection -> insert_id;
  }

  public function getWishListTotal() {
    if( Session::get('auth') == false ) {
      return false;
    }
    else{
      // get user's account id
      $account_id = Session::get('auth');
      // get the user's wishlist_id
      $wish_query = "SELECT wishlist_id FROM wishlist WHERE account_id = UNHEX(?) ";
      $q = new Query( $wish_query );
      $params = array($account_id);
      $result = $q -> execute( $params );
      if ( isset($result['data']) ) {
        $wishlist_id = $result['data'][0]['wishlist_id'];
        // get the user's total items in wishlist
        $items_query = "SELECT COUNT(product_id) AS total FROM wishlist_item WHERE wishlist_id= ? ";
        $wq = new Query( $items_query );
        $wishlist_params = array($wishlist_id);
        $result = $wq -> execute( $wishlist_params );
        $total = $result['data'][0]['total'];
      }
      else {
        $total = 0;
      }
      return $total;
    }
  }
  // get wishlist items
  public function getWishListItems() {

  }

}
?>
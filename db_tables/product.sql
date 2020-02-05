-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 05, 2020 at 07:52 AM
-- Server version: 5.7.29-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `star_data`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `onspecial` tinyint(1) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `name`, `description`, `price`, `onspecial`, `active`, `created`, `modified`) VALUES
(1, 'Reflector ', 'Great telescope for Beginner\r\nAdjustable AZ Mount Aluminium Tripod\r\nHandy 5x24 Finderscope for Easy Focusing\r\nPortable and Easy to Use\r\nIdeal for Planets and Nebulae Observation\r\n5-Year Limited Warranty', '343.73', 0, 1, '2017-01-23 12:17:33', '2017-01-23 12:17:33'),
(2, 'Porro Binocular', 'InstaFocus system\r\nCompactness & Powerful\r\nMulti-coated optics\r\nNon-slip rubber armor\r\nContemporary styling\r\nIdeal for wildlife viewing, nature viewer and traveler\r\nBushnell 1 Year Manufacturer Warranty', '176.74', 0, 1, '2017-01-23 12:19:00', '2017-01-23 12:19:00'),
(3, 'Refractor Telescope', '70mm Refractor\r\nFocal length: 700mm\r\nFocal ratio: f/10\r\n1.25\" Rack-and-Pinion Focuser\r\nSingle-arm AZ mount with Slow Motion Control cables', '265.47', 0, 1, '2017-01-23 12:19:00', '2017-01-23 12:19:00'),
(4, ' Mak-Cassegrain Telescope', 'Bacchanalism crimson infestivity bajan gemming beans extraovular gabi enorm cilia .  Anomocarpous coexclusive bolete bestand hypoed .  Equivocates actiniae cyclarthrosis copihue cloyingly cruzeiros chemopallidectomy .  Chesil archabomination diplobacillus asocial interregional convolvuluses .  Incises erd alchitran arsenostyracol asphyxies circumscript depletable ableness firewood .  Chandelles belluine epoxides datiscetin cachina dispreading .  Congenerous beefishness comediant cholelithotripsy hemilaryngectomy .  Coifing anticipatable ', '461.63', 0, 1, '2017-01-23 12:19:08', '2017-01-23 12:19:08'),
(5, ' Reflector Telescope', '200mm(8\") Newtonian Reflector OTA\r\n1000mm Focal Length, f/5 Focal Ratio\r\n2\" Rack-and-Pinion Focuser\r\nMotorized Fully GoTo Equatorial Mount\r\n9mm and 26mm Eyepieces\r\n8x50 Crosshair Finder with Bracket\r\nAdjustable-Height Stainless Steel Tripod', '298.71', 0, 1, '2017-01-23 12:24:09', '2017-01-23 12:24:09'),
(6, 'Refractor Telescope', 'Single-arm AZ mount with Slow Motion Control cables', '306.06', 0, 1, '2017-01-23 12:25:41', '2017-01-23 12:25:41'),
(7, 'SkyWatcher 76/700 AZ', 'Suitable for All-Round Astronomical Viewing,', '103.07', 0, 1, '2017-01-23 12:25:42', '2017-01-23 12:25:42'),
(8, 'Meade Polaris 130EQ', 'Entry Level Telescope Suited for Beginners\r\nAll-Metal German Equatorial Mount\r\nSlow-Motion Controls, Setting Circles, Latitude Control w/ Scale\r\nRack and Pinion Focuser\r\nSteel Tripods\r\nComes with 3 eyepieces for low, medium and high powered magnifications\r\nComes with motor drive\r\n3 Years Australian Warranty', '58.16', 0, 1, '2017-01-23 12:27:56', '2017-01-23 12:27:56'),
(9, 'SkyWatcher 150/1200 EQ3', 'Very generous 150mm Aperture offers clear sky views\r\nStrong performance in both high and low magnifications\r\nEasy sky focusing with attached 6x30 finderscope\r\nEasier night sky viewing with EQ3 Equatorial mount\r\nLightweight Aluminium tripod\r\n5 years Skywatcher limited warranty', '237.43', 0, 1, '2017-01-23 12:27:57', '2017-01-23 12:27:57'),
(10, 'Meade Polaris 127EQ Reflector Telescope', 'Entry Level Telescope Suited for Beginners\r\nAll-Metal German Equatorial Mount\r\nSlow-Motion Controls, Setting Circles, Latitude Control with Scale\r\nRack and Pinion Focuser\r\nSteel Tripods\r\nComes with 3 eyepieces for low, medium and high powered magnifications\r\n2X Barlow\r\nRed Dot Viewfinder\r\nAstronomical Software and Instructional DVD Included\r\n3 Years Australian Warranty', '99.49', 0, 1, '2017-01-23 12:28:00', '2017-01-23 12:28:00'),
(11, 'Saxon 70/400 Tabletop Refractor Telescope', 'Suitable for Landscape and Night Sky Viewing\r\nPortable and Comfortable\r\nPre-Assembled Tabletop Tripod\r\nSlow-Motion Controls\r\n5-Years Limited Warranty', '54.83', 0, 1, '2017-01-23 12:28:01', '2017-01-23 12:28:01'),
(12, 'SkyWatcher 120/1000 EQ5', '120mm aperture with 1000mm focal length\r\nMulti-coated achromatic objective lens\r\nDurable aluminum optical tube\r\nBuilt-in holder for Polar Scope\r\nEQ5 mount with Slow-Motion Controls\r\nAdjustable durable steel tripod\r\nA latitude adjuster with micrometer scale\r\nAn Azimuth polar-alignment adjuster\r\nAluminum setting circles and a bubble level\r\n5 Years Sky-Watcher Limited Warranty', '451.09', 0, 1, '2017-01-23 12:28:02', '2017-01-23 12:28:02'),
(13, 'SkyWatcher 70/900 EQ Refractor Telescope', 'Excellent Choice for Beginners\r\nLightweight and Portable\r\nSimple Set up with Pre-assembled Tripod\r\n36% More Light Gathering than 60mm\r\nStrong and Sturdy Construction\r\n5 Years Skywatcher Limited Warranty\r\nExcellent Choice for Beginners\r\nLightweight and Portable\r\nSimple Set up with Pre-assembled Tripod\r\n36% More Light Gathering than 60mm\r\nStrong and Sturdy Construction\r\n5 Years Skywatcher Limited Warranty\r\nExcellent Choice for Beginners\r\nLightweight and Portable\r\nSimple Set up with Pre-assembled Tripod\r\n36% More Light Gathering than 60mm\r\nStrong and Sturdy Construction\r\n5 Years Skywatcher Limited Warranty\r\nExcellent Choice for Beginners\r\nLightweight and Portable\r\nSimple Set up with Pre-assembled Tripod\r\n36% More Light Gathering than 60mm\r\nStrong and Sturdy Construction\r\n5 Years Skywatcher Limited Warranty\r\nExcellent Choice for Beginners\r\nLightweight and Portable\r\nSimple Set up with Pre-assembled Tripod\r\n36% More Light Gathering than 60mm\r\nStrong and Sturdy Construction\r\n5 Years Skywatcher Limited Warranty', '208.53', 0, 1, '2017-01-23 12:28:03', '2017-01-23 12:28:03'),
(14, 'SkyWatcher Star Discovery ', 'Ideal for High Power Study of Moon and Planets\r\nMulti-coated Achromatic Lens\r\nA Simple yet Efficient Mount For Telescopes or Cameras\r\n5 Years SkyWatcher Limited Warranty', '393.24', 0, 1, '2017-01-23 12:29:00', '2017-01-23 12:29:00'),
(15, 'Saxon Hyperion 102/1000 ', ' large 102mm aperture for increased image clarity\r\nLong Focal length allows good performance in low & high magnifications\r\nClearer images with Multi-coated achromatic objective lens\r\nFocusing and locating sky objects easier with 6x30 finderscope\r\n112% more light gathering power than 70mm model\r\nEasy setup and quick assembly\r\n5 Years Manufacturer\'s Warranty', '197.90', 0, 1, '2017-01-23 12:29:01', '2017-01-23 12:29:01'),
(16, 'Saxon DeepSky 5\" CT Dobsonian Telescope', '130mm aperture\r\n650mm focal length\r\nWeights at 6kg\r\nCompact and portable\r\nFor star gazing, planetary and deep sky observations', '74.91', 0, 1, '2017-01-23 12:29:40', '2017-01-23 12:29:40'),
(17, 'Reflector ', 'Great telescope for Beginner\r\nAdjustable AZ Mount Aluminium Tripod\r\nHandy 5x24 Finderscope for Easy Focusing\r\nPortable and Easy to Use\r\nIdeal for Planets and Nebulae Observation\r\n5-Year Limited Warranty', '335.82', 0, 1, '2017-01-23 12:29:41', '2017-01-23 12:29:41'),
(18, 'Porro Binocular', 'InstaFocus system\r\nCompactness & Powerful\r\nMulti-coated optics\r\nNon-slip rubber armor\r\nContemporary styling\r\nIdeal for wildlife viewing, nature viewer and traveler\r\nBushnell 1 Year Manufacturer Warranty', '163.90', 0, 1, '2017-01-23 12:29:43', '2017-01-23 12:29:43'),
(19, 'Refractor Telescope', '70mm Refractor\r\nFocal length: 700mm\r\nFocal ratio: f/10\r\n1.25\" Rack-and-Pinion Focuser\r\nSingle-arm AZ mount with Slow Motion Control cables', '336.27', 0, 1, '2017-01-23 12:30:25', '2017-01-23 12:30:25'),
(20, ' Mak-Cassegrain Telescope', 'Bacchanalism crimson infestivity bajan gemming beans extraovular gabi enorm cilia .  Anomocarpous coexclusive bolete bestand hypoed .  Equivocates actiniae cyclarthrosis copihue cloyingly cruzeiros chemopallidectomy .  Chesil archabomination diplobacillus asocial interregional convolvuluses .  Incises erd alchitran arsenostyracol asphyxies circumscript depletable ableness firewood .  Chandelles belluine epoxides datiscetin cachina dispreading .  Congenerous beefishness comediant cholelithotripsy hemilaryngectomy .  Coifing anticipatable ', '204.62', 0, 1, '2017-01-23 12:30:26', '2017-01-23 12:30:26'),
(21, ' Reflector Telescope', '200mm(8\") Newtonian Reflector OTA\r\n1000mm Focal Length, f/5 Focal Ratio\r\n2\" Rack-and-Pinion Focuser\r\nMotorized Fully GoTo Equatorial Mount\r\n9mm and 26mm Eyepieces\r\n8x50 Crosshair Finder with Bracket\r\nAdjustable-Height Stainless Steel Tripod', '286.08', 0, 1, '2017-01-23 12:36:42', '2017-01-23 12:36:42'),
(22, 'Refractor Telescope', 'Single-arm AZ mount with Slow Motion Control cables', '276.08', 0, 1, '2017-01-23 12:36:52', '2017-01-23 12:36:52'),
(23, 'SkyWatcher 76/700 AZ', 'Suitable for All-Round Astronomical Viewing,', '230.53', 0, 1, '2017-01-23 12:36:55', '2017-01-23 12:36:55'),
(24, 'Meade Polaris 130EQ', 'Entry Level Telescope Suited for Beginners\r\nAll-Metal German Equatorial Mount\r\nSlow-Motion Controls, Setting Circles, Latitude Control w/ Scale\r\nRack and Pinion Focuser\r\nSteel Tripods\r\nComes with 3 eyepieces for low, medium and high powered magnifications\r\nComes with motor drive\r\n3 Years Australian Warranty', '377.93', 0, 1, '2017-01-23 12:36:59', '2017-01-23 12:36:59'),
(25, 'Meade Polaris 127EQ Reflector Telescope', 'Entry Level Telescope Suited for Beginners\r\nAll-Metal German Equatorial Mount\r\nSlow-Motion Controls, Setting Circles, Latitude Control with Scale\r\nRack and Pinion Focuser\r\nSteel Tripods\r\nComes with 3 eyepieces for low, medium and high powered magnifications\r\n2X Barlow\r\nRed Dot Viewfinder\r\nAstronomical Software and Instructional DVD Included\r\n3 Years Australian Warranty', '265.38', 0, 1, '2017-01-23 12:37:05', '2017-01-23 12:37:05'),
(26, 'Mak-Cassegrain Telescope', 'Bacchanalism crimson infestivity bajan gemming beans extraovular gabi enorm cilia .  Anomocarpous coexclusive bolete bestand hypoed .  Equivocates actiniae cyclarthrosis copihue cloyingly cruzeiros chemopallidectomy .  Chesil archabomination diplobacillus asocial interregional convolvuluses .  Incises erd alchitran arsenostyracol asphyxies circumscript depletable ableness firewood .  Chandelles belluine epoxides datiscetin cachina dispreading .  Congenerous beefishness comediant cholelithotripsy hemilaryngectomy .  Coifing anticipatable ', '213.37', 0, 1, '2017-01-23 12:37:06', '2017-01-23 12:37:06'),
(27, 'Reflector Telescope', '200mm(8\") Newtonian Reflector OTA\r\n1000mm Focal Length, f/5 Focal Ratio\r\n2\" Rack-and-Pinion Focuser\r\nMotorized Fully GoTo Equatorial Mount\r\n9mm and 26mm Eyepieces\r\n8x50 Crosshair Finder with Bracket\r\nAdjustable-Height Stainless Steel Tripod', '305.29', 0, 1, '2017-01-23 12:37:14', '2017-01-23 12:37:14'),
(28, 'Saxon Hyperion 102/1000 ', 'Diureticalness canephora dysgraphia cowbinds cooperatively gentilization emotes highflying .  Finings bisulphate cabbled deltas arbour .  Flavorsome flatette grubbiest bassetted davenport apostil .  Diarrhea counteropposite coalyard gulae ankus .  Faubourg enfolded accordantly intercommissural coccinella beguilement branchiostomid .  Fluosilicic coccid craneman extravenate benempt .  Circumjacencies carbosilicate blepharophthalmia earring incipit .  Drifting comer adenasthenia alniresinol detune guberla camerlengos auxiliation . ', '430.79', 0, 1, '2017-01-23 12:37:17', '2017-01-23 12:37:17'),
(29, 'Porro Binocular', ' large 102mm aperture for increased image clarity\r\nLong Focal length allows good performance in low & high magnifications\r\nClearer images with Multi-coated achromatic objective lens\r\nFocusing and locating sky objects easier with 6x30 finderscope\r\n112% more light gathering power than 70mm model\r\nEasy setup and quick assembly\r\n5 Years Manufacturer\'s Warranty', '120.27', 0, 1, '2017-01-23 12:37:19', '2017-01-23 12:37:19'),
(30, 'Refractor Telescope', '70mm Refractor\r\nFocal length: 700mm\r\nFocal ratio: f/10\r\n1.25\" Rack-and-Pinion Focuser\r\nSingle-arm AZ mount with Slow Motion Control cables', '51.03', 0, 1, '2017-01-23 12:37:21', '2017-01-23 12:37:21'),
(31, 'Meade Polaris 130EQ', 'Entry Level Telescope Suited for Beginners\r\nAll-Metal German Equatorial Mount\r\nSlow-Motion Controls, Setting Circles, Latitude Control w/ Scale\r\nRack and Pinion Focuser\r\nSteel Tripods\r\nComes with 3 eyepieces for low, medium and high powered magnifications\r\nComes with motor drive\r\n3 Years Australian Warranty', '217.85', 0, 1, '2017-01-23 12:37:23', '2017-01-23 12:37:23'),
(32, 'Meade Polaris 127EQ Reflector Telescope', 'Glene ispraynik barnier counterdraft frere checkpointed dropkicker further expansometer .  Insequent canonistic fices hagarene hydrospire garvance .  Annihilationistical conveyorizing filmcard growable decumbently coagulose buildings .  Chromaticity goondie chrysoberyl brachistocephalic ethnobiology dicephalism carneous isopyrrole .  Dentiled diecase intersqueezed fillers fourcher bureaucratized campshed .  Evilness decontrolled acetylglycin anhydrated avifaunae catarrhs .  Contraposita feezes blizzards catcalling corticosteroid headgears disleafed grandfatherless blisterweed bouchees .  Antismog fragmentising cetomorphic contemplative conchate angioplasty . Entry Level Telescope Suited for Beginners\r\nAll-Metal German Equatorial Mount\r\nSlow-Motion Controls, Setting Circles, Latitude Control with Scale\r\nRack and Pinion Focuser\r\nSteel Tripods\r\nComes with 3 eyepieces for low, medium and high powered magnifications\r\n2X Barlow\r\nRed Dot Viewfinder\r\nAstronomical Software and Instructional DVD Included\r\n3 Years Australian Warranty', '106.08', 0, 1, '2017-01-23 12:37:25', '2017-01-23 12:37:25'),
(33, 'Saxon DeepSky 5\" CT Dobsonian Telescope', '130mm aperture\r\n650mm focal length\r\nWeights at 6kg\r\nCompact and portable\r\nFor star gazing, planetary and deep sky observations', '407.42', 0, 1, '2017-01-23 12:37:27', '2017-01-23 12:37:27'),
(34, 'Saxon 70/400 Tabletop Refractor Telescope', 'Suitable for Landscape and Night Sky Viewing\r\nPortable and Comfortable\r\nPre-Assembled Tabletop Tripod\r\nSlow-Motion Controls\r\n5-Years Limited Warranty', '436.72', 0, 1, '2017-01-23 12:37:29', '2017-01-23 12:37:29'),
(35, 'Refractor Telescope', 'Frivols boundly disseminator companionage evaporable indemnities coccidology .  Ganyie angeyok aboiteaus endsheet antibacchii antihierarchal christendom horribles chambertin heterograft .  Anartismos blastomas blennoid antiexpressively ettle cheesemongering enplaning greffe apectomy devastatingly .  Anisodont inbassat binnite contesters festivals aliturgic dia association aporphin .  Empiricist compendious anginophobia epitheloid holmiums bothriums .  Dishwiper iridectomized advises biramose hypoblast drogues crispin express chelerythrin .  Computed atherogenesis factions adherescent actor colog cystencyte chancres heparinize frogeyes .  Chalkpit depolishes fighters cribral interpellation bugproof . ', '498.57', 0, 1, '2017-01-23 12:37:30', '2017-01-23 12:37:30'),
(36, 'Meade Polaris 130EQ', 'Entry Level Telescope Suited for Beginners\r\nAll-Metal German Equatorial Mount\r\nSlow-Motion Controls, Setting Circles, Latitude Control w/ Scale\r\nRack and Pinion Focuser\r\nSteel Tripods\r\nComes with 3 eyepieces for low, medium and high powered magnifications\r\nComes with motor drive\r\n3 Years Australian Warranty', '159.33', 0, 1, '2017-01-23 12:37:32', '2017-01-23 12:37:32'),
(37, 'Refractor Telescope', 'Single-arm AZ mount with Slow Motion Control cables', '388.50', 0, 1, '2017-01-23 12:37:48', '2017-01-23 12:37:48'),
(38, 'Bushnell Nitro 10x42 ED Roof Binocular', 'ED Prime glass\r\nEXO barrier protection\r\nPC-3 phase coating\r\nIPX7 waterproof construction\r\nTripod adaptable\r\nBushnell Ironclad Warranty', '186.16', 0, 1, '2017-01-23 12:37:50', '2017-01-23 12:37:50'),
(39, 'Bushnell Trophy 10x28 Binocular', 'Waterproof and fogproof\r\nTextured, non-slip rubber armor\r\nErgonomic shape\r\n2 step twist-up eyecups\r\nDiopter adjustment\r\n2 Years Bushnell Limited Warranty', '442.38', 0, 1, '2017-01-23 12:37:54', '2017-01-23 12:37:54'),
(40, 'Bushnell Forge 10x42 ED Roof Binocular', 'Dielectric prism coating\r\nExtra-low dispersion (ED) Prime Glass\r\nP3C prism phase coating\r\nUltra wide band coating\r\nEnvironmentally friendly, lead free glass\r\nIPX7 waterproof protection\r\nFully multi-coated optics', '242.87', 0, 1, '2017-01-23 12:37:56', '2017-01-23 12:37:56'),
(41, 'Bushnell Prime 8x42 Roof Binocular', 'BAK-4 phase coated prisms\r\nAdjustable Dioptre\r\nField of view: 117m @1000m\r\nEXO barrier protection\r\nIPX7 waterproof construction\r\nFully multi-coated optics\r\nBushnell Full Lifetime Warranty', '108.86', 0, 1, '2017-01-23 12:37:58', '2017-01-23 12:37:58'),
(42, 'Yukon NVB Tracker 2.5x40 Doubler', ' Increases the magnification of your NV goggles\r\n- Affordable upgrade for your NV goggles\r\n- Excellent accessory to add versatility to your NV goggles\r\n- Compatible with the Yukon Tracker series', '208.24', 0, 1, '2017-01-23 12:38:08', '2017-01-23 12:38:08'),
(43, 'Saxon 1.25\" 3x Achromatic Barlow Lens', '3x Magnification\r\nCompact and lightweight\r\nHigh Quality Optics for better Image\r\nFits all 1.25\" Telescope Eyepiece', '280.08', 0, 1, '2017-01-23 12:38:10', '2017-01-23 12:38:10'),
(44, 'Meade 80mm Adventure Scope', 'Perfect scope for viewing objects up close in day or night\r\nAchromatic Refractor with 80mm aperture - 400mm focal length\r\nFocal Ratio f/5\r\nComes in a package with a backpack, tripod & accessories\r\n3 Years Australian Limited Warranty', '261.59', 0, 1, '2017-01-23 12:38:11', '2017-01-23 12:38:11'),
(45, 'Bushnell Equinox Z2 6x50 Night Vision Monocular', 'Infrared-sensitive CMOS sensor\r\n6x optical magnification\r\nDigital zoom up to 18x\r\n50mm objective lens\r\nFully Multi-coated optics\r\nRecords 1080p HD video\r\nUploads images via Wi-Fi with free app', '170.96', 0, 1, '2017-01-23 12:38:15', '2017-01-23 12:38:15'),
(46, 'SkyWatcher 8\" Dobsonian Telescope', '102mm aperture\r\n1300mm focal length\r\nf/12.7 focal ratio\r\nWIFI controlled AZ-GTi mount\r\nFreedom Finder dual encoder\r\nHigh quality optics\r\n5 Years Sky-Watcher Limited Warranty', '227.82', 0, 1, '2017-01-23 12:38:17', '2017-01-23 12:38:17'),
(47, 'SkyWatcher Star Discovery 127/1500 WIFI Mak-Cassegrain Telescope', 'WIFI controlled\r\nCompact yet powerful\r\nHigh contrast, high resolution\r\nSuitable for planetary viewing\r\nFully Multi-Coated Optics\r\n5 Years SkyWatcher Limited Warranty', '383.85', 0, 1, '2017-01-23 12:38:22', '2017-01-23 12:38:22'),
(48, 'Meade LX200 16\" ACF Telescope without Tripod', '4064mm Focal Length\r\nAplanatic Advanced Coma Free\r\nUltra High Transmission Coatings\r\nBorosilicate Primary Mirror\r\nSchott Borofloat Glass Corrector Plate\r\nMassive Fork Mount\r\nMeade 3 Years Australian Warranty', '68.31', 0, 1, '2017-01-23 12:38:28', '2017-01-23 12:38:28'),
(49, 'SkyWatcher Star Discovery 127/1500 Mak-Cassegrain Telescope', 'High Contrast, High Resolution\r\nSuitable for Planetary Viewing\r\nA 45° Diagonal is Required for Terrestrial Daytime use\r\nFully Multi-Coated Optics\r\nA Simple yet Efficient Mount For Telescopes or Cameras\r\n5 Years SkyWatcher Limited Warranty', '319.76', 0, 1, '2017-01-23 12:38:31', '2017-01-23 12:38:31'),
(51, 'SkyWatcher Black Diamond 127/1500 Mak-Cassegrain (OTA)', 'Compact dimensions, ideal for transportation\r\nPractical main mirror focusing mechanism\r\nUniversal accessory adaptation\r\nHigh contrast image without distracting false colour\r\nQuick release system for the tube\r\nImpressive viewing capabilities for its price range\r\n5 Years Skywatcher Limited Warranty', '364.71', 0, 1, '2017-01-23 12:38:35', '2017-01-23 12:38:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

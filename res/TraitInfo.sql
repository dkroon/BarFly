-- DBTools Manager Professional (Enterprise Edition)
-- Database Dump for: BarFly
-- Backup Generated in: 11/23/2010 12:41:35 PM
-- Database Server Version: MySQL 5.1.43

-- USEGO

SET FOREIGN_KEY_CHECKS=0;
-- GO


--
-- Table: TraitInfo
--
CREATE TABLE `TraitInfo` 
(
	`TRAITGRP` varchar (50), 
	`TRTGRPID` varchar (50), 
	`TRAITNAME` varchar (50), 
	`TRTNAMEID` varchar (50), 
	`TRTBASIS` varchar (10), 
	`TRAITID` char (3) NOT NULL, 
	`TRAITNUM` tinyint (1) NOT NULL DEFAULT 0, 
	`TRAITMIN` integer (10), 
	`TRAITMAX` integer (10), 
	`TRAITADD` tinyint (1) NOT NULL DEFAULT 0, 
	`TRAITCOMP` tinyint (1) NOT NULL DEFAULT 0, 
	`DATATYPE` varchar (10), 
	`TRTCOMPTO` varchar (50), 
	`TRTHOWTO` varchar (250), 
	`TRAITWHEN` varchar (100), 
	`MULTIEVAL` tinyint (1) NOT NULL DEFAULT 0,
	PRIMARY KEY (`TRAITID`)
) TYPE=MyISAM CHARACTER SET latin1 COLLATE latin1_swedish_ci;
-- GO
BEGIN;
-- GO

--
-- Dumping Table Data: TraitInfo
--
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Early Season', 'b', 'Germination Count', 'a', 'Row', 'ba', 1, 0, 30, 0, 0, 'NUMERICAL', '', '', '', 1);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Early Season', 'b', 'Stand Count', 'b', 'Row', 'bb', 1, NULL, NULL, 0, 0, 'NUMERICAL', '', '', '', 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Early Season', 'b', 'Seeds Planted', 'c', 'Row', 'bc', 1, 0, 30, 0, 0, 'NUMERICAL', NULL, NULL, NULL, 1);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Flowering', 'c', 'Tasseling Date', 'a', 'Row', 'ca', 0, NULL, NULL, 0, 0, 'DATE', '', 'Date when 1/2 of row is tasseling', 'Flowering', 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Flowering', 'c', 'Silking Date', 'b', 'Row', 'cb', 0, NULL, NULL, 0, 0, 'DATE', '', 'Date when 1/2 of row is silking', 'Flowering', 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Flowering', 'c', 'Days to Silk', 'c', 'Row', 'cc', 0, NULL, NULL, 0, 0, 'NUMERICAL', NULL, 'Days from planting date to silking date (cb)', NULL, 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Flowering', 'c', 'Days To Tassel', 'd', 'Row', 'cd', 0, NULL, NULL, 0, 0, 'NUMERICAL', NULL, 'Days from planting date to tasseling date (ca)', NULL, 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Tassel', 'd', 'Tassel Type', 'a', 'Plant', 'da', 0, NULL, NULL, 0, 0, 'NUMERICAL', '', '', '', 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Tassel', 'd', 'Tassel Length', 'b', 'Plant', 'db', 1, 0, 600, 1, 0, 'NUMERICAL', '', 'Length from the bottom brach to the tip of the tassel', '', 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Tassel', 'd', 'Main Spike Length', 'c', 'Plant', 'dc', 1, 0, 600, 1, 0, 'NUMERICAL', '', 'length from the main spike above highest tassel branch', '', 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Tassel', 'd', 'Number of Tassel Branches', 'd', 'Plant', 'dd', 1, -1, 50, 0, 0, 'NUMERICAL', '', '', '', 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Tassel', 'd', 'Tassel Angle', 'e', 'Plant', 'de', 1, NULL, NULL, 0, 0, 'NUMERICAL', '', 'place the tool directly behind the tassel, take the angle between the lowest branch and the main spike', '', 1);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Tassel', 'd', 'Tassel Branching Space', 'f', 'Plant', 'df', 0, NULL, NULL, 0, 0, 'NUMERICAL', '', '', '', 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Tassel', 'd', 'Tassel Primary Branches', 'g', 'Plant', 'dg', 0, NULL, NULL, 0, 0, 'NUMERICAL', '', 'number of branches coming off main spike', '', 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Tassel', 'd', 'Tassel Secondary Branches', 'h', 'Plant', 'dh', 0, NULL, NULL, 0, 0, 'NUMERICAL', '', '', '', 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Tassel', 'd', 'Tassel Tertiary Branches', 'k', 'Plant', 'dk', 0, NULL, NULL, 0, 0, 'NUMERICAL', '', '', '', 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Tassel', 'd', 'Tassel Size', 'm', 'Plant', 'dm', 0, NULL, NULL, 0, 0, 'NUMERICAL', '', '', '', 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Ears, Nodes, & Height', 'e', 'Ear Number', 'a', 'Plant', 'ea', 0, NULL, NULL, 0, 0, 'NUMERICAL', '', '', '', 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Ears, Nodes, & Height', 'e', 'Number of Nodes Ear to Roots', 'b', 'Plant', 'eb', 0, NULL, NULL, 0, 0, 'NUMERICAL', '', 'count visible leaves below the primary ear including senesced leaves and brace root leaves', '', 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Ears, Nodes, & Height', 'e', 'Number of Nodes Tassel to Ear', 'c', 'Plant', 'ec', 0, NULL, NULL, 0, 0, 'NUMERICAL', '', 'count visible leaves above the primary ear', '', 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Ears, Nodes, & Height', 'e', 'Number of Brace Root Nodes', 'd', 'Plant', 'ed', 0, NULL, NULL, 0, 0, 'NUMERICAL', '', 'count visible brace roots nodes', '', 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Ears, Nodes, & Height', 'e', 'Plant Height', 'e', 'Plant', 'ee', 0, 0, 2700, 0, 0, 'NUMERICAL', '', 'distance from soil surface to the base of flag leaf', '', 1);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Ears, Nodes, & Height', 'e', 'Ear Height', 'f', 'Plant', 'ef', 0, 0, 0, 0, 0, 'NUMERICAL', '', 'distance from soil surface to the highest ear-bearing node', '', 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Foliage', 'f', 'Number of Leaves', 'a', 'Plant', 'fa', 0, 0, NULL, 0, 0, 'NUMERICAL', '', '', '', 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Foliage', 'f', 'Leaf Length', 'b', 'Plant', 'fb', 0, 20, 1250, 0, 0, 'NUMERICAL', '', 'leaf below the last large ear, distance from base to tip of the leaf', 'At flowering time', 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Foliage', 'f', 'Leaf Width', 'c', 'Plant', 'fc', 0, 10, 500, 0, 0, 'NUMERICAL', '', 'leaf below the last large ear, at the widest section of the leaf', 'At flowering time', 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Foliage', 'f', 'Upper Leaf Angle', 'd', 'Plant', 'fd', 1, -1, 91, 0, 0, 'NUMERICAL', '', 'leaf immediately below the flag leaf, place the tool directly behind the stalk and leaf, take the angle that the midrib of the leaf projects on the tool', '', 1);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Foliage', 'f', 'Middle Leaf Angle', 'e', 'Plant', 'fe', 1, -1, 91, 0, 0, 'NUMERICAL', '', 'leaf below the last large ear, place the tool directly behind the stalk and leaf, take the angle that the midrib of the leaf projects on the tool', '', 1);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Foliage', 'f', 'Tillering Index', 'f', 'Plant', 'ff', 0, 0, NULL, 0, 0, 'NUMERICAL', '', 'Number of tillers per plant.', 'At flowering time.', 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Plant Color', 'g', 'Plant Stalk Color', 'a', 'Plant', 'ga', 0, 0, NULL, 0, 0, 'NUMERICAL', '', '', '', 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Plant Color', 'g', 'Brace Root Color', 'b', 'Plant', 'gb', 0, NULL, NULL, 0, 0, 'NUMERICAL', '', '', '', 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Plant Color', 'g', 'Leaf Margin Color', 'c', 'Plant', 'gc', 0, NULL, NULL, 0, 0, 'NUMERICAL', NULL, NULL, NULL, 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Plant Color', 'g', 'Midrib Color', 'd', 'Plant', 'gd', 0, NULL, NULL, 0, 0, 'NUMERICAL', NULL, NULL, NULL, 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Tassel Color', 'h', 'Glume Color', 'a', 'Plant', 'ha', 0, NULL, NULL, 0, 0, 'NUMERICAL', '', '', '', 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Tassel Color', 'h', 'Glume Bar Color', 'b', 'Plant', 'hb', 0, NULL, NULL, 0, 0, 'NUMERICAL', '', '', '', 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Tassel Color', 'h', 'Anther Color', 'c', 'Plant', 'hc', 0, NULL, NULL, 0, 0, 'NUMERICAL', '', '', '', 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Plant Pubescence', 'k', 'Sheath Pubescence', 'a', 'Plant', 'ka', 0, NULL, NULL, 0, 0, 'NUMERICAL', '', '', '', 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Plant Pubescence', 'k', 'Leaf Pubescence', 'b', 'Plant', 'kb', 0, NULL, NULL, 0, 0, 'NUMERICAL', '', '', '', 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Plant Pubescence', 'k', 'Sheath Margin Pubescence', 'c', 'Plant', 'kc', 0, NULL, NULL, 0, 0, 'NUMERICAL', '', '', '', 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Roots', 'm', 'Root Lodging', 'a', 'Plant', 'ma', 0, NULL, NULL, 1, 0, 'NUMERICAL', '', 'Percentage of plants root-lodged.', 'Two weeks before harvest.', 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Roots', 'm', 'Root Volume', 'b', 'Plant', 'mb', 0, NULL, NULL, 0, 0, 'NUMERICAL', '', '', 'After milk stage.', 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Diseases', 'n', 'Ear Rot', 'a', 'Plant', 'na', 0, NULL, NULL, 0, 0, 'NUMERICAL', '', '', '', 1);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Diseases', 'n', 'Stalk Rot', 'b', 'Plant', 'nb', 0, NULL, NULL, 0, 0, 'NUMERICAL', '', '', '', 1);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Diseases', 'n', 'Rust', 'c', 'Plant', 'nc', 0, NULL, NULL, 0, 0, 'NUMERICAL', '', '', '', 1);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Diseases', 'n', 'Downy Mildew', 'd', 'Plant', 'nd', 0, NULL, NULL, 0, 0, 'NUMERICAL', '', '', '', 1);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Diseases', 'n', 'Leaf Blight', 'e', 'Plant', 'ne', 0, NULL, NULL, 0, 0, 'NUMERICAL', '', '', '', 1);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Diseases', 'n', 'Smut Incidence', 'f', 'Plant', 'nf', 0, NULL, NULL, 0, 0, 'NUMERICAL', '', 'number of plants infected with smut', '', 1);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Diseases', 'n', 'Grey Leaf Spot', 'g', 'Plant', 'ng', 0, NULL, NULL, 0, 0, 'NUMERICAL', '', '', '', 1);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Diseases', 'n', 'Stewarts Wilt', 'h', 'Plant', 'nh', 0, NULL, NULL, 0, 0, 'NUMERICAL', '', '', '', 1);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Insect Pests', 'o', 'Armyworm', 'a', 'Plant', 'oa', 0, NULL, NULL, 0, 0, 'NUMERICAL', '', '', '', 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Insect Pests', 'o', 'Root Worm', 'b', 'Plant', 'ob', 0, NULL, NULL, 0, 0, 'NUMERICAL', '', '', '', 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Insect Pests', 'o', 'Diatrea Borer', 'c', 'Plant', 'oc', 0, NULL, NULL, 0, 0, 'NUMERICAL', '', '', '', 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Insect Pests', 'o', 'Ear Worm', 'd', 'Plant', 'od', 0, NULL, NULL, 0, 0, 'NUMERICAL', '', '', '', 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Insect Pests', 'o', 'Ostrina Borer', 'e', 'Plant', 'oe', 0, NULL, NULL, 0, 0, 'NUMERICAL', '', '', '', 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Viruses', 'p', 'Maize Dwarf Virus', 'a', 'Plant', 'pa', 0, NULL, NULL, 0, 0, 'NUMERICAL', '', '', '', 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Stalks', 'q', 'Stalk Width', 'a', 'Plant', 'qa', 0, NULL, NULL, 0, 0, 'NUMERICAL', '', 'widest point on the primary ear node', '', 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Stalks', 'q', 'Stalk Thickness', 'b', 'Plant', 'qb', 0, NULL, NULL, 0, 0, 'NUMERICAL', '', 'narrowest point on the primary ear node', '', 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Stalks', 'q', 'Stalk Lodging', 'c', 'Plant', 'qc', 0, NULL, NULL, 1, 0, 'NUMERICAL', '', 'Percentage of plants stalk-lodged', 'Two weeks before harvest.', 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Stalks', 'q', 'Rind Penetrometer Resistance', 'd', 'Plant', 'qd', 0, NULL, NULL, 0, 0, 'NUMERICAL', '', '', '', 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Notes', 'r', 'Notes', 'a', 'Plant', 'ra', 0, NULL, NULL, 0, 0, 'TEXT', '', '', '', 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Notes', 'r', 'Notes', 'b', 'Row', 'rb', 0, NULL, NULL, 0, 0, 'TEXT', '', '', '', 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Notes', 'r', 'Ear Weight Volume Notes', 'c', 'Ear', 'rc', 0, NULL, NULL, 0, 0, 'TEXT', NULL, NULL, NULL, 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Notes', 'r', 'Ear Comments', 'd', 'Ear', 'rd', 0, NULL, NULL, 0, 0, 'TEXT', NULL, NULL, NULL, 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Notes', 'r', 'Ear Visual Traits Notes', 'e', 'Ear', 're', 0, NULL, NULL, 0, 0, 'TEXT', NULL, NULL, NULL, 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Notes', 'r', 'Ear Caliper Notes', 'f', 'Ear', 'rf', 0, NULL, NULL, 0, 0, 'TEXT', NULL, NULL, NULL, 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Ear Measurements', 's', '10 Kernel Weight', 'a', 'Ear', 'sa', 0, NULL, NULL, 0, 0, 'NUMERICAL', NULL, 'Weight of 10 Kernels', 'after harvested and dry', 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Ear Measurements', 's', 'Tassel Ear', 'b', 'Ear', 'sb', 0, NULL, NULL, 0, 0, 'NUMERICAL', NULL, 'presence-absence of tassel tissue at ear tip', 'at harvest', 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Ear Measurements', 's', '1 Kernel Width', 'c', 'Ear', 'sc', 0, NULL, NULL, 0, 0, 'NUMERICAL', NULL, 'width of one kernel', 'after harvested and dry', 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Ear Measurements', 's', '5 Kernel Thickness', 'd', 'Ear', 'sd', 0, NULL, NULL, 0, 0, 'NUMERICAL', NULL, 'Measure of 5 kernels while on cob along base to tip axis', 'after harvested and dry', 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Ear Measurements', 's', 'Cob Color', 'e', 'Ear', 'se', 0, NULL, NULL, 0, 0, 'TEXT', NULL, 'color of cob (after shelling)', 'after harvested and dry', 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Ear Measurements', 's', 'Cob Diameter', 'f', 'Ear', 'sf', 0, NULL, NULL, 0, 0, 'NUMERICAL', NULL, 'diameter of cob at halfway point of length, no kernels', 'after harvested and dry', 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Ear Measurements', 's', 'Cob Weight', 'g', 'Ear', 'sg', 0, NULL, NULL, 0, 0, 'NUMERICAL', NULL, 'mass of cob only, no kernels', 'after harvested and dry', 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Ear Measurements', 's', 'Ear Diameter', 'h', 'Ear', 'sh', 0, NULL, NULL, 0, 0, 'NUMERICAL', NULL, 'diameter of ear at 1/5 length point with kernels on it', 'after harvested and dry', 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Ear Measurements', 's', 'Ear Length', 'i', 'Ear', 'si', 0, NULL, NULL, 0, 0, 'NUMERICAL', NULL, 'length of cob from base to tip', 'after harvested and dry', 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Ear Measurements', 's', 'Kernel Halo', 'j', 'Ear', 'sj', 0, NULL, NULL, 0, 0, 'TEXT', NULL, 'halo present or not', 'after harvested and dry', 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Ear Measurements', 's', 'Kernel Color', 'k', 'Ear', 'sk', 0, NULL, NULL, 0, 0, 'TEXT', NULL, 'color of kernel', 'after harvested and dry', 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Ear Measurements', 's', 'Kernel Row Arrangement', 'l', 'Ear', 'sl', 0, NULL, NULL, 0, 0, 'TEXT', NULL, 'arrangement of kernels on cob', 'after harvested and dry', 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Ear Measurements', 's', 'Kernel Type', 'm', 'Ear', 'sm', 0, NULL, NULL, 0, 0, 'TEXT', NULL, 'apparent kernel type', 'after harvested and dry', 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Ear Measurements', 's', 'Seed Set Length', 'n', 'Ear', 'sn', 0, NULL, NULL, 0, 0, 'NUMERICAL', NULL, 'length of kernels from base to where kernels end on ear', 'after harvested and dry', 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Ear Measurements', 's', 'Ear Row Number', 'o', 'Ear', 'so', 0, NULL, NULL, 0, 0, 'NUMERICAL', NULL, 'number of rows around circumference', 'after harvested and dry', 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Ear Measurements', 's', 'Total Kernel Volume', 'p', 'Ear', 'sp', 0, NULL, NULL, 0, 0, 'NUMERICAL', NULL, 'volume of all kernels poured into a cylinder', 'after harvested and dry', 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Ear Measurements', 's', 'Total Kernel Weight', 'q', 'Ear', 'sq', 0, NULL, NULL, 0, 0, 'NUMERICAL', NULL, 'weight of all kernels for that ear', 'after harvested and dry', 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Ear Measurements', 's', 'Vivipary', 'r', 'Ear', 'sr', 0, NULL, NULL, 0, 0, 'NUMERICAL', NULL, 'approximate % of vivipary for that ear', 'after harvested and dry', 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Ear Measurements', 's', '10 Kernel Length', 's', 'Ear', 'ss', 0, NULL, NULL, 0, 0, 'NUMERICAL', NULL, NULL, NULL, 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Ear Measurements', 's', '10 Kernel Thickness', 't', 'Ear', 'st', 0, NULL, NULL, 0, 0, 'NUMERICAL', NULL, NULL, NULL, 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Ear Measurements', 's', '10 Kernel Width', 'u', 'Ear', 'su', 0, NULL, NULL, 0, 0, 'NUMERICAL', NULL, NULL, NULL, 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Ear Measurements', 's', 'Ear Weight', 'x', 'Ear', 'sx', 0, NULL, NULL, 0, 0, 'NUMERICAL', NULL, 'mass of cob + kernels', 'after harvested and dry', 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Harvest', 't', 'Ears Harvested', 'a', 'Plant', 'ta', 0, NULL, NULL, 0, 0, 'NUMERICAL', NULL, NULL, NULL, 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Harvest', 't', 'Plants Harvested', 'b', 'Row', 'tb', 0, NULL, NULL, 0, 0, 'NUMERICAL', NULL, NULL, NULL, 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Harvest', 't', 'Pollinations Per Row', 'c', 'Row', 'tc', 0, NULL, NULL, 0, 0, 'NUMERICAL', NULL, NULL, NULL, 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Anthocyanin', 'u', 'AntherAnthocyanin', 'a', 'Row', 'ua', 0, NULL, NULL, 0, 0, 'NUMERICAL', NULL, 'Index 1-5 of redness present', 'Flowering', 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Anthocyanin', 'u', 'AntherPedicelAnthocyanin', 'b', 'Row', 'ub', 0, NULL, NULL, 0, 0, 'NUMERICAL', NULL, 'Index 1-5 of redness present', 'Flowering', 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Anthocyanin', 'u', 'LeafMarginAnthocyanin', 'b', 'Row', 'uc', 0, NULL, NULL, 0, 0, 'NUMERICAL', NULL, 'Index 1-5 of redness present', 'Flowering', 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Collection', 'v', 'Scorer', 'a', NULL, 'va', 0, NULL, NULL, 0, 0, 'TEXT', NULL, NULL, NULL, 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Collection', 'v', 'Collection Date', 'b', NULL, 'vb', 0, NULL, NULL, 0, 0, 'DATE', NULL, NULL, NULL, 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Collection', 'v', 'Close Row', 'c', 'Row', 'vc', 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Collection', 'v', 'Delete Row', 'd', 'Row', 'vd', 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Collection', 'v', 'Location', 'e', NULL, 've', 0, NULL, NULL, 0, 0, 'DATE', NULL, NULL, NULL, 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Collection', 'v', 'Scanner', 'f', NULL, 'vf', 0, NULL, NULL, 0, 0, 'NUMERICAL', NULL, NULL, NULL, 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Tassel', 'd', 'Secondary Branch Number', 'q', 'Plant', 'dq', 0, NULL, NULL, 0, 0, 'NUMERICAL', NULL, NULL, NULL, 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Flowering', 'c', 'Pollination Date', 'e', 'Plant', 'ce', 0, NULL, NULL, 0, 0, 'DATE', NULL, NULL, NULL, 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Tassel', 'd', 'Tassel Branch Length', 'n', 'Plant', 'dn', 0, NULL, NULL, 0, 0, 'NUMERICAL', NULL, NULL, NULL, 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Field', 'w', 'Row Quality', 'a', 'Row', 'wa', 0, NULL, NULL, 0, 0, 'NUMERICAL', NULL, 'Index 1-5 of overall believability of trait measurement', NULL, 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Plant Color', 'g', 'Leaf Chlorophyll', 'e', 'Plant', 'ge', 0, NULL, NULL, 0, 0, 'NUMERICAL', NULL, 'measured on leaf below ear leaf', NULL, 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Diseases', 'n', 'Northern Leaf Blight', 'i', 'Plant', 'ni', 0, 1, 7, 0, 0, 'NUMERICAL', NULL, '1 is unaffected 7 is dead', NULL, 1);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Diseases', 'n', 'Ht4 Northern Leaf Blight Resistence', 'j', 'Plant', 'nj', 0, NULL, NULL, 0, 0, 'TEXT', NULL, 'True for exhibits resistence', NULL, 1);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Diseases', 'n', 'Northern Leaf Blight (Percentage)', 'k', 'Plant', 'nk', 0, 0, 100, 0, 0, 'NUMERICAL', 'ni', 'Percentage of leaf area affected', NULL, 1);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Ear Measurements', 's', 'Ear Rank Number', 'y', 'Ear', 'sy', 0, NULL, NULL, 0, 0, 'NUMERICAL', NULL, 'number of rows along length', 'after harvested and dry', 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Ear Measurements', 's', '20 Kernel Weight', 'z', 'Ear', 'sz', 0, NULL, NULL, 0, 0, 'NUMERICAL', NULL, 'weight of 20 kernels', 'after harvested and dry', 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Insect Pests', 'o', 'Armyworm - Leaf Damage', 'f', 'Plant', 'of', 0, NULL, NULL, 0, 0, 'NUMERICAL', NULL, '1-5 where 1 is the most damage', 'at pollination time', 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Insect Pests', 'o', 'Armyworm - Tassel Damage', 'g', 'Plant', 'og', 0, NULL, NULL, 0, 0, 'NUMERICAL', NULL, '1-5 where 1 is the most damage', 'at pollination time', 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Foliage', 'f', 'Whole Plant - Fresh Weight', 'g', 'Plant', 'fg', 0, 0, NULL, 0, 0, 'NUMERICAL', NULL, 'Without roots, cut at soil line', 'specify stage in phentypes.comments', 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Foliage', 'f', 'Whole Plant - Dry Weight', 'h', 'Plant', 'fh', 0, 0, NULL, 0, 0, 'NUMERICAL', NULL, 'Without roots, cut at soil line; how dry?', 'specify stage in phentypes.comments', 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Tassel', 'd', 'Spikelets - Main Spike', 'o', 'Plant', 'do', 0, NULL, NULL, 0, 0, 'NUMERICAL', NULL, 'number of spikelet pairs per 4 cm of central spike', NULL, 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Tassel', 'd', 'Spikelets - Primary Branch', 'p', 'Plant', 'dp', 0, NULL, NULL, 0, 0, 'NUMERICAL', NULL, 'number of spikelet pairs per 6 cm of lowermost primary branch', NULL, 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Foliage', 'f', 'Upper Leaf Angle - Border Plant', 'i', 'Plant', 'fi', 0, -1, 91, 0, 0, 'NUMERICAL', NULL, 'Upper Leaf Angle of plant at the end of the row', NULL, 1);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Flowering', 'c', 'Count of Shoots Silking', 'g', 'Row', 'cg', 0, NULL, NULL, 0, 0, 'NUMERICAL', NULL, NULL, NULL, 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Foliage', 'f', 'Leaf Width - Border Plant', 'k', 'Plant', 'fk', 0, 10, 500, 0, 0, 'NUMERICAL', NULL, 'Leaf Width at widest point for plant at the end of the row', NULL, 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Disease', 'n', 'Smut - Tassels', 's', 'Row', 'ns', 0, NULL, NULL, 0, 0, 'NUMERICAL', NULL, 'Number of plants infected with smut on tassels', NULL, 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Inputs', 'x', 'Herbicide Sensitivity', 'a', 'Row', 'xa', 0, NULL, NULL, 0, 0, 'NUMERICAL', NULL, '1=Unaffected; 2=Segregating; 3=All Plants Affected (Dead)', NULL, 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Foliage', 'f', 'Leaf Sheath Length - Border Plant', 'm', 'Plant', 'fm', 0, NULL, NULL, 0, 0, 'NUMERICAL', NULL, 'length of sheath (node to ligule) for leaf above/opposite the ear in the middle (by site) of the row', NULL, 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Foliage', 'f', 'Leaf Sheath Length', 'n', 'Plant', 'fn', 0, NULL, NULL, 0, 0, 'NUMERICAL', NULL, 'length of sheath (node to ligule) for leaf above/opposite the ear at the end of the row', NULL, 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Ears, Nodes, & Height', 'e', 'Node Length - Border Plant', 'g', 'Plant', 'eg', 0, NULL, NULL, 0, 0, 'NUMERICAL', NULL, 'length for internode giving rise to leaf above/opposite the ear for plant at the end of the row', NULL, 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Foliage', 'f', 'Tillering Index - Border Plant', 'o', 'Plant', 'fo', 0, NULL, NULL, 0, 0, 'NUMERICAL', NULL, 'Number of tillers per plant at the end of the row', NULL, 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Flowering', 'c', 'Anthesis-Silking Interval', 'f', 'Row', 'cf', 0, NULL, NULL, 0, 0, 'NUMERICAL', NULL, 'Days to Silk (cc) - Days to Anthesis (cd)', NULL, 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Flowering', 'c', 'Count of Shoots Visible', 'j', 'Row', 'cj', 0, NULL, NULL, 0, 0, 'NUMERICAL', NULL, NULL, NULL, 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Ears, Nodes, & Height', 'e', 'Plant Height - Border Plant', 'i', 'Plant', 'ei', 0, NULL, NULL, 0, 0, 'NUMERICAL', NULL, 'plant at the end of the row', NULL, 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Flowering', 'c', 'Count of Tassels Shedding', 'i', 'Row', 'ci', 0, NULL, NULL, 0, 0, 'NUMERICAL', NULL, NULL, NULL, 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Collection', 'v', 'Tool', 'g', NULL, 'vg', 0, NULL, NULL, 0, 0, 'TEXT', NULL, NULL, NULL, 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Foliage', 'f', 'Number of Tillering Plants', 'r', 'Row', 'fr', 0, NULL, NULL, 0, 0, 'NUMERICAL', NULL, 'Number of tillering plants per row', 'At flowering time', 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Ears, Nodes, & Height', 'e', 'Ear Number Per Row', 'o', 'Row', 'eo', 0, NULL, NULL, 0, 0, 'NUMERICAL', NULL, 'Number of Ears Per Row', NULL, 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Flowering', 'c', 'Count of Tassel Present', 'h', 'Row', 'ch', 0, NULL, NULL, 0, 0, 'NUMERICAL', NULL, NULL, NULL, 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Foliage', 'f', 'Phylotaxy', 'q', 'Plant', 'fq', 0, 0, 360, 0, 0, 'NUMERICAL', NULL, NULL, NULL, 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Tassel', 'd', 'Tassel Sterility', 'r', 'Plant', 'dr', 0, NULL, NULL, 0, 0, 'NUMERICAL', NULL, NULL, NULL, 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Stalks', 'q', 'Stalk Width - Low', 'e', 'Plant', 'qe', 0, NULL, NULL, 0, 0, 'NUMERICAL', NULL, 'widest point on the node below the lowest ear', NULL, 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Stalks', 'q', 'Stalk Thickness - Low', 'f', 'Plant', 'qf', 0, NULL, NULL, 0, 0, 'NUMERICAL', NULL, 'narrowest point on the node below the lowest ear', NULL, 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Diseases', 'n', 'Smut Severity', 'l', 'Plant', 'nl', 0, 1, 10, 0, 0, 'NUMERICAL', NULL, 'score of 1 (min) - 10 (max) reflecting size of gull on infected plants, multiple scores per row', NULL, 1);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Diseases', 'n', 'Northern Leaf Blight - Incubation Period', 'm', 'Plant', 'nm', 0, NULL, NULL, 0, 0, 'NUMERICAL', NULL, 'days after inoculation until appearance of water-soaked or necrotic lesions on 1/2 of the plants', NULL, 1);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Foliage', 'f', 'Size of Tillers', 's', 'Plant', 'fs', 0, NULL, NULL, 0, 0, 'NUMERICAL', NULL, 'Size of tillers relative to main plant (percentage)', 'At flowering time', 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Ears, Nodes, & Height', 'e', 'Ear Height - Border Plant', 'k', 'Plant', 'ek', 0, NULL, NULL, 0, 0, 'NUMERICAL', NULL, NULL, NULL, 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Disease', 'n', 'Smut (Ears)', 'n', 'Plant', 'nn', 0, NULL, NULL, 0, 0, 'NUMERICAL', NULL, 'Index 0-9', NULL, 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Disease', 'n', 'Smut (Leaves)', 'o', 'Plant', 'no', 0, NULL, NULL, 0, 0, 'NUMERICAL', NULL, 'Index 0-9', NULL, 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Disease', 'n', 'Smut (Stalk)', 'p', 'Plant', 'np', 0, NULL, NULL, 0, 0, 'NUMERICAL', NULL, 'Index 0-9', NULL, 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Disease', 'n', 'Smut (Tassel)', 'q', 'Plant', 'nq', 0, NULL, NULL, 0, 0, 'NUMERICAL', NULL, 'Index 0-9', NULL, 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Ear Measurements', 's', 'Kernel Fill Percentage', 'v', 'Ear', 'sv', 0, NULL, NULL, 0, 0, 'NUMERICAL', NULL, 'percentage of ear filled by kernels', 'after harvested and dry', 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Flowering', 'c', 'Heading Date', 'k', 'Row', 'ck', 0, NULL, NULL, 0, 0, 'DATE', NULL, 'Biofuel - Date when 50% of stems are 50% emerged (panicle branches still upright, just starting to spread)', NULL, 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Flowering', 'c', 'Extension Date', 'l', 'Row', 'cl', 0, NULL, NULL, 0, 0, 'DATE', NULL, 'Biofuel - Date when 50% of the panicles have the top half completely extended (at this stage, >=1 panicle(s) have the bottom branch completely emerged from the boot (flag leaf))', NULL, 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Flowering', 'c', 'Anthesis Date', 'm', 'Row', 'cm', 0, NULL, NULL, 0, 0, 'DATE', NULL, 'Biofuel - Date when 50% of panicles have 50% open florets', NULL, 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Foliage', 'f', 'Total Stem Count', 't', 'Plant', 'ft', 0, NULL, NULL, 0, 0, 'NUMERICAL', NULL, 'Biofuel - Number of stems with flowering heads', 'After flowering time', 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Ears, Nodes, & Height', 'e', 'Cumulative Nodes Ear to Roots', 'l', 'Plant', 'el', 0, NULL, NULL, 0, 0, NULL, NULL, 'Count total number of leaves that ever existed below primary ear - developmentally true/accurate node count', 'First marking fifth leaf stage then at tenth leaf stage final measurement at emergence of ear', 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Ears, Nodes, & Height', 'e', 'Biofuel Plant Height', 'm', 'Plant', 'em', 0, NULL, NULL, 0, 0, NULL, NULL, 'Biofuel - Base of longest flowering stem to the node at the base of the panicle', NULL, 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Ears, Nodes, & Height', 'e', 'Biofuel Total Plant Height', 'n', 'Plant', 'en', 0, NULL, NULL, 0, 0, NULL, NULL, 'Biofuel - Base of the longest flowering stem to the tip of the panicle (en-em = panicle length)', NULL, 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Disease', 'n', 'Disease Index', NULL, NULL, 'nr', 0, NULL, NULL, 0, 0, NULL, NULL, 'Biofuel - 0 is unaffected 10 is all leaves affected or dea', NULL, 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Insect Pests', 'o', 'Armyworm - Leaf Damage (Davies)', 'h', 'Plant', 'oh', 0, NULL, NULL, 0, 0, NULL, NULL, '1-9 where 1 is the most damage', 'at pollination time', 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Stalks', 'q', 'Standability', 'g', 'Plant', 'qg', 0, NULL, NULL, 0, 0, NULL, NULL, 'Biofuel - 0 is prostrate 10 is upright (Cherney\'s wb tool)', NULL, 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Disease', 'n', 'Smut - Leaves,Ears,Stalks', 't', 'Row', 'nt', 0, NULL, NULL, 0, 0, 'NUMERICAL', NULL, 'Number of plants infected with smut on leaves, stalks, and ears', NULL, 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Ear Measurements', 's', 'Shank Length', 'w', 'Ear', 'sw', 0, NULL, NULL, 0, 0, 'NUMERICAL', NULL, 'length from base of ear to attachement to stalk', 'at harvest', 0);
-- GO
INSERT INTO `TraitInfo` (`TRAITGRP`, `TRTGRPID`, `TRAITNAME`, `TRTNAMEID`, `TRTBASIS`, `TRAITID`, `TRAITNUM`, `TRAITMIN`, `TRAITMAX`, `TRAITADD`, `TRAITCOMP`, `DATATYPE`, `TRTCOMPTO`, `TRTHOWTO`, `TRAITWHEN`, `MULTIEVAL`) VALUES('Ears, Nodes, & Height', 'e', 'Multiple Ears Per Primary Node', 'p', 'Plant', 'ep', 0, NULL, NULL, 0, 0, 'BINARY', NULL, 'Presence or absence of multiple ears arising from the primary ear node', 'at harvest', 0);
-- GO
COMMIT;
-- GO

--
-- Index: TRAITID
--
ALTER TABLE `BarFly`.`TraitInfo` ADD INDEX `TRAITID` (`TRAITID` );
-- GO

--
-- Dumping Table Foreign Keys
--

--
-- Dumping Triggers
--
SET FOREIGN_KEY_CHECKS=1;
-- GO


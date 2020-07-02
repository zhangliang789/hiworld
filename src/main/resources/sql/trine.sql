/*
SQLyog Ultimate v12.08 (64 bit)
MySQL - 5.6.34 : Database - trine
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`trine` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `trine`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `AddressID` varchar(255) NOT NULL COMMENT '地点ID',
  `AddressName` varchar(255) DEFAULT NULL COMMENT '地点名称',
  `FrameWorkID` varchar(200) DEFAULT NULL COMMENT '企业id',
  `FCreateDate` varchar(50) DEFAULT NULL COMMENT '创建日期',
  `AxisX` double(18,5) DEFAULT NULL COMMENT 'X坐标',
  `AxisY` double(18,5) DEFAULT NULL COMMENT 'Y坐标',
  `AxisZ` double(18,5) DEFAULT NULL COMMENT 'Z坐标',
  `Longitude` double(18,2) DEFAULT NULL COMMENT '经度',
  `Latitude` double(18,2) DEFAULT NULL COMMENT '纬度',
  `Deleted` bit(1) DEFAULT NULL COMMENT '是否已经删除',
  `DeleteDate` varchar(255) DEFAULT NULL COMMENT '删除日期',
  PRIMARY KEY (`AddressID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `customerextendedattributes` */

DROP TABLE IF EXISTS `customerextendedattributes`;

CREATE TABLE `customerextendedattributes` (
  `ClassID` int(11) NOT NULL,
  `ClassPropertyID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassPropertyDataType` varchar(50) DEFAULT NULL,
  `ClasspropertyName` varchar(50) DEFAULT NULL,
  `ClassPropertyTitle` varchar(50) DEFAULT NULL,
  `ClassPropertyValue` varchar(50) DEFAULT NULL,
  `CoalMineName` varchar(200) DEFAULT NULL,
  `FrameWorkID` varchar(200) DEFAULT NULL,
  `SystemAtrr` bit(1) DEFAULT b'1',
  `CanBeShow` bit(1) DEFAULT b'1',
  PRIMARY KEY (`ClassPropertyID`),
  KEY `IXFK_CustomerExtendedAttributes_CustomerExtendedClass` (`ClassID`),
  CONSTRAINT `FK_CustomerExtendedAttributes_CustomerExtendedClass` FOREIGN KEY (`ClassID`) REFERENCES `customerextendedclass` (`ClassID`)
) ENGINE=InnoDB AUTO_INCREMENT=2484 DEFAULT CHARSET=utf8;

/*Table structure for table `customerextendedattributes11` */

DROP TABLE IF EXISTS `customerextendedattributes11`;

CREATE TABLE `customerextendedattributes11` (
  `ClassID` int(11) NOT NULL,
  `ClassPropertyID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassPropertyDataType` varchar(50) DEFAULT NULL,
  `ClasspropertyName` varchar(50) DEFAULT NULL,
  `ClassPropertyTitle` varchar(50) DEFAULT NULL,
  `ClassPropertyValue` varchar(50) DEFAULT NULL,
  `CoalMineName` varchar(200) DEFAULT NULL,
  `FrameWorkID` varchar(200) DEFAULT NULL,
  `SystemAtrr` bit(1) DEFAULT b'1',
  `CanBeShow` bit(1) DEFAULT b'1',
  PRIMARY KEY (`ClassPropertyID`),
  KEY `IXFK_CustomerExtendedAttributes_CustomerExtendedClass` (`ClassID`),
  CONSTRAINT `customerextendedattributes11_ibfk_1` FOREIGN KEY (`ClassID`) REFERENCES `customerextendedclass` (`ClassID`)
) ENGINE=InnoDB AUTO_INCREMENT=251 DEFAULT CHARSET=utf8;

/*Table structure for table `customerextendedclass` */

DROP TABLE IF EXISTS `customerextendedclass`;

CREATE TABLE `customerextendedclass` (
  `ClassID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` varchar(200) DEFAULT NULL,
  `ClassFullName` varchar(500) DEFAULT NULL,
  `CoalMineName` varchar(200) DEFAULT NULL,
  `FrameWorkID` varchar(200) DEFAULT NULL,
  `ClassDescription` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ClassID`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8;

/*Table structure for table `riskcontrolanalyze` */

DROP TABLE IF EXISTS `riskcontrolanalyze`;

CREATE TABLE `riskcontrolanalyze` (
  `CoalMineName` varchar(200) DEFAULT NULL,
  `FrameWorkID` varchar(200) DEFAULT NULL,
  `CreaterID` int(11) DEFAULT NULL,
  `CreaterName` varchar(50) DEFAULT NULL,
  `CreateTime` varchar(50) DEFAULT NULL,
  `CreateUnitID` int(11) DEFAULT NULL,
  `CreateUnitName` varchar(50) DEFAULT NULL,
  `mAnalyzeID` int(11) NOT NULL AUTO_INCREMENT,
  `mAnalyzeUUID` varchar(50) DEFAULT NULL,
  `MajorType` varchar(50) DEFAULT NULL,
  `MonthPlanType` varchar(50) DEFAULT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `Reviews` varchar(200) DEFAULT NULL,
  `Status` bit(1) DEFAULT NULL,
  `AttachID` varchar(50) DEFAULT NULL,
  `AttachName` varchar(200) DEFAULT NULL,
  `AttachTime` varchar(50) DEFAULT NULL,
  `MonthPlaneID` int(11) DEFAULT '0' COMMENT '对应的月度计划ID',
  PRIMARY KEY (`mAnalyzeID`),
  KEY `IXFK_Riskcontrolanalyze_MAnalyzeID` (`FrameWorkID`,`mAnalyzeID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=554 DEFAULT CHARSET=utf8;

/*Table structure for table `riskcontrolanalyzeitem` */

DROP TABLE IF EXISTS `riskcontrolanalyzeitem`;

CREATE TABLE `riskcontrolanalyzeitem` (
  `CoalMineName` varchar(200) DEFAULT NULL,
  `FrameWorkID` varchar(200) DEFAULT NULL,
  `mAnalyzeID` int(11) DEFAULT NULL,
  `ItemID` int(11) NOT NULL AUTO_INCREMENT,
  `ItemUUID` varchar(50) DEFAULT NULL,
  `KeyContent` varchar(200) DEFAULT NULL,
  `LostControlItemID` int(11) DEFAULT NULL,
  `OHiddenTrouble` bit(1) DEFAULT b'0',
  `OMeasure` bit(1) DEFAULT b'0',
  `ORiskLevel` bit(1) DEFAULT b'0',
  `OHiddenTroubleID` int(11) DEFAULT '0' COMMENT '隐患ID',
  PRIMARY KEY (`ItemID`),
  KEY `IXFK_RiskControlAnalyzeItem_RiskControlAnalyze` (`mAnalyzeID`),
  KEY `IXFK_RiskControlAnalyzeItem_RiskSiteOutOfControlItem` (`LostControlItemID`),
  CONSTRAINT `FK_RiskControlAnalyzeItem_RiskControlAnalyze` FOREIGN KEY (`mAnalyzeID`) REFERENCES `riskcontrolanalyze` (`mAnalyzeID`),
  CONSTRAINT `FK_RiskControlAnalyzeItem_RiskSiteOutOfControlItem` FOREIGN KEY (`LostControlItemID`) REFERENCES `risksiteoutofcontrolitem` (`ItemID`)
) ENGINE=InnoDB AUTO_INCREMENT=2584 DEFAULT CHARSET=utf8;

/*Table structure for table `riskcontrolmeasure` */

DROP TABLE IF EXISTS `riskcontrolmeasure`;

CREATE TABLE `riskcontrolmeasure` (
  `MeasureID` int(11) NOT NULL AUTO_INCREMENT,
  `MeasureUUID` varchar(50) DEFAULT NULL,
  `RiskSiteID` int(11) DEFAULT NULL,
  `HazardID` int(11) DEFAULT NULL,
  `MeasureContent` text,
  `MeasureName` varchar(50) DEFAULT NULL,
  `MeasureType` varchar(50) DEFAULT NULL,
  `MeasureURL` varchar(500) DEFAULT NULL,
  `MeasureCreateTime` varchar(200) DEFAULT NULL,
  `FrameWorkID` varchar(200) NOT NULL,
  `CoalMineName` varchar(200) NOT NULL,
  `RiskSiteFullNumber` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`MeasureID`),
  KEY `IXFK_RiskControlMeasure_Hazard` (`HazardID`),
  KEY `IXFK_RiskControlMeasure_RiskSite` (`RiskSiteID`),
  CONSTRAINT `FK_RiskControlMeasure_Hazard` FOREIGN KEY (`HazardID`) REFERENCES `riskhazard` (`HazardID`),
  CONSTRAINT `FK_RiskControlMeasure_RiskSite` FOREIGN KEY (`RiskSiteID`) REFERENCES `risksite` (`RiskSiteID`)
) ENGINE=InnoDB AUTO_INCREMENT=24182 DEFAULT CHARSET=utf8;

/*Table structure for table `riskcontrolplanebymonth` */

DROP TABLE IF EXISTS `riskcontrolplanebymonth`;

CREATE TABLE `riskcontrolplanebymonth` (
  `CoalMineName` varchar(200) DEFAULT NULL,
  `FrameWorkID` varchar(200) DEFAULT NULL,
  `MonthPlanContent` text,
  `MonthPlaneID` int(11) NOT NULL AUTO_INCREMENT,
  `FYear` int(11) DEFAULT NULL,
  `FMonth` int(11) DEFAULT NULL,
  `MonthPlanCreater` varchar(50) DEFAULT NULL,
  `MonthPlanCreateUnit` varchar(50) DEFAULT NULL,
  `MonthPlanMajorType` varchar(50) DEFAULT NULL,
  `MonthPlanName` varchar(50) DEFAULT NULL,
  `MonthPlanStatus` bit(1) DEFAULT NULL,
  `MonthPlanType` varchar(50) DEFAULT NULL,
  `MonthPlanFrequency` varchar(255) DEFAULT NULL COMMENT '检查频次',
  `MonthPlanUUID` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`MonthPlaneID`)
) ENGINE=InnoDB AUTO_INCREMENT=715 DEFAULT CHARSET=utf8;

/*Table structure for table `riskcontrolplanebymonthitem` */

DROP TABLE IF EXISTS `riskcontrolplanebymonthitem`;

CREATE TABLE `riskcontrolplanebymonthitem` (
  `CoalMineName` varchar(200) DEFAULT NULL,
  `FrameWorkID` varchar(200) DEFAULT NULL,
  `MonthPlaneID` int(11) DEFAULT NULL,
  `ItemID` int(11) NOT NULL AUTO_INCREMENT,
  `ItemUUID` varchar(50) DEFAULT NULL,
  `ItemCheckerID` int(11) DEFAULT NULL,
  `ItemCheckerName` varchar(50) DEFAULT NULL,
  `ItemUnitID` int(11) DEFAULT NULL,
  `UnitName` varchar(50) DEFAULT NULL,
  `KeyContent` text,
  `RiskSiteID` int(11) DEFAULT NULL,
  `PlanDate` varchar(50) DEFAULT NULL,
  `RiskHazardsCount` int(11) DEFAULT '0',
  `ControlMeasureCount` int(11) DEFAULT '0',
  `MonthPlanItemStatus` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`ItemID`),
  KEY `IXFK_MonthItem_RiskControlPlaneByMonth` (`MonthPlaneID`),
  KEY `IXFK_MonthItem_RiskSite` (`RiskSiteID`),
  CONSTRAINT `FK_MonthItem_RiskControlPlaneByMonth` FOREIGN KEY (`MonthPlaneID`) REFERENCES `riskcontrolplanebymonth` (`MonthPlaneID`),
  CONSTRAINT `FK_RiskControlPlaneByMonthItem_RiskSite` FOREIGN KEY (`RiskSiteID`) REFERENCES `risksite` (`RiskSiteID`)
) ENGINE=InnoDB AUTO_INCREMENT=1722 DEFAULT CHARSET=utf8;

/*Table structure for table `riskdegree` */

DROP TABLE IF EXISTS `riskdegree`;

CREATE TABLE `riskdegree` (
  `coalMineName` varchar(200) DEFAULT NULL,
  `FrameWorkID` varchar(200) DEFAULT NULL,
  `RiskDegreeID` int(11) NOT NULL AUTO_INCREMENT,
  `HazardIdentificationMethod` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`RiskDegreeID`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8;

/*Table structure for table `riskdegreeitem` */

DROP TABLE IF EXISTS `riskdegreeitem`;

CREATE TABLE `riskdegreeitem` (
  `RiskDegreeID` int(11) DEFAULT NULL,
  `RiskDegreeItemID` int(11) NOT NULL AUTO_INCREMENT,
  `RiskLevelSettingID` int(11) DEFAULT NULL,
  `RiskRangMIX` int(11) DEFAULT NULL,
  `RiskRangMAX` int(11) DEFAULT NULL,
  `CoalMineName` varchar(200) DEFAULT NULL,
  `FrameWorkID` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`RiskDegreeItemID`),
  KEY `IXFK_RiskDegreeItem_RiskDegree` (`RiskDegreeID`),
  KEY `FK_RiskDegreeItem_RiskLevelSetting` (`RiskLevelSettingID`),
  CONSTRAINT `FK_RiskDegreeItem_RiskDegree` FOREIGN KEY (`RiskDegreeID`) REFERENCES `riskdegree` (`RiskDegreeID`),
  CONSTRAINT `FK_RiskDegreeItem_RiskLevelSetting` FOREIGN KEY (`RiskLevelSettingID`) REFERENCES `riskleversetting` (`RiskLevelSettingID`)
) ENGINE=InnoDB AUTO_INCREMENT=922 DEFAULT CHARSET=utf8;

/*Table structure for table `riskhazard` */

DROP TABLE IF EXISTS `riskhazard`;

CREATE TABLE `riskhazard` (
  `HazardID` int(11) NOT NULL AUTO_INCREMENT,
  `HazardUUID` varchar(50) DEFAULT NULL,
  `RiskSiteID` int(11) DEFAULT NULL,
  `CoalMineName` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `FrameWorkID` varchar(200) NOT NULL,
  `AccountabilityUnit` varchar(50) DEFAULT NULL,
  `Consequence` varchar(50) DEFAULT NULL,
  `DamageType` varchar(500) DEFAULT NULL,
  `Expose` int(11) DEFAULT NULL,
  `RiskTemplateID` int(11) DEFAULT NULL,
  `ExposeDegree` varchar(50) DEFAULT NULL,
  `LossConsequence` int(11) DEFAULT NULL,
  `MajorType` varchar(50) DEFAULT NULL,
  `ManageUnit` varchar(50) DEFAULT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `OperatingPost` varchar(50) DEFAULT NULL,
  `Possibility` double(11,1) DEFAULT NULL,
  `RiskDegree` varchar(50) DEFAULT NULL,
  `RiskObject` varchar(50) DEFAULT NULL,
  `RiskPlace` varchar(50) DEFAULT NULL,
  `RiskType` varchar(50) DEFAULT NULL,
  `RiskValue` double(11,1) NOT NULL,
  `Status` bit(1) NOT NULL DEFAULT b'0',
  `Sseverity` int(11) DEFAULT NULL,
  `RiskSiteFullNumber` varchar(200) DEFAULT NULL,
  `StandardFullNumber` varchar(500) DEFAULT NULL,
  `StandardName` varchar(1000) DEFAULT NULL,
  `DutyRole` varchar(200) DEFAULT NULL,
  `SupervisionUnit` varchar(200) DEFAULT NULL,
  `ExtendedAttributesJsonString` varchar(2000) DEFAULT NULL,
  `HazardDesc` varchar(1000) DEFAULT NULL,
  `RiskLevelSettingID` int(11) DEFAULT NULL,
  `LastModifyVersion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `RiskObjectType` varchar(50) DEFAULT NULL,
  `AccidentType` varchar(50) DEFAULT NULL,
  `RiskKind` varchar(50) DEFAULT NULL,
  `ControlResult` varchar(50) DEFAULT NULL,
  `IdentifyMethod` varchar(200) DEFAULT NULL COMMENT '辨识方法',
  PRIMARY KEY (`HazardID`),
  KEY `IXFK_Hazard_RiskSite` (`RiskSiteID`),
  KEY `IXFK_Hazard_HazardID` (`HazardID`,`FrameWorkID`) USING BTREE,
  KEY `HazardID` (`HazardID`,`RiskSiteID`,`FrameWorkID`),
  CONSTRAINT `FK_CoalMineHazard_CoalMineRiskSite` FOREIGN KEY (`RiskSiteID`) REFERENCES `risksite` (`RiskSiteID`)
) ENGINE=InnoDB AUTO_INCREMENT=39571 DEFAULT CHARSET=utf8;

/*Table structure for table `riskhazardcontrolrange` */

DROP TABLE IF EXISTS `riskhazardcontrolrange`;

CREATE TABLE `riskhazardcontrolrange` (
  `RiskSiteControlRangeID` int(11) NOT NULL AUTO_INCREMENT,
  `CoalMineName` varchar(200) NOT NULL,
  `HazardID` int(11) NOT NULL,
  `FrameWorkID` varchar(200) NOT NULL,
  `HazardUUID` varchar(200) NOT NULL,
  `RiskSiteID` int(11) NOT NULL,
  `RiskSiteFullNumber` varchar(200) NOT NULL,
  `ControlRangeName` varchar(200) DEFAULT NULL,
  `ControlRangeStartDay` varchar(50) DEFAULT NULL,
  `ControlRangeEndDay` varchar(50) DEFAULT NULL,
  `ControlRangePinci` varchar(50) DEFAULT NULL,
  `ManageUnit` varchar(200) DEFAULT NULL,
  `ManageUnitID` varchar(200) DEFAULT NULL,
  `ManageDuty` varchar(200) DEFAULT NULL,
  `ManageDutyID` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`RiskSiteControlRangeID`),
  KEY `FK_ControlRange_CoalMineHazard` (`HazardID`),
  CONSTRAINT `FK_ControlRange_CoalMineHazard` FOREIGN KEY (`HazardID`) REFERENCES `riskhazard` (`HazardID`)
) ENGINE=InnoDB AUTO_INCREMENT=23332 DEFAULT CHARSET=utf8;

/*Table structure for table `riskidentificationbyspecially` */

DROP TABLE IF EXISTS `riskidentificationbyspecially`;

CREATE TABLE `riskidentificationbyspecially` (
  `CoalMineName` varchar(200) DEFAULT NULL,
  `FrameWorkID` varchar(200) DEFAULT NULL,
  `RiskIdentificationSpeciallyUUID` varchar(200) DEFAULT NULL,
  `RiskIdentificationSpeciallyID` int(11) NOT NULL AUTO_INCREMENT,
  `FIdentityLink` varchar(50) DEFAULT NULL,
  `IdentityType` varchar(200) DEFAULT NULL,
  `MeetingCompere` varchar(2000) DEFAULT NULL,
  `MeetingContent` text,
  `MeetingParticipant` varchar(2000) DEFAULT NULL,
  `MeetingPlace` varchar(50) DEFAULT NULL,
  `MeetingRecorder` varchar(50) DEFAULT NULL,
  `MeetingTime` varchar(50) DEFAULT NULL,
  `MeetringAttachmentUUID` varchar(50) DEFAULT NULL,
  `RiskSiteID` int(11) DEFAULT NULL,
  `IdentificationYear` int(11) DEFAULT NULL,
  `IdentificationMonth` varchar(30) DEFAULT NULL,
  `createDate` varchar(50) DEFAULT '',
  `MeetringAttachmentFileName` varchar(50) DEFAULT NULL,
  `SpecialName` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`RiskIdentificationSpeciallyID`),
  KEY `IXFK_RiskIdentificationBySpecially_RiskSite` (`RiskSiteID`),
  CONSTRAINT `FK_RiskIdentificationBySpecially_RiskSite` FOREIGN KEY (`RiskSiteID`) REFERENCES `risksite` (`RiskSiteID`)
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=utf8;

/*Table structure for table `riskidentificationbyyear` */

DROP TABLE IF EXISTS `riskidentificationbyyear`;

CREATE TABLE `riskidentificationbyyear` (
  `CoalMineName` varchar(200) DEFAULT NULL,
  `FrameWorkID` varchar(200) DEFAULT NULL,
  `RiskIdentificationYearUUID` varchar(200) DEFAULT NULL,
  `RiskIdentificationYearID` int(11) NOT NULL AUTO_INCREMENT,
  `MeetingCompere` varchar(2000) DEFAULT NULL,
  `MeetingContent` text,
  `MeetingParticipant` varchar(2000) DEFAULT NULL,
  `MeetingPlace` varchar(200) DEFAULT NULL,
  `MeetingRecorder` varchar(50) DEFAULT NULL,
  `MeetingTime` varchar(50) DEFAULT NULL,
  `MeetringAttachmentUUID` varchar(50) DEFAULT NULL,
  `MYear` int(11) DEFAULT NULL,
  `MeetringAttachmentFileName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`RiskIdentificationYearID`)
) ENGINE=InnoDB AUTO_INCREMENT=342 DEFAULT CHARSET=utf8;

/*Table structure for table `riskidentificationbyyearentry` */

DROP TABLE IF EXISTS `riskidentificationbyyearentry`;

CREATE TABLE `riskidentificationbyyearentry` (
  `CoalMineName` varchar(200) DEFAULT NULL,
  `FrameWorkID` varchar(200) DEFAULT NULL,
  `RiskIdentificationYearID` int(11) DEFAULT NULL,
  `RiskIdentificationYearEntryID` int(11) NOT NULL AUTO_INCREMENT,
  `RiskSiteID` int(11) DEFAULT NULL,
  PRIMARY KEY (`RiskIdentificationYearEntryID`),
  KEY `IXFK_RiskIdentificationByYearEntry_RiskIdentificationByYear` (`RiskIdentificationYearID`),
  KEY `IXFK_RiskIdentificationByYearEntry_RiskSite` (`RiskSiteID`),
  CONSTRAINT `FK_RiskIdentificationByYearEntry_RiskIdentificationByYear` FOREIGN KEY (`RiskIdentificationYearID`) REFERENCES `riskidentificationbyyear` (`RiskIdentificationYearID`),
  CONSTRAINT `FK_RiskIdentificationByYearEntry_RiskSite` FOREIGN KEY (`RiskSiteID`) REFERENCES `risksite` (`RiskSiteID`)
) ENGINE=InnoDB AUTO_INCREMENT=1448 DEFAULT CHARSET=utf8;

/*Table structure for table `riskleversetting` */

DROP TABLE IF EXISTS `riskleversetting`;

CREATE TABLE `riskleversetting` (
  `CoalMineName` varchar(255) DEFAULT NULL,
  `FrameWorkID` varchar(200) DEFAULT NULL,
  `RiskLevelSettingID` int(11) NOT NULL AUTO_INCREMENT,
  `RiskColor` varchar(255) DEFAULT NULL,
  `RiskLevel` varchar(255) DEFAULT NULL,
  `RiskOrder` int(11) DEFAULT NULL,
  PRIMARY KEY (`RiskLevelSettingID`)
) ENGINE=InnoDB AUTO_INCREMENT=226 DEFAULT CHARSET=utf8;

/*Table structure for table `riskrelationhiddenandaccident` */

DROP TABLE IF EXISTS `riskrelationhiddenandaccident`;

CREATE TABLE `riskrelationhiddenandaccident` (
  `CoalMineName` varchar(200) DEFAULT NULL,
  `FrameWorkID` varchar(200) DEFAULT NULL,
  `RiskRelationHiddenAndAccidentID` int(11) NOT NULL AUTO_INCREMENT,
  `RiskSiteID` int(11) DEFAULT NULL,
  `HazardID` int(11) DEFAULT NULL,
  `Hazard_Name` varchar(200) DEFAULT NULL COMMENT '风险名称',
  `HazardDesc` varchar(1000) DEFAULT NULL COMMENT '风险描述',
  `DamageType` varchar(200) DEFAULT NULL COMMENT '灾害类型',
  `RiskLevelSettingID` int(11) DEFAULT NULL COMMENT '风险等级',
  `FHiddenTroubleID` int(11) DEFAULT NULL,
  `FDescription` varchar(2000) DEFAULT NULL COMMENT '隐患描述',
  `FLocation` varchar(200) DEFAULT NULL COMMENT '隐患地点',
  `Hiddentrouble_Level` varchar(50) DEFAULT NULL COMMENT '隐患等级',
  `AccidentID` varchar(50) DEFAULT NULL COMMENT '事故主键',
  `Accident_Danger_RiskID` varchar(50) DEFAULT NULL COMMENT '事故原因主键',
  `Accident_Reasion` varchar(500) DEFAULT NULL COMMENT '事故原因内容',
  `RiskSiteUUID` varchar(50) DEFAULT NULL,
  `HazardUUID` varchar(50) DEFAULT NULL,
  `FHiddenTroubleUUID` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`RiskRelationHiddenAndAccidentID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

/*Table structure for table `risksite` */

DROP TABLE IF EXISTS `risksite`;

CREATE TABLE `risksite` (
  `CoalMineName` varchar(200) DEFAULT NULL,
  `FrameWorkID` varchar(200) DEFAULT NULL,
  `RiskSiteID` int(11) NOT NULL AUTO_INCREMENT,
  `RiskSiteUUID` varchar(200) DEFAULT NULL,
  `Details` bit(1) DEFAULT NULL,
  `ExtendedAttributesJsonString` text,
  `FullNumber` varchar(500) DEFAULT NULL,
  `ManagerID` int(11) DEFAULT NULL,
  `ManagerName` varchar(50) DEFAULT NULL,
  `ManagerUnitID` int(11) DEFAULT NULL,
  `ManagerUnitName` varchar(50) DEFAULT NULL,
  `Name` varchar(500) DEFAULT NULL,
  `Number` varchar(500) DEFAULT NULL,
  `ParentID` varchar(50) NOT NULL,
  `ParentNumber` varchar(50) DEFAULT NULL,
  `RiskAccident` varchar(50) DEFAULT NULL,
  `RiskControlCycle` varchar(50) DEFAULT NULL,
  `RiskControlTier` varchar(50) DEFAULT NULL,
  `RiskDamageType` varchar(500) DEFAULT NULL,
  `RiskDescription` varchar(2000) DEFAULT NULL,
  `RiskFrequency` varchar(50) DEFAULT NULL,
  `RiskMajorType` varchar(50) DEFAULT NULL,
  `RiskSiteType` int(11) DEFAULT NULL,
  `RiskSiteTypeContent` varchar(200) DEFAULT NULL,
  `RiskSupervisor` varchar(50) DEFAULT NULL,
  `RiskTemplateID` int(11) DEFAULT NULL,
  `Deleted` bit(1) DEFAULT NULL,
  `LimitPeopleCount` int(11) DEFAULT NULL,
  `Status` bit(1) NOT NULL DEFAULT b'0',
  `RiskValue` int(11) DEFAULT NULL,
  `LastModifyVersion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `RiskStatusIsOk` bit(1) NOT NULL DEFAULT b'1' COMMENT '是否失控',
  `LocationID` varchar(200) DEFAULT NULL,
  `RiskLevelSettingID` int(11) DEFAULT NULL,
  `ConfirmDate` varchar(50) DEFAULT NULL COMMENT '确认日期',
  `ClearDate` varchar(50) DEFAULT NULL COMMENT '消除日期',
  PRIMARY KEY (`RiskSiteID`),
  KEY `IXFK_RiskSite_RiskSiteID` (`FrameWorkID`,`RiskSiteID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13441 DEFAULT CHARSET=utf8;

/*Table structure for table `risksitemap` */

DROP TABLE IF EXISTS `risksitemap`;

CREATE TABLE `risksitemap` (
  `RiskSiteMapId` int(11) NOT NULL AUTO_INCREMENT COMMENT '风险地图主键',
  `SvgFileName` varchar(255) DEFAULT NULL COMMENT 'SVG文件名称',
  `SvgFilePath` varchar(255) DEFAULT NULL COMMENT 'SVG文件路径',
  `CadFileName` varchar(255) DEFAULT NULL COMMENT 'CAD文件名称',
  `CadFilePath` varchar(255) DEFAULT NULL COMMENT 'CAD文件路径',
  `AddDate` varchar(50) DEFAULT NULL COMMENT '添加日期',
  `UpdateDate` varchar(50) DEFAULT NULL COMMENT '修改日期',
  `FrameWorkId` varchar(50) DEFAULT NULL COMMENT '企业ID',
  `TransForm` varchar(255) DEFAULT NULL,
  `OrigionX` varchar(255) DEFAULT NULL COMMENT '地图坐标原点X',
  `OrigionY` varchar(255) DEFAULT NULL COMMENT '地图坐标原点Y',
  PRIMARY KEY (`RiskSiteMapId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='风险地图信息表';

/*Table structure for table `risksiteoutofcontrol` */

DROP TABLE IF EXISTS `risksiteoutofcontrol`;

CREATE TABLE `risksiteoutofcontrol` (
  `CoalMineName` varchar(200) DEFAULT NULL,
  `FrameWorkID` varchar(200) DEFAULT NULL,
  `CheckRecordID` int(11) NOT NULL AUTO_INCREMENT,
  `CreateID` int(11) DEFAULT NULL,
  `CreateName` varchar(50) DEFAULT NULL,
  `CheckTime` varchar(50) DEFAULT NULL,
  `CreateUnitID` int(11) DEFAULT NULL,
  `CreateUnitName` varchar(50) DEFAULT NULL,
  `LostRiskSite` varchar(50) DEFAULT NULL,
  `MajorType` varchar(50) DEFAULT NULL,
  `RiskSiteID` int(11) DEFAULT NULL,
  `Status` bit(1) DEFAULT NULL,
  `MonthPlaneID` int(11) DEFAULT NULL,
  `MonthPlaneItemID` int(11) DEFAULT NULL,
  PRIMARY KEY (`CheckRecordID`),
  KEY `IXFK_RiskSiteOutOfControl_RiskSite` (`RiskSiteID`),
  KEY `FK_Monthitem_MonthPlaneItemID` (`MonthPlaneItemID`),
  KEY `FK_Monthitem_MonthPlaneID` (`MonthPlaneID`),
  CONSTRAINT `FK_Monthitem_MonthPlaneID` FOREIGN KEY (`MonthPlaneID`) REFERENCES `riskcontrolplanebymonthitem` (`MonthPlaneID`),
  CONSTRAINT `FK_Monthitem_MonthPlaneItemID` FOREIGN KEY (`MonthPlaneItemID`) REFERENCES `riskcontrolplanebymonthitem` (`ItemID`),
  CONSTRAINT `FK_RiskSiteOutOfControl_RiskSite` FOREIGN KEY (`RiskSiteID`) REFERENCES `risksite` (`RiskSiteID`)
) ENGINE=InnoDB AUTO_INCREMENT=939 DEFAULT CHARSET=utf8;

/*Table structure for table `risksiteoutofcontrolattachment` */

DROP TABLE IF EXISTS `risksiteoutofcontrolattachment`;

CREATE TABLE `risksiteoutofcontrolattachment` (
  `CheckRecordID` int(11) DEFAULT NULL,
  `ItemID` int(11) DEFAULT NULL,
  `CoalMineName` varchar(200) DEFAULT NULL,
  `FrameWorkID` varchar(200) DEFAULT NULL,
  `AttchID` int(11) NOT NULL AUTO_INCREMENT,
  `LocalPath` varchar(200) DEFAULT NULL,
  `FileName` varchar(80) DEFAULT NULL,
  `ServiceUUID` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`AttchID`),
  KEY `IXFK_RiskSiteOutOfControlAttachment_RiskSiteOutOfControlItem` (`ItemID`),
  CONSTRAINT `FK_RiskSiteOutOfControlAttachment_RiskSiteOutOfControlItem` FOREIGN KEY (`ItemID`) REFERENCES `risksiteoutofcontrolitem` (`ItemID`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

/*Table structure for table `risksiteoutofcontrolitem` */

DROP TABLE IF EXISTS `risksiteoutofcontrolitem`;

CREATE TABLE `risksiteoutofcontrolitem` (
  `CoalMineName` varchar(200) DEFAULT NULL,
  `FrameWorkID` varchar(200) DEFAULT NULL,
  `CheckRecordID` int(11) DEFAULT NULL,
  `ItemID` int(11) NOT NULL AUTO_INCREMENT,
  `RiskSiteID` int(11) DEFAULT NULL,
  `HazardID` int(11) DEFAULT NULL,
  `CheckQuestion` varchar(500) DEFAULT NULL,
  `OutOfControlStatus` bit(1) DEFAULT b'1',
  PRIMARY KEY (`ItemID`),
  KEY `IXFK_RiskSiteOutOfControlItem_Hazard` (`HazardID`),
  KEY `IXFK_RiskSiteOutOfControlItem_RiskSiteOutOfControl` (`CheckRecordID`),
  CONSTRAINT `FK_RiskSiteOutOfControlItem_CheckRecordID` FOREIGN KEY (`CheckRecordID`) REFERENCES `risksiteoutofcontrol` (`CheckRecordID`),
  CONSTRAINT `FK_RiskSiteOutOfControlItem_Hazard` FOREIGN KEY (`HazardID`) REFERENCES `riskhazard` (`HazardID`)
) ENGINE=InnoDB AUTO_INCREMENT=1239 DEFAULT CHARSET=utf8;

/*Table structure for table `risksiteplace` */

DROP TABLE IF EXISTS `risksiteplace`;

CREATE TABLE `risksiteplace` (
  `RiskSiteID` int(11) NOT NULL,
  `RiskSiteUUID` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `AddressID` varchar(200) DEFAULT NULL,
  `id` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `IXFK_RiskSitePlace_RiskSite` (`RiskSiteID`),
  CONSTRAINT `FK_RiskSitePlace_RiskSite` FOREIGN KEY (`RiskSiteID`) REFERENCES `risksite` (`RiskSiteID`)
) ENGINE=InnoDB AUTO_INCREMENT=1599 DEFAULT CHARSET=utf8;

/*Table structure for table `syncriskhistory` */

DROP TABLE IF EXISTS `syncriskhistory`;

CREATE TABLE `syncriskhistory` (
  `CoalMineName` varchar(200) DEFAULT NULL,
  `FrameWorkID` varchar(200) DEFAULT NULL,
  `FSynHistoryID` int(11) NOT NULL AUTO_INCREMENT,
  `RiskSiteID` int(11) DEFAULT NULL,
  `RiskSiteUUID` varchar(200) DEFAULT NULL,
  `ParentID` int(11) DEFAULT NULL,
  `ParentNumber` varchar(200) DEFAULT NULL,
  `FullNumber` varchar(500) DEFAULT NULL,
  `HazardUUID` varchar(255) DEFAULT NULL,
  `HazardID` int(11) DEFAULT NULL,
  `FSynStatus` bit(1) DEFAULT NULL COMMENT '是否上报',
  `FSynTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '上报时间',
  `FSynEmpID` int(11) DEFAULT NULL COMMENT '上报人ID',
  `FSynEmpName` varchar(50) DEFAULT NULL COMMENT '上报人姓名',
  `FSynResultCode` int(11) DEFAULT NULL COMMENT '上报服务返回值',
  PRIMARY KEY (`FSynHistoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=295 DEFAULT CHARSET=utf8;

/*Table structure for table `syncspecialhistory` */

DROP TABLE IF EXISTS `syncspecialhistory`;

CREATE TABLE `syncspecialhistory` (
  `CoalMineName` varchar(255) DEFAULT NULL,
  `FrameWorkID` varchar(255) DEFAULT NULL,
  `FSynHistoryID` int(11) DEFAULT NULL,
  `RiskIdentificationSpeciallyID` varchar(50) DEFAULT NULL,
  `FSynStatus` bit(1) DEFAULT NULL,
  `FSynTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `FSynEmpID` int(11) DEFAULT NULL,
  `FSynEmpName` varchar(50) DEFAULT NULL,
  `FSynResultCode` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `syncyearhistory` */

DROP TABLE IF EXISTS `syncyearhistory`;

CREATE TABLE `syncyearhistory` (
  `CoalMineName` varchar(255) DEFAULT NULL,
  `FrameWorkID` varchar(255) DEFAULT NULL,
  `FSynHistoryID` int(11) DEFAULT NULL,
  `RiskIdentificationYearID` varchar(255) DEFAULT NULL,
  `FSynStatus` bit(1) DEFAULT NULL,
  `FSynTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `FSynEmpID` int(11) DEFAULT NULL,
  `FSynEmpName` varchar(50) DEFAULT NULL,
  `FSynResultCode` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `synsetting` */

DROP TABLE IF EXISTS `synsetting`;

CREATE TABLE `synsetting` (
  `coalMineName` varchar(255) DEFAULT NULL,
  `FrameWorkID` varchar(255) NOT NULL,
  `SynServiceBaseAddress` varchar(255) DEFAULT NULL,
  `SynMineCode` varchar(255) DEFAULT NULL,
  `SynToken` varchar(255) DEFAULT NULL,
  `ApiKey` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`FrameWorkID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `templatehazard` */

DROP TABLE IF EXISTS `templatehazard`;

CREATE TABLE `templatehazard` (
  `HazardID` int(11) NOT NULL AUTO_INCREMENT,
  `HazardUUID` varchar(50) DEFAULT NULL,
  `RiskSiteID` int(11) DEFAULT NULL,
  `CoalMineName` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `FrameWorkID` varchar(200) NOT NULL,
  `AccountabilityUnit` varchar(50) DEFAULT NULL,
  `Consequence` varchar(50) DEFAULT NULL,
  `DamageType` varchar(50) DEFAULT NULL,
  `Expose` int(11) DEFAULT NULL,
  `RiskTemplateID` int(11) DEFAULT NULL,
  `ExposeDegree` varchar(50) DEFAULT NULL,
  `LossConsequence` int(11) DEFAULT NULL,
  `MajorType` varchar(50) DEFAULT NULL,
  `ManageUnit` varchar(50) DEFAULT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `OperatingPost` varchar(50) DEFAULT NULL,
  `Possibility` double(11,1) DEFAULT NULL,
  `RiskDegree` varchar(50) DEFAULT NULL,
  `RiskObject` varchar(50) DEFAULT NULL,
  `RiskPlace` varchar(50) DEFAULT NULL,
  `RiskType` varchar(50) DEFAULT NULL,
  `RiskValue` double(11,1) DEFAULT NULL,
  `Status` bit(1) NOT NULL DEFAULT b'0',
  `Sseverity` int(11) DEFAULT NULL,
  `RiskSiteFullNumber` varchar(200) DEFAULT NULL,
  `StandardFullNumber` varchar(500) DEFAULT NULL,
  `StandardName` varchar(1000) DEFAULT NULL,
  `DutyRole` varchar(200) DEFAULT NULL,
  `SupervisionUnit` varchar(200) DEFAULT NULL,
  `ExtendedAttributesJsonString` varchar(2000) DEFAULT NULL,
  `HazardDesc` varchar(1000) DEFAULT NULL,
  `RiskLevelSettingID` int(11) DEFAULT NULL,
  `LastModifyVersion` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `RiskObjectType` varchar(50) DEFAULT NULL,
  `AccidentType` varchar(50) DEFAULT NULL,
  `RiskKind` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`HazardID`)
) ENGINE=InnoDB AUTO_INCREMENT=21892 DEFAULT CHARSET=utf8;

/*Table structure for table `templatehazardhl` */

DROP TABLE IF EXISTS `templatehazardhl`;

CREATE TABLE `templatehazardhl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `workflow_id` varchar(50) DEFAULT NULL COMMENT '工作流ID',
  `workflow_content` varchar(256) DEFAULT NULL COMMENT '工作流程名称',
  `step_count` int(10) DEFAULT NULL COMMENT '步骤数量',
  `control_object_name` varchar(128) DEFAULT NULL COMMENT '管控对象名称',
  `step_num` int(10) DEFAULT NULL,
  `work_step` varchar(128) DEFAULT NULL COMMENT '工作步骤',
  `work_result` varchar(128) DEFAULT NULL COMMENT '事故后果',
  `result_ability` varchar(128) DEFAULT NULL COMMENT '事故发生可能性',
  `result_seriously` varchar(128) DEFAULT NULL COMMENT '事故后果严重性',
  `result_risklradio` varchar(128) DEFAULT NULL COMMENT '风险度',
  `result_risklevel` varchar(128) DEFAULT NULL COMMENT '风险等级',
  `control_measure` varchar(128) DEFAULT NULL COMMENT '管控措施',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;

/*Table structure for table `templateriskcontrolmeasure` */

DROP TABLE IF EXISTS `templateriskcontrolmeasure`;

CREATE TABLE `templateriskcontrolmeasure` (
  `MeasureID` int(11) NOT NULL AUTO_INCREMENT,
  `MeasureContent` text,
  `MeasureName` varchar(50) DEFAULT NULL,
  `MeasureType` varchar(50) DEFAULT NULL,
  `MeasureURL` varchar(500) DEFAULT NULL,
  `MeasureUUID` varchar(50) DEFAULT NULL,
  `FrameWorkID` varchar(200) NOT NULL,
  `CoalMineName` varchar(200) NOT NULL,
  `RiskTemplateID` int(11) DEFAULT NULL,
  `HazardID` int(11) DEFAULT NULL,
  PRIMARY KEY (`MeasureID`),
  KEY `IXFK_RiskControlMeasureTemplate_HazardTemplate` (`HazardID`),
  KEY `IXFK_RiskControlMeasureTemplate_RiskSiteTemplate` (`RiskTemplateID`),
  CONSTRAINT `FK_RiskControlMeasureTemplate_HazardTemplate` FOREIGN KEY (`HazardID`) REFERENCES `templatehazard` (`HazardID`)
) ENGINE=InnoDB AUTO_INCREMENT=1152 DEFAULT CHARSET=utf8;

/*Table structure for table `templaterisksite` */

DROP TABLE IF EXISTS `templaterisksite`;

CREATE TABLE `templaterisksite` (
  `CoalMineName` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `FrameWorkID` varchar(200) NOT NULL,
  `RiskTemplateID` int(11) NOT NULL AUTO_INCREMENT,
  `RiskTemplateUUID` varchar(200) NOT NULL,
  `Details` bit(1) DEFAULT NULL,
  `ExtendedAttributesJsonString` text,
  `FullNumber` varchar(500) DEFAULT NULL,
  `ManagerID` int(11) DEFAULT NULL,
  `ManagerName` varchar(50) DEFAULT NULL,
  `ManagerUnitID` int(11) DEFAULT NULL,
  `ManagerUnitName` varchar(50) DEFAULT NULL,
  `Name` varchar(500) DEFAULT NULL,
  `Number` varchar(500) DEFAULT NULL,
  `ParentID` varchar(50) DEFAULT NULL,
  `ParentNumber` varchar(50) DEFAULT NULL,
  `RiskAccident` varchar(50) DEFAULT NULL,
  `RiskColor` varchar(50) DEFAULT NULL,
  `RiskControlCycle` varchar(50) DEFAULT NULL,
  `RiskControlTier` varchar(50) DEFAULT NULL,
  `RiskDamageType` varchar(50) DEFAULT NULL,
  `RiskDescription` varchar(50) DEFAULT NULL,
  `RiskFrequency` varchar(50) DEFAULT NULL,
  `RiskLevel` varchar(50) DEFAULT NULL,
  `RiskMajorType` varchar(50) DEFAULT NULL,
  `RiskSiteType` varchar(50) DEFAULT NULL,
  `RiskSiteTypeContent` varchar(200) DEFAULT NULL,
  `RiskSupervisor` varchar(50) DEFAULT NULL,
  `RiskValue` int(11) DEFAULT NULL,
  PRIMARY KEY (`RiskTemplateID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `trinedataversion` */

DROP TABLE IF EXISTS `trinedataversion`;

CREATE TABLE `trinedataversion` (
  `VersionID` int(20) NOT NULL AUTO_INCREMENT,
  `FrameWorkID` varchar(20) NOT NULL COMMENT '企业ID',
  `CoalMineName` varchar(20) NOT NULL COMMENT '企业名字',
  `VersionTime` varchar(20) DEFAULT NULL COMMENT '版本时间',
  `Version` varchar(200) DEFAULT NULL COMMENT '版本号',
  PRIMARY KEY (`VersionID`,`FrameWorkID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

/*
Navicat MySQL Data Transfer

Source Server         : test
Source Server Version : 50162
Source Host           : localhost:3306
Source Database       : classmanage

Target Server Type    : MYSQL
Target Server Version : 50162
File Encoding         : 65001

Date: 2012-12-12 11:52:01
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `classinfo`
-- ----------------------------
DROP TABLE IF EXISTS `classinfo`;
CREATE TABLE `classinfo` (
  `cid` int(12) NOT NULL AUTO_INCREMENT,
  `tid` int(12) NOT NULL,
  `coursename` varchar(32) NOT NULL,
  `coursetime` varchar(32) NOT NULL,
  `testtype` varchar(12) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of classinfo
-- ----------------------------
INSERT INTO `classinfo` VALUES ('2', '111', '数据结构', '星期一', '考试');
INSERT INTO `classinfo` VALUES ('5', '111', '高级JAVA', '星期五', '考查');
INSERT INTO `classinfo` VALUES ('6', '110', 'C语言', '2012-12-8 7:47:36', '考试');
INSERT INTO `classinfo` VALUES ('7', '110', '11', '11', '考试');

-- ----------------------------
-- Table structure for `studentinfo`
-- ----------------------------
DROP TABLE IF EXISTS `studentinfo`;
CREATE TABLE `studentinfo` (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `cid` int(16) NOT NULL,
  `tid` int(16) NOT NULL,
  `sid` int(64) NOT NULL,
  `sname` varchar(16) NOT NULL,
  `score` int(16) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of studentinfo
-- ----------------------------
INSERT INTO `studentinfo` VALUES ('5', '2', '111', '1138225', '王兴龙', '98');
INSERT INTO `studentinfo` VALUES ('7', '5', '111', '1138225', '王兴龙', '98');
INSERT INTO `studentinfo` VALUES ('9', '5', '111', '11138224', '王飞', '95');
INSERT INTO `studentinfo` VALUES ('10', '5', '111', '1138221', '牟维鹏', '97');
INSERT INTO `studentinfo` VALUES ('11', '5', '111', '11138211', '金传军', '94');
INSERT INTO `studentinfo` VALUES ('12', '2', '111', '1138224', '王飞', '80');
INSERT INTO `studentinfo` VALUES ('13', '2', '111', '1138231', '牟维鹏', '83');
INSERT INTO `studentinfo` VALUES ('14', '6', '110', '11138225', '王兴龙', '94');
INSERT INTO `studentinfo` VALUES ('15', '6', '110', '1138256', '王飞', '75');

-- ----------------------------
-- Table structure for `teacherinfo`
-- ----------------------------
DROP TABLE IF EXISTS `teacherinfo`;
CREATE TABLE `teacherinfo` (
  `id` int(32) NOT NULL,
  `teachername` varchar(16) NOT NULL,
  `teacherpwd` varchar(16) NOT NULL,
  `sex` varchar(8) NOT NULL,
  `college` varchar(64) NOT NULL,
  `age` int(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacherinfo
-- ----------------------------
INSERT INTO `teacherinfo` VALUES ('110', '刘亚辉', '123456', '男', '计算机科学与工程学院', '29');
INSERT INTO `teacherinfo` VALUES ('111', '王森', '123456', '男', '计算机科学与工程学院', '32');
INSERT INTO `teacherinfo` VALUES ('112', '苟光磊', '123456', '男', '计算机科学与工程学院', '32');
INSERT INTO `teacherinfo` VALUES ('116', '刘洁', '123456', '女', '计算机科学与工程学院', '32');

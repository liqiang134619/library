/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : library

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2020-08-14 18:43:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for book_group
-- ----------------------------
DROP TABLE IF EXISTS `book_group`;
CREATE TABLE `book_group` (
  `id` int(32) NOT NULL AUTO_INCREMENT COMMENT '主键，自增',
  `book_group_code` varchar(255) DEFAULT NULL,
  `book_group_name` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `deleted` int(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of book_group
-- ----------------------------
INSERT INTO `book_group` VALUES ('1', 'wenxue', '文学', '2020-08-12 14:10:44', '2020-08-12 14:10:26', '0');
INSERT INTO `book_group` VALUES ('2', 'liuxing', '流行', '2020-08-12 14:10:44', '2020-08-12 14:10:29', '0');
INSERT INTO `book_group` VALUES ('3', 'wenhua', '文化', '2020-08-12 14:10:44', '2020-08-12 14:10:32', '0');
INSERT INTO `book_group` VALUES ('4', 'shenghuo', '生活', '2020-08-12 14:10:44', '2020-08-12 14:10:34', '0');
INSERT INTO `book_group` VALUES ('5', 'jingguan', '经管', '2020-08-12 14:10:44', '2020-08-12 14:10:37', '0');
INSERT INTO `book_group` VALUES ('6', 'keji', '科技', '2020-08-12 14:10:44', '2020-08-12 14:10:41', '0');

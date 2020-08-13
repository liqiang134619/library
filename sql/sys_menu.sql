/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : library

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2020-08-11 16:27:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` int(32) NOT NULL AUTO_INCREMENT COMMENT '主键id，自增',
  `menu_name` varchar(32) DEFAULT NULL COMMENT '菜单名称',
  `menu_desc` varchar(64) DEFAULT NULL COMMENT '菜单描述',
  `path` varchar(32) DEFAULT NULL COMMENT '请求路径',
  `router` varchar(32) DEFAULT NULL COMMENT '路由路径',
  `icon` varchar(32) DEFAULT NULL COMMENT '图标',
  `parent_id` int(32) DEFAULT NULL COMMENT '父id',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `deleted` int(11) DEFAULT NULL COMMENT '删除标记',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '系统管理', null, null, null, null, '0', '2020-08-11 14:46:10', '2020-08-11 14:46:26', '0');
INSERT INTO `sys_menu` VALUES ('2', '图书管理', null, null, null, null, '0', '2020-08-11 14:46:10', '2020-08-11 14:46:26', '0');
INSERT INTO `sys_menu` VALUES ('3', '借还管理', null, null, null, null, '0', '2020-08-11 14:46:10', '2020-08-11 14:46:26', '0');
INSERT INTO `sys_menu` VALUES ('5', '报表分析', null, null, null, null, '0', '2020-08-11 14:46:10', '2020-08-11 14:46:26', '0');
INSERT INTO `sys_menu` VALUES ('6', '馆员管理', null, null, null, null, '1', '2020-08-11 14:46:10', '2020-08-11 14:46:26', '0');
INSERT INTO `sys_menu` VALUES ('7', '修改密码', null, null, null, null, '1', '2020-08-11 14:46:10', '2020-08-11 14:46:26', '0');
INSERT INTO `sys_menu` VALUES ('8', '系统维护', null, null, null, null, '1', '2020-08-11 14:46:10', '2020-08-11 14:46:26', '0');
INSERT INTO `sys_menu` VALUES ('9', '读者类别', null, null, null, null, '12', '2020-08-11 14:46:10', '2020-08-11 14:46:26', '0');
INSERT INTO `sys_menu` VALUES ('10', '书证管理', null, null, null, null, '12', '2020-08-11 14:46:10', '2020-08-11 14:46:26', '0');
INSERT INTO `sys_menu` VALUES ('11', '读者信息', null, null, null, null, '12', '2020-08-11 14:46:10', '2020-08-11 14:46:26', '0');
INSERT INTO `sys_menu` VALUES ('12', '读者管理', null, null, null, null, '0', '2020-08-11 14:46:10', '2020-08-11 14:46:26', '0');
INSERT INTO `sys_menu` VALUES ('13', '图书类别', null, null, null, null, '2', '2020-08-11 14:46:10', '2020-08-11 14:46:26', '0');
INSERT INTO `sys_menu` VALUES ('14', '借书处理', null, null, null, null, '3', '2020-08-11 14:46:10', '2020-08-11 14:46:26', '0');
INSERT INTO `sys_menu` VALUES ('15', '还书处理', null, null, null, null, '3', '2020-08-11 14:46:10', '2020-08-11 14:46:26', '0');
INSERT INTO `sys_menu` VALUES ('16', '预约处理', null, null, null, null, '3', '2020-08-11 14:46:10', '2020-08-11 14:46:26', '0');
INSERT INTO `sys_menu` VALUES ('17', '续借处理', null, null, null, null, '3', '2020-08-11 14:46:10', '2020-08-11 14:46:26', '0');
INSERT INTO `sys_menu` VALUES ('18', '催还处理', null, null, null, null, '3', '2020-08-11 14:46:10', '2020-08-11 14:46:26', '0');
INSERT INTO `sys_menu` VALUES ('19', '图书类别分析', null, null, null, null, '5', '2020-08-11 14:46:10', '2020-08-11 14:46:26', '0');
INSERT INTO `sys_menu` VALUES ('20', '借还时间分析', null, null, null, null, '5', '2020-08-11 14:46:10', '2020-08-11 14:46:26', '0');
INSERT INTO `sys_menu` VALUES ('21', '藏书查询', null, null, null, null, '2', '2020-08-11 14:46:10', '2020-08-11 14:46:10', '0');

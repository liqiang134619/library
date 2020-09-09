/*
 Navicat Premium Data Transfer

 Source Server         : 本机
 Source Server Type    : MySQL
 Source Server Version : 80018
 Source Host           : localhost:3306
 Source Schema         : library

 Target Server Type    : MySQL
 Target Server Version : 80018
 File Encoding         : 65001

 Date: 09/09/2020 23:40:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `id` int(32) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(32) DEFAULT NULL COMMENT '书名',
  `press` varchar(32) DEFAULT NULL COMMENT '出版社',
  `publish_time` varchar(32) DEFAULT NULL COMMENT '出版时间',
  `price` decimal(10,2) DEFAULT NULL COMMENT '定价',
  `author` varchar(32) DEFAULT NULL,
  `binding` varchar(32) DEFAULT NULL COMMENT '装帧',
  `series` varchar(32) DEFAULT NULL COMMENT '丛书系列',
  `isbn` varchar(32) DEFAULT NULL,
  `pages` int(32) DEFAULT NULL,
  `category` int(16) DEFAULT NULL,
  `img` varchar(64) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `deleted` int(32) DEFAULT NULL,
  `inventory` int(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of book
-- ----------------------------
BEGIN;
INSERT INTO `book` VALUES (5, '坏小孩', '湖南文艺出版社', '2018-7-1', 54.00, '紫金陈', '平装', '推理之王', '9787540468422', 452, 1, 'https://img3.doubanio.com/view/subject/l/public/s29793550.jpg', NULL, '2020-09-08 23:01:19', 0, 249);
INSERT INTO `book` VALUES (6, '活着', '作家出版社', '2012-8-1', 20.00, '余华', '平装', '余华作品（2012版）', '9787506365437', 191, 1, 'https://img3.doubanio.com/view/subject/l/public/s29053580.jpg', NULL, '2020-09-08 22:56:15', 0, 249);
INSERT INTO `book` VALUES (7, '白夜行', '南海出版公司', '2013-1-1', 39.50, '[日]东野圭吾', '精装', '新经典文库·东野圭吾作品', '9787544258609', 538, 1, 'https://img1.doubanio.com/view/subject/l/public/s24514468.jpg', NULL, '2020-09-08 22:56:18', 0, 249);
INSERT INTO `book` VALUES (8, '解忧杂货店', '南海出版公司', '2014-5', 39.50, '[日]东野圭吾', '精装', '新经典文库·东野圭吾作品', '9787544270878', 291, 1, 'https://img3.doubanio.com/view/subject/l/public/s27264181.jpg', NULL, '2020-09-08 22:56:20', 0, 248);
INSERT INTO `book` VALUES (9, '房思琪的初恋乐园', '北京联合出版公司', '2018-1', 45.00, '林奕含', '平装', '', '9787559614636', 272, 1, 'https://img3.doubanio.com/view/subject/l/public/s29651121.jpg', NULL, '2020-09-08 22:56:23', 0, 250);
INSERT INTO `book` VALUES (10, '长夜难明', '云南人民出版社', '2017-1', 42.00, '紫金陈', '平装', '推理之王', '9787222143975', 288, 1, 'https://img9.doubanio.com/view/subject/l/public/s29179365.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (11, '围城', '人民文学出版社', '1991-2', 19.00, '钱钟书', '平装', '', '9787020024759', 359, 1, 'https://img3.doubanio.com/view/subject/l/public/s1070222.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (12, '嫌疑人X的献身', '南海出版公司', '2008-9', 28.00, '[日]东野圭吾', '精装', '新经典文库·东野圭吾作品', '9787544241694', 251, 1, 'https://img9.doubanio.com/view/subject/l/public/s3254244.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (13, '平凡的世界（全三部）', '人民文学出版社', '2005-1', 64.00, '路遥', '平装', '茅盾文学奖获奖作品全集', '9787020049295', 1631, 1, 'https://img3.doubanio.com/view/subject/l/public/s1144911.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (14, '烧纸', '武汉大学出版社', '2020-5', 58.00, '[韩]李沧东', '平装', '', '9787307207004', 320, 1, 'https://img1.doubanio.com/view/subject/l/public/s33642427.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (15, '局外人', '上海译文出版社', '2010-8', 22.00, '[法]阿尔贝·加缪', '精装', '译文经典（精装本）', '9787532751471', 128, 1, 'https://img9.doubanio.com/view/subject/l/public/s4468484.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (16, '三体', '重庆出版社', '2008-1', 23.00, '刘慈欣', '平装', '科幻世界·中国科幻基石丛书', '9787536692930', 302, 1, 'https://img1.doubanio.com/view/subject/l/public/s2768378.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (17, '人生海海', '北京十月文艺出版社', '2019-4', 55.00, '麦家', '精装', '新经典文库·麦家作品集', '9787530219218', 345, 1, 'https://img3.doubanio.com/view/subject/l/public/s32266692.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (18, '三体全集', '重庆出版社', '2012-1-1', 168.00, '刘慈欣', '精装', '科幻世界·中国科幻基石丛书', '9787229042066', 1285, 1, 'https://img3.doubanio.com/view/subject/l/public/s30016152.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (19, '骆驼祥子', '人民文学出版社', '2000-3-1', 12.00, '老舍', '平装', '', '9787020028115', 224, 1, 'https://img3.doubanio.com/view/subject/l/public/s1146040.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (20, '云边有个小卖部', '湖南文艺出版社', '2018-7', 42.00, '张嘉佳', '平装', '', '9787540487645', 328, 1, 'https://img9.doubanio.com/view/subject/l/public/s29799055.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (21, '明朝那些事儿（1-9）', '中国海关出版社', '2009-4', 358.20, '当年明月', '精装16开', '', '9787801656087', NULL, 1, 'https://img9.doubanio.com/view/subject/l/public/s3745215.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (22, '白鹿原', '人民文学出版社', '2012-9', 39.00, '陈忠实', '精装', '', '9787020090297', 697, 1, 'https://img9.doubanio.com/view/subject/l/public/s28111905.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (23, '三国演义（全二册）', '人民文学出版社', '1998-05', 39.50, '罗贯中', '平装', '中国古典文学读本丛书', '9787020008728', 990, 1, 'https://img3.doubanio.com/view/subject/l/public/s1076932.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (24, '白夜行', '南海出版公司', '2008-9', 29.80, '[日]东野圭吾', '平装', '新经典文库·东野圭吾作品', '9787544242516', 467, 1, 'https://img3.doubanio.com/view/subject/l/public/s4610502.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (25, '许三观卖血记', '南海出版公司', '1998-9', 16.80, '余华', '平装', '余华作品', '9787544211765', 269, 1, 'https://img3.doubanio.com/view/subject/l/public/s1074291.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (26, '人间失格', '吉林出版集团有限责任公司', '2009-9', 16.00, '太宰治', '平装', '草月译谭', '9787546302393', 168, 1, 'https://img9.doubanio.com/view/subject/l/public/s6100756.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (27, '生吞', '浙江文艺出版社', '2017-11-1', 39.00, '郑执', '平装', '', '9787533950057', 288, 1, 'https://img3.doubanio.com/view/subject/l/public/s33593231.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (28, '挪威的森林', '上海译文出版社', '2007-7', 23.00, '[日]村上春树', '平装', '村上春树文集', '9787532742929', 384, 1, 'https://img1.doubanio.com/view/subject/l/public/s27312538.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (29, '许三观卖血记', '作家出版社', '2012-9', 24.00, '余华', '平装', '余华作品（2012版）', '9787506365680', 264, 1, 'https://img3.doubanio.com/view/subject/l/public/s24575140.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (30, '围城', '人民文学出版社', '1991-2-1', 39.00, '钱钟书', '精装', '', '9787020090006', 362, 1, 'https://img1.doubanio.com/view/subject/l/public/s11276847.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (31, '鞋带', '上海译文出版社', '2020-5', 4.00, '[意]多梅尼科·斯塔尔诺内', '平装', '', '9787532783243', 150, 1, 'https://img9.doubanio.com/view/subject/l/public/s33601424.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (32, '无证之罪', '浦睿文化·湖南人民出版社', '2018-6', 49.00, '紫金陈', '平装', '推理之王', '9787543898752', 364, 1, 'https://img1.doubanio.com/view/subject/l/public/s29791969.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (33, '恶意', '南海出版公司', '2009-6', 18.00, '[日]东野圭吾', '平装', '新经典文库·东野圭吾作品', '9787544244428', 264, 1, 'https://img9.doubanio.com/view/subject/l/public/s3814606.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (34, '默读', '百花洲文艺出版社', '2018-1', 45.00, 'Priest', '平装', '默读', '9787550025103', 344, 1, 'https://img1.doubanio.com/view/subject/l/public/s29663109.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (35, '两京十五日', '湖南文艺出版社', '2020-7', 108.00, '马伯庸', '平装', '博集天卷·马伯庸作品', '9787540496715', 584, 1, 'https://img3.doubanio.com/view/subject/l/public/s33682883.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (36, '诡计博物馆', '上海文艺出版社', '2020-6', 39.90, '[日]大山诚一郎', '平装', '读客全球顶级畅销小说文库：大山诚一郎作品', '9787532176090', 272, 1, 'https://img3.doubanio.com/view/subject/l/public/s33624662.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (37, '三体Ⅱ', '重庆出版社', '2008-5', 32.00, '刘慈欣', '平装', '科幻世界·中国科幻基石丛书', '9787536693968', 470, 1, 'https://img3.doubanio.com/view/subject/l/public/s3078482.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (38, '聋哑时代', '广西师范大学出版社', '2020-4', 54.00, '双雪涛', '精装', '理想国·双雪涛作品', '9787559826329', 248, 1, 'https://img3.doubanio.com/view/subject/l/public/s33640253.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (39, '三体Ⅲ', '重庆出版社', '2010-11', 38.00, '刘慈欣', '平装', '科幻世界·中国科幻基石丛书', '9787229030933', 513, 1, 'https://img9.doubanio.com/view/subject/l/public/s26012674.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (40, '遥远的救世主', '作家出版社', '2005-05-01', 28.00, '豆豆', '平装', '', '9787506331746', 592, 1, 'https://img1.doubanio.com/view/subject/l/public/s3073167.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (41, '黄金时代', '花城出版社', '1999-3', 19.00, '王小波', '平装', '王小波《时代三部曲》', '9787536025080', 375, 1, 'https://img3.doubanio.com/view/subject/l/public/s1076372.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (42, '盗墓笔记', '中国友谊出版公司', '2007-1', 26.80, '南派三叔', '平装', '盗墓笔记', '9787505722835', 265, 1, 'https://img9.doubanio.com/view/subject/l/public/s4442295.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (43, '呐喊', '人民文学出版社', '1973年3月', 0.36, '鲁迅', '平装', '鲁迅作品集', '', 160, 1, 'https://img3.doubanio.com/view/subject/l/public/s4696893.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (44, '祈念守护人', '南海出版公司', '2020-6', 59.00, '[日]东野圭吾', '精装', '新经典文库·东野圭吾作品', '9787544299015', 320, 1, 'https://img1.doubanio.com/view/subject/l/public/s33649378.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (45, '天龙八部', '生活.读书.新知三联书店', '1994-5', 96.00, '金庸', '平装', '金庸作品集（三联版）', '9787108006721', 1978, 1, 'https://img1.doubanio.com/view/subject/l/public/s23632058.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (46, '挪威的森林', '上海译文出版社', '2001-2', 18.80, '[日]村上春树', '平装', '村上春树文集（2001版）', '9787532725694', 350, 1, 'https://img3.doubanio.com/view/subject/l/public/s1228930.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (47, '摆渡人', '百花洲文艺出版社', '2015-6-1', 36.00, '[英]克莱儿·麦克福尔', '平装', '', '9787550013247', 280, 1, 'https://img3.doubanio.com/view/subject/l/public/s28063701.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (48, '失踪的孩子', '人民文学出版社', '2018-7', 62.00, '[意]埃莱娜·费兰特', '平装', '那不勒斯四部曲', '9787020139927', 480, 1, 'https://img1.doubanio.com/view/subject/l/public/s29799269.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (49, '克莱因壶', '化学工业出版社', '2019-9', 48.00, '[日]冈岛二人', '平装', '', '9787122346032', 320, 1, 'https://img1.doubanio.com/view/subject/l/public/s33317677.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (50, '恶意', '南海出版公司', '2016-11-1', 39.50, '[日]东野圭吾', '精装', '新经典文库·东野圭吾作品', '9787544285148', 268, 1, 'https://img9.doubanio.com/view/subject/l/public/s29069735.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (51, '逍遥游', '理想国|春风文艺出版社', '2020-5', 58.00, '班宇', '精装', '', '9787531357759', 293, 1, 'https://img1.doubanio.com/view/subject/l/public/s33641077.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (52, '人生', '北京十月文艺出版社', '2009-5', 20.00, '路遥', '平装', '', '9787530209578', 225, 1, 'https://img3.doubanio.com/view/subject/l/public/s3847911.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (53, '穆斯林的葬礼', '北京十月文艺出版社', '1988-12-1', 32.00, '霍达', '平装', '北京长篇小说创作丛书', '9787530201244', 750, 1, 'https://img3.doubanio.com/view/subject/l/public/s1790771.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (54, '繁花', '上海文艺出版社', '2013-3', 48.00, '金宇澄', '平装', '', '9787532148004', 444, 1, 'https://img1.doubanio.com/view/subject/l/public/s26037307.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (55, '盗墓笔记', '上海文化出版社', '2011-9', 295.20, '南派三叔', '', '', '9787807407904', 2441, 1, 'https://img1.doubanio.com/view/subject/l/public/s29937988.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (56, '山茶文具店', '湖南文艺出版社', '2018-3', 49.80, '[日]小川糸', '精装', '', '9787540485337', 320, 1, 'https://img3.doubanio.com/view/subject/l/public/s29707472.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (57, '伪装学渣', '北京时代华文书局', '2019-6', 39.80, '木瓜黄', '平装', '伪装学渣', '9787569930337', 288, 1, 'https://img3.doubanio.com/view/subject/l/public/s33296083.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (58, '回归故里', '上海文化出版社', '2020-7', 48.00, '[法]迪迪埃·埃里蓬', '精装', '后浪丨外国文学', '9787553518510', 184, 1, 'https://img3.doubanio.com/view/subject/l/public/s33659613.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (59, '寂寞的游戏', '北京联合出版公司', '2017-9', 38.00, '袁哲生', '平装', '后浪·华语文学', '9787559604170', 248, 1, 'https://img3.doubanio.com/view/subject/l/public/s29508790.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (60, '猴杯', '后浪丨四川人民出版社', '2020-7', 48.00, '张贵兴', '平装', '后浪·华语文学', '9787220118234', 312, 1, 'https://img3.doubanio.com/view/subject/l/public/s33655783.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (61, '冬泳', '上海三联书店', '2018-9', 49.00, '班宇', '精装', '', '9787542664051', 308, 1, 'https://img3.doubanio.com/view/subject/l/public/s29902192.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (62, '她们', '河南文艺出版社', '2020-5', 46.80, '阎连科', '平装', '', '9787555909538', 296, 1, 'https://img9.doubanio.com/view/subject/l/public/s33648496.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (63, '夏天、烟火和我的尸体', '南海出版公司', '2019-9', 45.00, '[日]乙一', '精装', '新经典文库·乙一作品', '9787544296274', 192, 1, 'https://img9.doubanio.com/view/subject/l/public/s33451826.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (64, '笑傲江湖（全四册）', '生活·读书·新知三联书店', '1994-5', 76.80, '金庸', '平装', '金庸作品集（三联版）', '9787108006639', 1599, 1, 'https://img9.doubanio.com/view/subject/l/public/s2157335.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (65, '鲁滨逊漂流记', '广西民族出版社', '2002-1', 9.20, '[英]丹尼尔·笛福', '平装', '世界文学名著精粹', '9787536340497', 209, 1, 'https://img9.doubanio.com/view/subject/l/public/s1242786.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (66, '破云', '江苏凤凰文艺出版社', '2019-7', 49.80, '淮上', '平装', '', '9787559436399', 328, 1, 'https://img1.doubanio.com/view/subject/l/public/s33323918.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (67, '呼兰河传', '百花文艺出版社', '2005-01', 19.00, '萧红', '平装', '现代文学名著原版珍藏', '9787530640470', 271, 1, 'https://img3.doubanio.com/view/subject/l/public/s1167060.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (68, '放学后', '南海出版公司', '2010-1', 20.00, '（日）东野圭吾', '平装', '新经典文库·东野圭吾作品', '9787544245517', 215, 1, 'https://img3.doubanio.com/view/subject/l/public/s4066862.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (69, '兄弟', '作家出版社', '2012-9-1', 43.00, '余华', '平装', '余华作品（2012版）', '9787506365697', 646, 1, 'https://img1.doubanio.com/view/subject/l/public/s24936189.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (70, '平原上的摩西', '百花文艺出版社', '2016-6', 39.50, '双雪涛', '精装', '新古典寫作', '9787530669624', 222, 1, 'https://img1.doubanio.com/view/subject/l/public/s28810239.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (71, '找不到工作的一年', '上海人民出版社', '2020-7', 55.00, '[日]吉田修一', '平装', '吉田修一作品', '9787208164482', 344, 1, 'https://img9.doubanio.com/view/subject/l/public/s33662774.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (72, '故事', '天津人民出版社', '2014-9-1', 68.00, '[美]罗伯特·麦基', '精装', '', '9787201088334', 521, 1, 'https://img1.doubanio.com/view/subject/l/public/s27598249.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (73, '最好的我们', '湖南文艺出版社', '2013-8-5', 5.00, '八月长安', '套装', '“振华”系列', '9787540462642', 560, 1, 'https://img9.doubanio.com/view/subject/l/public/s26720726.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (74, '台北人', '广西师范大学出版社', '2010-10', 38.00, '白先勇', '精装', '理想国·白先勇作品', '9787563397648', 392, 1, 'https://img9.doubanio.com/view/subject/l/public/s4526465.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (75, '四世同堂', '北京十月文艺出版社', '2008-07', 36.00, '老舍', '精装', '老舍集', '9787530209226', 590, 1, 'https://img1.doubanio.com/view/subject/l/public/s3228699.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (76, '金色梦乡', '南海出版公司', '2016-11', 49.50, '[日]伊坂幸太郎', '精装', '新经典·伊坂幸太郎作品', '9787544285025', 512, 1, 'https://img9.doubanio.com/view/subject/l/public/s29860726.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (77, '数学之美 （第二版）', '人民邮电出版社', '2014-11', 49.00, '吴军', '平装', '', '9787115373557', 312, 6, 'https://img1.doubanio.com/view/subject/l/public/s29961188.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (78, '算法竞赛进阶指南', '中原出版传媒集团·河南电子音像出版社', '2018-1', 79.00, '李煜东', '平装', '', '9787893881985', 468, 6, 'https://img1.doubanio.com/view/subject/l/public/s29682929.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (79, '啊哈!算法', '人民邮电出版社', '2014-6-1', 45.00, '啊哈磊', '平装', '图灵原创', '9787115354594', 246, 6, 'https://img9.doubanio.com/view/subject/l/public/s27345094.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (80, '内容算法', '中信出版社', '2018-4-30', 58.00, '闫泽华', '平装', '', '9787508685274', 264, 6, 'https://img9.doubanio.com/view/subject/l/public/s29763584.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (81, '图解密码技术（第3版）', '人民邮电出版社', '2016-6', 89.00, '[日]结城浩', '平装', '图灵程序设计丛书·图解与入门系列', '9787115424914', 402, 6, 'https://img3.doubanio.com/view/subject/l/public/s28830003.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (82, '推荐系统实践', '人民邮电出版社', '2012-6-1', 49.00, '项亮', '平装', '图灵原创', '9787115281586', 200, 6, 'https://img1.doubanio.com/view/subject/l/public/s10213357.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (83, '统计学习方法（第2版）', '清华大学出版社', '2019-5-1', 98.00, '李航', '平装', '', '9787302517276', 464, 6, 'https://img9.doubanio.com/view/subject/l/public/s32312905.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (84, '程序员代码面试指南（第2版）', '电子工业出版社', '2019-1-1', 109.00, '左程云', '平装', '', '9787121354861', 576, 6, 'https://img3.doubanio.com/view/subject/l/public/s29967820.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (85, '剑指Offer', '电子工业出版社', '2012-1', 45.00, '何海涛', '平装', '', '9787121148750', 260, 6, 'https://img9.doubanio.com/view/subject/l/public/s7038106.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (86, '趣学算法', '人民邮电出版社', '2017-7-1', 89.00, '陈小玉', '平装', '', '9787115459572', 587, 6, 'https://img9.doubanio.com/view/subject/l/public/s29513356.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (87, '程序员代码面试指南：IT名企算法与数据结构题目最优解', '电子工业出版社', '2015-9', 79.00, '左程云', '平装', '', '9787121270116', 532, 6, 'https://img3.doubanio.com/view/subject/l/public/s28313721.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (88, '这就是搜索引擎', '电子工业出版社', '2012-1-1', 45.00, '张俊林', '平装', '', '9787121148651', 300, 6, 'https://img3.doubanio.com/view/subject/l/public/s28631260.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (89, '智能风控：原理 算法与工程实践', '机械工业出版社', '2020-1-1', 89.00, '梅子行', '平装-胶订', '', '9787111643531', 240, 6, 'https://img3.doubanio.com/view/subject/l/public/s33574251.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (90, '算法的乐趣', '人民邮电出版社', '2015-4', 79.00, '王晓华', '平装', '图灵原创', '9787115385376', 420, 6, 'https://img1.doubanio.com/view/subject/l/public/s28033547.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (91, '数据结构与算法分析 C语言描述（原书第2版）典藏版', '机械工业出版社', '2019-4-1', 79.00, '[美]马克·艾伦·维斯（Mark.Allen.Weiss）', '平装', '计算机科学丛书', '9787111621959', 412, 6, 'https://img1.doubanio.com/view/subject/l/public/s32320568.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (92, '最优化理论与算法', '清华大学出版社', '2005-10-1', 46.00, '陈宝林', '平装', '', '9787302113768', 468, 6, 'https://img1.doubanio.com/view/subject/l/public/s25491227.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (93, '机器学习算法的数学解析与Python实现', '机械工业出版社', '2020-1-20', 89.00, '莫凡', '平装', '智能系统与技术丛书', '9787111642602', 216, 6, 'https://img3.doubanio.com/view/subject/l/public/s33589972.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (94, '图论导引', '机械工业出版社', '2006-2', 65.00, '[美]韦斯特', '', '华章数学译丛', '9787111177807', 474, 6, 'https://img1.doubanio.com/view/subject/l/public/s1542749.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (95, '大数据技术原理与应用（第2版）', '人民邮电出版社', '2017-2', 49.80, '林子雨', '平装', '大数据创新人才培养系列', '9787115443304', 286, 6, 'https://img1.doubanio.com/view/subject/l/public/s29642219.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (96, '物质是什么', '中信出版社', '2020-5-20', 5.00, '[英]吉姆·巴戈特', '平装', '', '9787521716511', 292, 6, 'https://img3.doubanio.com/view/subject/l/public/s33621581.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (97, '生命是什么', '商务印书馆', '2018-10', 18.00, '[奥]埃尔温·薛定谔', '平装', '汉译世界学术名著丛书·哲学', '9787100164306', 97, 6, 'https://img3.doubanio.com/view/subject/l/public/s29967303.jpg', NULL, NULL, 0, 250);
INSERT INTO `book` VALUES (98, '从一到无穷大', '商务印书馆', '2019-1', 45.00, '[美]乔治·伽莫夫', '精装', '世界科普名著译丛', '9787100165709', 338, 6, 'https://img1.doubanio.com/view/subject/l/public/s30024639.jpg', NULL, NULL, 0, 250);
COMMIT;

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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of book_group
-- ----------------------------
BEGIN;
INSERT INTO `book_group` VALUES (1, 'wenxue', '文学', '2020-08-12 14:10:44', '2020-08-12 14:10:26', 0);
INSERT INTO `book_group` VALUES (2, 'liuxing', '流行', '2020-08-12 14:10:44', '2020-08-12 14:10:29', 0);
INSERT INTO `book_group` VALUES (3, 'wenhua', '文化', '2020-08-12 14:10:44', '2020-08-12 14:10:32', 0);
INSERT INTO `book_group` VALUES (4, 'shenghuo', '生活', '2020-08-12 14:10:44', '2020-08-12 14:10:34', 0);
INSERT INTO `book_group` VALUES (5, 'jingguan', '经管', '2020-08-12 14:10:44', '2020-08-12 14:10:37', 0);
INSERT INTO `book_group` VALUES (6, 'keji', '科技', '2020-08-12 14:10:44', '2020-08-12 14:10:41', 0);
COMMIT;

-- ----------------------------
-- Table structure for borrow
-- ----------------------------
DROP TABLE IF EXISTS `borrow`;
CREATE TABLE `borrow` (
  `id` int(32) NOT NULL AUTO_INCREMENT COMMENT '主键，自增',
  `reader_id` int(32) NOT NULL COMMENT '读者主键',
  `book_id` int(32) DEFAULT NULL COMMENT '图书主键',
  `borrow_time` datetime DEFAULT NULL COMMENT '借阅时间',
  `return_time` datetime DEFAULT NULL COMMENT '归还时间',
  `status` tinyint(1) DEFAULT NULL COMMENT '归还状态',
  `borrow_day` int(32) DEFAULT NULL COMMENT '借阅天数',
  `reborrow_time` datetime DEFAULT NULL COMMENT '续借时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `op_by` varchar(255) DEFAULT NULL COMMENT '操作人',
  `deleted` int(1) DEFAULT NULL COMMENT '逻辑删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of borrow
-- ----------------------------
BEGIN;
INSERT INTO `borrow` VALUES (1, 1, 5, '2020-09-08 22:52:33', '2020-09-09 22:20:19', 0, 5, NULL, '2020-09-08 22:52:33', '2020-09-08 22:52:33', '馆员1', 0);
INSERT INTO `borrow` VALUES (2, 1, 6, '2020-09-08 22:56:15', NULL, 1, 5, NULL, '2020-09-08 22:56:15', '2020-09-08 22:56:15', '馆员1', 0);
INSERT INTO `borrow` VALUES (3, 1, 7, '2020-09-08 22:56:18', NULL, 1, 5, NULL, '2020-09-08 22:56:18', '2020-09-08 22:56:18', '馆员1', 0);
INSERT INTO `borrow` VALUES (4, 1, 8, '2020-09-08 22:56:20', NULL, 1, 5, NULL, '2020-09-08 22:56:20', '2020-09-08 22:56:20', '馆员1', 0);
INSERT INTO `borrow` VALUES (5, 1, 9, '2020-09-08 22:56:23', '2020-09-09 00:47:19', 0, 5, NULL, '2020-09-08 22:56:23', '2020-09-08 22:56:23', '馆员1', 0);
INSERT INTO `borrow` VALUES (6, 8, 5, '2020-09-08 23:01:19', '2020-09-09 00:22:24', 0, 5, NULL, '2020-09-08 23:01:19', '2020-09-08 23:01:19', '馆员1', 0);
INSERT INTO `borrow` VALUES (7, 8, 6, '2020-09-08 23:01:21', '2020-09-09 00:55:34', 0, 5, NULL, '2020-09-08 23:01:21', '2020-09-08 23:01:21', '馆员1', 0);
INSERT INTO `borrow` VALUES (8, 8, 8, '2020-09-08 23:01:23', NULL, 1, 5, NULL, '2020-09-08 23:01:23', '2020-09-08 23:01:23', '馆员1', 0);
INSERT INTO `borrow` VALUES (9, 8, 9, '2020-09-08 23:01:25', NULL, 1, 5, NULL, '2020-09-08 23:01:25', '2020-09-08 23:01:25', '馆员1', 0);
COMMIT;

-- ----------------------------
-- Table structure for reader
-- ----------------------------
DROP TABLE IF EXISTS `reader`;
CREATE TABLE `reader` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(32) DEFAULT NULL COMMENT '姓名',
  `id_card` varchar(32) DEFAULT NULL COMMENT '身份证号码',
  `phone` varchar(32) DEFAULT NULL COMMENT '电话号码',
  `register_time` datetime DEFAULT NULL COMMENT '注册时间',
  `type` int(1) DEFAULT NULL COMMENT '类型 0普通用户（可借3本） 1vip用户（5本）',
  `status` int(1) DEFAULT NULL COMMENT '借书状态 0 可借书，1 黑名单不可借书',
  `create_time` datetime DEFAULT NULL COMMENT '系统创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` int(16) DEFAULT NULL COMMENT '逻辑删除 0有效，1删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of reader
-- ----------------------------
BEGIN;
INSERT INTO `reader` VALUES (1, '李强', '411329199603203112', '18257751477', '2020-08-15 22:13:19', 1, 0, '2020-08-15 22:13:31', '2020-08-15 22:13:34', 0);
INSERT INTO `reader` VALUES (2, '刘丽丽', '320584199012303127', '13613715876', '2020-08-15 22:19:22', 0, 0, '2020-08-15 22:19:22', '2020-08-15 22:19:22', 0);
INSERT INTO `reader` VALUES (3, '张三', '320584199012303117', '13823717876', '2020-08-15 22:19:22', 0, 0, '2020-08-15 22:19:22', '2020-08-15 22:19:22', 0);
INSERT INTO `reader` VALUES (4, '李四', '320584199012303347', '18257751489', '2020-08-15 22:19:22', 0, 0, '2020-08-15 22:19:22', '2020-08-15 22:19:22', 0);
INSERT INTO `reader` VALUES (5, '谢永强', '320584199612303346', '18764321489', '2020-08-15 22:19:22', 1, 0, '2020-08-15 22:19:22', '2020-08-15 22:19:22', 1);
INSERT INTO `reader` VALUES (6, '张丹峰', '320584199912303345', '18257764389', '2020-08-15 22:19:22', 0, 0, '2020-08-15 22:19:22', '2020-08-15 22:19:22', 0);
INSERT INTO `reader` VALUES (7, '张帆', '320584199212303344', '18257732489', '2020-08-15 22:19:22', 0, 0, '2020-08-15 22:19:22', '2020-08-15 22:19:22', 0);
INSERT INTO `reader` VALUES (8, '雷学习', '320584199112303341', '18234751489', '2020-08-15 22:19:22', 1, 0, '2020-08-15 22:19:22', '2020-08-15 22:19:22', 0);
INSERT INTO `reader` VALUES (9, '张磊', '320584199312303340', '18767751489', '2020-08-15 22:19:22', 0, 0, '2020-08-15 22:19:22', '2020-08-15 22:19:22', 0);
COMMIT;

-- ----------------------------
-- Table structure for reader_type
-- ----------------------------
DROP TABLE IF EXISTS `reader_type`;
CREATE TABLE `reader_type` (
  `id` int(11) NOT NULL COMMENT '主键',
  `type` int(1) DEFAULT NULL,
  `borrow_day` int(32) DEFAULT NULL COMMENT '可借天数',
  `borrow_book` int(32) DEFAULT NULL COMMENT '可借本数',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `deleted` int(1) DEFAULT NULL,
  `type_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of reader_type
-- ----------------------------
BEGIN;
INSERT INTO `reader_type` VALUES (1, 0, 3, 3, '2020-08-16 22:26:42', '2020-08-16 22:26:45', 0, '普通读者');
INSERT INTO `reader_type` VALUES (2, 1, 5, 5, '2020-08-16 22:27:07', '2020-08-16 22:27:09', 0, 'vip读者');
COMMIT;

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键，自增',
  `role_name` varchar(255) DEFAULT NULL COMMENT '角色名',
  `role_code` varchar(255) DEFAULT NULL COMMENT '角色代码',
  `role_desc` varchar(255) DEFAULT NULL COMMENT '角色描述',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `deleted` smallint(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
  `order_by` int(16) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
BEGIN;
INSERT INTO `sys_menu` VALUES (1, '系统管理', NULL, NULL, NULL, NULL, 0, '2020-08-11 14:46:10', '2020-08-11 14:46:26', 0, 5);
INSERT INTO `sys_menu` VALUES (2, '图书管理', NULL, NULL, NULL, NULL, 0, '2020-08-11 14:46:10', '2020-08-11 14:46:26', 0, 1);
INSERT INTO `sys_menu` VALUES (3, '借还管理', NULL, NULL, NULL, NULL, 0, '2020-08-11 14:46:10', '2020-08-11 14:46:26', 0, 3);
INSERT INTO `sys_menu` VALUES (5, '报表分析', NULL, NULL, NULL, NULL, 0, '2020-08-11 14:46:10', '2020-08-11 14:46:26', 0, 4);
INSERT INTO `sys_menu` VALUES (6, '馆员管理', NULL, '/users', NULL, NULL, 1, '2020-08-11 14:46:10', '2020-08-11 14:46:26', 0, NULL);
INSERT INTO `sys_menu` VALUES (7, '修改密码', NULL, NULL, NULL, NULL, 1, '2020-08-11 14:46:10', '2020-08-11 14:46:26', 0, NULL);
INSERT INTO `sys_menu` VALUES (8, '系统维护', NULL, NULL, NULL, NULL, 1, '2020-08-11 14:46:10', '2020-08-11 14:46:26', 0, NULL);
INSERT INTO `sys_menu` VALUES (9, '读者类别', NULL, '/readercate', NULL, NULL, 12, '2020-08-11 14:46:10', '2020-08-11 14:46:26', 0, NULL);
INSERT INTO `sys_menu` VALUES (11, '读者信息', NULL, '/reader', NULL, NULL, 12, '2020-08-11 14:46:10', '2020-08-11 14:46:26', 0, NULL);
INSERT INTO `sys_menu` VALUES (12, '读者管理', NULL, NULL, NULL, NULL, 0, '2020-08-11 14:46:10', '2020-08-11 14:46:26', 0, 2);
INSERT INTO `sys_menu` VALUES (13, '图书类别', NULL, '/bookcate', NULL, NULL, 2, '2020-08-11 14:46:10', '2020-08-11 14:46:26', 0, NULL);
INSERT INTO `sys_menu` VALUES (14, '借书处理', NULL, '/borrow', NULL, NULL, 3, '2020-08-11 14:46:10', '2020-08-11 14:46:26', 0, NULL);
INSERT INTO `sys_menu` VALUES (15, '还书处理', NULL, '/returnbook', NULL, NULL, 3, '2020-08-11 14:46:10', '2020-08-11 14:46:26', 0, NULL);
INSERT INTO `sys_menu` VALUES (16, '预约处理', NULL, NULL, NULL, NULL, 3, '2020-08-11 14:46:10', '2020-08-11 14:46:26', 0, NULL);
INSERT INTO `sys_menu` VALUES (17, '续借处理', NULL, NULL, NULL, NULL, 3, '2020-08-11 14:46:10', '2020-08-11 14:46:26', 0, NULL);
INSERT INTO `sys_menu` VALUES (18, '催还处理', NULL, NULL, NULL, NULL, 3, '2020-08-11 14:46:10', '2020-08-11 14:46:26', 0, NULL);
INSERT INTO `sys_menu` VALUES (19, '图书类别分析', NULL, NULL, NULL, NULL, 5, '2020-08-11 14:46:10', '2020-08-11 14:46:26', 0, NULL);
INSERT INTO `sys_menu` VALUES (20, '借还时间分析', NULL, NULL, NULL, NULL, 5, '2020-08-11 14:46:10', '2020-08-11 14:46:26', 0, NULL);
INSERT INTO `sys_menu` VALUES (21, '藏书查询', NULL, '/book', NULL, NULL, 2, '2020-08-11 14:46:10', '2020-08-11 14:46:10', 0, NULL);
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id 自增',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '姓名',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `register_time` datetime DEFAULT NULL COMMENT '注册时间',
  `status` smallint(1) DEFAULT NULL COMMENT '状态0 正常 1禁用',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `deleted` smallint(255) DEFAULT NULL COMMENT '逻辑删除',
  `user_name` varchar(255) DEFAULT NULL COMMENT '系统用户名',
  `user_password` varchar(255) DEFAULT NULL COMMENT '系统密码',
  `phone` varchar(255) DEFAULT NULL COMMENT '手机号码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES (1, '李强', '18257751477@163.com', '2020-09-09 22:37:24', 0, '2020-09-09 22:37:29', '2020-09-09 22:37:31', 0, 'admin', 'admin', '18257751477');
INSERT INTO `user` VALUES (2, '雷旭', '13678327492@163.com', '2020-09-09 22:56:02', 0, '2020-09-09 22:56:07', '2020-09-09 22:56:10', 0, 'xxx', 'xxx', '13678327492');
INSERT INTO `user` VALUES (3, '张丽', '18732746193@163.com', '2020-09-09 22:56:59', 0, '2020-09-09 22:57:09', '2020-09-09 22:57:12', 0, 'xxxx', 'xxxxxx', '18732746193');
COMMIT;

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `id` int(11) NOT NULL COMMENT '主键，自增',
  `role_id` int(11) DEFAULT NULL COMMENT '角色id',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `deleted` smallint(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

SET FOREIGN_KEY_CHECKS = 1;

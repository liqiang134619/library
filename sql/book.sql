/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : library

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2020-08-14 18:43:35
*/

SET FOREIGN_KEY_CHECKS=0;

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
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES ('5', '坏小孩', '湖南文艺出版社', '2018-7-1', '54.00', '紫金陈', '平装', '推理之王', '9787540468422', '452', '1', 'https://img3.doubanio.com/view/subject/l/public/s29793550.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('6', '活着', '作家出版社', '2012-8-1', '20.00', '余华', '平装', '余华作品（2012版）', '9787506365437', '191', '1', 'https://img3.doubanio.com/view/subject/l/public/s29053580.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('7', '白夜行', '南海出版公司', '2013-1-1', '39.50', '[日]东野圭吾', '精装', '新经典文库·东野圭吾作品', '9787544258609', '538', '1', 'https://img1.doubanio.com/view/subject/l/public/s24514468.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('8', '解忧杂货店', '南海出版公司', '2014-5', '39.50', '[日]东野圭吾', '精装', '新经典文库·东野圭吾作品', '9787544270878', '291', '1', 'https://img3.doubanio.com/view/subject/l/public/s27264181.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('9', '房思琪的初恋乐园', '北京联合出版公司', '2018-1', '45.00', '林奕含', '平装', '', '9787559614636', '272', '1', 'https://img3.doubanio.com/view/subject/l/public/s29651121.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('10', '长夜难明', '云南人民出版社', '2017-1', '42.00', '紫金陈', '平装', '推理之王', '9787222143975', '288', '1', 'https://img9.doubanio.com/view/subject/l/public/s29179365.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('11', '围城', '人民文学出版社', '1991-2', '19.00', '钱钟书', '平装', '', '9787020024759', '359', '1', 'https://img3.doubanio.com/view/subject/l/public/s1070222.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('12', '嫌疑人X的献身', '南海出版公司', '2008-9', '28.00', '[日]东野圭吾', '精装', '新经典文库·东野圭吾作品', '9787544241694', '251', '1', 'https://img9.doubanio.com/view/subject/l/public/s3254244.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('13', '平凡的世界（全三部）', '人民文学出版社', '2005-1', '64.00', '路遥', '平装', '茅盾文学奖获奖作品全集', '9787020049295', '1631', '1', 'https://img3.doubanio.com/view/subject/l/public/s1144911.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('14', '烧纸', '武汉大学出版社', '2020-5', '58.00', '[韩]李沧东', '平装', '', '9787307207004', '320', '1', 'https://img1.doubanio.com/view/subject/l/public/s33642427.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('15', '局外人', '上海译文出版社', '2010-8', '22.00', '[法]阿尔贝·加缪', '精装', '译文经典（精装本）', '9787532751471', '128', '1', 'https://img9.doubanio.com/view/subject/l/public/s4468484.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('16', '三体', '重庆出版社', '2008-1', '23.00', '刘慈欣', '平装', '科幻世界·中国科幻基石丛书', '9787536692930', '302', '1', 'https://img1.doubanio.com/view/subject/l/public/s2768378.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('17', '人生海海', '北京十月文艺出版社', '2019-4', '55.00', '麦家', '精装', '新经典文库·麦家作品集', '9787530219218', '345', '1', 'https://img3.doubanio.com/view/subject/l/public/s32266692.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('18', '三体全集', '重庆出版社', '2012-1-1', '168.00', '刘慈欣', '精装', '科幻世界·中国科幻基石丛书', '9787229042066', '1285', '1', 'https://img3.doubanio.com/view/subject/l/public/s30016152.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('19', '骆驼祥子', '人民文学出版社', '2000-3-1', '12.00', '老舍', '平装', '', '9787020028115', '224', '1', 'https://img3.doubanio.com/view/subject/l/public/s1146040.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('20', '云边有个小卖部', '湖南文艺出版社', '2018-7', '42.00', '张嘉佳', '平装', '', '9787540487645', '328', '1', 'https://img9.doubanio.com/view/subject/l/public/s29799055.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('21', '明朝那些事儿（1-9）', '中国海关出版社', '2009-4', '358.20', '当年明月', '精装16开', '', '9787801656087', null, '1', 'https://img9.doubanio.com/view/subject/l/public/s3745215.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('22', '白鹿原', '人民文学出版社', '2012-9', '39.00', '陈忠实', '精装', '', '9787020090297', '697', '1', 'https://img9.doubanio.com/view/subject/l/public/s28111905.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('23', '三国演义（全二册）', '人民文学出版社', '1998-05', '39.50', '罗贯中', '平装', '中国古典文学读本丛书', '9787020008728', '990', '1', 'https://img3.doubanio.com/view/subject/l/public/s1076932.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('24', '白夜行', '南海出版公司', '2008-9', '29.80', '[日]东野圭吾', '平装', '新经典文库·东野圭吾作品', '9787544242516', '467', '1', 'https://img3.doubanio.com/view/subject/l/public/s4610502.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('25', '许三观卖血记', '南海出版公司', '1998-9', '16.80', '余华', '平装', '余华作品', '9787544211765', '269', '1', 'https://img3.doubanio.com/view/subject/l/public/s1074291.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('26', '人间失格', '吉林出版集团有限责任公司', '2009-9', '16.00', '太宰治', '平装', '草月译谭', '9787546302393', '168', '1', 'https://img9.doubanio.com/view/subject/l/public/s6100756.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('27', '生吞', '浙江文艺出版社', '2017-11-1', '39.00', '郑执', '平装', '', '9787533950057', '288', '1', 'https://img3.doubanio.com/view/subject/l/public/s33593231.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('28', '挪威的森林', '上海译文出版社', '2007-7', '23.00', '[日]村上春树', '平装', '村上春树文集', '9787532742929', '384', '1', 'https://img1.doubanio.com/view/subject/l/public/s27312538.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('29', '许三观卖血记', '作家出版社', '2012-9', '24.00', '余华', '平装', '余华作品（2012版）', '9787506365680', '264', '1', 'https://img3.doubanio.com/view/subject/l/public/s24575140.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('30', '围城', '人民文学出版社', '1991-2-1', '39.00', '钱钟书', '精装', '', '9787020090006', '362', '1', 'https://img1.doubanio.com/view/subject/l/public/s11276847.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('31', '鞋带', '上海译文出版社', '2020-5', '4.00', '[意]多梅尼科·斯塔尔诺内', '平装', '', '9787532783243', '150', '1', 'https://img9.doubanio.com/view/subject/l/public/s33601424.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('32', '无证之罪', '浦睿文化·湖南人民出版社', '2018-6', '49.00', '紫金陈', '平装', '推理之王', '9787543898752', '364', '1', 'https://img1.doubanio.com/view/subject/l/public/s29791969.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('33', '恶意', '南海出版公司', '2009-6', '18.00', '[日]东野圭吾', '平装', '新经典文库·东野圭吾作品', '9787544244428', '264', '1', 'https://img9.doubanio.com/view/subject/l/public/s3814606.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('34', '默读', '百花洲文艺出版社', '2018-1', '45.00', 'Priest', '平装', '默读', '9787550025103', '344', '1', 'https://img1.doubanio.com/view/subject/l/public/s29663109.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('35', '两京十五日', '湖南文艺出版社', '2020-7', '108.00', '马伯庸', '平装', '博集天卷·马伯庸作品', '9787540496715', '584', '1', 'https://img3.doubanio.com/view/subject/l/public/s33682883.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('36', '诡计博物馆', '上海文艺出版社', '2020-6', '39.90', '[日]大山诚一郎', '平装', '读客全球顶级畅销小说文库：大山诚一郎作品', '9787532176090', '272', '1', 'https://img3.doubanio.com/view/subject/l/public/s33624662.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('37', '三体Ⅱ', '重庆出版社', '2008-5', '32.00', '刘慈欣', '平装', '科幻世界·中国科幻基石丛书', '9787536693968', '470', '1', 'https://img3.doubanio.com/view/subject/l/public/s3078482.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('38', '聋哑时代', '广西师范大学出版社', '2020-4', '54.00', '双雪涛', '精装', '理想国·双雪涛作品', '9787559826329', '248', '1', 'https://img3.doubanio.com/view/subject/l/public/s33640253.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('39', '三体Ⅲ', '重庆出版社', '2010-11', '38.00', '刘慈欣', '平装', '科幻世界·中国科幻基石丛书', '9787229030933', '513', '1', 'https://img9.doubanio.com/view/subject/l/public/s26012674.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('40', '遥远的救世主', '作家出版社', '2005-05-01', '28.00', '豆豆', '平装', '', '9787506331746', '592', '1', 'https://img1.doubanio.com/view/subject/l/public/s3073167.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('41', '黄金时代', '花城出版社', '1999-3', '19.00', '王小波', '平装', '王小波《时代三部曲》', '9787536025080', '375', '1', 'https://img3.doubanio.com/view/subject/l/public/s1076372.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('42', '盗墓笔记', '中国友谊出版公司', '2007-1', '26.80', '南派三叔', '平装', '盗墓笔记', '9787505722835', '265', '1', 'https://img9.doubanio.com/view/subject/l/public/s4442295.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('43', '呐喊', '人民文学出版社', '1973年3月', '0.36', '鲁迅', '平装', '鲁迅作品集', '', '160', '1', 'https://img3.doubanio.com/view/subject/l/public/s4696893.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('44', '祈念守护人', '南海出版公司', '2020-6', '59.00', '[日]东野圭吾', '精装', '新经典文库·东野圭吾作品', '9787544299015', '320', '1', 'https://img1.doubanio.com/view/subject/l/public/s33649378.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('45', '天龙八部', '生活.读书.新知三联书店', '1994-5', '96.00', '金庸', '平装', '金庸作品集（三联版）', '9787108006721', '1978', '1', 'https://img1.doubanio.com/view/subject/l/public/s23632058.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('46', '挪威的森林', '上海译文出版社', '2001-2', '18.80', '[日]村上春树', '平装', '村上春树文集（2001版）', '9787532725694', '350', '1', 'https://img3.doubanio.com/view/subject/l/public/s1228930.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('47', '摆渡人', '百花洲文艺出版社', '2015-6-1', '36.00', '[英]克莱儿·麦克福尔', '平装', '', '9787550013247', '280', '1', 'https://img3.doubanio.com/view/subject/l/public/s28063701.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('48', '失踪的孩子', '人民文学出版社', '2018-7', '62.00', '[意]埃莱娜·费兰特', '平装', '那不勒斯四部曲', '9787020139927', '480', '1', 'https://img1.doubanio.com/view/subject/l/public/s29799269.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('49', '克莱因壶', '化学工业出版社', '2019-9', '48.00', '[日]冈岛二人', '平装', '', '9787122346032', '320', '1', 'https://img1.doubanio.com/view/subject/l/public/s33317677.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('50', '恶意', '南海出版公司', '2016-11-1', '39.50', '[日]东野圭吾', '精装', '新经典文库·东野圭吾作品', '9787544285148', '268', '1', 'https://img9.doubanio.com/view/subject/l/public/s29069735.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('51', '逍遥游', '理想国|春风文艺出版社', '2020-5', '58.00', '班宇', '精装', '', '9787531357759', '293', '1', 'https://img1.doubanio.com/view/subject/l/public/s33641077.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('52', '人生', '北京十月文艺出版社', '2009-5', '20.00', '路遥', '平装', '', '9787530209578', '225', '1', 'https://img3.doubanio.com/view/subject/l/public/s3847911.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('53', '穆斯林的葬礼', '北京十月文艺出版社', '1988-12-1', '32.00', '霍达', '平装', '北京长篇小说创作丛书', '9787530201244', '750', '1', 'https://img3.doubanio.com/view/subject/l/public/s1790771.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('54', '繁花', '上海文艺出版社', '2013-3', '48.00', '金宇澄', '平装', '', '9787532148004', '444', '1', 'https://img1.doubanio.com/view/subject/l/public/s26037307.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('55', '盗墓笔记', '上海文化出版社', '2011-9', '295.20', '南派三叔', '', '', '9787807407904', '2441', '1', 'https://img1.doubanio.com/view/subject/l/public/s29937988.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('56', '山茶文具店', '湖南文艺出版社', '2018-3', '49.80', '[日]小川糸', '精装', '', '9787540485337', '320', '1', 'https://img3.doubanio.com/view/subject/l/public/s29707472.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('57', '伪装学渣', '北京时代华文书局', '2019-6', '39.80', '木瓜黄', '平装', '伪装学渣', '9787569930337', '288', '1', 'https://img3.doubanio.com/view/subject/l/public/s33296083.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('58', '回归故里', '上海文化出版社', '2020-7', '48.00', '[法]迪迪埃·埃里蓬', '精装', '后浪丨外国文学', '9787553518510', '184', '1', 'https://img3.doubanio.com/view/subject/l/public/s33659613.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('59', '寂寞的游戏', '北京联合出版公司', '2017-9', '38.00', '袁哲生', '平装', '后浪·华语文学', '9787559604170', '248', '1', 'https://img3.doubanio.com/view/subject/l/public/s29508790.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('60', '猴杯', '后浪丨四川人民出版社', '2020-7', '48.00', '张贵兴', '平装', '后浪·华语文学', '9787220118234', '312', '1', 'https://img3.doubanio.com/view/subject/l/public/s33655783.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('61', '冬泳', '上海三联书店', '2018-9', '49.00', '班宇', '精装', '', '9787542664051', '308', '1', 'https://img3.doubanio.com/view/subject/l/public/s29902192.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('62', '她们', '河南文艺出版社', '2020-5', '46.80', '阎连科', '平装', '', '9787555909538', '296', '1', 'https://img9.doubanio.com/view/subject/l/public/s33648496.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('63', '夏天、烟火和我的尸体', '南海出版公司', '2019-9', '45.00', '[日]乙一', '精装', '新经典文库·乙一作品', '9787544296274', '192', '1', 'https://img9.doubanio.com/view/subject/l/public/s33451826.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('64', '笑傲江湖（全四册）', '生活·读书·新知三联书店', '1994-5', '76.80', '金庸', '平装', '金庸作品集（三联版）', '9787108006639', '1599', '1', 'https://img9.doubanio.com/view/subject/l/public/s2157335.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('65', '鲁滨逊漂流记', '广西民族出版社', '2002-1', '9.20', '[英]丹尼尔·笛福', '平装', '世界文学名著精粹', '9787536340497', '209', '1', 'https://img9.doubanio.com/view/subject/l/public/s1242786.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('66', '破云', '江苏凤凰文艺出版社', '2019-7', '49.80', '淮上', '平装', '', '9787559436399', '328', '1', 'https://img1.doubanio.com/view/subject/l/public/s33323918.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('67', '呼兰河传', '百花文艺出版社', '2005-01', '19.00', '萧红', '平装', '现代文学名著原版珍藏', '9787530640470', '271', '1', 'https://img3.doubanio.com/view/subject/l/public/s1167060.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('68', '放学后', '南海出版公司', '2010-1', '20.00', '（日）东野圭吾', '平装', '新经典文库·东野圭吾作品', '9787544245517', '215', '1', 'https://img3.doubanio.com/view/subject/l/public/s4066862.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('69', '兄弟', '作家出版社', '2012-9-1', '43.00', '余华', '平装', '余华作品（2012版）', '9787506365697', '646', '1', 'https://img1.doubanio.com/view/subject/l/public/s24936189.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('70', '平原上的摩西', '百花文艺出版社', '2016-6', '39.50', '双雪涛', '精装', '新古典寫作', '9787530669624', '222', '1', 'https://img1.doubanio.com/view/subject/l/public/s28810239.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('71', '找不到工作的一年', '上海人民出版社', '2020-7', '55.00', '[日]吉田修一', '平装', '吉田修一作品', '9787208164482', '344', '1', 'https://img9.doubanio.com/view/subject/l/public/s33662774.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('72', '故事', '天津人民出版社', '2014-9-1', '68.00', '[美]罗伯特·麦基', '精装', '', '9787201088334', '521', '1', 'https://img1.doubanio.com/view/subject/l/public/s27598249.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('73', '最好的我们', '湖南文艺出版社', '2013-8-5', '5.00', '八月长安', '套装', '“振华”系列', '9787540462642', '560', '1', 'https://img9.doubanio.com/view/subject/l/public/s26720726.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('74', '台北人', '广西师范大学出版社', '2010-10', '38.00', '白先勇', '精装', '理想国·白先勇作品', '9787563397648', '392', '1', 'https://img9.doubanio.com/view/subject/l/public/s4526465.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('75', '四世同堂', '北京十月文艺出版社', '2008-07', '36.00', '老舍', '精装', '老舍集', '9787530209226', '590', '1', 'https://img1.doubanio.com/view/subject/l/public/s3228699.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('76', '金色梦乡', '南海出版公司', '2016-11', '49.50', '[日]伊坂幸太郎', '精装', '新经典·伊坂幸太郎作品', '9787544285025', '512', '1', 'https://img9.doubanio.com/view/subject/l/public/s29860726.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('77', '数学之美 （第二版）', '人民邮电出版社', '2014-11', '49.00', '吴军', '平装', '', '9787115373557', '312', '6', 'https://img1.doubanio.com/view/subject/l/public/s29961188.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('78', '算法竞赛进阶指南', '中原出版传媒集团·河南电子音像出版社', '2018-1', '79.00', '李煜东', '平装', '', '9787893881985', '468', '6', 'https://img1.doubanio.com/view/subject/l/public/s29682929.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('79', '啊哈!算法', '人民邮电出版社', '2014-6-1', '45.00', '啊哈磊', '平装', '图灵原创', '9787115354594', '246', '6', 'https://img9.doubanio.com/view/subject/l/public/s27345094.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('80', '内容算法', '中信出版社', '2018-4-30', '58.00', '闫泽华', '平装', '', '9787508685274', '264', '6', 'https://img9.doubanio.com/view/subject/l/public/s29763584.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('81', '图解密码技术（第3版）', '人民邮电出版社', '2016-6', '89.00', '[日]结城浩', '平装', '图灵程序设计丛书·图解与入门系列', '9787115424914', '402', '6', 'https://img3.doubanio.com/view/subject/l/public/s28830003.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('82', '推荐系统实践', '人民邮电出版社', '2012-6-1', '49.00', '项亮', '平装', '图灵原创', '9787115281586', '200', '6', 'https://img1.doubanio.com/view/subject/l/public/s10213357.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('83', '统计学习方法（第2版）', '清华大学出版社', '2019-5-1', '98.00', '李航', '平装', '', '9787302517276', '464', '6', 'https://img9.doubanio.com/view/subject/l/public/s32312905.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('84', '程序员代码面试指南（第2版）', '电子工业出版社', '2019-1-1', '109.00', '左程云', '平装', '', '9787121354861', '576', '6', 'https://img3.doubanio.com/view/subject/l/public/s29967820.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('85', '剑指Offer', '电子工业出版社', '2012-1', '45.00', '何海涛', '平装', '', '9787121148750', '260', '6', 'https://img9.doubanio.com/view/subject/l/public/s7038106.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('86', '趣学算法', '人民邮电出版社', '2017-7-1', '89.00', '陈小玉', '平装', '', '9787115459572', '587', '6', 'https://img9.doubanio.com/view/subject/l/public/s29513356.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('87', '程序员代码面试指南：IT名企算法与数据结构题目最优解', '电子工业出版社', '2015-9', '79.00', '左程云', '平装', '', '9787121270116', '532', '6', 'https://img3.doubanio.com/view/subject/l/public/s28313721.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('88', '这就是搜索引擎', '电子工业出版社', '2012-1-1', '45.00', '张俊林', '平装', '', '9787121148651', '300', '6', 'https://img3.doubanio.com/view/subject/l/public/s28631260.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('89', '智能风控：原理 算法与工程实践', '机械工业出版社', '2020-1-1', '89.00', '梅子行', '平装-胶订', '', '9787111643531', '240', '6', 'https://img3.doubanio.com/view/subject/l/public/s33574251.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('90', '算法的乐趣', '人民邮电出版社', '2015-4', '79.00', '王晓华', '平装', '图灵原创', '9787115385376', '420', '6', 'https://img1.doubanio.com/view/subject/l/public/s28033547.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('91', '数据结构与算法分析 C语言描述（原书第2版）典藏版', '机械工业出版社', '2019-4-1', '79.00', '[美]马克·艾伦·维斯（Mark.Allen.Weiss）', '平装', '计算机科学丛书', '9787111621959', '412', '6', 'https://img1.doubanio.com/view/subject/l/public/s32320568.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('92', '最优化理论与算法', '清华大学出版社', '2005-10-1', '46.00', '陈宝林', '平装', '', '9787302113768', '468', '6', 'https://img1.doubanio.com/view/subject/l/public/s25491227.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('93', '机器学习算法的数学解析与Python实现', '机械工业出版社', '2020-1-20', '89.00', '莫凡', '平装', '智能系统与技术丛书', '9787111642602', '216', '6', 'https://img3.doubanio.com/view/subject/l/public/s33589972.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('94', '图论导引', '机械工业出版社', '2006-2', '65.00', '[美]韦斯特', '', '华章数学译丛', '9787111177807', '474', '6', 'https://img1.doubanio.com/view/subject/l/public/s1542749.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('95', '大数据技术原理与应用（第2版）', '人民邮电出版社', '2017-2', '49.80', '林子雨', '平装', '大数据创新人才培养系列', '9787115443304', '286', '6', 'https://img1.doubanio.com/view/subject/l/public/s29642219.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('96', '物质是什么', '中信出版社', '2020-5-20', '5.00', '[英]吉姆·巴戈特', '平装', '', '9787521716511', '292', '6', 'https://img3.doubanio.com/view/subject/l/public/s33621581.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('97', '生命是什么', '商务印书馆', '2018-10', '18.00', '[奥]埃尔温·薛定谔', '平装', '汉译世界学术名著丛书·哲学', '9787100164306', '97', '6', 'https://img3.doubanio.com/view/subject/l/public/s29967303.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('98', '从一到无穷大', '商务印书馆', '2019-1', '45.00', '[美]乔治·伽莫夫', '精装', '世界科普名著译丛', '9787100165709', '338', '6', 'https://img1.doubanio.com/view/subject/l/public/s30024639.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('99', '上帝掷骰子吗？', '辽宁教育出版社', '2011-4-1', '36.80', '曹天元', '平装', '', '9787538291605', '356', '6', 'https://img3.doubanio.com/view/subject/l/public/s6475450.jpg', null, null, '0', '250');
INSERT INTO `book` VALUES ('100', '测试数据', '测试出版社', '2011-4-1', '11.00', '测试啊', '不知道', null, '2345678654', null, '3', null, null, null, null, '123');
INSERT INTO `book` VALUES ('101', '测试测试', '测试测试', '2011-4-1', '123.00', '测绘四', '侧呃呃', null, '1565436542', null, '3', null, null, null, null, '300');
INSERT INTO `book` VALUES ('102', '侧呃呃', '2132132', '2011-4-1', '321.00', '132132', '132312', null, '132312132123', null, '3', null, null, null, null, '123');
INSERT INTO `book` VALUES ('103', 'fsdfa', 'fasdfa', '2020-08-13', '12.00', 'fasdfads', 'fadsfa', null, 'fsafasfdas', null, '3', null, null, null, null, '13');
INSERT INTO `book` VALUES ('104', 'dfsafd', 'fasdfa', '2020-08-24', '22.00', 'fdsa', 'fdsa', null, 'fsadfsafsd', null, '3', null, null, null, null, '223');
INSERT INTO `book` VALUES ('105', 'fdsfa', 'fadsfa', '2020-08-10', '22.00', 'fads', 'fasd', null, 'fadsfasfda', null, '4', null, null, null, null, '233');
INSERT INTO `book` VALUES ('106', 'fadsfa', 'fdafd', '2020-08-25', '22.00', 'fdsa', 'fasdfa', null, 'sfdsafafds', null, '3', null, null, null, null, '12');
INSERT INTO `book` VALUES ('107', 'fdsafda', 'fasdfa', '2020-08-17', '13.00', 'sfdfa', 'fasfa', null, 'fasfdasfdaa', null, '2', null, null, null, null, '231');

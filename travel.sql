/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50712
Source Host           : localhost:3306
Source Database       : travel

Target Server Type    : MYSQL
Target Server Version : 50712
File Encoding         : 65001

Date: 2020-02-03 23:46:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` varchar(120) COLLATE utf8_bin NOT NULL,
  `name` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '姓名',
  `password` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1088810619659923456', 'admin', '$2a$10$VarDOmyYc3EOnk2MlpJ3AuMXZTEAWFa7I.AhNW87xaEa139S1nWTi');

-- ----------------------------
-- Table structure for carousel
-- ----------------------------
DROP TABLE IF EXISTS `carousel`;
CREATE TABLE `carousel` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL,
  `title` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '标题',
  `comment` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '内容',
  `scenictime` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of carousel
-- ----------------------------
INSERT INTO `carousel` VALUES ('1091587235217711104', '欢迎来到行影旅行社', '优惠的价格', '尽在行影');
INSERT INTO `carousel` VALUES ('1091595724371566592', '第二天', '第二图', '第二个');

-- ----------------------------
-- Table structure for gallery
-- ----------------------------
DROP TABLE IF EXISTS `gallery`;
CREATE TABLE `gallery` (
  `id` varchar(120) COLLATE utf8_bin NOT NULL,
  `img` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT '图片',
  `title` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '标题',
  `comment` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT '内容',
  `city` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '城市国家',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of gallery
-- ----------------------------
INSERT INTO `gallery` VALUES ('1091999987228794880', 'https://travel-class.oss-cn-hangzhou.aliyuncs.com/images/2019-02-03/230ac6782c474dd690d3db40f9eeae0d-gallery09.jpg', '第二张', '还可以哈', null);
INSERT INTO `gallery` VALUES ('1092001865903693824', 'https://travel-class.oss-cn-hangzhou.aliyuncs.com/images/2019-02-03/3b05eddc4d80451e945c06c7bf139fd3-gallery08.jpg', '第三张', '还可以哈', null);
INSERT INTO `gallery` VALUES ('1092017136898990080', 'https://travel-class.oss-cn-hangzhou.aliyuncs.com/images/2019-02-03/7552860de2d2449d8460b95fa56b1ed9-6.jpg', '第四个', '第四个', null);
INSERT INTO `gallery` VALUES ('1092017173414600704', 'https://travel-class.oss-cn-hangzhou.aliyuncs.com/images/2019-02-03/95978c1f6d88418aafd3235266dad70e-gallery09.jpg', '第四个', '第四个', null);
INSERT INTO `gallery` VALUES ('1092017188929331200', 'https://travel-class.oss-cn-hangzhou.aliyuncs.com/images/2019-02-03/31c9937dfd1c43d3b8146a96bc748982-gallery11.jpg', '第四个', '第四个', null);
INSERT INTO `gallery` VALUES ('1092017201700986880', 'https://travel-class.oss-cn-hangzhou.aliyuncs.com/images/2019-02-03/cb1b3a4d99824e5eac67444805515550-4.jpg', '第四个', '第四个', null);
INSERT INTO `gallery` VALUES ('1092017213319208960', 'https://travel-class.oss-cn-hangzhou.aliyuncs.com/images/2019-02-03/e04cf96e553b44739d75329e04d38ff9-gallery02.jpg', '第四个', '第四个', null);
INSERT INTO `gallery` VALUES ('1092017225990201344', 'https://travel-class.oss-cn-hangzhou.aliyuncs.com/images/2019-02-03/47443b9f2d1c49b99795defbbcffb96f-5.jpg', '第四个', '第四个', null);
INSERT INTO `gallery` VALUES ('1092017240234057728', 'https://travel-class.oss-cn-hangzhou.aliyuncs.com/images/2019-02-03/ed1ee379b26c4c13a00169ac5711ab27-3.jpg', '第四个', '第四个', null);
INSERT INTO `gallery` VALUES ('1105722072165822464', 'https://travel-class.oss-cn-hangzhou.aliyuncs.com/images/2019-03-13/831445482f2744cc8045bb5e874d6b50-timg.jpg', 'love', '', null);

-- ----------------------------
-- Table structure for hotel
-- ----------------------------
DROP TABLE IF EXISTS `hotel`;
CREATE TABLE `hotel` (
  `id` varchar(120) COLLATE utf8_bin NOT NULL,
  `img` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '图片',
  `name` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '酒店名称',
  `price` decimal(10,2) DEFAULT NULL COMMENT '价格',
  `miaoshu` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '描述',
  `bed` int(10) DEFAULT NULL COMMENT '床数',
  `day` int(10) DEFAULT '1' COMMENT '天数',
  `star` int(10) DEFAULT '0' COMMENT '评论星',
  `startdate` datetime DEFAULT NULL COMMENT '入住时间',
  `addr` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT '酒店城市',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of hotel
-- ----------------------------
INSERT INTO `hotel` VALUES ('1091', '/images/hotels07.jpg', '八六', '654.00', '时候', '55', '2', '4', '2019-03-12 20:41:05', '南阳');
INSERT INTO `hotel` VALUES ('109137', '/images/hotels05.jpg', '四五', '741.00', '贵', '51', '2', '5', '2019-03-12 20:40:14', '洛阳');
INSERT INTO `hotel` VALUES ('10913733', '/images/hotels02.jpg', '海景', '321.00', '美', '55', '2', '5', '2019-03-12 20:38:48', '南阳');
INSERT INTO `hotel` VALUES ('109137339', '/images/hotels03.jpg', '好好', '963.00', '魅力', '55', '3', '5', '2019-03-12 20:39:35', '安阳');
INSERT INTO `hotel` VALUES ('1091373396', '/images/hotels06.jpg', '四六', '753.00', '四六八', '255', '2', '3', '2019-03-12 20:40:40', '郑州');
INSERT INTO `hotel` VALUES ('10913734', '/images/hotels04.jpg', '大陆', '258.00', '好看', '52', '3', '5', '2019-03-12 20:39:10', '郑州');
INSERT INTO `hotel` VALUES ('10913735', '/images/hotels09.jpg', '溜吧', '951.00', '溜吧', '55', '2', '5', '2019-03-12 21:04:01', '南阳');
INSERT INTO `hotel` VALUES ('1102950003585847290', '/images/hotels08.jpg', '嘿嘿', '956.00', '哈哈', '100', '8', '5', '2019-03-12 21:04:59', '新乡');
INSERT INTO `hotel` VALUES ('1121348042457448448', 'https://travel-class.oss-cn-hangzhou.aliyuncs.com/images/2019-04-25/e71a423becaf4e41a780cffb71dba49b-api.jpg', '123', '123.00', '123456', '12', '1', '0', null, '123');
INSERT INTO `hotel` VALUES ('1121348538882686976', 'https://travel-class.oss-cn-hangzhou.aliyuncs.com/images/2019-04-25/9c2121dc403e4a8ba70183647ef666e3-QQ浏览器截图_20171024105850_98254BF9C6DB4e5999EB277FC06CDAF0.jpg', 'linux', '120.00', 'linux', '12', '1', '0', null, 'linux');
INSERT INTO `hotel` VALUES ('1121348970208133120', 'https://travel-class.oss-cn-hangzhou.aliyuncs.com/images/2019-04-25/86e805d4ef19474ca464e9de7e51f427-QQ浏览器截图_20171003134631_52F18F563F6049ad8A30E988AC240EF9.jpg', 'linux1', '122.00', 'linux1', '20', '1', '0', null, 'linux1');
INSERT INTO `hotel` VALUES ('1121351292367691776', 'https://travel-class.oss-cn-hangzhou.aliyuncs.com/images/2019-04-25/b7091b9b33a84267955dea690209dd71-QQ图片20180227170621.jpg', 'nanyang', '20.00', 'nanyang', '20', '1', '0', null, 'nanyang');
INSERT INTO `hotel` VALUES ('1121353330614915072', 'https://travel-class.oss-cn-hangzhou.aliyuncs.com/images/2019-04-25/612a508065a24b1498386798daeb8a76-QQ图片20180227170621.jpg', '南阳', '120.00', '南阳宛城', '120', '1', '0', null, '南阳');
INSERT INTO `hotel` VALUES ('123456789', '/images/hotels01.jpg', '情侣', '123.00', '你懂得', '1', '2', '5', '2019-03-12 20:38:22', '南阳');

-- ----------------------------
-- Table structure for hotel_orders
-- ----------------------------
DROP TABLE IF EXISTS `hotel_orders`;
CREATE TABLE `hotel_orders` (
  `id` varchar(120) COLLATE utf8_bin NOT NULL COMMENT 'id',
  `scenicid` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT '商品id',
  `userid` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT '用户id',
  `qty` int(11) DEFAULT NULL COMMENT '数量',
  `payment` decimal(10,2) DEFAULT NULL COMMENT '总支付金额',
  `status` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '状态',
  `paytime` datetime DEFAULT NULL COMMENT '支付时间',
  `phone` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '电话',
  `username` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `scenicname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `begin` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '入住时间',
  `end` varchar(2255) COLLATE utf8_bin DEFAULT NULL COMMENT '离开时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of hotel_orders
-- ----------------------------
INSERT INTO `hotel_orders` VALUES ('1121588580272168960', '109137339', '1103622546225336320', '1', '963.00', '0', '2019-04-26 09:35:30', '15688198593', 'tz', '好好', null, null);
INSERT INTO `hotel_orders` VALUES ('1121589539505299456', '109137339', '1103622546225336320', '1', '963.00', '0', '2019-04-26 09:39:19', '15688198593', 'tz', '好好', null, null);
INSERT INTO `hotel_orders` VALUES ('1121589770657587200', '109137339', '1103622546225336320', '1', '963.00', '0', '2019-04-26 09:40:14', '15688198593', 'tz', '好好', null, null);
INSERT INTO `hotel_orders` VALUES ('1121590009703555072', '109137339', '1103622546225336320', '1', '963.00', '0', '2019-04-26 09:41:11', '15688198593', 'tz', '好好', null, null);
INSERT INTO `hotel_orders` VALUES ('1121594259896655872', '1091', '1103622546225336320', '1', '654.00', '0', '2019-04-26 09:58:04', '15688198593', 'tz', '八六', '', '');
INSERT INTO `hotel_orders` VALUES ('1121594583441022976', '1091', '1103622546225336320', '1', '654.00', '0', '2019-04-26 09:59:21', '15688198593', 'tz', '八六', '', '');
INSERT INTO `hotel_orders` VALUES ('1121594730950500352', '1091', '1103622546225336320', '1', '654.00', '0', '2019-04-26 09:59:56', '15688198593', 'tz', '八六', '2019-04-26', '2019-04-27');
INSERT INTO `hotel_orders` VALUES ('1121610508663861248', '1091373396', '1103622546225336320', '1', '753.00', '0', '2019-04-26 11:02:38', '15688198593', 'tz', '四六', '2019-04-26', '2019-04-27');
INSERT INTO `hotel_orders` VALUES ('1121615112885624832', '1091', '1103490713909239808', '1', '654.00', '0', '2019-04-26 11:20:56', '13937660933', '张三', '八六', '', '');
INSERT INTO `hotel_orders` VALUES ('1121615238433726464', '1091373396', '1103490713909239808', '1', '753.00', '0', '2019-04-26 11:21:26', '13937660933', '张三', '四六', '2019-04-26', '2019-04-28');
INSERT INTO `hotel_orders` VALUES ('1126694143169810432', '109137', '1126690336067244032', '1', '741.00', '0', '2019-05-10 11:43:11', '13937660933', 'chs', '四五', '2019-05-10', '2019-05-11');
INSERT INTO `hotel_orders` VALUES ('1126699220660015104', '109137', '1126690336067244032', '1', '741.00', '0', '2019-05-10 12:03:21', '13937660933', 'chs', '四五', '2019-05-10', '2019-05-11');
INSERT INTO `hotel_orders` VALUES ('1126699263282532352', '109137', '1126690336067244032', '2', '1482.00', '0', '2019-05-10 12:03:32', '13937660933', 'chs', '四五', '2019-05-10', '2019-05-12');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` varchar(120) COLLATE utf8_bin NOT NULL COMMENT 'id',
  `scenicid` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT '商品id',
  `userid` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT '用户id',
  `qty` int(11) DEFAULT NULL COMMENT '数量',
  `payment` decimal(10,2) DEFAULT NULL COMMENT '总支付金额',
  `status` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '状态',
  `paytime` datetime DEFAULT NULL COMMENT '支付时间',
  `phone` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '电话',
  `username` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `scenicname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('1118095265778114560', '1102950003585847299', '1103622546225336320', '1', '24.00', '1', '2019-04-16 18:14:19', '15688198593', 'tz', '南阳诸葛庐');
INSERT INTO `orders` VALUES ('1224322977819049984', '1102950003585847230', '1224322702257471488', '1', '888.00', '1', '2020-02-03 21:25:19', '13937660933', 'chs', '洛阳');

-- ----------------------------
-- Table structure for scenic
-- ----------------------------
DROP TABLE IF EXISTS `scenic`;
CREATE TABLE `scenic` (
  `id` varchar(64) CHARACTER SET utf8 NOT NULL COMMENT 'id',
  `name` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '景点名称',
  `img` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT '景点图片',
  `price` decimal(10,2) DEFAULT NULL COMMENT '价格',
  `miaoshu` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT '描述',
  `comment` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '详情',
  `stock` int(32) DEFAULT NULL COMMENT '库存',
  `start` int(12) DEFAULT NULL COMMENT '评分',
  `contry` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '国家地区',
  `startdate` datetime DEFAULT NULL COMMENT '出发时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of scenic
-- ----------------------------
INSERT INTO `scenic` VALUES ('1102950003585847200', '郑州', 'https://travel-class.oss-cn-hangzhou.aliyuncs.com/images/2019-02-02/26ffb18bc0b94befac2aa27d7e796a2d-6.jpg', '999.00', '你好', '其实我没什么好说的', '0', '7', '郑州', '2019-02-21 13:30:27');
INSERT INTO `scenic` VALUES ('1102950003585847230', '洛阳', 'https://travel-class.oss-cn-hangzhou.aliyuncs.com/images/2019-02-02/26ffb18bc0b94befac2aa27d7e796a2d-6.jpg', '888.00', '很好', '超级好', '22', '4', '洛阳', '2019-02-21 13:30:59');
INSERT INTO `scenic` VALUES ('1102950003585847250', '开发', 'https://travel-class.oss-cn-hangzhou.aliyuncs.com/images/2019-02-02/26ffb18bc0b94befac2aa27d7e796a2d-6.jpg', '777.00', '666', '555', '23', '1', '南阳', '2019-02-21 13:31:25');
INSERT INTO `scenic` VALUES ('1102950003585847251', '阳阳', 'https://travel-class.oss-cn-hangzhou.aliyuncs.com/images/2019-02-02/26ffb18bc0b94befac2aa27d7e796a2d-6.jpg', '999.00', '999', '999', '25', '4', '南阳', '2019-02-25 16:20:04');
INSERT INTO `scenic` VALUES ('1102950003585847252', '荥阳', 'https://travel-class.oss-cn-hangzhou.aliyuncs.com/images/2019-02-02/26ffb18bc0b94befac2aa27d7e796a2d-6.jpg', '123.00', '好地方', '好地方', '17', '4', '南阳', '2019-02-12 08:00:00');
INSERT INTO `scenic` VALUES ('1102950003585847253', '荥阳', 'https://travel-class.oss-cn-hangzhou.aliyuncs.com/images/2019-02-02/9eba13d9525848739ed51b151c5dfdc9-5.jpg', '123.00', '好地方', '好地方', '19', '35', '南阳', '2019-02-12 08:00:00');
INSERT INTO `scenic` VALUES ('1102950003585847254', '南阳诸葛庐', 'https://travel-class.oss-cn-hangzhou.aliyuncs.com/images/2019-02-02/64cd556abd9e4cd888d4bf44c89bcdda-5.jpg', '24.00', '这是个好地方不能再好了', '其实我没什么好说的', '20', '20', '南阳', '2019-02-02 08:00:00');
INSERT INTO `scenic` VALUES ('1224323401804464128', '1', 'https://travel-class.oss-cn-hangzhou.aliyuncs.com/images/2020-02-03/062a0c5d3b124d0eae1947a39394eb49-柯南.jpg', '1.00', '1', '1', '1', null, null, '2020-02-03 08:00:00');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` varchar(120) COLLATE utf8_bin NOT NULL COMMENT 'id',
  `name` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '姓名',
  `password` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT '密码',
  `mobile` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '手机号码',
  `email` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '邮箱',
  `sex` char(6) COLLATE utf8_bin DEFAULT '1' COMMENT '性别，男1，女0',
  `age` int(16) DEFAULT NULL COMMENT '年龄',
  `salt` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '盐',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1224322702257471488', 'chs', '$2a$10$7YvJ9xenX7qeCKqn91I8WuIqmbeqglE60ar0PqWNlzUNZld1hF6nq', '', '', null, null, null);

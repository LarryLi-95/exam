/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50717
 Source Host           : localhost:3306
 Source Schema         : exam

 Target Server Type    : MySQL
 Target Server Version : 50717
 File Encoding         : 65001

 Date: 01/06/2019 15:58:45
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_num` int(11) NOT NULL,
  `admin_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `admin_sex` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `admin_birth` datetime(0) NULL DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `updatetime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 110, 'jc', '女', '1993-10-09 00:00:00', '123456', 'qqq.11', '123', '2018-05-02 23:53:49');

-- ----------------------------
-- Table structure for batch
-- ----------------------------
DROP TABLE IF EXISTS `batch`;
CREATE TABLE `batch`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `arts_science` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文理科',
  `year` int(10) NULL DEFAULT NULL COMMENT '年份',
  `batch_number` int(10) NULL DEFAULT NULL COMMENT '学校批次',
  `low_batch` int(10) NULL DEFAULT NULL COMMENT '最低录取位次',
  `avg_batch` int(10) NULL DEFAULT NULL COMMENT '平均录取位次',
  `low_score` int(10) NULL DEFAULT NULL COMMENT '最低录取分数',
  `avg_score` int(10) NULL DEFAULT NULL COMMENT '平均录取分数',
  `school_id` int(10) NULL DEFAULT NULL COMMENT '学校',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '批次表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of batch
-- ----------------------------
INSERT INTO `batch` VALUES (3, '文科', 2019, 1, 1000, 800, 500, 503, 20);
INSERT INTO `batch` VALUES (4, '理科', 2019, 1, 400, 400, 450, 450, 20);

-- ----------------------------
-- Table structure for city
-- ----------------------------
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '城市名称',
  `province_id` int(11) NULL DEFAULT NULL COMMENT '省份id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 44 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of city
-- ----------------------------
INSERT INTO `city` VALUES (1, '西安', 1);
INSERT INTO `city` VALUES (2, '昆明市', 5);
INSERT INTO `city` VALUES (3, '北京市', 8);
INSERT INTO `city` VALUES (4, '铜川市', 1);
INSERT INTO `city` VALUES (5, '宝鸡市', 1);
INSERT INTO `city` VALUES (6, '咸阳市', 1);
INSERT INTO `city` VALUES (7, '渭南市', 1);
INSERT INTO `city` VALUES (8, '榆林市', 1);
INSERT INTO `city` VALUES (9, '宝鸡市', 1);
INSERT INTO `city` VALUES (10, '太原市', 4);
INSERT INTO `city` VALUES (11, '兰州市', 3);
INSERT INTO `city` VALUES (12, '西安市', 1);
INSERT INTO `city` VALUES (13, '太原市', 4);
INSERT INTO `city` VALUES (14, '晋中市', 4);
INSERT INTO `city` VALUES (15, '昆明市', 5);
INSERT INTO `city` VALUES (16, '天水市', 3);
INSERT INTO `city` VALUES (17, '长沙市', 6);
INSERT INTO `city` VALUES (18, '郑州市', 7);
INSERT INTO `city` VALUES (19, '青岛市', 9);
INSERT INTO `city` VALUES (20, '南京市', 10);
INSERT INTO `city` VALUES (21, '拉萨', 13);
INSERT INTO `city` VALUES (22, '哈尔滨市', 14);
INSERT INTO `city` VALUES (23, '沈阳市', 15);
INSERT INTO `city` VALUES (24, '长春市', 16);
INSERT INTO `city` VALUES (25, '贵阳市', 17);
INSERT INTO `city` VALUES (26, '成都市', 18);
INSERT INTO `city` VALUES (27, '乌鲁木齐', 19);
INSERT INTO `city` VALUES (28, '西宁市', 20);
INSERT INTO `city` VALUES (29, '呼和浩特', 21);
INSERT INTO `city` VALUES (30, '呼和浩特', 21);
INSERT INTO `city` VALUES (31, '银川市', 22);
INSERT INTO `city` VALUES (32, '石家庄市', 23);
INSERT INTO `city` VALUES (33, '武汉市', 24);
INSERT INTO `city` VALUES (34, '海口市', 25);
INSERT INTO `city` VALUES (35, '海口市', 25);
INSERT INTO `city` VALUES (36, '南宁市', 26);
INSERT INTO `city` VALUES (37, '南宁市', 26);
INSERT INTO `city` VALUES (38, '深圳市', 27);
INSERT INTO `city` VALUES (39, '南昌市', 28);
INSERT INTO `city` VALUES (40, '南昌市', 28);
INSERT INTO `city` VALUES (41, '福州市', 29);
INSERT INTO `city` VALUES (42, '合肥市', 30);
INSERT INTO `city` VALUES (43, '杭州市', 31);

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NULL DEFAULT NULL COMMENT '用户id',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '留言内容',
  `time` datetime(0) NULL DEFAULT NULL COMMENT '留言时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '留言板表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for profession
-- ----------------------------
DROP TABLE IF EXISTS `profession`;
CREATE TABLE `profession`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '专业名',
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '专业描述',
  `future` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '前景',
  `compensation` int(10) NULL DEFAULT NULL COMMENT '平均薪资',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '专业表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of profession
-- ----------------------------
INSERT INTO `profession` VALUES (17, '计算机科学与技术', '理工类', '还不错', 123);
INSERT INTO `profession` VALUES (18, '软件工程', '软件', '', 12);
INSERT INTO `profession` VALUES (19, '物理', '物理', '', 123);
INSERT INTO `profession` VALUES (20, '化学', '化学', '', 0);
INSERT INTO `profession` VALUES (21, '探测与制导', '理工类', '还不错', 0);
INSERT INTO `profession` VALUES (22, '机械设计制造及其自动化', '理工类', '还不错', 0);
INSERT INTO `profession` VALUES (23, '经济学', '文史类', '还不错', 0);
INSERT INTO `profession` VALUES (24, '国际经济与贸易', '文史类', '还不错', 0);

-- ----------------------------
-- Table structure for province
-- ----------------------------
DROP TABLE IF EXISTS `province`;
CREATE TABLE `province`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '省名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of province
-- ----------------------------
INSERT INTO `province` VALUES (1, '陕西省');
INSERT INTO `province` VALUES (3, '甘肃省');
INSERT INTO `province` VALUES (4, '山西省');
INSERT INTO `province` VALUES (5, '云南省');
INSERT INTO `province` VALUES (6, '湖南省');
INSERT INTO `province` VALUES (7, '河南省');
INSERT INTO `province` VALUES (8, '北京市');
INSERT INTO `province` VALUES (9, '山东省');
INSERT INTO `province` VALUES (10, '江苏省');
INSERT INTO `province` VALUES (11, '重庆市');
INSERT INTO `province` VALUES (12, '天津市');
INSERT INTO `province` VALUES (13, '西藏');
INSERT INTO `province` VALUES (14, '黑龙江省');
INSERT INTO `province` VALUES (15, '辽宁省');
INSERT INTO `province` VALUES (16, '吉林省');
INSERT INTO `province` VALUES (17, '贵州省');
INSERT INTO `province` VALUES (18, '四川省');
INSERT INTO `province` VALUES (19, '新疆');
INSERT INTO `province` VALUES (20, '青海');
INSERT INTO `province` VALUES (21, '内蒙古');
INSERT INTO `province` VALUES (22, '宁夏');
INSERT INTO `province` VALUES (23, '河北省');
INSERT INTO `province` VALUES (24, '湖北省');
INSERT INTO `province` VALUES (25, '海南省');
INSERT INTO `province` VALUES (26, '广西省');
INSERT INTO `province` VALUES (27, '广东省');
INSERT INTO `province` VALUES (28, '江西省');
INSERT INTO `province` VALUES (29, '福建省');
INSERT INTO `province` VALUES (30, '安徽省');
INSERT INTO `province` VALUES (31, '浙江省');
INSERT INTO `province` VALUES (32, '上海市');

-- ----------------------------
-- Table structure for schema_version
-- ----------------------------
DROP TABLE IF EXISTS `schema_version`;
CREATE TABLE `schema_version`  (
  `installed_rank` int(11) NOT NULL,
  `version` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `description` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `script` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `checksum` int(11) NULL DEFAULT NULL,
  `installed_by` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `installed_on` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `execution_time` int(11) NOT NULL,
  `success` tinyint(1) NOT NULL,
  PRIMARY KEY (`installed_rank`) USING BTREE,
  INDEX `schema_version_s_idx`(`success`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of schema_version
-- ----------------------------
INSERT INTO `schema_version` VALUES (1, '1.0.0.20190501.1', 'TEACHER DB INIT', 'SQL', 'V1.0.0_20190501_1__TEACHER_DB_INIT.sql', 263046811, 'root', '2019-06-01 15:35:57', 446, 1);

-- ----------------------------
-- Table structure for school
-- ----------------------------
DROP TABLE IF EXISTS `school`;
CREATE TABLE `school`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学校名称',
  `description` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学校简介',
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学校地址',
  `url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '招生连接',
  `level` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '招生层次',
  `type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学校类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '学校表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of school
-- ----------------------------
INSERT INTO `school` VALUES (20, '西安工业大学', 'University）简称“西安工大”，位于世界历史名城古都西安，是中国西北地区唯一一所以兵工为特色，多学科协调发展的教学研究型大学。原中华人民共和国兵器工业部直属的七所本科院校之一（“兵工七子”）', '西安市', 'http://www.xatu.cn/', '一本', '理工类');
INSERT INTO `school` VALUES (21, '陕西师范大学', '师范', '西安', 'https://www._.com', '一本', '师范');
INSERT INTO `school` VALUES (22, '长安大学', '长安', '长安', 'http://www.ca.cn', '一本', '理工类');
INSERT INTO `school` VALUES (23, '西安电子科技大学', '电子', '西安', 'http://www.dianzi.com', '一本', '理工');

-- ----------------------------
-- Table structure for school_batch
-- ----------------------------
DROP TABLE IF EXISTS `school_batch`;
CREATE TABLE `school_batch`  (
  `id` int(10) NOT NULL,
  `school_id` int(10) NULL DEFAULT NULL COMMENT '学校id',
  `batch_id` int(10) NULL DEFAULT NULL COMMENT '批次id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for school_line
-- ----------------------------
DROP TABLE IF EXISTS `school_line`;
CREATE TABLE `school_line`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `school_id` int(10) NOT NULL COMMENT '学校id',
  `school_line` int(10) NULL DEFAULT NULL COMMENT '学校分数线',
  `arts_science` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文理科',
  `school_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学校名称',
  `profession_id` int(10) NULL DEFAULT NULL COMMENT '专业id',
  `profession_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '专业名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of school_line
-- ----------------------------
INSERT INTO `school_line` VALUES (5, 21, 123, '理科', NULL, 17, NULL);
INSERT INTO `school_line` VALUES (6, 21, 233, '理科', NULL, 18, NULL);
INSERT INTO `school_line` VALUES (7, 22, 234, '理科', NULL, 19, NULL);
INSERT INTO `school_line` VALUES (8, 20, 450, '理科', NULL, 18, NULL);

-- ----------------------------
-- Table structure for school_profession
-- ----------------------------
DROP TABLE IF EXISTS `school_profession`;
CREATE TABLE `school_profession`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `school_id` int(10) NULL DEFAULT NULL COMMENT '学校id',
  `profession_id` int(10) NULL DEFAULT NULL COMMENT '专业id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '学校专业表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of school_profession
-- ----------------------------
INSERT INTO `school_profession` VALUES (1, 20, 17);
INSERT INTO `school_profession` VALUES (2, 20, 18);
INSERT INTO `school_profession` VALUES (3, 21, 17);
INSERT INTO `school_profession` VALUES (4, 21, 18);
INSERT INTO `school_profession` VALUES (5, 22, 19);
INSERT INTO `school_profession` VALUES (6, 22, 20);
INSERT INTO `school_profession` VALUES (7, 20, 19);
INSERT INTO `school_profession` VALUES (8, 20, 20);
INSERT INTO `school_profession` VALUES (9, 20, 21);
INSERT INTO `school_profession` VALUES (10, 20, 22);
INSERT INTO `school_profession` VALUES (11, 20, 23);
INSERT INTO `school_profession` VALUES (12, 20, 24);
INSERT INTO `school_profession` VALUES (13, 21, 19);
INSERT INTO `school_profession` VALUES (14, 21, 20);
INSERT INTO `school_profession` VALUES (15, 21, 21);
INSERT INTO `school_profession` VALUES (16, 21, 22);
INSERT INTO `school_profession` VALUES (17, 21, 23);
INSERT INTO `school_profession` VALUES (18, 21, 24);

-- ----------------------------
-- Table structure for scoreline
-- ----------------------------
DROP TABLE IF EXISTS `scoreline`;
CREATE TABLE `scoreline`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `year` int(10) NULL DEFAULT NULL COMMENT '年份',
  `batch_number` int(10) NULL DEFAULT NULL COMMENT '批次',
  `score` int(10) NULL DEFAULT NULL COMMENT '分数线',
  `arts_science` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文理科',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '省控线' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of scoreline
-- ----------------------------
INSERT INTO `scoreline` VALUES (2, 2019, 1, 500, '理科');
INSERT INTO `scoreline` VALUES (3, 2019, 1, 506, '文科');
INSERT INTO `scoreline` VALUES (4, 2019, 2, 480, '理科');
INSERT INTO `scoreline` VALUES (5, 2019, 2, 498, '文科');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '姓名',
  `age` int(11) NOT NULL COMMENT '年龄',
  `phone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '手机号',
  `sex` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `birth` date NULL DEFAULT NULL COMMENT '生日',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `role` int(11) NULL DEFAULT NULL COMMENT '角色',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;

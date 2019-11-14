/*
 Navicat Premium Data Transfer

 Source Server         : fadmin
 Source Server Type    : MySQL
 Source Server Version : 80012
 Source Host           : localhost:3306
 Source Schema         : fadmin

 Target Server Type    : MySQL
 Target Server Version : 80012
 File Encoding         : 65001

 Date: 14/11/2019 11:53:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for fa_admin
-- ----------------------------
DROP TABLE IF EXISTS `fa_admin`;
CREATE TABLE `fa_admin`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '昵称',
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '密码盐',
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '头像',
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '电子邮箱',
  `loginfailure` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '失败次数',
  `logintime` int(10) NULL DEFAULT NULL COMMENT '登录时间',
  `loginip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录IP',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) NULL DEFAULT NULL COMMENT '更新时间',
  `token` varchar(59) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'Session标识',
  `status` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'normal' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '管理员表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fa_admin
-- ----------------------------
INSERT INTO `fa_admin` VALUES (1, 'admin', 'Admin', '4f6f191415dc5d445343c07ad602b253', '01e62c', '/assets/img/avatar.png', 'admin@admin.com', 0, 1573623783, '127.0.0.1', 1492186163, 1573623783, '7a48ddea-e398-49f4-a4b6-195581f24a2f', 'normal');

-- ----------------------------
-- Table structure for fa_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `fa_admin_log`;
CREATE TABLE `fa_admin_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `admin_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '管理员ID',
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '管理员名字',
  `url` varchar(1500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '操作页面',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '日志标题',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  `ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'IP',
  `useragent` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'User-Agent',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `name`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 414 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '管理员日志表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fa_admin_log
-- ----------------------------
INSERT INTO `fa_admin_log` VALUES (1, 1, 'admin', '/rfOGdYRKX2.php/index/login?url=%2FrfOGdYRKX2.php', '登录', '{\"url\":\"\\/rfOGdYRKX2.php\",\"__token__\":\"acbeff923532058f70c4f3aeddaf9423\",\"username\":\"admin\",\"captcha\":\"a4pk\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573540855);
INSERT INTO `fa_admin_log` VALUES (2, 1, 'admin', '/rfOGdYRKX2.php/addon/install', '插件管理 安装', '{\"name\":\"command\",\"force\":\"0\",\"uid\":\"14086\",\"token\":\"5f44b37c-4409-4d0e-9267-5b85f767cb5f\",\"version\":\"1.0.5\",\"faversion\":\"1.0.0.20191101_beta\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573544687);
INSERT INTO `fa_admin_log` VALUES (3, 1, 'admin', '/rfOGdYRKX2.php/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573544687);
INSERT INTO `fa_admin_log` VALUES (4, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573544756);
INSERT INTO `fa_admin_log` VALUES (5, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573544782);
INSERT INTO `fa_admin_log` VALUES (6, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573545675);
INSERT INTO `fa_admin_log` VALUES (7, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573548242);
INSERT INTO `fa_admin_log` VALUES (8, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_vilager\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573548246);
INSERT INTO `fa_admin_log` VALUES (9, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573548258);
INSERT INTO `fa_admin_log` VALUES (10, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573548258);
INSERT INTO `fa_admin_log` VALUES (11, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573548259);
INSERT INTO `fa_admin_log` VALUES (12, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573548259);
INSERT INTO `fa_admin_log` VALUES (13, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_family\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573548288);
INSERT INTO `fa_admin_log` VALUES (14, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_family\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573548288);
INSERT INTO `fa_admin_log` VALUES (15, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_family\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573548539);
INSERT INTO `fa_admin_log` VALUES (16, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573549819);
INSERT INTO `fa_admin_log` VALUES (17, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573549819);
INSERT INTO `fa_admin_log` VALUES (18, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573549819);
INSERT INTO `fa_admin_log` VALUES (19, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573549819);
INSERT INTO `fa_admin_log` VALUES (20, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573550004);
INSERT INTO `fa_admin_log` VALUES (21, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573550004);
INSERT INTO `fa_admin_log` VALUES (22, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573550004);
INSERT INTO `fa_admin_log` VALUES (23, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573550004);
INSERT INTO `fa_admin_log` VALUES (24, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_gro\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573550009);
INSERT INTO `fa_admin_log` VALUES (25, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_gro\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573550009);
INSERT INTO `fa_admin_log` VALUES (26, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573550010);
INSERT INTO `fa_admin_log` VALUES (27, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573550010);
INSERT INTO `fa_admin_log` VALUES (28, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573550010);
INSERT INTO `fa_admin_log` VALUES (29, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573550010);
INSERT INTO `fa_admin_log` VALUES (30, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_gro_fam\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573550014);
INSERT INTO `fa_admin_log` VALUES (31, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_gro_fam\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573550014);
INSERT INTO `fa_admin_log` VALUES (32, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_gro\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573550022);
INSERT INTO `fa_admin_log` VALUES (33, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_gro_fam\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573550035);
INSERT INTO `fa_admin_log` VALUES (34, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_gro_fam\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573550101);
INSERT INTO `fa_admin_log` VALUES (35, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_gro_fam\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573550105);
INSERT INTO `fa_admin_log` VALUES (36, 1, 'admin', '/rfOGdYRKX2.php/command/command/action/command', '', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"0\",\"table\":\"fa_vilager\",\"controller\":\"\",\"model\":\"\",\"fields\":[\"id\",\"vilagername\",\"phone\",\"sex\",\"age\",\"idcode\",\"edu_green\"],\"relation\":{\"2\":{\"relation\":\"fa_family\",\"relationmode\":\"hasone\",\"relationforeignkey\":\"id\",\"relationprimarykey\":\"fam_id\",\"relationfields\":[\"family_vilagers\"]},\"4\":{\"relation\":\"fa_gro\",\"relationmode\":\"hasone\",\"relationforeignkey\":\"id\",\"relationprimarykey\":\"gro_id\",\"relationfields\":[\"name\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"fa_gro.id\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573550544);
INSERT INTO `fa_admin_log` VALUES (37, 1, 'admin', '/rfOGdYRKX2.php/command/command/action/execute', '', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"0\",\"table\":\"fa_vilager\",\"controller\":\"\",\"model\":\"\",\"fields\":[\"id\",\"vilagername\",\"phone\",\"sex\",\"age\",\"idcode\",\"edu_green\"],\"relation\":{\"2\":{\"relation\":\"fa_family\",\"relationmode\":\"hasone\",\"relationforeignkey\":\"id\",\"relationprimarykey\":\"fam_id\",\"relationfields\":[\"family_vilagers\"]},\"4\":{\"relation\":\"fa_gro\",\"relationmode\":\"hasone\",\"relationforeignkey\":\"id\",\"relationprimarykey\":\"gro_id\",\"relationfields\":[\"name\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"fa_gro.id\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573550546);
INSERT INTO `fa_admin_log` VALUES (38, 1, 'admin', '/rfOGdYRKX2.php/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573550546);
INSERT INTO `fa_admin_log` VALUES (39, 1, 'admin', '/rfOGdYRKX2.php/command/command/action/command', '', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"0\",\"table\":\"fa_vilager\",\"controller\":\"\",\"model\":\"\",\"fields\":[\"id\",\"vilagername\",\"phone\",\"sex\",\"age\",\"idcode\",\"edu_green\"],\"relation\":{\"2\":{\"relation\":\"fa_family\",\"relationmode\":\"hasone\",\"relationforeignkey\":\"id\",\"relationprimarykey\":\"fam_id\",\"relationfields\":[\"family_vilagers\"]},\"4\":{\"relation\":\"fa_gro\",\"relationmode\":\"hasone\",\"relationforeignkey\":\"id\",\"relationprimarykey\":\"gro_id\",\"relationfields\":[\"name\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"fa_gro.id\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573550655);
INSERT INTO `fa_admin_log` VALUES (40, 1, 'admin', '/rfOGdYRKX2.php/command/command/action/execute', '', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"0\",\"table\":\"fa_vilager\",\"controller\":\"\",\"model\":\"\",\"fields\":[\"id\",\"vilagername\",\"phone\",\"sex\",\"age\",\"idcode\",\"edu_green\"],\"relation\":{\"2\":{\"relation\":\"fa_family\",\"relationmode\":\"hasone\",\"relationforeignkey\":\"id\",\"relationprimarykey\":\"fam_id\",\"relationfields\":[\"family_vilagers\"]},\"4\":{\"relation\":\"fa_gro\",\"relationmode\":\"hasone\",\"relationforeignkey\":\"id\",\"relationprimarykey\":\"gro_id\",\"relationfields\":[\"name\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"fa_gro.id\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573550656);
INSERT INTO `fa_admin_log` VALUES (41, 1, 'admin', '/rfOGdYRKX2.php/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573550656);
INSERT INTO `fa_admin_log` VALUES (42, 1, 'admin', '/rfOGdYRKX2.php/command/command/action/command', '', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"0\",\"table\":\"fa_vilager\",\"controller\":\"\",\"model\":\"\",\"fields\":[\"id\",\"vilagername\",\"phone\",\"sex\",\"age\",\"idcode\",\"edu_green\"],\"relation\":{\"2\":{\"relation\":\"fa_family\",\"relationmode\":\"hasone\",\"relationforeignkey\":\"id\",\"relationprimarykey\":\"fam_id\",\"relationfields\":[\"family_vilagers\"]},\"4\":{\"relation\":\"fa_gro\",\"relationmode\":\"hasone\",\"relationforeignkey\":\"id\",\"relationprimarykey\":\"gro_id\",\"relationfields\":[\"name\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573550733);
INSERT INTO `fa_admin_log` VALUES (43, 1, 'admin', '/rfOGdYRKX2.php/command/command/action/execute', '', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"0\",\"table\":\"fa_vilager\",\"controller\":\"\",\"model\":\"\",\"fields\":[\"id\",\"vilagername\",\"phone\",\"sex\",\"age\",\"idcode\",\"edu_green\"],\"relation\":{\"2\":{\"relation\":\"fa_family\",\"relationmode\":\"hasone\",\"relationforeignkey\":\"id\",\"relationprimarykey\":\"fam_id\",\"relationfields\":[\"family_vilagers\"]},\"4\":{\"relation\":\"fa_gro\",\"relationmode\":\"hasone\",\"relationforeignkey\":\"id\",\"relationprimarykey\":\"gro_id\",\"relationfields\":[\"name\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573550734);
INSERT INTO `fa_admin_log` VALUES (44, 1, 'admin', '/rfOGdYRKX2.php/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573550735);
INSERT INTO `fa_admin_log` VALUES (45, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_gro\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573550742);
INSERT INTO `fa_admin_log` VALUES (46, 1, 'admin', '/rfOGdYRKX2.php/command/command/action/command', '', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"0\",\"table\":\"fa_vilager\",\"controller\":\"\",\"model\":\"\",\"fields\":[\"id\",\"vilagername\",\"phone\",\"sex\",\"age\",\"idcode\",\"edu_green\"],\"relation\":{\"2\":{\"relation\":\"fa_family\",\"relationmode\":\"hasone\",\"relationforeignkey\":\"id\",\"relationprimarykey\":\"fam_id\",\"relationfields\":[\"family_vilagers\"]},\"4\":{\"relation\":\"fa_gro\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"gro_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"name\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573550749);
INSERT INTO `fa_admin_log` VALUES (47, 1, 'admin', '/rfOGdYRKX2.php/command/command/action/execute', '', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"0\",\"table\":\"fa_vilager\",\"controller\":\"\",\"model\":\"\",\"fields\":[\"id\",\"vilagername\",\"phone\",\"sex\",\"age\",\"idcode\",\"edu_green\"],\"relation\":{\"2\":{\"relation\":\"fa_family\",\"relationmode\":\"hasone\",\"relationforeignkey\":\"id\",\"relationprimarykey\":\"fam_id\",\"relationfields\":[\"family_vilagers\"]},\"4\":{\"relation\":\"fa_gro\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"gro_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"name\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573550750);
INSERT INTO `fa_admin_log` VALUES (48, 1, 'admin', '/rfOGdYRKX2.php/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573550750);
INSERT INTO `fa_admin_log` VALUES (49, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_family\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573550757);
INSERT INTO `fa_admin_log` VALUES (50, 1, 'admin', '/rfOGdYRKX2.php/command/command/action/command', '', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"0\",\"table\":\"fa_vilager\",\"controller\":\"\",\"model\":\"\",\"fields\":[\"id\",\"vilagername\",\"phone\",\"sex\",\"age\",\"idcode\",\"edu_green\"],\"relation\":{\"2\":{\"relation\":\"fa_family\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"fam_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"family_vilagers\"]},\"4\":{\"relation\":\"fa_gro\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"gro_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"name\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573550767);
INSERT INTO `fa_admin_log` VALUES (51, 1, 'admin', '/rfOGdYRKX2.php/command/command/action/execute', '', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"0\",\"table\":\"fa_vilager\",\"controller\":\"\",\"model\":\"\",\"fields\":[\"id\",\"vilagername\",\"phone\",\"sex\",\"age\",\"idcode\",\"edu_green\"],\"relation\":{\"2\":{\"relation\":\"fa_family\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"fam_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"family_vilagers\"]},\"4\":{\"relation\":\"fa_gro\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"gro_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"name\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573550768);
INSERT INTO `fa_admin_log` VALUES (52, 1, 'admin', '/rfOGdYRKX2.php/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573550768);
INSERT INTO `fa_admin_log` VALUES (53, 1, 'admin', '/rfOGdYRKX2.php/command/del/ids/4', '在线命令管理 删除', '{\"action\":\"del\",\"ids\":\"4\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573550789);
INSERT INTO `fa_admin_log` VALUES (54, 1, 'admin', '/rfOGdYRKX2.php/command/del/ids/3', '在线命令管理 删除', '{\"action\":\"del\",\"ids\":\"3\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573550791);
INSERT INTO `fa_admin_log` VALUES (55, 1, 'admin', '/rfOGdYRKX2.php/command/del/ids/2', '在线命令管理 删除', '{\"action\":\"del\",\"ids\":\"2\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573550793);
INSERT INTO `fa_admin_log` VALUES (56, 1, 'admin', '/rfOGdYRKX2.php/command/del/ids/1', '在线命令管理 删除', '{\"action\":\"del\",\"ids\":\"1\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573550795);
INSERT INTO `fa_admin_log` VALUES (57, 1, 'admin', '/rfOGdYRKX2.php/auth/rule/add?dialog=1', '权限管理 菜单规则 添加', '{\"dialog\":\"1\",\"__token__\":\"ceb8e1f9fda92a4f8d6fd2db28c5d764\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"vilager\",\"title\":\"\\u6751\\u6c11\\u7ba1\\u7406\",\"icon\":\"fa fa-male\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573550975);
INSERT INTO `fa_admin_log` VALUES (58, 1, 'admin', '/rfOGdYRKX2.php/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573550975);
INSERT INTO `fa_admin_log` VALUES (59, 1, 'admin', '/rfOGdYRKX2.php/command/execute/ids/5', '在线命令管理 运行', '{\"ids\":\"5\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573617432);
INSERT INTO `fa_admin_log` VALUES (60, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573617444);
INSERT INTO `fa_admin_log` VALUES (61, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618079);
INSERT INTO `fa_admin_log` VALUES (62, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_vilager\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618089);
INSERT INTO `fa_admin_log` VALUES (63, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618156);
INSERT INTO `fa_admin_log` VALUES (64, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618156);
INSERT INTO `fa_admin_log` VALUES (65, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618156);
INSERT INTO `fa_admin_log` VALUES (66, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618156);
INSERT INTO `fa_admin_log` VALUES (67, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_family\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618159);
INSERT INTO `fa_admin_log` VALUES (68, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_family\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618159);
INSERT INTO `fa_admin_log` VALUES (69, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_family\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618160);
INSERT INTO `fa_admin_log` VALUES (70, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618189);
INSERT INTO `fa_admin_log` VALUES (71, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618189);
INSERT INTO `fa_admin_log` VALUES (72, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618189);
INSERT INTO `fa_admin_log` VALUES (73, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618189);
INSERT INTO `fa_admin_log` VALUES (74, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_gro_fam\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618199);
INSERT INTO `fa_admin_log` VALUES (75, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_gro_fam\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618199);
INSERT INTO `fa_admin_log` VALUES (76, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_gro_fam\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618202);
INSERT INTO `fa_admin_log` VALUES (77, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_gro\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618237);
INSERT INTO `fa_admin_log` VALUES (78, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_gro\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618238);
INSERT INTO `fa_admin_log` VALUES (79, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_gro\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618239);
INSERT INTO `fa_admin_log` VALUES (80, 1, 'admin', '/rfOGdYRKX2.php/command/command/action/command', '', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"0\",\"table\":\"fa_vilager\",\"controller\":\"vilager\",\"model\":\"\",\"fields\":[\"id\",\"vilagername\",\"phone\",\"sex\",\"age\",\"idcode\",\"edu_green\",\"marriage\",\"u_status\",\"status\",\"author\"],\"relation\":{\"2\":{\"relation\":\"fa_family\",\"relationmode\":\"hasone\",\"relationforeignkey\":\"id\",\"relationprimarykey\":\"fam_id\",\"relationfields\":[\"family_vilagers\"]},\"3\":{\"relation\":\"fa_gro\",\"relationmode\":\"hasone\",\"relationforeignkey\":\"id\",\"relationprimarykey\":\"gro_id\",\"relationfields\":[\"name\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618253);
INSERT INTO `fa_admin_log` VALUES (81, 1, 'admin', '/rfOGdYRKX2.php/command/command/action/execute', '', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"0\",\"table\":\"fa_vilager\",\"controller\":\"vilager\",\"model\":\"\",\"fields\":[\"id\",\"vilagername\",\"phone\",\"sex\",\"age\",\"idcode\",\"edu_green\",\"marriage\",\"u_status\",\"status\",\"author\"],\"relation\":{\"2\":{\"relation\":\"fa_family\",\"relationmode\":\"hasone\",\"relationforeignkey\":\"id\",\"relationprimarykey\":\"fam_id\",\"relationfields\":[\"family_vilagers\"]},\"3\":{\"relation\":\"fa_gro\",\"relationmode\":\"hasone\",\"relationforeignkey\":\"id\",\"relationprimarykey\":\"gro_id\",\"relationfields\":[\"name\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618254);
INSERT INTO `fa_admin_log` VALUES (82, 1, 'admin', '/rfOGdYRKX2.php/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618254);
INSERT INTO `fa_admin_log` VALUES (83, 1, 'admin', '/rfOGdYRKX2.php/command/command/action/command', '', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"fa_vilager\",\"controller\":\"vilager\",\"model\":\"\",\"fields\":[\"id\",\"vilagername\",\"phone\",\"sex\",\"age\",\"idcode\",\"edu_green\",\"marriage\",\"u_status\",\"status\",\"author\"],\"relation\":{\"2\":{\"relation\":\"fa_family\",\"relationmode\":\"hasone\",\"relationforeignkey\":\"id\",\"relationprimarykey\":\"fam_id\",\"relationfields\":[\"family_vilagers\"]},\"3\":{\"relation\":\"fa_gro\",\"relationmode\":\"hasone\",\"relationforeignkey\":\"id\",\"relationprimarykey\":\"gro_id\",\"relationfields\":[\"name\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618261);
INSERT INTO `fa_admin_log` VALUES (84, 1, 'admin', '/rfOGdYRKX2.php/command/command/action/execute', '', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"fa_vilager\",\"controller\":\"vilager\",\"model\":\"\",\"fields\":[\"id\",\"vilagername\",\"phone\",\"sex\",\"age\",\"idcode\",\"edu_green\",\"marriage\",\"u_status\",\"status\",\"author\"],\"relation\":{\"2\":{\"relation\":\"fa_family\",\"relationmode\":\"hasone\",\"relationforeignkey\":\"id\",\"relationprimarykey\":\"fam_id\",\"relationfields\":[\"family_vilagers\"]},\"3\":{\"relation\":\"fa_gro\",\"relationmode\":\"hasone\",\"relationforeignkey\":\"id\",\"relationprimarykey\":\"gro_id\",\"relationfields\":[\"name\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618262);
INSERT INTO `fa_admin_log` VALUES (85, 1, 'admin', '/rfOGdYRKX2.php/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618263);
INSERT INTO `fa_admin_log` VALUES (86, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_gro\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618268);
INSERT INTO `fa_admin_log` VALUES (87, 1, 'admin', '/rfOGdYRKX2.php/command/command/action/command', '', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"fa_vilager\",\"controller\":\"vilager\",\"model\":\"\",\"fields\":[\"id\",\"vilagername\",\"phone\",\"sex\",\"age\",\"idcode\",\"edu_green\",\"marriage\",\"u_status\",\"status\",\"author\"],\"relation\":{\"2\":{\"relation\":\"fa_family\",\"relationmode\":\"hasone\",\"relationforeignkey\":\"id\",\"relationprimarykey\":\"fam_id\",\"relationfields\":[\"family_vilagers\"]},\"3\":{\"relation\":\"fa_gro\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"gro_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"name\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618277);
INSERT INTO `fa_admin_log` VALUES (88, 1, 'admin', '/rfOGdYRKX2.php/command/command/action/execute', '', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"fa_vilager\",\"controller\":\"vilager\",\"model\":\"\",\"fields\":[\"id\",\"vilagername\",\"phone\",\"sex\",\"age\",\"idcode\",\"edu_green\",\"marriage\",\"u_status\",\"status\",\"author\"],\"relation\":{\"2\":{\"relation\":\"fa_family\",\"relationmode\":\"hasone\",\"relationforeignkey\":\"id\",\"relationprimarykey\":\"fam_id\",\"relationfields\":[\"family_vilagers\"]},\"3\":{\"relation\":\"fa_gro\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"gro_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"name\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618277);
INSERT INTO `fa_admin_log` VALUES (89, 1, 'admin', '/rfOGdYRKX2.php/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618278);
INSERT INTO `fa_admin_log` VALUES (90, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_family\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618281);
INSERT INTO `fa_admin_log` VALUES (91, 1, 'admin', '/rfOGdYRKX2.php/command/command/action/command', '', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"fa_vilager\",\"controller\":\"vilager\",\"model\":\"\",\"fields\":[\"id\",\"vilagername\",\"phone\",\"sex\",\"age\",\"idcode\",\"edu_green\",\"marriage\",\"u_status\",\"status\",\"author\"],\"relation\":{\"2\":{\"relation\":\"fa_family\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"fam_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"family_vilagers\"]},\"3\":{\"relation\":\"fa_gro\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"gro_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"name\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618294);
INSERT INTO `fa_admin_log` VALUES (92, 1, 'admin', '/rfOGdYRKX2.php/command/command/action/execute', '', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"fa_vilager\",\"controller\":\"vilager\",\"model\":\"\",\"fields\":[\"id\",\"vilagername\",\"phone\",\"sex\",\"age\",\"idcode\",\"edu_green\",\"marriage\",\"u_status\",\"status\",\"author\"],\"relation\":{\"2\":{\"relation\":\"fa_family\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"fam_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"family_vilagers\"]},\"3\":{\"relation\":\"fa_gro\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"gro_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"name\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618294);
INSERT INTO `fa_admin_log` VALUES (93, 1, 'admin', '/rfOGdYRKX2.php/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618295);
INSERT INTO `fa_admin_log` VALUES (94, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618331);
INSERT INTO `fa_admin_log` VALUES (95, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_vilager\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618335);
INSERT INTO `fa_admin_log` VALUES (96, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618369);
INSERT INTO `fa_admin_log` VALUES (97, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618369);
INSERT INTO `fa_admin_log` VALUES (98, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618369);
INSERT INTO `fa_admin_log` VALUES (99, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618369);
INSERT INTO `fa_admin_log` VALUES (100, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_family\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618373);
INSERT INTO `fa_admin_log` VALUES (101, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_family\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618373);
INSERT INTO `fa_admin_log` VALUES (102, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618382);
INSERT INTO `fa_admin_log` VALUES (103, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618382);
INSERT INTO `fa_admin_log` VALUES (104, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618382);
INSERT INTO `fa_admin_log` VALUES (105, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618382);
INSERT INTO `fa_admin_log` VALUES (106, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_gro\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618384);
INSERT INTO `fa_admin_log` VALUES (107, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_gro\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618384);
INSERT INTO `fa_admin_log` VALUES (108, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618396);
INSERT INTO `fa_admin_log` VALUES (109, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618396);
INSERT INTO `fa_admin_log` VALUES (110, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618396);
INSERT INTO `fa_admin_log` VALUES (111, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618396);
INSERT INTO `fa_admin_log` VALUES (112, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_gro_fam\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618400);
INSERT INTO `fa_admin_log` VALUES (113, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_gro_fam\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618400);
INSERT INTO `fa_admin_log` VALUES (114, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618471);
INSERT INTO `fa_admin_log` VALUES (115, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618471);
INSERT INTO `fa_admin_log` VALUES (116, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618471);
INSERT INTO `fa_admin_log` VALUES (117, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618471);
INSERT INTO `fa_admin_log` VALUES (118, 1, 'admin', '/rfOGdYRKX2.php/command/command/action/command', '', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"fa_vilager\",\"controller\":\"\",\"model\":\"\",\"fields\":[\"id\",\"vilagername\",\"phone\",\"sex\",\"birthday\",\"age\",\"idcode\",\"edu_green\",\"marriage\",\"u_status\",\"author\"],\"relation\":{\"2\":{\"relation\":\"fa_family\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"fam_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"family_vilagers\"]},\"3\":{\"relation\":\"fa_gro\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"gro_id\",\"relationprimarykey\":\"name\",\"relationfields\":[\"name\"]},\"4\":{\"relation\":\"fa_gro_fam\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"gro_id\",\"relationprimarykey\":\"gro_id\"}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618544);
INSERT INTO `fa_admin_log` VALUES (119, 1, 'admin', '/rfOGdYRKX2.php/command/command/action/execute', '', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"fa_vilager\",\"controller\":\"\",\"model\":\"\",\"fields\":[\"id\",\"vilagername\",\"phone\",\"sex\",\"birthday\",\"age\",\"idcode\",\"edu_green\",\"marriage\",\"u_status\",\"author\"],\"relation\":{\"2\":{\"relation\":\"fa_family\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"fam_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"family_vilagers\"]},\"3\":{\"relation\":\"fa_gro\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"gro_id\",\"relationprimarykey\":\"name\",\"relationfields\":[\"name\"]},\"4\":{\"relation\":\"fa_gro_fam\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"gro_id\",\"relationprimarykey\":\"gro_id\"}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618545);
INSERT INTO `fa_admin_log` VALUES (120, 1, 'admin', '/rfOGdYRKX2.php/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618545);
INSERT INTO `fa_admin_log` VALUES (121, 1, 'admin', '/rfOGdYRKX2.php/command/execute/ids/10', '在线命令管理 运行', '{\"ids\":\"10\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618578);
INSERT INTO `fa_admin_log` VALUES (122, 1, 'admin', '/rfOGdYRKX2.php/command/execute/ids/11', '在线命令管理 运行', '{\"ids\":\"11\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618652);
INSERT INTO `fa_admin_log` VALUES (123, 1, 'admin', '/rfOGdYRKX2.php/command/execute/ids/11', '在线命令管理 运行', '{\"ids\":\"11\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618707);
INSERT INTO `fa_admin_log` VALUES (124, 1, 'admin', '/rfOGdYRKX2.php/command/execute/ids/13', '在线命令管理 运行', '{\"ids\":\"13\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618715);
INSERT INTO `fa_admin_log` VALUES (125, 1, 'admin', '/rfOGdYRKX2.php/command/execute/ids/11', '在线命令管理 运行', '{\"ids\":\"11\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618782);
INSERT INTO `fa_admin_log` VALUES (126, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618789);
INSERT INTO `fa_admin_log` VALUES (127, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_vilager\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618793);
INSERT INTO `fa_admin_log` VALUES (128, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618817);
INSERT INTO `fa_admin_log` VALUES (129, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618817);
INSERT INTO `fa_admin_log` VALUES (130, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618817);
INSERT INTO `fa_admin_log` VALUES (131, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618817);
INSERT INTO `fa_admin_log` VALUES (132, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_family\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618819);
INSERT INTO `fa_admin_log` VALUES (133, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_family\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618820);
INSERT INTO `fa_admin_log` VALUES (134, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618830);
INSERT INTO `fa_admin_log` VALUES (135, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618830);
INSERT INTO `fa_admin_log` VALUES (136, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618830);
INSERT INTO `fa_admin_log` VALUES (137, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618830);
INSERT INTO `fa_admin_log` VALUES (138, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_gro\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618833);
INSERT INTO `fa_admin_log` VALUES (139, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_gro\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618833);
INSERT INTO `fa_admin_log` VALUES (140, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618841);
INSERT INTO `fa_admin_log` VALUES (141, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618841);
INSERT INTO `fa_admin_log` VALUES (142, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618841);
INSERT INTO `fa_admin_log` VALUES (143, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618841);
INSERT INTO `fa_admin_log` VALUES (144, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_gro_fam\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618844);
INSERT INTO `fa_admin_log` VALUES (145, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_gro_fam\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618844);
INSERT INTO `fa_admin_log` VALUES (146, 1, 'admin', '/rfOGdYRKX2.php/command/command/action/command', '', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"fa_vilager\",\"controller\":\"\",\"model\":\"\",\"fields\":[\"id\",\"vilagername\",\"phone\",\"sex_status\",\"birthday\",\"age\",\"idcode\",\"edu_green\",\"marriage\",\"u_status\",\"author\"],\"relation\":{\"2\":{\"relation\":\"fa_family\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"fam_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"family_vilagers\"]},\"3\":{\"relation\":\"fa_gro\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"gro_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"name\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618860);
INSERT INTO `fa_admin_log` VALUES (147, 1, 'admin', '/rfOGdYRKX2.php/command/command/action/execute', '', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"fa_vilager\",\"controller\":\"\",\"model\":\"\",\"fields\":[\"id\",\"vilagername\",\"phone\",\"sex_status\",\"birthday\",\"age\",\"idcode\",\"edu_green\",\"marriage\",\"u_status\",\"author\"],\"relation\":{\"2\":{\"relation\":\"fa_family\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"fam_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"family_vilagers\"]},\"3\":{\"relation\":\"fa_gro\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"gro_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"name\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618861);
INSERT INTO `fa_admin_log` VALUES (148, 1, 'admin', '/rfOGdYRKX2.php/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618861);
INSERT INTO `fa_admin_log` VALUES (149, 1, 'admin', '/rfOGdYRKX2.php/command/execute/ids/17', '在线命令管理 运行', '{\"ids\":\"17\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573618904);
INSERT INTO `fa_admin_log` VALUES (150, 1, 'admin', '/rfOGdYRKX2.php/command/execute/ids/18', '在线命令管理 运行', '{\"ids\":\"18\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573623507);
INSERT INTO `fa_admin_log` VALUES (151, 1, 'admin', '/rfOGdYRKX2.php/command/execute/ids/19', '在线命令管理 运行', '{\"ids\":\"19\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573623547);
INSERT INTO `fa_admin_log` VALUES (152, 1, 'admin', '/rfOGdYRKX2.php/command/del/ids/11', '在线命令管理 删除', '{\"action\":\"del\",\"ids\":\"11\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573623558);
INSERT INTO `fa_admin_log` VALUES (153, 1, 'admin', '/rfOGdYRKX2.php/command/del/ids/18,17,16,15,14,13,12,10', '在线命令管理 删除', '{\"action\":\"del\",\"ids\":\"18,17,16,15,14,13,12,10\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573623567);
INSERT INTO `fa_admin_log` VALUES (154, 1, 'admin', '/rfOGdYRKX2.php/command/del/ids/9,8,7,6,5', '在线命令管理 删除', '{\"action\":\"del\",\"ids\":\"9,8,7,6,5\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573623575);
INSERT INTO `fa_admin_log` VALUES (155, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573623578);
INSERT INTO `fa_admin_log` VALUES (156, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_vilager\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573623583);
INSERT INTO `fa_admin_log` VALUES (157, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573623606);
INSERT INTO `fa_admin_log` VALUES (158, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573623606);
INSERT INTO `fa_admin_log` VALUES (159, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573623606);
INSERT INTO `fa_admin_log` VALUES (160, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573623606);
INSERT INTO `fa_admin_log` VALUES (161, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_family\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573623608);
INSERT INTO `fa_admin_log` VALUES (162, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_family\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573623608);
INSERT INTO `fa_admin_log` VALUES (163, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573623635);
INSERT INTO `fa_admin_log` VALUES (164, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573623636);
INSERT INTO `fa_admin_log` VALUES (165, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573623636);
INSERT INTO `fa_admin_log` VALUES (166, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573623636);
INSERT INTO `fa_admin_log` VALUES (167, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_gro\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573623637);
INSERT INTO `fa_admin_log` VALUES (168, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_gro\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573623637);
INSERT INTO `fa_admin_log` VALUES (169, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_gro\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573623640);
INSERT INTO `fa_admin_log` VALUES (170, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573623648);
INSERT INTO `fa_admin_log` VALUES (171, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573623648);
INSERT INTO `fa_admin_log` VALUES (172, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573623648);
INSERT INTO `fa_admin_log` VALUES (173, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573623648);
INSERT INTO `fa_admin_log` VALUES (174, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573623665);
INSERT INTO `fa_admin_log` VALUES (175, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573623665);
INSERT INTO `fa_admin_log` VALUES (176, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573623666);
INSERT INTO `fa_admin_log` VALUES (177, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573623666);
INSERT INTO `fa_admin_log` VALUES (178, 1, 'admin', '/rfOGdYRKX2.php/command/command/action/command', '', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"0\",\"table\":\"fa_vilager\",\"controller\":\"\",\"model\":\"\",\"fields\":[\"id\",\"vilagername\",\"phone\",\"sex\",\"birthday\",\"age\",\"idcode\",\"edu_green\",\"marriage\",\"v_status\",\"status\",\"author\"],\"relation\":{\"2\":{\"relation\":\"fa_family\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"fam_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"family_vilagers\"]},\"3\":{\"relation\":\"fa_gro\",\"relationmode\":\"hasone\",\"relationforeignkey\":\"id\",\"relationprimarykey\":\"gro_id\",\"relationfields\":[\"name\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"sex\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573623678);
INSERT INTO `fa_admin_log` VALUES (179, 1, 'admin', '/rfOGdYRKX2.php/command/command/action/execute', '', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"0\",\"table\":\"fa_vilager\",\"controller\":\"\",\"model\":\"\",\"fields\":[\"id\",\"vilagername\",\"phone\",\"sex\",\"birthday\",\"age\",\"idcode\",\"edu_green\",\"marriage\",\"v_status\",\"status\",\"author\"],\"relation\":{\"2\":{\"relation\":\"fa_family\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"fam_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"family_vilagers\"]},\"3\":{\"relation\":\"fa_gro\",\"relationmode\":\"hasone\",\"relationforeignkey\":\"id\",\"relationprimarykey\":\"gro_id\",\"relationfields\":[\"name\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"sex\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573623679);
INSERT INTO `fa_admin_log` VALUES (180, 1, 'admin', '/rfOGdYRKX2.php/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573623679);
INSERT INTO `fa_admin_log` VALUES (181, 1, 'admin', '/rfOGdYRKX2.php/command/command/action/command', '', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"1\",\"force\":\"0\",\"table\":\"fa_vilager\",\"controller\":\"\",\"model\":\"\",\"fields\":[\"id\",\"vilagername\",\"phone\",\"sex\",\"birthday\",\"age\",\"idcode\",\"edu_green\",\"marriage\",\"v_status\",\"status\",\"author\"],\"relation\":{\"2\":{\"relation\":\"fa_family\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"fam_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"family_vilagers\"]},\"3\":{\"relation\":\"fa_gro\",\"relationmode\":\"hasone\",\"relationforeignkey\":\"id\",\"relationprimarykey\":\"gro_id\",\"relationfields\":[\"name\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"sex\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573623689);
INSERT INTO `fa_admin_log` VALUES (182, 1, 'admin', '/rfOGdYRKX2.php/command/del/ids/21', '在线命令管理 删除', '{\"action\":\"del\",\"ids\":\"21\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573623730);
INSERT INTO `fa_admin_log` VALUES (183, 0, 'Unknown', '/rfOGdYRKX2.php/index/login', '', '{\"__token__\":\"00c99cc8b396953fac17b7c374b2c485\",\"username\":\"admin\",\"captcha\":\"5ixf\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573623770);
INSERT INTO `fa_admin_log` VALUES (184, 1, 'admin', '/rfOGdYRKX2.php/index/login', '登录', '{\"__token__\":\"671d6f9eec6d27f81b5cbc5dd16e2194\",\"username\":\"admin\",\"captcha\":\"dltc\",\"keeplogin\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573623783);
INSERT INTO `fa_admin_log` VALUES (185, 1, 'admin', '/rfOGdYRKX2.php/command/del/ids/22', '在线命令管理 删除', '{\"action\":\"del\",\"ids\":\"22\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573623792);
INSERT INTO `fa_admin_log` VALUES (186, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573623794);
INSERT INTO `fa_admin_log` VALUES (187, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_vilager\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573623813);
INSERT INTO `fa_admin_log` VALUES (188, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573623841);
INSERT INTO `fa_admin_log` VALUES (189, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573623841);
INSERT INTO `fa_admin_log` VALUES (190, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573623841);
INSERT INTO `fa_admin_log` VALUES (191, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573623841);
INSERT INTO `fa_admin_log` VALUES (192, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_family\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573623844);
INSERT INTO `fa_admin_log` VALUES (193, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_family\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573623844);
INSERT INTO `fa_admin_log` VALUES (194, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573623854);
INSERT INTO `fa_admin_log` VALUES (195, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573623854);
INSERT INTO `fa_admin_log` VALUES (196, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573623854);
INSERT INTO `fa_admin_log` VALUES (197, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573623855);
INSERT INTO `fa_admin_log` VALUES (198, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_gro\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573623856);
INSERT INTO `fa_admin_log` VALUES (199, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_gro\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573623857);
INSERT INTO `fa_admin_log` VALUES (200, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_gro\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573623858);
INSERT INTO `fa_admin_log` VALUES (201, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_gro\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573623865);
INSERT INTO `fa_admin_log` VALUES (202, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573623872);
INSERT INTO `fa_admin_log` VALUES (203, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573623872);
INSERT INTO `fa_admin_log` VALUES (204, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573623872);
INSERT INTO `fa_admin_log` VALUES (205, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573623872);
INSERT INTO `fa_admin_log` VALUES (206, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_gro_fam\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573623874);
INSERT INTO `fa_admin_log` VALUES (207, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_gro_fam\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573623874);
INSERT INTO `fa_admin_log` VALUES (208, 1, 'admin', '/rfOGdYRKX2.php/command/command/action/command', '', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"fa_vilager\",\"controller\":\"\",\"model\":\"\",\"fields\":[\"id\",\"vilagername\",\"phone\",\"sex\",\"age\",\"idcode\",\"edu_green\",\"marriage\",\"status\",\"author\"],\"relation\":{\"2\":{\"relation\":\"fa_family\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"fam_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"family_vilagers\"]},\"3\":{\"relation\":\"fa_gro\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"gro_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"id\",\"name\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573623970);
INSERT INTO `fa_admin_log` VALUES (209, 1, 'admin', '/rfOGdYRKX2.php/command/command/action/execute', '', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"fa_vilager\",\"controller\":\"\",\"model\":\"\",\"fields\":[\"id\",\"vilagername\",\"phone\",\"sex\",\"age\",\"idcode\",\"edu_green\",\"marriage\",\"status\",\"author\"],\"relation\":{\"2\":{\"relation\":\"fa_family\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"fam_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"family_vilagers\"]},\"3\":{\"relation\":\"fa_gro\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"gro_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"id\",\"name\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573623971);
INSERT INTO `fa_admin_log` VALUES (210, 1, 'admin', '/rfOGdYRKX2.php/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573623972);
INSERT INTO `fa_admin_log` VALUES (211, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573624021);
INSERT INTO `fa_admin_log` VALUES (212, 1, 'admin', '/rfOGdYRKX2.php/command/execute/ids/23', '在线命令管理 运行', '{\"ids\":\"23\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573624113);
INSERT INTO `fa_admin_log` VALUES (213, 1, 'admin', '/rfOGdYRKX2.php/command/del/ids/24', '在线命令管理 删除', '{\"action\":\"del\",\"ids\":\"24\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573624119);
INSERT INTO `fa_admin_log` VALUES (214, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573624124);
INSERT INTO `fa_admin_log` VALUES (215, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_vilager\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573624131);
INSERT INTO `fa_admin_log` VALUES (216, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573624156);
INSERT INTO `fa_admin_log` VALUES (217, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573624156);
INSERT INTO `fa_admin_log` VALUES (218, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573624156);
INSERT INTO `fa_admin_log` VALUES (219, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573624156);
INSERT INTO `fa_admin_log` VALUES (220, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_gro\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573624160);
INSERT INTO `fa_admin_log` VALUES (221, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_gro\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573624160);
INSERT INTO `fa_admin_log` VALUES (222, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573624170);
INSERT INTO `fa_admin_log` VALUES (223, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573624170);
INSERT INTO `fa_admin_log` VALUES (224, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573624170);
INSERT INTO `fa_admin_log` VALUES (225, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573624170);
INSERT INTO `fa_admin_log` VALUES (226, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_family\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573624175);
INSERT INTO `fa_admin_log` VALUES (227, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_family\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573624175);
INSERT INTO `fa_admin_log` VALUES (228, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573624192);
INSERT INTO `fa_admin_log` VALUES (229, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573624192);
INSERT INTO `fa_admin_log` VALUES (230, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573624192);
INSERT INTO `fa_admin_log` VALUES (231, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573624192);
INSERT INTO `fa_admin_log` VALUES (232, 1, 'admin', '/rfOGdYRKX2.php/command/command/action/command', '', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"fa_vilager\",\"controller\":\"\",\"model\":\"\",\"fields\":[\"id\",\"vilagername\",\"phone\",\"sex\",\"age\",\"idcode\",\"edu_green\",\"marriage\",\"status\",\"author\"],\"relation\":{\"2\":{\"relation\":\"fa_gro\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"gro_ids\",\"relationprimarykey\":\"id\",\"relationfields\":[\"name\"]},\"3\":{\"relation\":\"fa_family\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"fam_ids\",\"relationprimarykey\":\"id\",\"relationfields\":[\"family_vilagers\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573624199);
INSERT INTO `fa_admin_log` VALUES (233, 1, 'admin', '/rfOGdYRKX2.php/command/command/action/execute', '', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"fa_vilager\",\"controller\":\"\",\"model\":\"\",\"fields\":[\"id\",\"vilagername\",\"phone\",\"sex\",\"age\",\"idcode\",\"edu_green\",\"marriage\",\"status\",\"author\"],\"relation\":{\"2\":{\"relation\":\"fa_gro\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"gro_ids\",\"relationprimarykey\":\"id\",\"relationfields\":[\"name\"]},\"3\":{\"relation\":\"fa_family\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"fam_ids\",\"relationprimarykey\":\"id\",\"relationfields\":[\"family_vilagers\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573624199);
INSERT INTO `fa_admin_log` VALUES (234, 1, 'admin', '/rfOGdYRKX2.php/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573624200);
INSERT INTO `fa_admin_log` VALUES (235, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573624241);
INSERT INTO `fa_admin_log` VALUES (236, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_vilager\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573624245);
INSERT INTO `fa_admin_log` VALUES (237, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573624296);
INSERT INTO `fa_admin_log` VALUES (238, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573624296);
INSERT INTO `fa_admin_log` VALUES (239, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573624296);
INSERT INTO `fa_admin_log` VALUES (240, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573624296);
INSERT INTO `fa_admin_log` VALUES (241, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_family\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573624299);
INSERT INTO `fa_admin_log` VALUES (242, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_family\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573624299);
INSERT INTO `fa_admin_log` VALUES (243, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573624311);
INSERT INTO `fa_admin_log` VALUES (244, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573624311);
INSERT INTO `fa_admin_log` VALUES (245, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573624311);
INSERT INTO `fa_admin_log` VALUES (246, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573624312);
INSERT INTO `fa_admin_log` VALUES (247, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_gro\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573624314);
INSERT INTO `fa_admin_log` VALUES (248, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_gro\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573624314);
INSERT INTO `fa_admin_log` VALUES (249, 1, 'admin', '/rfOGdYRKX2.php/command/command/action/command', '', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"fa_vilager\",\"controller\":\"\",\"model\":\"\",\"fields\":[\"id\",\"vilagername\",\"phone\",\"sex\",\"birthday\",\"age\",\"idcode\",\"edu_green\",\"marriage\",\"status\",\"gro_ids\",\"author\"],\"relation\":{\"2\":{\"relation\":\"fa_family\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"fam_ids\",\"relationprimarykey\":\"id\",\"relationfields\":[\"id\",\"v_id\",\"family_vilagers\"]},\"3\":{\"relation\":\"fa_gro\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"gro_ids\",\"relationprimarykey\":\"id\",\"relationfields\":[\"id\",\"name\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573624331);
INSERT INTO `fa_admin_log` VALUES (250, 1, 'admin', '/rfOGdYRKX2.php/command/command/action/execute', '', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"fa_vilager\",\"controller\":\"\",\"model\":\"\",\"fields\":[\"id\",\"vilagername\",\"phone\",\"sex\",\"birthday\",\"age\",\"idcode\",\"edu_green\",\"marriage\",\"status\",\"gro_ids\",\"author\"],\"relation\":{\"2\":{\"relation\":\"fa_family\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"fam_ids\",\"relationprimarykey\":\"id\",\"relationfields\":[\"id\",\"v_id\",\"family_vilagers\"]},\"3\":{\"relation\":\"fa_gro\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"gro_ids\",\"relationprimarykey\":\"id\",\"relationfields\":[\"id\",\"name\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573624332);
INSERT INTO `fa_admin_log` VALUES (251, 1, 'admin', '/rfOGdYRKX2.php/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573624332);
INSERT INTO `fa_admin_log` VALUES (252, 1, 'admin', '/rfOGdYRKX2.php/vilager/edit/ids/6?dialog=1', '', '{\"dialog\":\"1\",\"row\":{\"vilagername\":\"\\u5218\\u7384\\u5fb7\",\"phone\":\"17111112111\",\"sex\":\"\\u7537\",\"birthday\":\"91-5\",\"age\":\"28\",\"idcode\":\"410425199105312190\",\"edu_green\":\"\\u672c\\u79d1\",\"marriage\":\"\\u672a\\u5a5a\",\"move_in_time\":\"\",\"move_out_time\":\"\",\"v_status\":\"\\u6751\\u6c11\",\"status\":\"\\u6b63\\u5e38\",\"gro_ids\":\"1\",\"fam_ids\":\"3\",\"allocation_cate\":\"\",\"allocation_start_time\":\"\",\"allocation_end_time\":\"\",\"family_move\":\"\\u672a\\u8fc1\\u51fa\\u5bb6\\u5ead\",\"author\":\"\\u6237\\u4e3b\"},\"ids\":\"6\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573624360);
INSERT INTO `fa_admin_log` VALUES (253, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573624580);
INSERT INTO `fa_admin_log` VALUES (254, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_vilager\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573624589);
INSERT INTO `fa_admin_log` VALUES (255, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573624604);
INSERT INTO `fa_admin_log` VALUES (256, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573624604);
INSERT INTO `fa_admin_log` VALUES (257, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573624604);
INSERT INTO `fa_admin_log` VALUES (258, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573624604);
INSERT INTO `fa_admin_log` VALUES (259, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_gro\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573624606);
INSERT INTO `fa_admin_log` VALUES (260, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_gro\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573624606);
INSERT INTO `fa_admin_log` VALUES (261, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573624644);
INSERT INTO `fa_admin_log` VALUES (262, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_vilager\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573624650);
INSERT INTO `fa_admin_log` VALUES (263, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573624670);
INSERT INTO `fa_admin_log` VALUES (264, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573624670);
INSERT INTO `fa_admin_log` VALUES (265, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573624670);
INSERT INTO `fa_admin_log` VALUES (266, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573624670);
INSERT INTO `fa_admin_log` VALUES (267, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_family\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573624672);
INSERT INTO `fa_admin_log` VALUES (268, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_family\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573624672);
INSERT INTO `fa_admin_log` VALUES (269, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573624681);
INSERT INTO `fa_admin_log` VALUES (270, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573624681);
INSERT INTO `fa_admin_log` VALUES (271, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573624681);
INSERT INTO `fa_admin_log` VALUES (272, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573624682);
INSERT INTO `fa_admin_log` VALUES (273, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_gro\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573624683);
INSERT INTO `fa_admin_log` VALUES (274, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_gro\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573624683);
INSERT INTO `fa_admin_log` VALUES (275, 1, 'admin', '/rfOGdYRKX2.php/command/command/action/command', '', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"fa_vilager\",\"controller\":\"\",\"model\":\"\",\"fields\":[\"id\",\"vilagername\",\"phone\",\"sex\",\"age\",\"idcode\",\"edu_green\",\"marriage\",\"status\",\"author\"],\"relation\":{\"2\":{\"relation\":\"fa_family\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"fam_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"family_vilagers\"]},\"3\":{\"relation\":\"fa_gro\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"gro_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"name\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573624696);
INSERT INTO `fa_admin_log` VALUES (276, 1, 'admin', '/rfOGdYRKX2.php/command/command/action/execute', '', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"fa_vilager\",\"controller\":\"\",\"model\":\"\",\"fields\":[\"id\",\"vilagername\",\"phone\",\"sex\",\"age\",\"idcode\",\"edu_green\",\"marriage\",\"status\",\"author\"],\"relation\":{\"2\":{\"relation\":\"fa_family\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"fam_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"family_vilagers\"]},\"3\":{\"relation\":\"fa_gro\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"gro_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"name\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573624697);
INSERT INTO `fa_admin_log` VALUES (277, 1, 'admin', '/rfOGdYRKX2.php/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573624697);
INSERT INTO `fa_admin_log` VALUES (278, 1, 'admin', '/rfOGdYRKX2.php/auth/rule/add?dialog=1', '权限管理 菜单规则 添加', '{\"dialog\":\"1\",\"__token__\":\"f843e0416c537ca0a6698f19e7c7c145\",\"row\":{\"ismenu\":\"1\",\"pid\":\"92\",\"name\":\"vilager\",\"title\":\"\\u5bb6\\u5ead\\u7ba1\\u7406\",\"icon\":\"fa fa-circle-o\",\"weigh\":\"0\",\"condition\":\"family\",\"remark\":\"\",\"status\":\"normal\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573625139);
INSERT INTO `fa_admin_log` VALUES (279, 1, 'admin', '/rfOGdYRKX2.php/auth/rule/add?dialog=1', '权限管理 菜单规则 添加', '{\"dialog\":\"1\",\"__token__\":\"fdc4e69263aa251b52c8483b65c4ddc1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"92\",\"name\":\"vilager\",\"title\":\"\\u5bb6\\u5ead\\u7ba1\\u7406\",\"icon\":\"fa fa-circle-o\",\"weigh\":\"0\",\"condition\":\"vilager\\/family\",\"remark\":\"\",\"status\":\"normal\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573625172);
INSERT INTO `fa_admin_log` VALUES (280, 1, 'admin', '/rfOGdYRKX2.php/auth/rule/add?dialog=1', '权限管理 菜单规则 添加', '{\"dialog\":\"1\",\"__token__\":\"5b27dbac7cbe0e007ee148fff418434a\",\"row\":{\"ismenu\":\"1\",\"pid\":\"92\",\"name\":\"vilager\\/family\",\"title\":\"\\u5bb6\\u5ead\\u7ba1\\u7406\",\"icon\":\"fa fa-circle-o\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573625440);
INSERT INTO `fa_admin_log` VALUES (281, 1, 'admin', '/rfOGdYRKX2.php/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573625441);
INSERT INTO `fa_admin_log` VALUES (282, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573625476);
INSERT INTO `fa_admin_log` VALUES (283, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_family\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573625481);
INSERT INTO `fa_admin_log` VALUES (284, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573625515);
INSERT INTO `fa_admin_log` VALUES (285, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573625516);
INSERT INTO `fa_admin_log` VALUES (286, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573625516);
INSERT INTO `fa_admin_log` VALUES (287, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573625516);
INSERT INTO `fa_admin_log` VALUES (288, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_vilager\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573625522);
INSERT INTO `fa_admin_log` VALUES (289, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_vilager\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573625523);
INSERT INTO `fa_admin_log` VALUES (290, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_vilager\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573625568);
INSERT INTO `fa_admin_log` VALUES (291, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_vilager\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573625595);
INSERT INTO `fa_admin_log` VALUES (292, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573625602);
INSERT INTO `fa_admin_log` VALUES (293, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573625603);
INSERT INTO `fa_admin_log` VALUES (294, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573625603);
INSERT INTO `fa_admin_log` VALUES (295, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573625603);
INSERT INTO `fa_admin_log` VALUES (296, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_gro_fam\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573625608);
INSERT INTO `fa_admin_log` VALUES (297, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_gro_fam\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573625609);
INSERT INTO `fa_admin_log` VALUES (298, 1, 'admin', '/rfOGdYRKX2.php/command/command/action/command', '', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"0\",\"table\":\"fa_family\",\"controller\":\"vilager\",\"model\":\"vilager\",\"fields\":[\"id\",\"v_id\",\"family_vilagers\"],\"relation\":{\"2\":{\"relation\":\"fa_vilager\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"v_id\",\"relationprimarykey\":\"id\"}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573625651);
INSERT INTO `fa_admin_log` VALUES (299, 1, 'admin', '/rfOGdYRKX2.php/command/command/action/execute', '', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"0\",\"table\":\"fa_family\",\"controller\":\"vilager\",\"model\":\"vilager\",\"fields\":[\"id\",\"v_id\",\"family_vilagers\"],\"relation\":{\"2\":{\"relation\":\"fa_vilager\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"v_id\",\"relationprimarykey\":\"id\"}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573625652);
INSERT INTO `fa_admin_log` VALUES (300, 1, 'admin', '/rfOGdYRKX2.php/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573625652);
INSERT INTO `fa_admin_log` VALUES (301, 1, 'admin', '/rfOGdYRKX2.php/command/command/action/execute', '', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"fa_family\",\"controller\":\"vilager\",\"model\":\"vilager\",\"fields\":[\"id\",\"v_id\",\"family_vilagers\"],\"relation\":{\"2\":{\"relation\":\"fa_vilager\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"v_id\",\"relationprimarykey\":\"id\"}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573625673);
INSERT INTO `fa_admin_log` VALUES (302, 1, 'admin', '/rfOGdYRKX2.php/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573625673);
INSERT INTO `fa_admin_log` VALUES (303, 1, 'admin', '/rfOGdYRKX2.php/command/execute/ids/27', '在线命令管理 运行', '{\"ids\":\"27\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573625685);
INSERT INTO `fa_admin_log` VALUES (304, 1, 'admin', '/rfOGdYRKX2.php/auth/rule/edit/ids/92?dialog=1', '权限管理 菜单规则 编辑', '{\"dialog\":\"1\",\"__token__\":\"368578ad831572a0a60737dcc91703e5\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"vilager\",\"title\":\"\\u6237\\u7c4d\\u7ba1\\u7406\",\"icon\":\"fa fa-male\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"92\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573625719);
INSERT INTO `fa_admin_log` VALUES (305, 1, 'admin', '/rfOGdYRKX2.php/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573625719);
INSERT INTO `fa_admin_log` VALUES (306, 1, 'admin', '/rfOGdYRKX2.php/auth/rule/edit/ids/92?dialog=1', '权限管理 菜单规则 编辑', '{\"dialog\":\"1\",\"__token__\":\"8e388f7119f096b22d07fcc6f0903789\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"register\",\"title\":\"\\u6237\\u7c4d\\u7ba1\\u7406\",\"icon\":\"fa fa-male\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"92\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573625960);
INSERT INTO `fa_admin_log` VALUES (307, 1, 'admin', '/rfOGdYRKX2.php/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573625960);
INSERT INTO `fa_admin_log` VALUES (308, 1, 'admin', '/rfOGdYRKX2.php/auth/rule/edit/ids/93?dialog=1', '权限管理 菜单规则 编辑', '{\"dialog\":\"1\",\"__token__\":\"e8873db2218681ac677c33ffa225e8ba\",\"row\":{\"ismenu\":\"1\",\"pid\":\"92\",\"name\":\"register\\/vilager\",\"title\":\"\\u6751\\u6c11\\u7ba1\\u7406\",\"icon\":\"fa fa-circle-o\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"93\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626000);
INSERT INTO `fa_admin_log` VALUES (309, 1, 'admin', '/rfOGdYRKX2.php/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626001);
INSERT INTO `fa_admin_log` VALUES (310, 1, 'admin', '/rfOGdYRKX2.php/auth/rule/add?dialog=1', '权限管理 菜单规则 添加', '{\"dialog\":\"1\",\"__token__\":\"41d1addf1bd7e0ec66fb271ed593fc68\",\"row\":{\"ismenu\":\"1\",\"pid\":\"92\",\"name\":\"register\\/family\",\"title\":\"\\u5bb6\\u5ead\\u7ba1\\u7406\",\"icon\":\"fa fa-circle-o\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626031);
INSERT INTO `fa_admin_log` VALUES (311, 1, 'admin', '/rfOGdYRKX2.php/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626032);
INSERT INTO `fa_admin_log` VALUES (312, 1, 'admin', '/rfOGdYRKX2.php/auth/rule/add?dialog=1', '权限管理 菜单规则 添加', '{\"dialog\":\"1\",\"__token__\":\"b4c213331a82844961a32394c59f01cd\",\"row\":{\"ismenu\":\"1\",\"pid\":\"92\",\"name\":\"register\\/gro\",\"title\":\"\\u6751\\u7ec4\\u7ba1\\u7406\",\"icon\":\"fa fa-circle-o\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"}}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626056);
INSERT INTO `fa_admin_log` VALUES (313, 1, 'admin', '/rfOGdYRKX2.php/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626056);
INSERT INTO `fa_admin_log` VALUES (314, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626074);
INSERT INTO `fa_admin_log` VALUES (315, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_vilager\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626081);
INSERT INTO `fa_admin_log` VALUES (316, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626125);
INSERT INTO `fa_admin_log` VALUES (317, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626125);
INSERT INTO `fa_admin_log` VALUES (318, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626125);
INSERT INTO `fa_admin_log` VALUES (319, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626125);
INSERT INTO `fa_admin_log` VALUES (320, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_family\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626126);
INSERT INTO `fa_admin_log` VALUES (321, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_family\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626127);
INSERT INTO `fa_admin_log` VALUES (322, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626138);
INSERT INTO `fa_admin_log` VALUES (323, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626138);
INSERT INTO `fa_admin_log` VALUES (324, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626138);
INSERT INTO `fa_admin_log` VALUES (325, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626138);
INSERT INTO `fa_admin_log` VALUES (326, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626188);
INSERT INTO `fa_admin_log` VALUES (327, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_vilager\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626194);
INSERT INTO `fa_admin_log` VALUES (328, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626214);
INSERT INTO `fa_admin_log` VALUES (329, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626214);
INSERT INTO `fa_admin_log` VALUES (330, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626214);
INSERT INTO `fa_admin_log` VALUES (331, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626214);
INSERT INTO `fa_admin_log` VALUES (332, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_family\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626218);
INSERT INTO `fa_admin_log` VALUES (333, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_family\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626218);
INSERT INTO `fa_admin_log` VALUES (334, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626232);
INSERT INTO `fa_admin_log` VALUES (335, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626232);
INSERT INTO `fa_admin_log` VALUES (336, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626232);
INSERT INTO `fa_admin_log` VALUES (337, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626232);
INSERT INTO `fa_admin_log` VALUES (338, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_gro\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626234);
INSERT INTO `fa_admin_log` VALUES (339, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_gro\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626234);
INSERT INTO `fa_admin_log` VALUES (340, 1, 'admin', '/rfOGdYRKX2.php/command/command/action/command', '', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"fa_vilager\",\"controller\":\"register\\/vilager\",\"model\":\"\",\"fields\":[\"id\",\"vilagername\",\"phone\",\"sex\",\"age\",\"idcode\",\"edu_green\",\"marriage\",\"status\",\"author\"],\"relation\":{\"2\":{\"relation\":\"fa_family\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"fam_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"family_vilager_ids\"]},\"3\":{\"relation\":\"fa_gro\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"gro_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"name\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626253);
INSERT INTO `fa_admin_log` VALUES (341, 1, 'admin', '/rfOGdYRKX2.php/command/command/action/execute', '', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"fa_vilager\",\"controller\":\"register\\/vilager\",\"model\":\"\",\"fields\":[\"id\",\"vilagername\",\"phone\",\"sex\",\"age\",\"idcode\",\"edu_green\",\"marriage\",\"status\",\"author\"],\"relation\":{\"2\":{\"relation\":\"fa_family\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"fam_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"family_vilager_ids\"]},\"3\":{\"relation\":\"fa_gro\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"gro_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"name\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626254);
INSERT INTO `fa_admin_log` VALUES (342, 1, 'admin', '/rfOGdYRKX2.php/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626254);
INSERT INTO `fa_admin_log` VALUES (343, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626305);
INSERT INTO `fa_admin_log` VALUES (344, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_family\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626307);
INSERT INTO `fa_admin_log` VALUES (345, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626331);
INSERT INTO `fa_admin_log` VALUES (346, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626331);
INSERT INTO `fa_admin_log` VALUES (347, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626331);
INSERT INTO `fa_admin_log` VALUES (348, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626331);
INSERT INTO `fa_admin_log` VALUES (349, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_vilager\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626333);
INSERT INTO `fa_admin_log` VALUES (350, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_vilager\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626333);
INSERT INTO `fa_admin_log` VALUES (351, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626365);
INSERT INTO `fa_admin_log` VALUES (352, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626365);
INSERT INTO `fa_admin_log` VALUES (353, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626365);
INSERT INTO `fa_admin_log` VALUES (354, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626365);
INSERT INTO `fa_admin_log` VALUES (355, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_gro\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626367);
INSERT INTO `fa_admin_log` VALUES (356, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_gro\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626368);
INSERT INTO `fa_admin_log` VALUES (357, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626417);
INSERT INTO `fa_admin_log` VALUES (358, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626417);
INSERT INTO `fa_admin_log` VALUES (359, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626417);
INSERT INTO `fa_admin_log` VALUES (360, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626417);
INSERT INTO `fa_admin_log` VALUES (361, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_gro_fam\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626421);
INSERT INTO `fa_admin_log` VALUES (362, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_gro_fam\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626421);
INSERT INTO `fa_admin_log` VALUES (363, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_gro_fam\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626427);
INSERT INTO `fa_admin_log` VALUES (364, 1, 'admin', '/rfOGdYRKX2.php/command/command/action/command', '', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"fa_family\",\"controller\":\"register\\/family\",\"model\":\"\",\"fields\":[\"id\",\"v_id\",\"family_vilager_ids\"],\"relation\":{\"2\":{\"relation\":\"fa_vilager\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"v_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"vilagername\",\"phone\",\"sex\",\"author\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626485);
INSERT INTO `fa_admin_log` VALUES (365, 1, 'admin', '/rfOGdYRKX2.php/command/command/action/execute', '', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"fa_family\",\"controller\":\"register\\/family\",\"model\":\"\",\"fields\":[\"id\",\"v_id\",\"family_vilager_ids\"],\"relation\":{\"2\":{\"relation\":\"fa_vilager\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"v_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"vilagername\",\"phone\",\"sex\",\"author\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626486);
INSERT INTO `fa_admin_log` VALUES (366, 1, 'admin', '/rfOGdYRKX2.php/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626486);
INSERT INTO `fa_admin_log` VALUES (367, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626537);
INSERT INTO `fa_admin_log` VALUES (368, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_family\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626549);
INSERT INTO `fa_admin_log` VALUES (369, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626578);
INSERT INTO `fa_admin_log` VALUES (370, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626578);
INSERT INTO `fa_admin_log` VALUES (371, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626578);
INSERT INTO `fa_admin_log` VALUES (372, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626578);
INSERT INTO `fa_admin_log` VALUES (373, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_vilager\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626582);
INSERT INTO `fa_admin_log` VALUES (374, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_vilager\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626582);
INSERT INTO `fa_admin_log` VALUES (375, 1, 'admin', '/rfOGdYRKX2.php/command/command/action/command', '', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"0\",\"table\":\"fa_family\",\"controller\":\"register\\/family\",\"model\":\"\",\"fields\":[\"id\",\"family_vilager_ids\"],\"relation\":{\"2\":{\"relation\":\"fa_vilager\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"v_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"vilagername\",\"phone\",\"sex\",\"age\",\"idcode\",\"edu_green\",\"marriage\",\"status\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"fa_family.id\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626710);
INSERT INTO `fa_admin_log` VALUES (376, 1, 'admin', '/rfOGdYRKX2.php/command/command/action/execute', '', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"0\",\"table\":\"fa_family\",\"controller\":\"register\\/family\",\"model\":\"\",\"fields\":[\"id\",\"family_vilager_ids\"],\"relation\":{\"2\":{\"relation\":\"fa_vilager\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"v_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"vilagername\",\"phone\",\"sex\",\"age\",\"idcode\",\"edu_green\",\"marriage\",\"status\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"fa_family.id\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626711);
INSERT INTO `fa_admin_log` VALUES (377, 1, 'admin', '/rfOGdYRKX2.php/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626711);
INSERT INTO `fa_admin_log` VALUES (378, 1, 'admin', '/rfOGdYRKX2.php/command/command/action/command', '', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"fa_family\",\"controller\":\"register\\/family\",\"model\":\"\",\"fields\":[\"id\",\"family_vilager_ids\"],\"relation\":{\"2\":{\"relation\":\"fa_vilager\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"v_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"vilagername\",\"phone\",\"sex\",\"age\",\"idcode\",\"edu_green\",\"marriage\",\"status\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"fa_family.id\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626715);
INSERT INTO `fa_admin_log` VALUES (379, 1, 'admin', '/rfOGdYRKX2.php/command/command/action/execute', '', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"fa_family\",\"controller\":\"register\\/family\",\"model\":\"\",\"fields\":[\"id\",\"family_vilager_ids\"],\"relation\":{\"2\":{\"relation\":\"fa_vilager\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"v_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"vilagername\",\"phone\",\"sex\",\"age\",\"idcode\",\"edu_green\",\"marriage\",\"status\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"fa_family.id\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626716);
INSERT INTO `fa_admin_log` VALUES (380, 1, 'admin', '/rfOGdYRKX2.php/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626716);
INSERT INTO `fa_admin_log` VALUES (381, 1, 'admin', '/rfOGdYRKX2.php/command/execute/ids/34', '在线命令管理 运行', '{\"ids\":\"34\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626767);
INSERT INTO `fa_admin_log` VALUES (382, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626785);
INSERT INTO `fa_admin_log` VALUES (383, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_family\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626791);
INSERT INTO `fa_admin_log` VALUES (384, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626816);
INSERT INTO `fa_admin_log` VALUES (385, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626816);
INSERT INTO `fa_admin_log` VALUES (386, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626816);
INSERT INTO `fa_admin_log` VALUES (387, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626816);
INSERT INTO `fa_admin_log` VALUES (388, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_vilager\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626823);
INSERT INTO `fa_admin_log` VALUES (389, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_vilager\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626823);
INSERT INTO `fa_admin_log` VALUES (390, 1, 'admin', '/rfOGdYRKX2.php/command/command/action/command', '', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"fa_family\",\"controller\":\"register\\/family\",\"model\":\"\",\"fields\":[\"id\",\"family_vilager_ids\"],\"relation\":{\"2\":{\"relation\":\"fa_vilager\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"v_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"vilagername\",\"phone\",\"sex\",\"age\",\"idcode\",\"edu_green\",\"marriage\",\"status\",\"author\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626850);
INSERT INTO `fa_admin_log` VALUES (391, 1, 'admin', '/rfOGdYRKX2.php/command/command/action/command', '', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"fa_family\",\"controller\":\"register\\/family\",\"model\":\"\",\"fields\":[\"id\",\"family_vilager_ids\"],\"relation\":{\"2\":{\"relation\":\"fa_vilager\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"v_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"vilagername\",\"phone\",\"sex\",\"age\",\"idcode\",\"edu_green\",\"marriage\",\"status\",\"author\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626925);
INSERT INTO `fa_admin_log` VALUES (392, 1, 'admin', '/rfOGdYRKX2.php/command/command/action/execute', '', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"fa_family\",\"controller\":\"register\\/family\",\"model\":\"\",\"fields\":[\"id\",\"family_vilager_ids\"],\"relation\":{\"2\":{\"relation\":\"fa_vilager\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"v_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"vilagername\",\"phone\",\"sex\",\"age\",\"idcode\",\"edu_green\",\"marriage\",\"status\",\"author\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626953);
INSERT INTO `fa_admin_log` VALUES (393, 1, 'admin', '/rfOGdYRKX2.php/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573626953);
INSERT INTO `fa_admin_log` VALUES (394, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573627002);
INSERT INTO `fa_admin_log` VALUES (395, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_gro\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573627012);
INSERT INTO `fa_admin_log` VALUES (396, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573627029);
INSERT INTO `fa_admin_log` VALUES (397, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573627030);
INSERT INTO `fa_admin_log` VALUES (398, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573627030);
INSERT INTO `fa_admin_log` VALUES (399, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573627030);
INSERT INTO `fa_admin_log` VALUES (400, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_vilager\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573627043);
INSERT INTO `fa_admin_log` VALUES (401, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_vilager\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573627043);
INSERT INTO `fa_admin_log` VALUES (402, 1, 'admin', '/rfOGdYRKX2.php/command/command/action/command', '', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"fa_gro\",\"controller\":\"register\\/gro\",\"model\":\"\",\"fields\":[\"id\",\"name\",\"lead_cadre\"],\"relation\":{\"2\":{\"relation\":\"fa_vilager\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"lead_cadre\",\"relationprimarykey\":\"id\",\"relationfields\":[\"vilagername\",\"phone\",\"edu_green\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573627083);
INSERT INTO `fa_admin_log` VALUES (403, 1, 'admin', '/rfOGdYRKX2.php/command/command/action/execute', '', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"fa_gro\",\"controller\":\"register\\/gro\",\"model\":\"\",\"fields\":[\"id\",\"name\",\"lead_cadre\"],\"relation\":{\"2\":{\"relation\":\"fa_vilager\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"lead_cadre\",\"relationprimarykey\":\"id\",\"relationfields\":[\"vilagername\",\"phone\",\"edu_green\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573627084);
INSERT INTO `fa_admin_log` VALUES (404, 1, 'admin', '/rfOGdYRKX2.php/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573627084);
INSERT INTO `fa_admin_log` VALUES (405, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573627120);
INSERT INTO `fa_admin_log` VALUES (406, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_gro\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573627125);
INSERT INTO `fa_admin_log` VALUES (407, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573627141);
INSERT INTO `fa_admin_log` VALUES (408, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573627141);
INSERT INTO `fa_admin_log` VALUES (409, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573627141);
INSERT INTO `fa_admin_log` VALUES (410, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573627141);
INSERT INTO `fa_admin_log` VALUES (411, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_vilager\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573627145);
INSERT INTO `fa_admin_log` VALUES (412, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_vilager\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573627145);
INSERT INTO `fa_admin_log` VALUES (413, 1, 'admin', '/rfOGdYRKX2.php/command/command/action/execute', '', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"fa_gro\",\"controller\":\"register\\/gro\",\"model\":\"\",\"fields\":[\"id\",\"name\"],\"relation\":{\"2\":{\"relation\":\"fa_vilager\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"lead_cadre\",\"relationprimarykey\":\"id\",\"relationfields\":[\"vilagername\",\"phone\",\"edu_green\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573627174);
INSERT INTO `fa_admin_log` VALUES (414, 1, 'admin', '/rfOGdYRKX2.php/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573627174);
INSERT INTO `fa_admin_log` VALUES (415, 1, 'admin', '/rfOGdYRKX2.php/auth/group/roletree', '', '{\"pid\":\"1\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573698832);
INSERT INTO `fa_admin_log` VALUES (416, 1, 'admin', '/rfOGdYRKX2.php/command/del/ids/38,37,36,35,34,33,32,31,30,29', '在线命令管理 删除', '{\"action\":\"del\",\"ids\":\"38,37,36,35,34,33,32,31,30,29\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573700566);
INSERT INTO `fa_admin_log` VALUES (417, 1, 'admin', '/rfOGdYRKX2.php/command/del/ids/28,27,26,25,23,20,19', '在线命令管理 删除', '{\"action\":\"del\",\"ids\":\"28,27,26,25,23,20,19\",\"params\":\"\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573700569);
INSERT INTO `fa_admin_log` VALUES (418, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573701023);
INSERT INTO `fa_admin_log` VALUES (419, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_vilager\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573701030);
INSERT INTO `fa_admin_log` VALUES (420, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573701067);
INSERT INTO `fa_admin_log` VALUES (421, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573701067);
INSERT INTO `fa_admin_log` VALUES (422, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573701067);
INSERT INTO `fa_admin_log` VALUES (423, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573701067);
INSERT INTO `fa_admin_log` VALUES (424, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_family\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573701069);
INSERT INTO `fa_admin_log` VALUES (425, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_family\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573701069);
INSERT INTO `fa_admin_log` VALUES (426, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573701082);
INSERT INTO `fa_admin_log` VALUES (427, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573701082);
INSERT INTO `fa_admin_log` VALUES (428, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573701082);
INSERT INTO `fa_admin_log` VALUES (429, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573701082);
INSERT INTO `fa_admin_log` VALUES (430, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_gro\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573701084);
INSERT INTO `fa_admin_log` VALUES (431, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_gro\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573701084);
INSERT INTO `fa_admin_log` VALUES (432, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573701115);
INSERT INTO `fa_admin_log` VALUES (433, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573701115);
INSERT INTO `fa_admin_log` VALUES (434, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573701115);
INSERT INTO `fa_admin_log` VALUES (435, 1, 'admin', '/rfOGdYRKX2.php/command/get_field_list', '', '{\"table\":\"fa_admin\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573701115);
INSERT INTO `fa_admin_log` VALUES (436, 1, 'admin', '/rfOGdYRKX2.php/command/command/action/command', '', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"fa_vilager\",\"controller\":\"register\\/vilager\",\"model\":\"\",\"fields\":[\"id\",\"vilagername\",\"phone\",\"sex\",\"age\",\"idcode\",\"edu_green\",\"marriage\",\"status\",\"author\"],\"relation\":{\"2\":{\"relation\":\"fa_family\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"fam_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"family_vilager_ids\"]},\"3\":{\"relation\":\"fa_gro\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"gro_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"name\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"command\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573701126);
INSERT INTO `fa_admin_log` VALUES (437, 1, 'admin', '/rfOGdYRKX2.php/command/command/action/execute', '', '{\"commandtype\":\"crud\",\"isrelation\":\"1\",\"local\":\"1\",\"delete\":\"0\",\"force\":\"1\",\"table\":\"fa_vilager\",\"controller\":\"register\\/vilager\",\"model\":\"\",\"fields\":[\"id\",\"vilagername\",\"phone\",\"sex\",\"age\",\"idcode\",\"edu_green\",\"marriage\",\"status\",\"author\"],\"relation\":{\"2\":{\"relation\":\"fa_family\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"fam_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"family_vilager_ids\"]},\"3\":{\"relation\":\"fa_gro\",\"relationmode\":\"belongsto\",\"relationforeignkey\":\"gro_id\",\"relationprimarykey\":\"id\",\"relationfields\":[\"name\"]}},\"setcheckboxsuffix\":\"\",\"enumradiosuffix\":\"\",\"imagefield\":\"\",\"filefield\":\"\",\"intdatesuffix\":\"\",\"switchsuffix\":\"\",\"citysuffix\":\"\",\"selectpagesuffix\":\"\",\"selectpagessuffix\":\"\",\"ignorefields\":\"\",\"sortfield\":\"\",\"editorsuffix\":\"\",\"headingfilterfield\":\"\",\"action\":\"execute\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573701127);
INSERT INTO `fa_admin_log` VALUES (438, 1, 'admin', '/rfOGdYRKX2.php/index/index', '', '{\"action\":\"refreshmenu\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573701127);
INSERT INTO `fa_admin_log` VALUES (439, 1, 'admin', '/rfOGdYRKX2.php/register/gro/edit/ids/4?dialog=1', '', '{\"dialog\":\"1\",\"row\":{\"name\":\"\\u69d0\\u5e99\\u56db\\u7ec4\",\"lead_cadre\":\"7\"},\"ids\":\"4\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573701716);
INSERT INTO `fa_admin_log` VALUES (440, 1, 'admin', '/rfOGdYRKX2.php/register/vilager/edit/ids/7?dialog=1', '', '{\"dialog\":\"1\",\"row\":{\"vilagername\":\"\\u66f9\\u5b5f\\u5fb7\",\"phone\":\"19358832113\",\"sex\":\"\\u7537\",\"birthday_time\":\"2017-09-01\",\"age\":\"34\",\"idcode\":\"410425198503101323\",\"edu_green\":\"\\u672c\\u79d1\",\"marriage\":\"\\u5df2\\u5a5a\",\"move_in_time\":\"\",\"move_out_time\":\"\",\"v_status\":\"\\u6751\\u6c11\",\"status\":\"\\u6b63\\u5e38\",\"gro_id\":\"4\",\"fam_id\":\"4\",\"allocation_cate\":\"\",\"allocation_start_time\":\"\",\"allocation_end_time\":\"\",\"family_move\":\"\\u672a\\u8fc1\\u51fa\\u5bb6\\u5ead\",\"author\":\"\\u6237\\u4e3b\"},\"ids\":\"7\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 1573702904);

-- ----------------------------
-- Table structure for fa_attachment
-- ----------------------------
DROP TABLE IF EXISTS `fa_attachment`;
CREATE TABLE `fa_attachment`  (
  `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `admin_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '管理员ID',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '会员ID',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '物理路径',
  `imagewidth` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '宽度',
  `imageheight` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '高度',
  `imagetype` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '图片类型',
  `imageframes` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '图片帧数',
  `filesize` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '文件大小',
  `mimetype` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'mime类型',
  `extparam` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '透传数据',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '创建日期',
  `updatetime` int(10) NULL DEFAULT NULL COMMENT '更新时间',
  `uploadtime` int(10) NULL DEFAULT NULL COMMENT '上传时间',
  `storage` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'local' COMMENT '存储位置',
  `sha1` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '文件 sha1编码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '附件表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fa_attachment
-- ----------------------------
INSERT INTO `fa_attachment` VALUES (1, 1, 0, '/assets/img/qrcode.png', '150', '150', 'png', 0, 21859, 'image/png', '', 1499681848, 1499681848, 1499681848, 'local', '17163603d0263e4838b9387ff2cd4877e8b018f6');

-- ----------------------------
-- Table structure for fa_auth_group
-- ----------------------------
DROP TABLE IF EXISTS `fa_auth_group`;
CREATE TABLE `fa_auth_group`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '父组别',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '组名',
  `rules` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '规则ID',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) NULL DEFAULT NULL COMMENT '更新时间',
  `status` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '分组表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fa_auth_group
-- ----------------------------
INSERT INTO `fa_auth_group` VALUES (1, 0, 'Admin group', '*', 1490883540, 149088354, 'normal');
INSERT INTO `fa_auth_group` VALUES (2, 1, 'Second group', '13,14,16,15,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,40,41,42,43,44,45,46,47,48,49,50,55,56,57,58,59,60,61,62,63,64,65,1,9,10,11,7,6,8,2,4,5', 1490883540, 1505465692, 'normal');
INSERT INTO `fa_auth_group` VALUES (3, 2, 'Third group', '1,4,9,10,11,13,14,15,16,17,40,41,42,43,44,45,46,47,48,49,50,55,56,57,58,59,60,61,62,63,64,65,5', 1490883540, 1502205322, 'normal');
INSERT INTO `fa_auth_group` VALUES (4, 1, 'Second group 2', '1,4,13,14,15,16,17,55,56,57,58,59,60,61,62,63,64,65', 1490883540, 1502205350, 'normal');
INSERT INTO `fa_auth_group` VALUES (5, 2, 'Third group 2', '1,2,6,7,8,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34', 1490883540, 1502205344, 'normal');

-- ----------------------------
-- Table structure for fa_auth_group_access
-- ----------------------------
DROP TABLE IF EXISTS `fa_auth_group_access`;
CREATE TABLE `fa_auth_group_access`  (
  `uid` int(10) UNSIGNED NOT NULL COMMENT '会员ID',
  `group_id` int(10) UNSIGNED NOT NULL COMMENT '级别ID',
  UNIQUE INDEX `uid_group_id`(`uid`, `group_id`) USING BTREE,
  INDEX `uid`(`uid`) USING BTREE,
  INDEX `group_id`(`group_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '权限分组表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fa_auth_group_access
-- ----------------------------
INSERT INTO `fa_auth_group_access` VALUES (1, 1);

-- ----------------------------
-- Table structure for fa_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `fa_auth_rule`;
CREATE TABLE `fa_auth_rule`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` enum('menu','file') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'file' COMMENT 'menu为菜单,file为权限节点',
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '父ID',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '规则名称',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '规则名称',
  `icon` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '图标',
  `condition` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '条件',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `ismenu` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否为菜单',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) NULL DEFAULT NULL COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT 0 COMMENT '权重',
  `status` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE,
  INDEX `pid`(`pid`) USING BTREE,
  INDEX `weigh`(`weigh`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 96 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '节点表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fa_auth_rule
-- ----------------------------
INSERT INTO `fa_auth_rule` VALUES (1, 'file', 0, 'dashboard', 'Dashboard', 'fa fa-dashboard', '', 'Dashboard tips', 1, 1497429920, 1497429920, 143, 'normal');
INSERT INTO `fa_auth_rule` VALUES (2, 'file', 0, 'general', 'General', 'fa fa-cogs', '', '', 1, 1497429920, 1497430169, 137, 'normal');
INSERT INTO `fa_auth_rule` VALUES (3, 'file', 0, 'category', 'Category', 'fa fa-leaf', '', 'Category tips', 1, 1497429920, 1497429920, 119, 'normal');
INSERT INTO `fa_auth_rule` VALUES (4, 'file', 0, 'addon', 'Addon', 'fa fa-rocket', '', 'Addon tips', 1, 1502035509, 1502035509, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (5, 'file', 0, 'auth', 'Auth', 'fa fa-group', '', '', 1, 1497429920, 1497430092, 99, 'normal');
INSERT INTO `fa_auth_rule` VALUES (6, 'file', 2, 'general/config', 'Config', 'fa fa-cog', '', 'Config tips', 1, 1497429920, 1497430683, 60, 'normal');
INSERT INTO `fa_auth_rule` VALUES (7, 'file', 2, 'general/attachment', 'Attachment', 'fa fa-file-image-o', '', 'Attachment tips', 1, 1497429920, 1497430699, 53, 'normal');
INSERT INTO `fa_auth_rule` VALUES (8, 'file', 2, 'general/profile', 'Profile', 'fa fa-user', '', '', 1, 1497429920, 1497429920, 34, 'normal');
INSERT INTO `fa_auth_rule` VALUES (9, 'file', 5, 'auth/admin', 'Admin', 'fa fa-user', '', 'Admin tips', 1, 1497429920, 1497430320, 118, 'normal');
INSERT INTO `fa_auth_rule` VALUES (10, 'file', 5, 'auth/adminlog', 'Admin log', 'fa fa-list-alt', '', 'Admin log tips', 1, 1497429920, 1497430307, 113, 'normal');
INSERT INTO `fa_auth_rule` VALUES (11, 'file', 5, 'auth/group', 'Group', 'fa fa-group', '', 'Group tips', 1, 1497429920, 1497429920, 109, 'normal');
INSERT INTO `fa_auth_rule` VALUES (12, 'file', 5, 'auth/rule', 'Rule', 'fa fa-bars', '', 'Rule tips', 1, 1497429920, 1497430581, 104, 'normal');
INSERT INTO `fa_auth_rule` VALUES (13, 'file', 1, 'dashboard/index', 'View', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 136, 'normal');
INSERT INTO `fa_auth_rule` VALUES (14, 'file', 1, 'dashboard/add', 'Add', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 135, 'normal');
INSERT INTO `fa_auth_rule` VALUES (15, 'file', 1, 'dashboard/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 133, 'normal');
INSERT INTO `fa_auth_rule` VALUES (16, 'file', 1, 'dashboard/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 134, 'normal');
INSERT INTO `fa_auth_rule` VALUES (17, 'file', 1, 'dashboard/multi', 'Multi', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 132, 'normal');
INSERT INTO `fa_auth_rule` VALUES (18, 'file', 6, 'general/config/index', 'View', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 52, 'normal');
INSERT INTO `fa_auth_rule` VALUES (19, 'file', 6, 'general/config/add', 'Add', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 51, 'normal');
INSERT INTO `fa_auth_rule` VALUES (20, 'file', 6, 'general/config/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 50, 'normal');
INSERT INTO `fa_auth_rule` VALUES (21, 'file', 6, 'general/config/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 49, 'normal');
INSERT INTO `fa_auth_rule` VALUES (22, 'file', 6, 'general/config/multi', 'Multi', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 48, 'normal');
INSERT INTO `fa_auth_rule` VALUES (23, 'file', 7, 'general/attachment/index', 'View', 'fa fa-circle-o', '', 'Attachment tips', 0, 1497429920, 1497429920, 59, 'normal');
INSERT INTO `fa_auth_rule` VALUES (24, 'file', 7, 'general/attachment/select', 'Select attachment', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 58, 'normal');
INSERT INTO `fa_auth_rule` VALUES (25, 'file', 7, 'general/attachment/add', 'Add', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 57, 'normal');
INSERT INTO `fa_auth_rule` VALUES (26, 'file', 7, 'general/attachment/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 56, 'normal');
INSERT INTO `fa_auth_rule` VALUES (27, 'file', 7, 'general/attachment/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 55, 'normal');
INSERT INTO `fa_auth_rule` VALUES (28, 'file', 7, 'general/attachment/multi', 'Multi', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 54, 'normal');
INSERT INTO `fa_auth_rule` VALUES (29, 'file', 8, 'general/profile/index', 'View', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 33, 'normal');
INSERT INTO `fa_auth_rule` VALUES (30, 'file', 8, 'general/profile/update', 'Update profile', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 32, 'normal');
INSERT INTO `fa_auth_rule` VALUES (31, 'file', 8, 'general/profile/add', 'Add', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 31, 'normal');
INSERT INTO `fa_auth_rule` VALUES (32, 'file', 8, 'general/profile/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 30, 'normal');
INSERT INTO `fa_auth_rule` VALUES (33, 'file', 8, 'general/profile/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 29, 'normal');
INSERT INTO `fa_auth_rule` VALUES (34, 'file', 8, 'general/profile/multi', 'Multi', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 28, 'normal');
INSERT INTO `fa_auth_rule` VALUES (35, 'file', 3, 'category/index', 'View', 'fa fa-circle-o', '', 'Category tips', 0, 1497429920, 1497429920, 142, 'normal');
INSERT INTO `fa_auth_rule` VALUES (36, 'file', 3, 'category/add', 'Add', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 141, 'normal');
INSERT INTO `fa_auth_rule` VALUES (37, 'file', 3, 'category/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 140, 'normal');
INSERT INTO `fa_auth_rule` VALUES (38, 'file', 3, 'category/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 139, 'normal');
INSERT INTO `fa_auth_rule` VALUES (39, 'file', 3, 'category/multi', 'Multi', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 138, 'normal');
INSERT INTO `fa_auth_rule` VALUES (40, 'file', 9, 'auth/admin/index', 'View', 'fa fa-circle-o', '', 'Admin tips', 0, 1497429920, 1497429920, 117, 'normal');
INSERT INTO `fa_auth_rule` VALUES (41, 'file', 9, 'auth/admin/add', 'Add', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 116, 'normal');
INSERT INTO `fa_auth_rule` VALUES (42, 'file', 9, 'auth/admin/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 115, 'normal');
INSERT INTO `fa_auth_rule` VALUES (43, 'file', 9, 'auth/admin/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 114, 'normal');
INSERT INTO `fa_auth_rule` VALUES (44, 'file', 10, 'auth/adminlog/index', 'View', 'fa fa-circle-o', '', 'Admin log tips', 0, 1497429920, 1497429920, 112, 'normal');
INSERT INTO `fa_auth_rule` VALUES (45, 'file', 10, 'auth/adminlog/detail', 'Detail', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 111, 'normal');
INSERT INTO `fa_auth_rule` VALUES (46, 'file', 10, 'auth/adminlog/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 110, 'normal');
INSERT INTO `fa_auth_rule` VALUES (47, 'file', 11, 'auth/group/index', 'View', 'fa fa-circle-o', '', 'Group tips', 0, 1497429920, 1497429920, 108, 'normal');
INSERT INTO `fa_auth_rule` VALUES (48, 'file', 11, 'auth/group/add', 'Add', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 107, 'normal');
INSERT INTO `fa_auth_rule` VALUES (49, 'file', 11, 'auth/group/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 106, 'normal');
INSERT INTO `fa_auth_rule` VALUES (50, 'file', 11, 'auth/group/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 105, 'normal');
INSERT INTO `fa_auth_rule` VALUES (51, 'file', 12, 'auth/rule/index', 'View', 'fa fa-circle-o', '', 'Rule tips', 0, 1497429920, 1497429920, 103, 'normal');
INSERT INTO `fa_auth_rule` VALUES (52, 'file', 12, 'auth/rule/add', 'Add', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 102, 'normal');
INSERT INTO `fa_auth_rule` VALUES (53, 'file', 12, 'auth/rule/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 101, 'normal');
INSERT INTO `fa_auth_rule` VALUES (54, 'file', 12, 'auth/rule/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1497429920, 1497429920, 100, 'normal');
INSERT INTO `fa_auth_rule` VALUES (55, 'file', 4, 'addon/index', 'View', 'fa fa-circle-o', '', 'Addon tips', 0, 1502035509, 1502035509, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (56, 'file', 4, 'addon/add', 'Add', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (57, 'file', 4, 'addon/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (58, 'file', 4, 'addon/del', 'Delete', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (59, 'file', 4, 'addon/local', 'Local install', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (60, 'file', 4, 'addon/state', 'Update state', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (61, 'file', 4, 'addon/install', 'Install', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (62, 'file', 4, 'addon/uninstall', 'Uninstall', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (63, 'file', 4, 'addon/config', 'Setting', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (64, 'file', 4, 'addon/refresh', 'Refresh', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (65, 'file', 4, 'addon/multi', 'Multi', 'fa fa-circle-o', '', '', 0, 1502035509, 1502035509, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (66, 'file', 0, 'user', 'User', 'fa fa-list', '', '', 1, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (67, 'file', 66, 'user/user', 'User', 'fa fa-user', '', '', 1, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (68, 'file', 67, 'user/user/index', 'View', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (69, 'file', 67, 'user/user/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (70, 'file', 67, 'user/user/add', 'Add', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (71, 'file', 67, 'user/user/del', 'Del', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (72, 'file', 67, 'user/user/multi', 'Multi', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (73, 'file', 66, 'user/group', 'User group', 'fa fa-users', '', '', 1, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (74, 'file', 73, 'user/group/add', 'Add', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (75, 'file', 73, 'user/group/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (76, 'file', 73, 'user/group/index', 'View', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (77, 'file', 73, 'user/group/del', 'Del', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (78, 'file', 73, 'user/group/multi', 'Multi', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (79, 'file', 66, 'user/rule', 'User rule', 'fa fa-circle-o', '', '', 1, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (80, 'file', 79, 'user/rule/index', 'View', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (81, 'file', 79, 'user/rule/del', 'Del', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (82, 'file', 79, 'user/rule/add', 'Add', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (83, 'file', 79, 'user/rule/edit', 'Edit', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (84, 'file', 79, 'user/rule/multi', 'Multi', 'fa fa-circle-o', '', '', 0, 1516374729, 1516374729, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (85, 'file', 0, 'command', '在线命令管理', 'fa fa-terminal', '', '', 1, 1573544687, 1573544687, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (86, 'file', 85, 'command/index', '查看', 'fa fa-circle-o', '', '', 0, 1573544687, 1573544687, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (87, 'file', 85, 'command/add', '添加', 'fa fa-circle-o', '', '', 0, 1573544687, 1573544687, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (88, 'file', 85, 'command/detail', '详情', 'fa fa-circle-o', '', '', 0, 1573544687, 1573544687, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (89, 'file', 85, 'command/execute', '运行', 'fa fa-circle-o', '', '', 0, 1573544687, 1573544687, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (90, 'file', 85, 'command/del', '删除', 'fa fa-circle-o', '', '', 0, 1573544687, 1573544687, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (91, 'file', 85, 'command/multi', '批量更新', 'fa fa-circle-o', '', '', 0, 1573544687, 1573544687, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (92, 'file', 0, 'register', '户籍管理', 'fa fa-male', '', '', 1, 1573550975, 1573625960, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (93, 'file', 92, 'register/vilager', '村民管理', 'fa fa-circle-o', '', '', 1, 1573625440, 1573626000, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (94, 'file', 92, 'register/family', '家庭管理', 'fa fa-circle-o', '', '', 1, 1573626031, 1573626031, 0, 'normal');
INSERT INTO `fa_auth_rule` VALUES (95, 'file', 92, 'register/gro', '村组管理', 'fa fa-circle-o', '', '', 1, 1573626056, 1573626056, 0, 'normal');

-- ----------------------------
-- Table structure for fa_category
-- ----------------------------
DROP TABLE IF EXISTS `fa_category`;
CREATE TABLE `fa_category`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pid` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '父ID',
  `type` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '栏目类型',
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `flag` set('hot','index','recommend') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '图片',
  `keywords` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '描述',
  `diyname` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '自定义名称',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) NULL DEFAULT NULL COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT 0 COMMENT '权重',
  `status` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `weigh`(`weigh`, `id`) USING BTREE,
  INDEX `pid`(`pid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '分类表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fa_category
-- ----------------------------
INSERT INTO `fa_category` VALUES (1, 0, 'page', '官方新闻', 'news', 'recommend', '/assets/img/qrcode.png', '', '', 'news', 1495262190, 1495262190, 1, 'normal');
INSERT INTO `fa_category` VALUES (2, 0, 'page', '移动应用', 'mobileapp', 'hot', '/assets/img/qrcode.png', '', '', 'mobileapp', 1495262244, 1495262244, 2, 'normal');
INSERT INTO `fa_category` VALUES (3, 2, 'page', '微信公众号', 'wechatpublic', 'index', '/assets/img/qrcode.png', '', '', 'wechatpublic', 1495262288, 1495262288, 3, 'normal');
INSERT INTO `fa_category` VALUES (4, 2, 'page', 'Android开发', 'android', 'recommend', '/assets/img/qrcode.png', '', '', 'android', 1495262317, 1495262317, 4, 'normal');
INSERT INTO `fa_category` VALUES (5, 0, 'page', '软件产品', 'software', 'recommend', '/assets/img/qrcode.png', '', '', 'software', 1495262336, 1499681850, 5, 'normal');
INSERT INTO `fa_category` VALUES (6, 5, 'page', '网站建站', 'website', 'recommend', '/assets/img/qrcode.png', '', '', 'website', 1495262357, 1495262357, 6, 'normal');
INSERT INTO `fa_category` VALUES (7, 5, 'page', '企业管理软件', 'company', 'index', '/assets/img/qrcode.png', '', '', 'company', 1495262391, 1495262391, 7, 'normal');
INSERT INTO `fa_category` VALUES (8, 6, 'page', 'PC端', 'website-pc', 'recommend', '/assets/img/qrcode.png', '', '', 'website-pc', 1495262424, 1495262424, 8, 'normal');
INSERT INTO `fa_category` VALUES (9, 6, 'page', '移动端', 'website-mobile', 'recommend', '/assets/img/qrcode.png', '', '', 'website-mobile', 1495262456, 1495262456, 9, 'normal');
INSERT INTO `fa_category` VALUES (10, 7, 'page', 'CRM系统 ', 'company-crm', 'recommend', '/assets/img/qrcode.png', '', '', 'company-crm', 1495262487, 1495262487, 10, 'normal');
INSERT INTO `fa_category` VALUES (11, 7, 'page', 'SASS平台软件', 'company-sass', 'recommend', '/assets/img/qrcode.png', '', '', 'company-sass', 1495262515, 1495262515, 11, 'normal');
INSERT INTO `fa_category` VALUES (12, 0, 'test', '测试1', 'test1', 'recommend', '/assets/img/qrcode.png', '', '', 'test1', 1497015727, 1497015727, 12, 'normal');
INSERT INTO `fa_category` VALUES (13, 0, 'test', '测试2', 'test2', 'recommend', '/assets/img/qrcode.png', '', '', 'test2', 1497015738, 1497015738, 13, 'normal');

-- ----------------------------
-- Table structure for fa_command
-- ----------------------------
DROP TABLE IF EXISTS `fa_command`;
CREATE TABLE `fa_command`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `type` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '类型',
  `params` varchar(1500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '参数',
  `command` varchar(1500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '命令',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '返回结果',
  `executetime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '执行时间',
  `createtime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `status` enum('successed','failured') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'failured' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '在线命令表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fa_command
-- ----------------------------
INSERT INTO `fa_command` VALUES (39, 'crud', '[\"--force=1\",\"--table=fa_vilager\",\"--controller=register\\/vilager\",\"--fields=id,vilagername,phone,sex,age,idcode,edu_green,marriage,status,author\",\"--relation=fa_family\",\"--relationmode=belongsto\",\"--relationforeignkey=fam_id\",\"--relationprimarykey=id\",\"--relationfields=family_vilager_ids\",\"--relation=fa_gro\",\"--relationmode=belongsto\",\"--relationforeignkey=gro_id\",\"--relationprimarykey=id\",\"--relationfields=name\"]', 'php think crud --force=1 --table=fa_vilager --controller=register/vilager --fields=id,vilagername,phone,sex,age,idcode,edu_green,marriage,status,author --relation=fa_family --relationmode=belongsto --relationforeignkey=fam_id --relationprimarykey=id --relationfields=family_vilager_ids --relation=fa_gro --relationmode=belongsto --relationforeignkey=gro_id --relationprimarykey=id --relationfields=name', 'Build Successed', 1573701127, 1573701127, 1573701127, 'successed');

-- ----------------------------
-- Table structure for fa_config
-- ----------------------------
DROP TABLE IF EXISTS `fa_config`;
CREATE TABLE `fa_config`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '变量名',
  `group` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '分组',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '变量标题',
  `tip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '变量描述',
  `type` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '类型:string,text,int,bool,array,datetime,date,file',
  `value` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '变量值',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '变量字典数据',
  `rule` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '验证规则',
  `extend` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '扩展属性',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统配置' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fa_config
-- ----------------------------
INSERT INTO `fa_config` VALUES (1, 'name', 'basic', 'Site name', '请填写站点名称', 'string', 'FastAdmin', '', 'required', '');
INSERT INTO `fa_config` VALUES (2, 'beian', 'basic', 'Beian', '粤ICP备15000000号-1', 'string', '', '', '', '');
INSERT INTO `fa_config` VALUES (3, 'cdnurl', 'basic', 'Cdn url', '如果静态资源使用第三方云储存请配置该值', 'string', '', '', '', '');
INSERT INTO `fa_config` VALUES (4, 'version', 'basic', 'Version', '如果静态资源有变动请重新配置该值', 'string', '1.0.1', '', 'required', '');
INSERT INTO `fa_config` VALUES (5, 'timezone', 'basic', 'Timezone', '', 'string', 'Asia/Shanghai', '', 'required', '');
INSERT INTO `fa_config` VALUES (6, 'forbiddenip', 'basic', 'Forbidden ip', '一行一条记录', 'text', '', '', '', '');
INSERT INTO `fa_config` VALUES (7, 'languages', 'basic', 'Languages', '', 'array', '{\"backend\":\"zh-cn\",\"frontend\":\"zh-cn\"}', '', 'required', '');
INSERT INTO `fa_config` VALUES (8, 'fixedpage', 'basic', 'Fixed page', '请尽量输入左侧菜单栏存在的链接', 'string', 'dashboard', '', 'required', '');
INSERT INTO `fa_config` VALUES (9, 'categorytype', 'dictionary', 'Category type', '', 'array', '{\"default\":\"Default\",\"page\":\"Page\",\"article\":\"Article\",\"test\":\"Test\"}', '', '', '');
INSERT INTO `fa_config` VALUES (10, 'configgroup', 'dictionary', 'Config group', '', 'array', '{\"basic\":\"Basic\",\"email\":\"Email\",\"dictionary\":\"Dictionary\",\"user\":\"User\",\"example\":\"Example\"}', '', '', '');
INSERT INTO `fa_config` VALUES (11, 'mail_type', 'email', 'Mail type', '选择邮件发送方式', 'select', '1', '[\"Please select\",\"SMTP\",\"Mail\"]', '', '');
INSERT INTO `fa_config` VALUES (12, 'mail_smtp_host', 'email', 'Mail smtp host', '错误的配置发送邮件会导致服务器超时', 'string', 'smtp.qq.com', '', '', '');
INSERT INTO `fa_config` VALUES (13, 'mail_smtp_port', 'email', 'Mail smtp port', '(不加密默认25,SSL默认465,TLS默认587)', 'string', '465', '', '', '');
INSERT INTO `fa_config` VALUES (14, 'mail_smtp_user', 'email', 'Mail smtp user', '（填写完整用户名）', 'string', '10000', '', '', '');
INSERT INTO `fa_config` VALUES (15, 'mail_smtp_pass', 'email', 'Mail smtp password', '（填写您的密码）', 'string', 'password', '', '', '');
INSERT INTO `fa_config` VALUES (16, 'mail_verify_type', 'email', 'Mail vertify type', '（SMTP验证方式[推荐SSL]）', 'select', '2', '[\"None\",\"TLS\",\"SSL\"]', '', '');
INSERT INTO `fa_config` VALUES (17, 'mail_from', 'email', 'Mail from', '', 'string', '10000@qq.com', '', '', '');

-- ----------------------------
-- Table structure for fa_ems
-- ----------------------------
DROP TABLE IF EXISTS `fa_ems`;
CREATE TABLE `fa_ems`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `event` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '事件',
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '邮箱',
  `code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '验证码',
  `times` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '验证次数',
  `ip` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'IP',
  `createtime` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '邮箱验证码表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for fa_family
-- ----------------------------
DROP TABLE IF EXISTS `fa_family`;
CREATE TABLE `fa_family`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '家庭ID',
  `v_id` int(11) UNSIGNED NOT NULL COMMENT '户主ID',
  `family_vilager_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '家庭成员',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `Unique_vill_id`(`v_id`) USING BTREE COMMENT '户主ID唯一'
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '后台家庭表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fa_family
-- ----------------------------
INSERT INTO `fa_family` VALUES (1, 1, '1,2,3,4');
INSERT INTO `fa_family` VALUES (2, 5, '5');
INSERT INTO `fa_family` VALUES (3, 6, '6');
INSERT INTO `fa_family` VALUES (4, 7, '7');

-- ----------------------------
-- Table structure for fa_gro
-- ----------------------------
DROP TABLE IF EXISTS `fa_gro`;
CREATE TABLE `fa_gro`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '村组ID',
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '村组名称',
  `lead_cadre` int(255) UNSIGNED NOT NULL COMMENT '村组负责人 uid',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `Unique_fam_id`(`name`) USING BTREE COMMENT '家庭ID唯一'
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '村组表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fa_gro
-- ----------------------------
INSERT INTO `fa_gro` VALUES (1, '槐庙一组', 1);
INSERT INTO `fa_gro` VALUES (2, '槐庙二组', 5);
INSERT INTO `fa_gro` VALUES (3, '槐庙三组', 6);
INSERT INTO `fa_gro` VALUES (4, '槐庙四组', 7);

-- ----------------------------
-- Table structure for fa_gro_fam
-- ----------------------------
DROP TABLE IF EXISTS `fa_gro_fam`;
CREATE TABLE `fa_gro_fam`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '关联ID（村组家庭关系）',
  `gro_id` int(11) UNSIGNED NOT NULL COMMENT '村组ID',
  `fam_id` int(11) UNSIGNED NOT NULL COMMENT '家庭ID',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `Unique_fam_id`(`fam_id`) USING BTREE COMMENT '家庭唯一'
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '村组家庭关系表' ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of fa_gro_fam
-- ----------------------------
INSERT INTO `fa_gro_fam` VALUES (1, 3, 1);
INSERT INTO `fa_gro_fam` VALUES (2, 2, 2);
INSERT INTO `fa_gro_fam` VALUES (3, 1, 3);
INSERT INTO `fa_gro_fam` VALUES (4, 4, 4);

-- ----------------------------
-- Table structure for fa_house
-- ----------------------------
DROP TABLE IF EXISTS `fa_house`;
CREATE TABLE `fa_house`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '房子ID',
  `man_id` int(11) UNSIGNED NULL DEFAULT NULL COMMENT '建筑ID',
  `area_id` int(11) UNSIGNED NULL DEFAULT NULL COMMENT '房子所属区域ID',
  `number` int(30) UNSIGNED NOT NULL COMMENT '昂子编号',
  `hou_owner` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '房主名称',
  `hou_phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '房主电话',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '房间表or房子表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for fa_house_detail
-- ----------------------------
DROP TABLE IF EXISTS `fa_house_detail`;
CREATE TABLE `fa_house_detail`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '房子详情ID',
  `hou_id` int(11) UNSIGNED NOT NULL COMMENT '房子ID',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '房子名称',
  `square` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '面积',
  `structure` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '房间结构（如一室一厅）',
  `rental` decimal(10, 2) UNSIGNED NULL DEFAULT NULL COMMENT '租金',
  `describe` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '房间详情描述',
  `message` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '租约信息',
  `detail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '房间详情',
  `setting` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '房屋配置（例：0，1，3，5）',
  `hou_phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '租房电话',
  `hou_per` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '出租人姓名（可以为空，空代表房主本人）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '房间详情表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for fa_house_source
-- ----------------------------
DROP TABLE IF EXISTS `fa_house_source`;
CREATE TABLE `fa_house_source`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `hd_id` int(11) UNSIGNED NOT NULL COMMENT '房源ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '房源管理（官方房源or住宅信息）' ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for fa_merchants_info
-- ----------------------------
DROP TABLE IF EXISTS `fa_merchants_info`;
CREATE TABLE `fa_merchants_info`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '信息ID',
  `brand` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '招商品牌',
  `pictures` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '招商banner图片',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '招商电话',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商谈地址',
  `brand_synopsis` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '品牌简介',
  `brand_describe` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '品牌描述',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '招商信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for fa_rent
-- ----------------------------
DROP TABLE IF EXISTS `fa_rent`;
CREATE TABLE `fa_rent`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `v_id` int(11) UNSIGNED NOT NULL COMMENT '村民用户ID',
  `need` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '求租需求',
  `status` tinyint(1) UNSIGNED NULL DEFAULT NULL COMMENT '求租状态(0未租，1为已租)',
  `create_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '发布时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for fa_sms
-- ----------------------------
DROP TABLE IF EXISTS `fa_sms`;
CREATE TABLE `fa_sms`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `event` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '事件',
  `mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '手机号',
  `code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '验证码',
  `times` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '验证次数',
  `ip` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'IP',
  `createtime` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '短信验证码表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for fa_test
-- ----------------------------
DROP TABLE IF EXISTS `fa_test`;
CREATE TABLE `fa_test`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `admin_id` int(10) NOT NULL DEFAULT 0 COMMENT '管理员ID',
  `category_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '分类ID(单选)',
  `category_ids` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '分类ID(多选)',
  `week` enum('monday','tuesday','wednesday') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '星期(单选):monday=星期一,tuesday=星期二,wednesday=星期三',
  `flag` set('hot','index','recommend') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '标志(多选):hot=热门,index=首页,recommend=推荐',
  `genderdata` enum('male','female') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'male' COMMENT '性别(单选):male=男,female=女',
  `hobbydata` set('music','reading','swimming') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '爱好(多选):music=音乐,reading=读书,swimming=游泳',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '标题',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '图片',
  `images` varchar(1500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '图片组',
  `attachfile` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '附件',
  `keywords` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '描述',
  `city` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '省市',
  `json` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '配置:key=名称,value=值',
  `price` float(10, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '价格',
  `views` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '点击',
  `startdate` date NULL DEFAULT NULL COMMENT '开始日期',
  `activitytime` datetime(0) NULL DEFAULT NULL COMMENT '活动时间(datetime)',
  `year` year NULL DEFAULT NULL COMMENT '年',
  `times` time(0) NULL DEFAULT NULL COMMENT '时间',
  `refreshtime` int(10) NULL DEFAULT NULL COMMENT '刷新时间(int)',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) NULL DEFAULT NULL COMMENT '更新时间',
  `deletetime` int(10) NULL DEFAULT NULL COMMENT '删除时间',
  `weigh` int(10) NOT NULL DEFAULT 0 COMMENT '权重',
  `switch` tinyint(1) NOT NULL DEFAULT 0 COMMENT '开关',
  `status` enum('normal','hidden') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'normal' COMMENT '状态',
  `state` enum('0','1','2') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT '状态值:0=禁用,1=正常,2=推荐',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '测试表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fa_test
-- ----------------------------
INSERT INTO `fa_test` VALUES (1, 0, 12, '12,13', 'monday', 'hot,index', 'male', 'music,reading', '我是一篇测试文章', '<p>我是测试内容</p>', '/assets/img/avatar.png', '/assets/img/avatar.png,/assets/img/qrcode.png', '/assets/img/avatar.png', '关键字', '描述', '广西壮族自治区/百色市/平果县', '{\"a\":\"1\",\"b\":\"2\"}', 0.00, 0, '2017-07-10', '2017-07-10 18:24:45', 2017, '18:24:45', 1499682285, 1499682526, 1499682526, NULL, 0, 1, 'normal', '1');

-- ----------------------------
-- Table structure for fa_user
-- ----------------------------
DROP TABLE IF EXISTS `fa_user`;
CREATE TABLE `fa_user`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '组别ID',
  `username` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '昵称',
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '密码盐',
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '电子邮箱',
  `mobile` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '手机号',
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '头像',
  `level` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '等级',
  `gender` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '性别',
  `birthday` date NULL DEFAULT NULL COMMENT '生日',
  `bio` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '格言',
  `money` decimal(10, 2) UNSIGNED NOT NULL DEFAULT 0.00 COMMENT '余额',
  `score` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '积分',
  `successions` int(10) UNSIGNED NOT NULL DEFAULT 1 COMMENT '连续登录天数',
  `maxsuccessions` int(10) UNSIGNED NOT NULL DEFAULT 1 COMMENT '最大连续登录天数',
  `prevtime` int(10) NULL DEFAULT NULL COMMENT '上次登录时间',
  `logintime` int(10) NULL DEFAULT NULL COMMENT '登录时间',
  `loginip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '登录IP',
  `loginfailure` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '失败次数',
  `joinip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '加入IP',
  `jointime` int(10) NULL DEFAULT NULL COMMENT '加入时间',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) NULL DEFAULT NULL COMMENT '更新时间',
  `token` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'Token',
  `status` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '状态',
  `verification` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '验证',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `username`(`username`) USING BTREE,
  INDEX `email`(`email`) USING BTREE,
  INDEX `mobile`(`mobile`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '会员表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fa_user
-- ----------------------------
INSERT INTO `fa_user` VALUES (1, 1, 'admin', 'admin', 'c13f62012fd6a8fdf06b3452a94430e5', 'rpR6Bv', 'admin@163.com', '13888888888', '', 0, 0, '2017-04-15', '', 0.00, 0, 1, 1, 1516170492, 1516171614, '127.0.0.1', 0, '127.0.0.1', 1491461418, 0, 1516171614, '', 'normal', '');

-- ----------------------------
-- Table structure for fa_user_group
-- ----------------------------
DROP TABLE IF EXISTS `fa_user_group`;
CREATE TABLE `fa_user_group`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '组名',
  `rules` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '权限节点',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '添加时间',
  `updatetime` int(10) NULL DEFAULT NULL COMMENT '更新时间',
  `status` enum('normal','hidden') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '会员组表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fa_user_group
-- ----------------------------
INSERT INTO `fa_user_group` VALUES (1, '默认组', '1,2,3,4,5,6,7,8,9,10,11,12', 1515386468, 1516168298, 'normal');

-- ----------------------------
-- Table structure for fa_user_money_log
-- ----------------------------
DROP TABLE IF EXISTS `fa_user_money_log`;
CREATE TABLE `fa_user_money_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '会员ID',
  `money` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '变更余额',
  `before` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '变更前余额',
  `after` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '变更后余额',
  `memo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '会员余额变动表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for fa_user_rule
-- ----------------------------
DROP TABLE IF EXISTS `fa_user_rule`;
CREATE TABLE `fa_user_rule`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pid` int(10) NULL DEFAULT NULL COMMENT '父ID',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '标题',
  `remark` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `ismenu` tinyint(1) NULL DEFAULT NULL COMMENT '是否菜单',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) NULL DEFAULT NULL COMMENT '更新时间',
  `weigh` int(10) NULL DEFAULT 0 COMMENT '权重',
  `status` enum('normal','hidden') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '会员规则表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fa_user_rule
-- ----------------------------
INSERT INTO `fa_user_rule` VALUES (1, 0, 'index', '前台', '', 1, 1516168079, 1516168079, 1, 'normal');
INSERT INTO `fa_user_rule` VALUES (2, 0, 'api', 'API接口', '', 1, 1516168062, 1516168062, 2, 'normal');
INSERT INTO `fa_user_rule` VALUES (3, 1, 'user', '会员模块', '', 1, 1515386221, 1516168103, 12, 'normal');
INSERT INTO `fa_user_rule` VALUES (4, 2, 'user', '会员模块', '', 1, 1515386221, 1516168092, 11, 'normal');
INSERT INTO `fa_user_rule` VALUES (5, 3, 'index/user/login', '登录', '', 0, 1515386247, 1515386247, 5, 'normal');
INSERT INTO `fa_user_rule` VALUES (6, 3, 'index/user/register', '注册', '', 0, 1515386262, 1516015236, 7, 'normal');
INSERT INTO `fa_user_rule` VALUES (7, 3, 'index/user/index', '会员中心', '', 0, 1516015012, 1516015012, 9, 'normal');
INSERT INTO `fa_user_rule` VALUES (8, 3, 'index/user/profile', '个人资料', '', 0, 1516015012, 1516015012, 4, 'normal');
INSERT INTO `fa_user_rule` VALUES (9, 4, 'api/user/login', '登录', '', 0, 1515386247, 1515386247, 6, 'normal');
INSERT INTO `fa_user_rule` VALUES (10, 4, 'api/user/register', '注册', '', 0, 1515386262, 1516015236, 8, 'normal');
INSERT INTO `fa_user_rule` VALUES (11, 4, 'api/user/index', '会员中心', '', 0, 1516015012, 1516015012, 10, 'normal');
INSERT INTO `fa_user_rule` VALUES (12, 4, 'api/user/profile', '个人资料', '', 0, 1516015012, 1516015012, 3, 'normal');

-- ----------------------------
-- Table structure for fa_user_score_log
-- ----------------------------
DROP TABLE IF EXISTS `fa_user_score_log`;
CREATE TABLE `fa_user_score_log`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '会员ID',
  `score` int(10) NOT NULL DEFAULT 0 COMMENT '变更积分',
  `before` int(10) NOT NULL DEFAULT 0 COMMENT '变更前积分',
  `after` int(10) NOT NULL DEFAULT 0 COMMENT '变更后积分',
  `memo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '会员积分变动表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for fa_user_token
-- ----------------------------
DROP TABLE IF EXISTS `fa_user_token`;
CREATE TABLE `fa_user_token`  (
  `token` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'Token',
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '会员ID',
  `createtime` int(10) NULL DEFAULT NULL COMMENT '创建时间',
  `expiretime` int(10) NULL DEFAULT NULL COMMENT '过期时间',
  PRIMARY KEY (`token`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '会员Token表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for fa_version
-- ----------------------------
DROP TABLE IF EXISTS `fa_version`;
CREATE TABLE `fa_version`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `oldversion` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '旧版本号',
  `newversion` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '新版本号',
  `packagesize` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '包大小',
  `content` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '升级内容',
  `downloadurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '下载地址',
  `enforce` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '强制更新',
  `createtime` int(10) NOT NULL DEFAULT 0 COMMENT '创建时间',
  `updatetime` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT 0 COMMENT '权重',
  `status` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '版本表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fa_version
-- ----------------------------
INSERT INTO `fa_version` VALUES (1, '1.1.1,2', '1.2.1', '20M', '更新内容', 'https://www.fastadmin.net/download.html', 1, 1520425318, 0, 0, 'normal');

-- ----------------------------
-- Table structure for fa_vilager
-- ----------------------------
DROP TABLE IF EXISTS `fa_vilager`;
CREATE TABLE `fa_vilager`  (
  `id` int(11) UNSIGNED NOT NULL COMMENT '村民ID',
  `vilagername` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '姓名',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '电话',
  `sex` enum('男','女') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '男' COMMENT '性别',
  `birthday_time` date NULL DEFAULT NULL COMMENT '出生时间',
  `age` int(3) UNSIGNED NULL DEFAULT NULL COMMENT '年龄',
  `idcode` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '身份证号',
  `edu_green` enum('无','小学','初中','高中','大专','本科','研究生','硕士','博士','博士后','院士') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学历',
  `marriage` enum('已婚','未婚') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '未婚' COMMENT '婚姻状态',
  `move_in_time` date NULL DEFAULT NULL COMMENT '户口迁入',
  `move_out_time` date NULL DEFAULT NULL COMMENT '户口迁出',
  `v_status` enum('村民','普通用户') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '村民' COMMENT '用户状态',
  `status` enum('正常','失踪','死亡','迁出') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '正常' COMMENT '人口状态',
  `gro_id` int(11) NULL DEFAULT NULL COMMENT '所属大队',
  `fam_id` int(11) NULL DEFAULT NULL COMMENT '所属家庭',
  `allocation_cate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分配类型',
  `allocation_start_time` date NULL DEFAULT NULL COMMENT '分配开始时间',
  `allocation_end_time` date NULL DEFAULT NULL COMMENT '分配结束时间',
  `family_move` enum('已迁出家庭','未迁出家庭') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '未迁出家庭' COMMENT '是否迁出家庭',
  `author` enum('户主','家庭成员') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '家庭成员' COMMENT '村民用户身份',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `Unique_phone`(`phone`) USING BTREE COMMENT '电话唯一',
  UNIQUE INDEX `Unique_idcode`(`idcode`) USING BTREE COMMENT '身份证号唯一'
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '村民表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fa_vilager
-- ----------------------------
INSERT INTO `fa_vilager` VALUES (1, '张翼德', '17335582575', '男', '2017-09-01', 25, '410425199109060708', '本科', '已婚', NULL, NULL, '村民', '正常', 3, 1, NULL, NULL, NULL, '未迁出家庭', '户主');
INSERT INTO `fa_vilager` VALUES (2, '常桦', '15633219171', '女', '2017-09-01', 21, '410425199703211020', '本科', '已婚', '2017-09-01', NULL, '村民', '正常', 3, 1, NULL, NULL, NULL, '已迁出家庭', '家庭成员');
INSERT INTO `fa_vilager` VALUES (3, '张苞', '18535211169', '男', '2017-09-01', 2, '410425201805133015', NULL, '未婚', NULL, NULL, '村民', '正常', 3, 1, NULL, NULL, NULL, '未迁出家庭', '家庭成员');
INSERT INTO `fa_vilager` VALUES (4, '张莹莹', '13831182725', '女', '2017-09-01', 2, '41042520180513301x', NULL, '未婚', NULL, NULL, '村民', '正常', 3, 1, NULL, NULL, NULL, '未迁出家庭', '家庭成员');
INSERT INTO `fa_vilager` VALUES (5, '关云长', '17231313823', '男', '2017-09-01', 26, '410425199302151070', '本科', '已婚', NULL, NULL, '村民', '正常', 2, 2, NULL, NULL, NULL, '未迁出家庭', '户主');
INSERT INTO `fa_vilager` VALUES (6, '刘玄德', '17111112111', '男', '2017-09-01', 28, '410425199105312190', '本科', '已婚', NULL, NULL, '村民', '正常', 1, 3, NULL, NULL, NULL, '未迁出家庭', '户主');
INSERT INTO `fa_vilager` VALUES (7, '曹孟德', '19358832113', '男', '2017-09-01', 34, '410425198503101323', '本科', '已婚', NULL, NULL, '村民', '正常', 4, 4, NULL, NULL, NULL, '未迁出家庭', '户主');

-- ----------------------------
-- Table structure for fa_vilager_favorite
-- ----------------------------
DROP TABLE IF EXISTS `fa_vilager_favorite`;
CREATE TABLE `fa_vilager_favorite`  (
  `id` bigint(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `v_id` bigint(11) UNSIGNED NOT NULL COMMENT '村民用户ID',
  `hour_id` bigint(11) UNSIGNED NOT NULL COMMENT '房子ID',
  `me_in_id` bigint(11) UNSIGNED NOT NULL COMMENT '招商信息ID',
  `news_id` bigint(11) UNSIGNED NOT NULL COMMENT '新闻ID',
  `art_id` bigint(11) UNSIGNED NOT NULL COMMENT '文章ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Table structure for fa_vilager_oauth
-- ----------------------------
DROP TABLE IF EXISTS `fa_vilager_oauth`;
CREATE TABLE `fa_vilager_oauth`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `platform` enum('wechat') CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '平台类别',
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '村民用户平台ID',
  `accesstoken` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '接口访问凭证',
  `refreshtoken` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '刷新凭证',
  `expiresin` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '访问凭证超时时间',
  `status` enum('bind','unbind') CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'bind' COMMENT '状态',
  `addtime` timestamp(0) NULL DEFAULT NULL COMMENT '添加时间',
  `updatetime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `v_id` bigint(20) UNSIGNED NOT NULL COMMENT '村民用户ID',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `Unique_uid_uoplat_uooid`(`v_id`, `platform`, `openid`) USING BTREE,
  INDEX `Index_uoplat_uooid`(`platform`, `openid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '村民用户登录授权表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for fa_vilager_oauth_wechat
-- ----------------------------
DROP TABLE IF EXISTS `fa_vilager_oauth_wechat`;
CREATE TABLE `fa_vilager_oauth_wechat`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `nickname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `sex` tinyint(3) UNSIGNED NULL DEFAULT NULL COMMENT '1:男,2:女',
  `province` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '省份',
  `city` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '城市',
  `country` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '国家',
  `headimgurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `unionid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '微信全平台村民用户唯一标识',
  `updatetime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  `uo_id` bigint(20) UNSIGNED NOT NULL COMMENT '村民用户oauthID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for fa_vilager_relation
-- ----------------------------
DROP TABLE IF EXISTS `fa_vilager_relation`;
CREATE TABLE `fa_vilager_relation`  (
  `id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '村民关系id',
  `v_id` int(8) UNSIGNED NOT NULL COMMENT '关联人ID',
  `be_v_id` int(8) UNSIGNED NOT NULL COMMENT '被关联人ID',
  `relation` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '关联关系',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '村民关系表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for fa_wechat
-- ----------------------------
DROP TABLE IF EXISTS `fa_wechat`;
CREATE TABLE `fa_wechat`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '公众号名称',
  `img_id` int(11) NULL DEFAULT NULL COMMENT '图片',
  `appid` varchar(80) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `secret` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `service_url` varchar(150) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'url地址',
  `token` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `status` int(1) NULL DEFAULT 1 COMMENT '状态',
  `create_time` int(11) NULL DEFAULT NULL,
  `update_time` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '微信设置' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fa_wechat
-- ----------------------------
INSERT INTO `fa_wechat` VALUES (1, '噢斗k', 64, 'wx5509b7ccbff10e93', '88e416e3df23d7ed80d48dd8a515b6b0', 'http://qiyezhan.ainqs.com/api/wechat/valid', 'fan982674', 1, NULL, 1569719766);

-- ----------------------------
-- Table structure for fa_wechat_menu
-- ----------------------------
DROP TABLE IF EXISTS `fa_wechat_menu`;
CREATE TABLE `fa_wechat_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) NULL DEFAULT 0,
  `pid` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '父级菜单',
  `orderby` int(11) NULL DEFAULT 0 COMMENT '排序',
  `status` int(1) NULL DEFAULT 1 COMMENT '状态',
  `create_time` int(11) NULL DEFAULT NULL,
  `update_time` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '微信菜单' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fa_wechat_menu
-- ----------------------------
INSERT INTO `fa_wechat_menu` VALUES (1, 1, '0', 0, 1, 1569048155, 1569743547);
INSERT INTO `fa_wechat_menu` VALUES (2, 2, '0', 0, 1, 1569049634, 1569049634);
INSERT INTO `fa_wechat_menu` VALUES (3, 4, '0', 0, 1, 1569392212, 1569743379);
INSERT INTO `fa_wechat_menu` VALUES (4, 2, '1', 0, 1, 1569392212, 1569392212);
INSERT INTO `fa_wechat_menu` VALUES (9, 4, '3', 0, 1, 1569746511, 1569746511);
INSERT INTO `fa_wechat_menu` VALUES (10, 2, '3', 0, 1, 1569746525, 1569746525);
INSERT INTO `fa_wechat_menu` VALUES (11, 1, '3', 0, 1, 1569746531, 1569746531);

SET FOREIGN_KEY_CHECKS = 1;

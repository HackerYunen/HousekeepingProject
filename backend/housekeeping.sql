/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 80015
 Source Host           : 127.0.0.1:3306
 Source Schema         : housekeeping

 Target Server Type    : MySQL
 Target Server Version : 80015
 File Encoding         : 65001

 Date: 06/07/2020 20:10:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 61 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add company', 7, 'add_company');
INSERT INTO `auth_permission` VALUES (26, 'Can change company', 7, 'change_company');
INSERT INTO `auth_permission` VALUES (27, 'Can delete company', 7, 'delete_company');
INSERT INTO `auth_permission` VALUES (28, 'Can view company', 7, 'view_company');
INSERT INTO `auth_permission` VALUES (29, 'Can add order', 8, 'add_order');
INSERT INTO `auth_permission` VALUES (30, 'Can change order', 8, 'change_order');
INSERT INTO `auth_permission` VALUES (31, 'Can delete order', 8, 'delete_order');
INSERT INTO `auth_permission` VALUES (32, 'Can view order', 8, 'view_order');
INSERT INTO `auth_permission` VALUES (33, 'Can add score', 9, 'add_score');
INSERT INTO `auth_permission` VALUES (34, 'Can change score', 9, 'change_score');
INSERT INTO `auth_permission` VALUES (35, 'Can delete score', 9, 'delete_score');
INSERT INTO `auth_permission` VALUES (36, 'Can view score', 9, 'view_score');
INSERT INTO `auth_permission` VALUES (37, 'Can add category', 10, 'add_category');
INSERT INTO `auth_permission` VALUES (38, 'Can change category', 10, 'change_category');
INSERT INTO `auth_permission` VALUES (39, 'Can delete category', 10, 'delete_category');
INSERT INTO `auth_permission` VALUES (40, 'Can view category', 10, 'view_category');
INSERT INTO `auth_permission` VALUES (41, 'Can add sub category', 11, 'add_subcategory');
INSERT INTO `auth_permission` VALUES (42, 'Can change sub category', 11, 'change_subcategory');
INSERT INTO `auth_permission` VALUES (43, 'Can delete sub category', 11, 'delete_subcategory');
INSERT INTO `auth_permission` VALUES (44, 'Can view sub category', 11, 'view_subcategory');
INSERT INTO `auth_permission` VALUES (45, 'Can add service', 12, 'add_service');
INSERT INTO `auth_permission` VALUES (46, 'Can change service', 12, 'change_service');
INSERT INTO `auth_permission` VALUES (47, 'Can delete service', 12, 'delete_service');
INSERT INTO `auth_permission` VALUES (48, 'Can view service', 12, 'view_service');
INSERT INTO `auth_permission` VALUES (49, 'Can add collections', 13, 'add_collections');
INSERT INTO `auth_permission` VALUES (50, 'Can change collections', 13, 'change_collections');
INSERT INTO `auth_permission` VALUES (51, 'Can delete collections', 13, 'delete_collections');
INSERT INTO `auth_permission` VALUES (52, 'Can view collections', 13, 'view_collections');
INSERT INTO `auth_permission` VALUES (53, 'Can add user', 14, 'add_user');
INSERT INTO `auth_permission` VALUES (54, 'Can change user', 14, 'change_user');
INSERT INTO `auth_permission` VALUES (55, 'Can delete user', 14, 'delete_user');
INSERT INTO `auth_permission` VALUES (56, 'Can view user', 14, 'view_user');
INSERT INTO `auth_permission` VALUES (57, 'Can add with draw', 15, 'add_withdraw');
INSERT INTO `auth_permission` VALUES (58, 'Can change with draw', 15, 'change_withdraw');
INSERT INTO `auth_permission` VALUES (59, 'Can delete with draw', 15, 'delete_withdraw');
INSERT INTO `auth_permission` VALUES (60, 'Can view with draw', 15, 'view_withdraw');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for company_company
-- ----------------------------
DROP TABLE IF EXISTS `company_company`;
CREATE TABLE `company_company`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `qualification` int(11) NOT NULL,
  `money` double NOT NULL,
  `createAt` datetime(6) NULL,
  `modifiedAt` datetime(6) NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (7, 'company', 'company');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (8, 'order', 'order');
INSERT INTO `django_content_type` VALUES (9, 'score', 'score');
INSERT INTO `django_content_type` VALUES (10, 'service', 'category');
INSERT INTO `django_content_type` VALUES (13, 'service', 'collections');
INSERT INTO `django_content_type` VALUES (12, 'service', 'service');
INSERT INTO `django_content_type` VALUES (11, 'service', 'subcategory');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (14, 'user', 'user');
INSERT INTO `django_content_type` VALUES (15, 'withdraw', 'withdraw');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2020-07-06 10:20:59.523771');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2020-07-06 10:21:00.609802');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2020-07-06 10:21:03.972933');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2020-07-06 10:21:04.630902');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2020-07-06 10:21:04.706905');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2020-07-06 10:21:05.304903');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2020-07-06 10:21:05.724934');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2020-07-06 10:21:06.301026');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2020-07-06 10:21:06.316059');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2020-07-06 10:21:06.503028');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2020-07-06 10:21:06.523026');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2020-07-06 10:21:06.556059');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2020-07-06 10:21:07.073226');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2020-07-06 10:21:07.325156');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0010_alter_group_name_max_length', '2020-07-06 10:21:07.795156');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0011_update_proxy_permissions', '2020-07-06 10:21:07.811160');
INSERT INTO `django_migrations` VALUES (17, 'company', '0001_initial', '2020-07-06 10:21:07.899154');
INSERT INTO `django_migrations` VALUES (18, 'user', '0001_initial', '2020-07-06 10:21:08.021156');
INSERT INTO `django_migrations` VALUES (19, 'service', '0001_initial', '2020-07-06 10:21:09.269155');
INSERT INTO `django_migrations` VALUES (20, 'order', '0001_initial', '2020-07-06 10:21:12.276455');
INSERT INTO `django_migrations` VALUES (21, 'score', '0001_initial', '2020-07-06 10:21:13.530560');
INSERT INTO `django_migrations` VALUES (22, 'sessions', '0001_initial', '2020-07-06 10:21:14.594678');
INSERT INTO `django_migrations` VALUES (23, 'withdraw', '0001_initial', '2020-07-06 10:21:14.951680');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for order_order
-- ----------------------------
DROP TABLE IF EXISTS `order_order`;
CREATE TABLE `order_order`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `startTime` datetime(6) NULL,
  `endTime` datetime(6) NULL,
  `orderStatus` int(11) NOT NULL,
  `userDelete` tinyint(1) NOT NULL,
  `createAt` datetime(6) NULL,
  `modifiedAt` datetime(6) NULL,
  `customer_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `order_order_customer_id_5bbbd957_fk_user_user_id`(`customer_id`) USING BTREE,
  INDEX `order_order_service_id_06032452_fk_service_service_id`(`service_id`) USING BTREE,
  CONSTRAINT `order_order_customer_id_5bbbd957_fk_user_user_id` FOREIGN KEY (`customer_id`) REFERENCES `user_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `order_order_service_id_06032452_fk_service_service_id` FOREIGN KEY (`service_id`) REFERENCES `service_service` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for score_score
-- ----------------------------
DROP TABLE IF EXISTS `score_score`;
CREATE TABLE `score_score`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timeScore` int(11) NOT NULL,
  `serviceScore` int(11) NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `images` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createAt` datetime(6) NULL,
  `modifiedAt` datetime(6) NULL,
  `customer_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `score_score_customer_id_168c3c92_fk_user_user_id`(`customer_id`) USING BTREE,
  INDEX `score_score_service_id_62560868_fk_service_service_id`(`service_id`) USING BTREE,
  CONSTRAINT `score_score_customer_id_168c3c92_fk_user_user_id` FOREIGN KEY (`customer_id`) REFERENCES `user_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `score_score_service_id_62560868_fk_service_service_id` FOREIGN KEY (`service_id`) REFERENCES `service_service` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for service_category
-- ----------------------------
DROP TABLE IF EXISTS `service_category`;
CREATE TABLE `service_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for service_collections
-- ----------------------------
DROP TABLE IF EXISTS `service_collections`;
CREATE TABLE `service_collections`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createAt` datetime(6) NULL,
  `modifiedAt` datetime(6) NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `service_collections_user_id_ff688055_fk_user_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `service_collections_user_id_ff688055_fk_user_user_id` FOREIGN KEY (`user_id`) REFERENCES `user_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for service_collections_services
-- ----------------------------
DROP TABLE IF EXISTS `service_collections_services`;
CREATE TABLE `service_collections_services`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `collections_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `service_collections_serv_collections_id_service_i_34f3047b_uniq`(`collections_id`, `service_id`) USING BTREE,
  INDEX `service_collections__service_id_f74e2bb8_fk_service_s`(`service_id`) USING BTREE,
  CONSTRAINT `service_collections__collections_id_0b8ee91b_fk_service_c` FOREIGN KEY (`collections_id`) REFERENCES `service_collections` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `service_collections__service_id_f74e2bb8_fk_service_s` FOREIGN KEY (`service_id`) REFERENCES `service_service` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for service_service
-- ----------------------------
DROP TABLE IF EXISTS `service_service`;
CREATE TABLE `service_service`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sex` int(11) NOT NULL,
  `unService` tinyint(1) NOT NULL,
  `city` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `hourlyWage` int(11) NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `workTimeStart` datetime(6) NULL,
  `workTimeEnd` datetime(6) NULL,
  `createAt` datetime(6) NULL,
  `modifiedAt` datetime(6) NULL,
  `company_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `service_service_company_id_ede54f09_fk_company_company_id`(`company_id`) USING BTREE,
  CONSTRAINT `service_service_company_id_ede54f09_fk_company_company_id` FOREIGN KEY (`company_id`) REFERENCES `company_company` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for service_service_subcategory
-- ----------------------------
DROP TABLE IF EXISTS `service_service_subcategory`;
CREATE TABLE `service_service_subcategory`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `service_service_subCateg_service_id_subcategory_i_6b00bdb2_uniq`(`service_id`, `subcategory_id`) USING BTREE,
  INDEX `service_service_subC_subcategory_id_ee8a917a_fk_service_s`(`subcategory_id`) USING BTREE,
  CONSTRAINT `service_service_subC_service_id_f0f91011_fk_service_s` FOREIGN KEY (`service_id`) REFERENCES `service_service` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `service_service_subC_subcategory_id_ee8a917a_fk_service_s` FOREIGN KEY (`subcategory_id`) REFERENCES `service_subcategory` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for service_subcategory
-- ----------------------------
DROP TABLE IF EXISTS `service_subcategory`;
CREATE TABLE `service_subcategory`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `service_subcategory_category_id_933ada07_fk_service_category_id`(`category_id`) USING BTREE,
  CONSTRAINT `service_subcategory_category_id_933ada07_fk_service_category_id` FOREIGN KEY (`category_id`) REFERENCES `service_category` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user_user
-- ----------------------------
DROP TABLE IF EXISTS `user_user`;
CREATE TABLE `user_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `salt` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `real_name` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sex` tinyint(1) NOT NULL,
  `phone` int(11) NOT NULL,
  `createAt` datetime(6) NULL,
  `modifiedAt` datetime(6) NULL,
  `company_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE,
  INDEX `user_user_company_id_dcac3c3f_fk_company_company_id`(`company_id`) USING BTREE,
  CONSTRAINT `user_user_company_id_dcac3c3f_fk_company_company_id` FOREIGN KEY (`company_id`) REFERENCES `company_company` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for withdraw_withdraw
-- ----------------------------
DROP TABLE IF EXISTS `withdraw_withdraw`;
CREATE TABLE `withdraw_withdraw`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `money` double NOT NULL,
  `method` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` int(11) NOT NULL,
  `createAt` datetime(6) NULL,
  `modifiedAt` datetime(6) NULL,
  `company_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `withdraw_withdraw_company_id_e5126e31_fk_company_company_id`(`company_id`) USING BTREE,
  CONSTRAINT `withdraw_withdraw_company_id_e5126e31_fk_company_company_id` FOREIGN KEY (`company_id`) REFERENCES `company_company` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;

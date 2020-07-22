/*
Navicat MySQL Data Transfer

Source Server         : my
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : db_book

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2020-07-21 22:22:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can view log entry', '1', 'view_logentry');
INSERT INTO `auth_permission` VALUES ('5', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('8', 'Can view permission', '2', 'view_permission');
INSERT INTO `auth_permission` VALUES ('9', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('11', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('12', 'Can view group', '3', 'view_group');
INSERT INTO `auth_permission` VALUES ('13', 'Can add user', '4', 'add_user');
INSERT INTO `auth_permission` VALUES ('14', 'Can change user', '4', 'change_user');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete user', '4', 'delete_user');
INSERT INTO `auth_permission` VALUES ('16', 'Can view user', '4', 'view_user');
INSERT INTO `auth_permission` VALUES ('17', 'Can add content type', '5', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('18', 'Can change content type', '5', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('19', 'Can delete content type', '5', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('20', 'Can view content type', '5', 'view_contenttype');
INSERT INTO `auth_permission` VALUES ('21', 'Can add session', '6', 'add_session');
INSERT INTO `auth_permission` VALUES ('22', 'Can change session', '6', 'change_session');
INSERT INTO `auth_permission` VALUES ('23', 'Can delete session', '6', 'delete_session');
INSERT INTO `auth_permission` VALUES ('24', 'Can view session', '6', 'view_session');
INSERT INTO `auth_permission` VALUES ('25', 'Can add 管理员', '7', 'add_admin');
INSERT INTO `auth_permission` VALUES ('26', 'Can change 管理员', '7', 'change_admin');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete 管理员', '7', 'delete_admin');
INSERT INTO `auth_permission` VALUES ('28', 'Can view 管理员', '7', 'view_admin');
INSERT INTO `auth_permission` VALUES ('29', 'Can add 图书类别', '8', 'add_booktype');
INSERT INTO `auth_permission` VALUES ('30', 'Can change 图书类别', '8', 'change_booktype');
INSERT INTO `auth_permission` VALUES ('31', 'Can delete 图书类别', '8', 'delete_booktype');
INSERT INTO `auth_permission` VALUES ('32', 'Can view 图书类别', '8', 'view_booktype');
INSERT INTO `auth_permission` VALUES ('33', 'Can add 图书信息', '9', 'add_book');
INSERT INTO `auth_permission` VALUES ('34', 'Can change 图书信息', '9', 'change_book');
INSERT INTO `auth_permission` VALUES ('35', 'Can delete 图书信息', '9', 'delete_book');
INSERT INTO `auth_permission` VALUES ('36', 'Can view 图书信息', '9', 'view_book');

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'BookType', '0001_initial', '2020-05-25 15:14:59');
INSERT INTO `django_migrations` VALUES ('2', 'Book', '0001_initial', '2020-05-25 15:14:59');
INSERT INTO `django_migrations` VALUES ('3', 'Book', '0002_auto_20190907_1447', '2020-05-25 15:14:59');
INSERT INTO `django_migrations` VALUES ('4', 'Book', '0003_auto_20190907_1450', '2020-05-25 15:14:59');
INSERT INTO `django_migrations` VALUES ('5', 'Book', '0004_auto_20190908_1625', '2020-05-25 15:14:59');
INSERT INTO `django_migrations` VALUES ('6', 'Index', '0001_initial', '2020-05-25 15:14:59');
INSERT INTO `django_migrations` VALUES ('7', 'contenttypes', '0001_initial', '2020-05-25 15:14:59');

-- ----------------------------
-- Table structure for t_admin
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_admin
-- ----------------------------
INSERT INTO `t_admin` VALUES ('root', '123456');

-- ----------------------------
-- Table structure for t_book
-- ----------------------------
DROP TABLE IF EXISTS `t_book`;
CREATE TABLE `t_book` (
  `barcode` varchar(20) NOT NULL,
  `bookName` varchar(20) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `count` int(11) NOT NULL,
  `publishDate` varchar(20) NOT NULL,
  `publish` varchar(20) NOT NULL,
  `bookPhoto` varchar(80) NOT NULL,
  `bookDesc` longtext NOT NULL,
  `bookFile` varchar(100) NOT NULL,
  `bookTypeObj` int(11) NOT NULL,
  PRIMARY KEY (`barcode`),
  KEY `t_Book_bookTypeObj_7d2d8a28_fk_t_BookType_bookTypeId` (`bookTypeObj`),
  CONSTRAINT `t_Book_bookTypeObj_7d2d8a28_fk_t_BookType_bookTypeId` FOREIGN KEY (`bookTypeObj`) REFERENCES `t_booktype` (`bookTypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_book
-- ----------------------------
INSERT INTO `t_book` VALUES ('1001', 'Python数据处理', '50.90', '4', '2020-05-04', '湖南教育出版社', 'img/Python数据处理.png', '', 'file/NoFile.jpg', '5001');
INSERT INTO `t_book` VALUES ('1002', 'Python数据分析实战_2016版', '100.80', '4', '2020-05-20', '浙江教育出版社', 'img/Python数据分析实战_2016版.png', '', 'file/NoFile.jpg', '5001');
INSERT INTO `t_book` VALUES ('1003', 'JAVA大大全', '46.60', '78', '2020-05-21', '湖南教育出版社', 'img/0V}$YP%L3D~)$}{(1O)__$3.JPG', '', 'file/NoFile.jpg', '5003');

-- ----------------------------
-- Table structure for t_booktype
-- ----------------------------
DROP TABLE IF EXISTS `t_booktype`;
CREATE TABLE `t_booktype` (
  `bookTypeId` int(11) NOT NULL AUTO_INCREMENT,
  `bookTypeName` varchar(40) NOT NULL,
  `days` int(11) NOT NULL,
  PRIMARY KEY (`bookTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=5006 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_booktype
-- ----------------------------
INSERT INTO `t_booktype` VALUES ('5001', 'Python', '20');
INSERT INTO `t_booktype` VALUES ('5002', 'C语言', '10');
INSERT INTO `t_booktype` VALUES ('5003', 'JAVA', '10');
INSERT INTO `t_booktype` VALUES ('5004', '计算机组成原理', '50');
INSERT INTO `t_booktype` VALUES ('5005', '操作系统', '30');

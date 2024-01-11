/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  UNIQUE KEY `pk_auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` bigint NOT NULL,
  `permission_id` bigint NOT NULL,
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  UNIQUE KEY `pk_auth_group_permissions` (`id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id4c5c92e` (`permission_id`),
  CONSTRAINT `fk_auth_group_permissions_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `fk_auth_group_permissions_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `content_type_id` bigint NOT NULL,
  `codename` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  UNIQUE KEY `pk_auth_permission` (`id`),
  KEY `auth_permission_content_type_idf476e4b` (`content_type_id`),
  CONSTRAINT `fk_auth_permission_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `auth_permission` (`id`, `content_type_id`, `codename`, `name`) VALUES
	(1, 1, 'add_logentry', 'Can add log entry'),
	(2, 1, 'change_logentry', '* TRIAL * TRIAL * TR'),
	(3, 1, 'delete_logentry', '* TRIAL * TRIAL * TR'),
	(4, 1, 'view_logentry', 'Can view log entry'),
	(5, 2, 'add_permission', 'Can add permission'),
	(6, 2, 'change_permission', '* TRIAL * TRIAL * TRI'),
	(7, 2, 'delete_permission', 'Can delete permission'),
	(8, 2, 'view_permission', 'Can view permission'),
	(9, 3, 'add_group', 'Can add group'),
	(10, 3, 'change_group', 'Can change group'),
	(11, 3, 'delete_group', 'Can delete group'),
	(12, 3, 'view_group', '* TRIAL * TRIA'),
	(13, 4, 'add_user', 'Can add user'),
	(14, 4, 'change_user', '* TRIAL * TRIAL'),
	(15, 4, 'delete_user', 'Can delete user'),
	(16, 4, 'view_user', 'Can view user'),
	(17, 5, 'add_contenttype', 'Can add content type'),
	(18, 5, 'change_contenttype', 'Can change content type'),
	(19, 5, 'delete_contenttype', '* TRIAL * TRIAL * TRIAL'),
	(20, 5, 'view_contenttype', '* TRIAL * TRIAL * TRI'),
	(21, 6, 'add_session', 'Can add session'),
	(22, 6, 'change_session', 'Can change session'),
	(23, 6, 'delete_session', 'Can delete session'),
	(24, 6, 'view_session', 'Can view session'),
	(25, 7, 'add_contact', 'Can add contact'),
	(26, 7, 'change_contact', '* TRIAL * TRIAL * '),
	(27, 7, 'delete_contact', 'Can delete contact'),
	(28, 7, 'view_contact', 'Can view contact'),
	(29, 8, 'add_about', '* TRIAL * TRI'),
	(30, 8, 'change_about', 'Can change about'),
	(31, 8, 'delete_about', 'Can delete about'),
	(32, 8, 'view_about', 'Can view about'),
	(33, 9, 'add_services', '* TRIAL * TRIAL '),
	(34, 9, 'change_services', '* TRIAL * TRIAL * T'),
	(35, 9, 'delete_services', 'Can delete services'),
	(36, 9, 'view_services', 'Can view services'),
	(37, 10, 'add_slider', '* TRIAL * TRIA'),
	(38, 10, 'change_slider', '* TRIAL * TRIAL *'),
	(39, 10, 'delete_slider', 'Can delete slider'),
	(40, 10, 'view_slider', '* TRIAL * TRIAL'),
	(41, 11, 'add_blog', 'Can add blog'),
	(42, 11, 'change_blog', 'Can change blog'),
	(43, 11, 'delete_blog', '* TRIAL * TRIAL'),
	(44, 11, 'view_blog', 'Can view blog'),
	(45, 12, 'add_category', '* TRIAL * TRIAL '),
	(46, 12, 'change_category', 'Can change category'),
	(47, 12, 'delete_category', 'Can delete category'),
	(48, 12, 'view_category', 'Can view category'),
	(49, 13, 'add_settings', 'Can add settings'),
	(50, 13, 'change_settings', 'Can change settings'),
	(51, 13, 'delete_settings', 'Can delete settings'),
	(52, 13, 'view_settings', 'Can view settings'),
	(53, 14, 'add_tag', 'Can add tag'),
	(54, 14, 'change_tag', 'Can change tag'),
	(55, 14, 'delete_tag', '* TRIAL * TRIA'),
	(56, 14, 'view_tag', 'Can view tag'),
	(57, 15, 'add_taggeditem', 'Can add tagged item'),
	(58, 15, 'change_taggeditem', '* TRIAL * TRIAL * TRIA'),
	(59, 15, 'delete_taggeditem', 'Can delete tagged item'),
	(60, 15, 'view_taggeditem', 'Can view tagged item'),
	(61, 16, 'add_pages', 'Can add pages'),
	(62, 16, 'change_pages', '* TRIAL * TRIAL '),
	(63, 16, 'delete_pages', 'Can delete pages'),
	(64, 16, 'view_pages', '* TRIAL * TRIA'),
	(65, 17, 'add_contact', 'Can add contact'),
	(66, 17, 'change_contact', 'Can change contact'),
	(67, 17, 'delete_contact', 'Can delete contact'),
	(68, 17, 'view_contact', 'Can view contact'),
	(69, 18, 'add_about', 'Can add about'),
	(70, 18, 'change_about', 'Can change about'),
	(71, 18, 'delete_about', 'Can delete about'),
	(72, 18, 'view_about', 'Can view about'),
	(73, 19, 'add_category', 'Can add category'),
	(74, 19, 'change_category', 'Can change category'),
	(75, 19, 'delete_category', 'Can delete category'),
	(76, 19, 'view_category', 'Can view category'),
	(77, 20, 'add_pages', 'Can add pages'),
	(78, 20, 'change_pages', 'Can change pages'),
	(79, 20, 'delete_pages', 'Can delete pages'),
	(80, 20, 'view_pages', 'Can view pages'),
	(81, 21, 'add_services', 'Can add services'),
	(82, 21, 'change_services', 'Can change services'),
	(83, 21, 'delete_services', 'Can delete services'),
	(84, 21, 'view_services', 'Can view services'),
	(85, 22, 'add_settings', 'Can add settings'),
	(86, 22, 'change_settings', 'Can change settings'),
	(87, 22, 'delete_settings', 'Can delete settings'),
	(88, 22, 'view_settings', 'Can view settings'),
	(89, 23, 'add_slider', 'Can add slider'),
	(90, 23, 'change_slider', 'Can change slider'),
	(91, 23, 'delete_slider', 'Can delete slider'),
	(92, 23, 'view_slider', 'Can view slider'),
	(93, 24, 'add_blog', 'Can add blog'),
	(94, 24, 'change_blog', 'Can change blog'),
	(95, 24, 'delete_blog', 'Can delete blog'),
	(96, 24, 'view_blog', 'Can view blog'),
	(97, 25, 'add_tag', 'Can add tag'),
	(98, 25, 'change_tag', 'Can change tag'),
	(99, 25, 'delete_tag', 'Can delete tag'),
	(100, 25, 'view_tag', 'Can view tag'),
	(101, 26, 'add_taggeditem', 'Can add tagged item'),
	(102, 26, 'change_taggeditem', 'Can change tagged item'),
	(103, 26, 'delete_taggeditem', 'Can delete tagged item'),
	(104, 26, 'view_taggeditem', 'Can view tagged item'),
	(105, 27, 'add_logentry', 'Can add log entry'),
	(106, 27, 'change_logentry', 'Can change log entry'),
	(107, 27, 'delete_logentry', 'Can delete log entry'),
	(108, 27, 'view_logentry', 'Can view log entry'),
	(109, 28, 'add_permission', 'Can add permission'),
	(110, 28, 'change_permission', 'Can change permission'),
	(111, 28, 'delete_permission', 'Can delete permission'),
	(112, 28, 'view_permission', 'Can view permission'),
	(113, 29, 'add_group', 'Can add group'),
	(114, 29, 'change_group', 'Can change group'),
	(115, 29, 'delete_group', 'Can delete group'),
	(116, 29, 'view_group', 'Can view group'),
	(117, 30, 'add_user', 'Can add user'),
	(118, 30, 'change_user', 'Can change user'),
	(119, 30, 'delete_user', 'Can delete user'),
	(120, 30, 'view_user', 'Can view user'),
	(121, 31, 'add_contenttype', 'Can add content type'),
	(122, 31, 'change_contenttype', 'Can change content type'),
	(123, 31, 'delete_contenttype', 'Can delete content type'),
	(124, 31, 'view_contenttype', 'Can view content type'),
	(125, 32, 'add_session', 'Can add session'),
	(126, 32, 'change_session', 'Can change session'),
	(127, 32, 'delete_session', 'Can delete session'),
	(128, 32, 'view_session', 'Can view session'),
	(129, 33, 'add_announcement', 'Can add announcement'),
	(130, 33, 'change_announcement', 'Can change announcement'),
	(131, 33, 'delete_announcement', 'Can delete announcement'),
	(132, 33, 'view_announcement', 'Can view announcement');

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `password` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `username` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `last_name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `is_staff` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `is_active` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date_joined` datetime NOT NULL,
  `first_name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  UNIQUE KEY `pk_auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `first_name`) VALUES
	(1, 'pbkdf2_sha256$720000$wd3vmPE6E5Uwicjrs8xCDP$e945v0yLYBEEX4r12Q5sBBgBpJGQuEKV4dyaU7hkO9k=', '2024-01-05 20:55:05', 'True', 'admin', '', 'info@emrahyuksel.com.tr', 'True', 'True', '2023-12-31 12:05:51', '');

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `group_id` bigint NOT NULL,
  UNIQUE KEY `auth_user_groups_user_id_group_id4350c0c_uniq` (`user_id`,`group_id`),
  UNIQUE KEY `pk_auth_user_groups` (`id`),
  KEY `auth_user_groups_group_id7559544` (`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  CONSTRAINT `fk_auth_user_groups_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `fk_auth_user_groups_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `permission_id` bigint NOT NULL,
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id4a6b632_uniq` (`user_id`,`permission_id`),
  UNIQUE KEY `pk_auth_user_user_permissions` (`id`),
  KEY `auth_user_user_permissions_permission_idfbb5f2c` (`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  CONSTRAINT `fk_auth_user_user_permissions_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `fk_auth_user_user_permissions_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `object_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `object_repr` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `action_flag` bigint NOT NULL,
  `change_message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` bigint DEFAULT NULL,
  `user_id` bigint NOT NULL,
  `action_time` datetime NOT NULL,
  UNIQUE KEY `pk_django_admin_log` (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`),
  CONSTRAINT `fk_django_admin_log_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `fk_django_admin_log_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `django_admin_log` (`id`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`, `action_time`) VALUES
	(54, '1', '* TRIAL', 3, '', 24, 1, '2024-01-05 21:29:10'),
	(55, '2', 'Blog 02', 3, '', 24, 1, '2024-01-05 21:29:14'),
	(56, '3', '* TRIAL', 3, '', 24, 1, '2024-01-05 21:29:19'),
	(57, '4', 'test', 3, '', 24, 1, '2024-01-05 21:30:14'),
	(58, '5', 'test', 1, '[{"added": {}}]', 24, 1, '2024-01-05 21:30:34'),
	(59, '5', 't1', 3, '', 25, 1, '2024-01-05 21:30:53'),
	(60, '1', 'Duyuru 01', 1, '[{"added": {}}]', 33, 1, '2024-01-05 22:20:01');

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app_label` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `model` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  UNIQUE KEY `pk_django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
	(17, 'tcore', 'contact'),
	(18, 'tcore', 'about'),
	(19, 'tcore', 'category'),
	(20, 'tcore', 'pages'),
	(21, 'tcore', 'services'),
	(22, 'tcore', 'settings'),
	(23, 'tcore', 'slider'),
	(24, 'tcore', 'blog'),
	(25, 'taggit', 'tag'),
	(26, 'taggit', 'taggeditem'),
	(27, 'admin', 'logentry'),
	(28, 'auth', 'permission'),
	(29, 'auth', 'group'),
	(30, 'auth', 'user'),
	(31, 'contenttypes', 'contenttype'),
	(32, 'sessions', 'session'),
	(33, 'tcore', 'announcement');

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `applied` datetime NOT NULL,
  UNIQUE KEY `pk_django_migrations` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
	(61, 'contenttypes', '0001_initial', '2024-01-05 22:00:52'),
	(62, 'auth', '0001_initial', '2024-01-05 22:00:52'),
	(63, 'admin', '0001_initial', '2024-01-05 22:00:52'),
	(64, 'admin', '0002_logentry_remove_auto_add', '2024-01-05 22:00:52'),
	(65, 'admin', '0003_logentry_add_action_flag_choices', '2024-01-05 22:00:52'),
	(66, 'contenttypes', '0002_remove_content_type_name', '2024-01-05 22:00:52'),
	(67, 'auth', '0002_alter_permission_name_max_length', '2024-01-05 22:00:52'),
	(68, 'auth', '0003_alter_user_email_max_length', '2024-01-05 22:00:52'),
	(69, 'auth', '0004_alter_user_username_opts', '2024-01-05 22:00:52'),
	(70, 'auth', '0005_alter_user_last_login_null', '2024-01-05 22:00:52'),
	(71, 'auth', '0006_require_contenttypes_0002', '2024-01-05 22:00:52'),
	(72, 'auth', '0007_alter_validators_add_error_messages', '2024-01-05 22:00:52'),
	(73, 'auth', '0008_alter_user_username_max_length', '2024-01-05 22:00:52'),
	(74, 'auth', '0009_alter_user_last_name_max_length', '2024-01-05 22:00:52'),
	(75, 'auth', '0010_alter_group_name_max_length', '2024-01-05 22:00:52'),
	(76, 'auth', '0011_update_proxy_permissions', '2024-01-05 22:00:52'),
	(77, 'auth', '0012_alter_user_first_name_max_length', '2024-01-05 22:00:52'),
	(78, 'sessions', '0001_initial', '2024-01-05 22:00:52'),
	(79, 'taggit', '0001_initial', '2024-01-05 22:00:52'),
	(80, 'taggit', '0002_auto_20150616_2121', '2024-01-05 22:00:52'),
	(81, 'taggit', '0003_taggeditem_add_unique_index', '2024-01-05 22:00:52'),
	(82, 'taggit', '0004_alter_taggeditem_content_type_alter_taggeditem_tag', '2024-01-05 22:00:52'),
	(83, 'taggit', '0005_auto_20220424_2025', '2024-01-05 22:00:52'),
	(84, 'taggit', '0006_rename_taggeditem_content_type_object_id_taggit_tagg_content_8fc721_idx', '2024-01-05 22:00:52'),
	(85, 'tcore', '0001_initial', '2024-01-05 22:00:52'),
	(86, 'tcore', '0002_about', '2024-01-05 22:00:52'),
	(87, 'tcore', '0003_about_content_en_about_content_tr_about_title_en_and_more', '2024-01-05 22:00:52'),
	(88, 'tcore', '0004_services', '2024-01-05 22:00:52'),
	(89, 'tcore', '0005_slider', '2024-01-05 22:00:52'),
	(90, 'tcore', '0006_services_slug', '2024-01-05 22:00:52'),
	(91, 'tcore', '0007_category_blog', '2024-01-05 22:00:52'),
	(92, 'tcore', '0008_settings_alter_blog_slug_alter_category_slug', '2024-01-05 22:00:52'),
	(93, 'tcore', '0009_alter_contact_full_name', '2024-01-05 22:00:52'),
	(94, 'tcore', '0010_pages_remove_blog_tags_en_remove_blog_tags_tr_and_more', '2024-01-05 22:00:52'),
	(95, 'tcore', '0011_announcement', '2024-01-05 22:15:59');

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `expire_date` datetime NOT NULL,
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
	('39px3rxa69aeux74fyle8agit8ifqc4y', '.eJxVjDsOwjAQBe_iGlm2Eo6TmDtbte4wBypDipEHeHSCmgfTPzXiLBtta0dV7SlMVZaHH63RDowW0H-Q7tNkua27pMKHdFHrTL65z5eTncv4MKvX5rp0CViAxaRWAsmUqwGLzSZC2xiiZHW8w4FB_c6IwmbwBsMIB-ILbi_QH7qzgv:1rK4h0:RZTP7ConQU2FKadQ83TecqjHKUK6bCBouKlcazwyNCU', '2024-01-14 22:54:02'),
	('emscg8u1b1fpunh1m46bq4tvfn330i5u', '.eJxVjDsOwjAQBe_iGlm2E_8o6TmDtbte4wBypDipEHeHSCmgfTPzXiLBtta0dV7SlMVZaHH63RDowW0H-Q7tNkua27pMKHdFHrTL65z5eTncv4MKvX5rp0CViAxaRWAsmUqwGLzSZC2xiiZHW8w4FB_c6IwmbwBsMIB-ILbi_QH7qzgv:1rLrDd:gjKqKEWGlvaM40uLeT7Rc0CNpOztwjmgFMWMHwshAzE', '2024-01-19 20:55:05');

CREATE TABLE IF NOT EXISTS `taggit_tag` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `slug` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  UNIQUE KEY `pk_taggit_tag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


CREATE TABLE IF NOT EXISTS `taggit_taggeditem` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `object_id` bigint NOT NULL,
  `content_type_id` bigint NOT NULL,
  `tag_id` bigint NOT NULL,
  UNIQUE KEY `pk_taggit_taggeditem` (`id`),
  KEY `taggit_tagg_contentfc721_idx` (`content_type_id`,`object_id`),
  KEY `taggit_taggeditem_content_type_id957a03c` (`content_type_id`),
  KEY `taggit_taggeditem_object_id_e2d7d1df` (`object_id`),
  KEY `taggit_taggeditem_tag_id_f4f5b767` (`tag_id`),
  CONSTRAINT `fk_taggit_taggeditem_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `fk_taggit_taggeditem_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `taggit_tag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


CREATE TABLE IF NOT EXISTS `tcore_about` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content_en` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `content_tr` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `title_en` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `title_tr` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  UNIQUE KEY `pk_tcore_about` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `tcore_about` (`id`, `title`, `content`, `content_en`, `content_tr`, `title_en`, `title_tr`) VALUES
	(2, 'Hakkımızda', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus lacinia dolor condimentum tellus vulputate, sed aliquet tortor semper. Curabitur gravida, enim vel varius maximus, dolor arcu tincidunt lectus, eget posuere sem purus ut purus. Integer condimentum, ante sit amet imperdiet tincidunt, ipsum dui egestas felis, a aliquet est elit quis tellus. Pellentesque tempor, leo eget lacinia gravida, erat est laoreet libero, vitae aliquet magna nunc at lectus. Aenean ultricies diam risus, sed luctus lectus fringilla id. Duis convallis convallis condimentum. Vestibulum gravida metus eu bibendum sollicitudin. Nullam dolor sapien, pulvinar a viverra non, auctor in nibh. Mauris vel est pulvinar, interdum lacus a, gravida quam. Integer ullamcorper, magna ac convallis rhoncus, dolor diam efficitur nunc, sed ultricies mauris libero at sem.</p>\r\n\r\n<p>Praesent faucibus lectus vitae ipsum congue, at eleifend odio sagittis. Maecenas dictum lacus orci, at facilisis lectus convallis at. Ut aliquam urna eget ultricies tincidunt. Cras tincidunt congue condimentum. Integer lacinia tortor pretium magna convallis sollicitudin. Proin quam nisi, mattis rhoncus imperdiet vitae, aliquam eu odio. Nam sed sapien et magna egestas sodales. Nam gravida elit felis, sit amet tincidunt lacus sollicitudin sit amet.</p>\r\n\r\n<p>Nulla facilisi. Pellentesque porta nunc quis tempus lacinia. Donec mi tellus, auctor sit amet elit sit amet, pharetra mattis mi. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam et lectus a purus condimentum pellentesque. Phasellus finibus, libero et ornare tempus, justo tellus ultricies metus, sit amet blandit ligula nunc aliquam felis. Quisque sit amet nulla ligula. Nullam id ipsum id mi elementum varius a maximus elit. Nunc vitae tellus sagittis, consequat tellus sit amet, feugiat eros.</p>\r\n\r\n<p>Sed fringilla nisl ornare enim dignissim, in pulvinar odio molestie. Nunc elementum augue dui, a posuere velit accumsan at. Nullam a semper sapien, semper mattis mauris. Proin vitae quam ac felis scelerisque feugiat. Suspendisse semper, tortor ut dignissim tempor, elit leo pretium purus, vitae pulvinar erat nisl a nisl. Aenean et condimentum nisl, sit amet imperdiet arcu. Donec lacus elit, molestie sit amet sem ut, volutpat commodo velit. Suspendisse porta at nisl at bibendum. Quisque purus nunc, molestie at cursus sit amet, sagittis in lectus. Sed fringilla eros vel massa facilisis pellentesque. In eget enim ante. Praesent vitae tortor elit. In hac habitasse platea dictumst. Integer eget viverra orci, sed laoreet mauris.</p>\r\n\r\n<p>Cras vitae egestas risus. Proin sit amet consectetur velit. Vivamus massa lacus, molestie a placerat ac, sagittis non mi. Vestibulum pulvinar, tortor placerat sollicitudin aliquam, urna tortor iaculis neque, eget sollicitudin enim magna at diam. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi sit amet eros quis ex eleifend ultricies. Nulla id ex ornare felis gravida vestibulum cursus eu nunc.</p>\r\n\r\n<p>Cras vitae egestas risus. Proin sit amet consectetur velit. Vivamus massa lacus, molestie a placerat ac, sagittis non mi. Vestibulum pulvinar, tortor placerat sollicitudin aliquam, urna tortor iaculis neque, eget sollicitudin enim magna at diam. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi sit amet eros quis ex eleifend ultricies. Nulla id ex ornare felis gravida vestibulum cursus eu nunc.</p>\r\n\r\n<p>Cras vitae egestas risus. Proin sit amet consectetur velit. Vivamus massa lacus, molestie a placerat ac, sagittis non mi. Vestibulum pulvinar, tortor placerat sollicitudin aliquam, urna tortor iaculis neque, eget sollicitudin enim magna at diam. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi sit amet eros quis ex eleifend ultricies. Nulla id ex ornare felis gravida vestibulum cursus eu nunc.</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus lacinia dolor condimentum tellus vulputate, sed aliquet tortor semper. Curabitur gravida, enim vel varius maximus, dolor arcu tincidunt lectus, eget posuere sem purus ut purus. Integer condimentum, ante sit amet imperdiet tincidunt, ipsum dui egestas felis, a aliquet est elit quis tellus. Pellentesque tempor, leo eget lacinia gravida, erat est laoreet libero, vitae aliquet magna nunc at lectus. Aenean ultricies diam risus, sed luctus lectus fringilla id. Duis convallis convallis condimentum. Vestibulum gravida metus eu bibendum sollicitudin. Nullam dolor sapien, pulvinar a viverra non, auctor in nibh. Mauris vel est pulvinar, interdum lacus a, gravida quam. Integer ullamcorper, magna ac convallis rhoncus, dolor diam efficitur nunc, sed ultricies mauris libero at sem.</p>\r\n\r\n<p>Praesent faucibus lectus vitae ipsum congue, at eleifend odio sagittis. Maecenas dictum lacus orci, at facilisis lectus convallis at. Ut aliquam urna eget ultricies tincidunt. Cras tincidunt congue condimentum. Integer lacinia tortor pretium magna convallis sollicitudin. Proin quam nisi, mattis rhoncus imperdiet vitae, aliquam eu odio. Nam sed sapien et magna egestas sodales. Nam gravida elit felis, sit amet tincidunt lacus sollicitudin sit amet.</p>\r\n\r\n<p>Nulla facilisi. Pellentesque porta nunc quis tempus lacinia. Donec mi tellus, auctor sit amet elit sit amet, pharetra mattis mi. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam et lectus a purus condimentum pellentesque. Phasellus finibus, libero et ornare tempus, justo tellus ultricies metus, sit amet blandit ligula nunc aliquam felis. Quisque sit amet nulla ligula. Nullam id ipsum id mi elementum varius a maximus elit. Nunc vitae tellus sagittis, consequat tellus sit amet, feugiat eros.</p>\r\n\r\n<p>Sed fringilla nisl ornare enim dignissim, in pulvinar odio molestie. Nunc elementum augue dui, a posuere velit accumsan at. Nullam a semper sapien, semper mattis mauris. Proin vitae quam ac felis scelerisque feugiat. Suspendisse semper, tortor ut dignissim tempor, elit leo pretium purus, vitae pulvinar erat nisl a nisl. Aenean et condimentum nisl, sit amet imperdiet arcu. Donec lacus elit, molestie sit amet sem ut, volutpat commodo velit. Suspendisse porta at nisl at bibendum. Quisque purus nunc, molestie at cursus sit amet, sagittis in lectus. Sed fringilla eros vel massa facilisis pellentesque. In eget enim ante. Praesent vitae tortor elit. In hac habitasse platea dictumst. Integer eget viverra orci, sed laoreet mauris.</p>\r\n\r\n<p>Cras vitae egestas risus. Proin sit amet consectetur velit. Vivamus massa lacus, molestie a placerat ac, sagittis non mi. Vestibulum pulvinar, tortor placerat sollicitudin aliquam, urna tortor iaculis neque, eget sollicitudin enim magna at diam. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi sit amet eros quis ex eleifend ultricies. Nulla id ex ornare felis gravida vestibulum cursus eu nunc.</p>\r\n\r\n<p>Cras vitae egestas risus. Proin sit amet consectetur velit. Vivamus massa lacus, molestie a placerat ac, sagittis non mi. Vestibulum pulvinar, tortor placerat sollicitudin aliquam, urna tortor iaculis neque, eget sollicitudin enim magna at diam. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi sit amet eros quis ex eleifend ultricies. Nulla id ex ornare felis gravida vestibulum cursus eu nunc.</p>\r\n\r\n<p>Cras vitae egestas risus. Proin sit amet consectetur velit. Vivamus massa lacus, molestie a placerat ac, sagittis non mi. Vestibulum pulvinar, tortor placerat sollicitudin aliquam, urna tortor iaculis neque, eget sollicitudin enim magna at diam. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi sit amet eros quis ex eleifend ultricies. Nulla id ex ornare felis gravida vestibulum cursus eu nunc.</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus lacinia dolor condimentum tellus vulputate, sed aliquet tortor semper. Curabitur gravida, enim vel varius maximus, dolor arcu tincidunt lectus, eget posuere sem purus ut purus. Integer condimentum, ante sit amet imperdiet tincidunt, ipsum dui egestas felis, a aliquet est elit quis tellus. Pellentesque tempor, leo eget lacinia gravida, erat est laoreet libero, vitae aliquet magna nunc at lectus. Aenean ultricies diam risus, sed luctus lectus fringilla id. Duis convallis convallis condimentum. Vestibulum gravida metus eu bibendum sollicitudin. Nullam dolor sapien, pulvinar a viverra non, auctor in nibh. Mauris vel est pulvinar, interdum lacus a, gravida quam. Integer ullamcorper, magna ac convallis rhoncus, dolor diam efficitur nunc, sed ultricies mauris libero at sem.</p>\r\n\r\n<p>Praesent faucibus lectus vitae ipsum congue, at eleifend odio sagittis. Maecenas dictum lacus orci, at facilisis lectus convallis at. Ut aliquam urna eget ultricies tincidunt. Cras tincidunt congue condimentum. Integer lacinia tortor pretium magna convallis sollicitudin. Proin quam nisi, mattis rhoncus imperdiet vitae, aliquam eu odio. Nam sed sapien et magna egestas sodales. Nam gravida elit felis, sit amet tincidunt lacus sollicitudin sit amet.</p>\r\n\r\n<p>Nulla facilisi. Pellentesque porta nunc quis tempus lacinia. Donec mi tellus, auctor sit amet elit sit amet, pharetra mattis mi. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam et lectus a purus condimentum pellentesque. Phasellus finibus, libero et ornare tempus, justo tellus ultricies metus, sit amet blandit ligula nunc aliquam felis. Quisque sit amet nulla ligula. Nullam id ipsum id mi elementum varius a maximus elit. Nunc vitae tellus sagittis, consequat tellus sit amet, feugiat eros.</p>\r\n\r\n<p>Sed fringilla nisl ornare enim dignissim, in pulvinar odio molestie. Nunc elementum augue dui, a posuere velit accumsan at. Nullam a semper sapien, semper mattis mauris. Proin vitae quam ac felis scelerisque feugiat. Suspendisse semper, tortor ut dignissim tempor, elit leo pretium purus, vitae pulvinar erat nisl a nisl. Aenean et condimentum nisl, sit amet imperdiet arcu. Donec lacus elit, molestie sit amet sem ut, volutpat commodo velit. Suspendisse porta at nisl at bibendum. Quisque purus nunc, molestie at cursus sit amet, sagittis in lectus. Sed fringilla eros vel massa facilisis pellentesque. In eget enim ante. Praesent vitae tortor elit. In hac habitasse platea dictumst. Integer eget viverra orci, sed laoreet mauris.</p>\r\n\r\n<p>Cras vitae egestas risus. Proin sit amet consectetur velit. Vivamus massa lacus, molestie a placerat ac, sagittis non mi. Vestibulum pulvinar, tortor placerat sollicitudin aliquam, urna tortor iaculis neque, eget sollicitudin enim magna at diam. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi sit amet eros quis ex eleifend ultricies. Nulla id ex ornare felis gravida vestibulum cursus eu nunc.</p>\r\n\r\n<p>Cras vitae egestas risus. Proin sit amet consectetur velit. Vivamus massa lacus, molestie a placerat ac, sagittis non mi. Vestibulum pulvinar, tortor placerat sollicitudin aliquam, urna tortor iaculis neque, eget sollicitudin enim magna at diam. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi sit amet eros quis ex eleifend ultricies. Nulla id ex ornare felis gravida vestibulum cursus eu nunc.</p>\r\n\r\n<p>Cras vitae egestas risus. Proin sit amet consectetur velit. Vivamus massa lacus, molestie a placerat ac, sagittis non mi. Vestibulum pulvinar, tortor placerat sollicitudin aliquam, urna tortor iaculis neque, eget sollicitudin enim magna at diam. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi sit amet eros quis ex eleifend ultricies. Nulla id ex ornare felis gravida vestibulum cursus eu nunc.</p>', 'Abouts', 'Hakkımızda');

CREATE TABLE IF NOT EXISTS `tcore_announcement` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `title_tr` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `title_en` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `content_tr` longtext COLLATE utf8mb4_general_ci,
  `content_en` longtext COLLATE utf8mb4_general_ci,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `tcore_announcement` (`id`, `title`, `title_tr`, `title_en`, `content`, `content_tr`, `content_en`, `created_at`, `updated_at`) VALUES
	(1, 'Duyuru 01', 'Duyuru 01', 'Announcement 01', 'Duyuru 01', 'Duyuru 01', 'Announcement 01', '2024-01-05 22:20:00.778391', '2024-01-05 22:20:00.778391');

CREATE TABLE IF NOT EXISTS `tcore_blog` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `title_tr` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `title_en` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `image` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content_tr` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `content_en` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `pub_date` datetime NOT NULL,
  `views` bigint NOT NULL,
  `slug` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `category_id` bigint NOT NULL,
  UNIQUE KEY `pk_tcore_blog` (`id`),
  KEY `tcore_blog_category_idad26b39` (`category_id`),
  CONSTRAINT `fk_tcore_blog_category_id` FOREIGN KEY (`category_id`) REFERENCES `tcore_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `tcore_blog` (`id`, `title`, `title_tr`, `title_en`, `image`, `content`, `content_tr`, `content_en`, `pub_date`, `views`, `slug`, `category_id`) VALUES
	(1, 'Blog 01', 'Blog 01', 'Blog 01', 'blogs/600x300.png', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur vitae ante dictum, sagittis lacus ut, convallis leo. Integer fermentum vel risus maximus sagittis. Nulla id augue sit amet eros auctor volutpat. Ut finibus massa id tortor vulputate tincidunt. Cras bibendum justo at neque interdum imperdiet. Sed elementum lorem et sem pulvinar, vel varius odio scelerisque. Fusce ultrices augue ante, a semper libero facilisis sed.</p>\r\n\r\n<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent eu mi sodales, bibendum arcu nec, ullamcorper leo. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam consequat aliquet ex, sit amet gravida metus porttitor a. Praesent eu scelerisque ante, in volutpat nisi. Praesent vulputate quis enim non pellentesque. Nulla a ex volutpat turpis euismod lacinia. Cras a elit eu erat posuere commodo eu vel est. Nullam sagittis, lacus nec maximus fringilla, erat diam ultricies ligula, ac bibendum eros quam ut leo. Duis rutrum efficitur risus at tincidunt. Duis lacinia metus at nulla vulputate euismod. Vestibulum mollis fermentum dui. Donec pellentesque suscipit auctor. Mauris vitae dolor neque. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>\r\n\r\n<p>Aliquam pharetra fringilla ante suscipit sagittis. Quisque gravida, lorem ut ullamcorper rutrum, ex nulla sagittis tortor, non tincidunt nisl massa nec velit. Vivamus id maximus ipsum, porta laoreet purus. Sed sit amet mauris vitae libero sodales convallis. Maecenas bibendum nunc vitae ipsum consequat iaculis ut vitae tortor. Aenean in dignissim mauris, id commodo nunc. Ut at ipsum ut lorem vestibulum feugiat. Ut at vehicula mauris, eu gravida diam. Proin quis ultrices libero. Praesent a maximus est. Aliquam vestibulum ex nunc, vel finibus ipsum tincidunt ut.</p>\r\n\r\n<p>Duis quis nunc sed sapien finibus tempus at ut arcu. Proin egestas ligula sed convallis venenatis. Fusce purus mi, varius et convallis sit amet, feugiat sed ex. Praesent interdum et purus nec gravida. Curabitur porta lacus non magna imperdiet, eu dignissim est congue. Fusce velit tellus, convallis id odio ac, tempor convallis magna. Praesent dolor enim, laoreet id vulputate eget, hendrerit in magna. Curabitur at imperdiet nisl, vitae auctor libero. Praesent rutrum ex odio, at ornare dolor laoreet in. Nam vel maximus elit, sed interdum dolor.</p>\r\n\r\n<p>Nunc eleifend orci vitae nisi elementum congue. Donec eget diam ac felis ullamcorper congue ac vulputate mi. Maecenas ac tempus leo. Etiam imperdiet sollicitudin ex, ac porta felis. Nunc lacinia mattis arcu in condimentum. Duis tempus quam quis libero rhoncus, eu consequat leo pellentesque. Interdum et malesuada fames ac ante ipsum primis in faucibus.</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur vitae ante dictum, sagittis lacus ut, convallis leo. Integer fermentum vel risus maximus sagittis. Nulla id augue sit amet eros auctor volutpat. Ut finibus massa id tortor vulputate tincidunt. Cras bibendum justo at neque interdum imperdiet. Sed elementum lorem et sem pulvinar, vel varius odio scelerisque. Fusce ultrices augue ante, a semper libero facilisis sed.</p>\r\n\r\n<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent eu mi sodales, bibendum arcu nec, ullamcorper leo. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam consequat aliquet ex, sit amet gravida metus porttitor a. Praesent eu scelerisque ante, in volutpat nisi. Praesent vulputate quis enim non pellentesque. Nulla a ex volutpat turpis euismod lacinia. Cras a elit eu erat posuere commodo eu vel est. Nullam sagittis, lacus nec maximus fringilla, erat diam ultricies ligula, ac bibendum eros quam ut leo. Duis rutrum efficitur risus at tincidunt. Duis lacinia metus at nulla vulputate euismod. Vestibulum mollis fermentum dui. Donec pellentesque suscipit auctor. Mauris vitae dolor neque. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>\r\n\r\n<p>Aliquam pharetra fringilla ante suscipit sagittis. Quisque gravida, lorem ut ullamcorper rutrum, ex nulla sagittis tortor, non tincidunt nisl massa nec velit. Vivamus id maximus ipsum, porta laoreet purus. Sed sit amet mauris vitae libero sodales convallis. Maecenas bibendum nunc vitae ipsum consequat iaculis ut vitae tortor. Aenean in dignissim mauris, id commodo nunc. Ut at ipsum ut lorem vestibulum feugiat. Ut at vehicula mauris, eu gravida diam. Proin quis ultrices libero. Praesent a maximus est. Aliquam vestibulum ex nunc, vel finibus ipsum tincidunt ut.</p>\r\n\r\n<p>Duis quis nunc sed sapien finibus tempus at ut arcu. Proin egestas ligula sed convallis venenatis. Fusce purus mi, varius et convallis sit amet, feugiat sed ex. Praesent interdum et purus nec gravida. Curabitur porta lacus non magna imperdiet, eu dignissim est congue. Fusce velit tellus, convallis id odio ac, tempor convallis magna. Praesent dolor enim, laoreet id vulputate eget, hendrerit in magna. Curabitur at imperdiet nisl, vitae auctor libero. Praesent rutrum ex odio, at ornare dolor laoreet in. Nam vel maximus elit, sed interdum dolor.</p>\r\n\r\n<p>Nunc eleifend orci vitae nisi elementum congue. Donec eget diam ac felis ullamcorper congue ac vulputate mi. Maecenas ac tempus leo. Etiam imperdiet sollicitudin ex, ac porta felis. Nunc lacinia mattis arcu in condimentum. Duis tempus quam quis libero rhoncus, eu consequat leo pellentesque. Interdum et malesuada fames ac ante ipsum primis in faucibus.</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur vitae ante dictum, sagittis lacus ut, convallis leo. Integer fermentum vel risus maximus sagittis. Nulla id augue sit amet eros auctor volutpat. Ut finibus massa id tortor vulputate tincidunt. Cras bibendum justo at neque interdum imperdiet. Sed elementum lorem et sem pulvinar, vel varius odio scelerisque. Fusce ultrices augue ante, a semper libero facilisis sed.</p>\r\n\r\n<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent eu mi sodales, bibendum arcu nec, ullamcorper leo. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam consequat aliquet ex, sit amet gravida metus porttitor a. Praesent eu scelerisque ante, in volutpat nisi. Praesent vulputate quis enim non pellentesque. Nulla a ex volutpat turpis euismod lacinia. Cras a elit eu erat posuere commodo eu vel est. Nullam sagittis, lacus nec maximus fringilla, erat diam ultricies ligula, ac bibendum eros quam ut leo. Duis rutrum efficitur risus at tincidunt. Duis lacinia metus at nulla vulputate euismod. Vestibulum mollis fermentum dui. Donec pellentesque suscipit auctor. Mauris vitae dolor neque. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>\r\n\r\n<p>Aliquam pharetra fringilla ante suscipit sagittis. Quisque gravida, lorem ut ullamcorper rutrum, ex nulla sagittis tortor, non tincidunt nisl massa nec velit. Vivamus id maximus ipsum, porta laoreet purus. Sed sit amet mauris vitae libero sodales convallis. Maecenas bibendum nunc vitae ipsum consequat iaculis ut vitae tortor. Aenean in dignissim mauris, id commodo nunc. Ut at ipsum ut lorem vestibulum feugiat. Ut at vehicula mauris, eu gravida diam. Proin quis ultrices libero. Praesent a maximus est. Aliquam vestibulum ex nunc, vel finibus ipsum tincidunt ut.</p>\r\n\r\n<p>Duis quis nunc sed sapien finibus tempus at ut arcu. Proin egestas ligula sed convallis venenatis. Fusce purus mi, varius et convallis sit amet, feugiat sed ex. Praesent interdum et purus nec gravida. Curabitur porta lacus non magna imperdiet, eu dignissim est congue. Fusce velit tellus, convallis id odio ac, tempor convallis magna. Praesent dolor enim, laoreet id vulputate eget, hendrerit in magna. Curabitur at imperdiet nisl, vitae auctor libero. Praesent rutrum ex odio, at ornare dolor laoreet in. Nam vel maximus elit, sed interdum dolor.</p>\r\n\r\n<p>Nunc eleifend orci vitae nisi elementum congue. Donec eget diam ac felis ullamcorper congue ac vulputate mi. Maecenas ac tempus leo. Etiam imperdiet sollicitudin ex, ac porta felis. Nunc lacinia mattis arcu in condimentum. Duis tempus quam quis libero rhoncus, eu consequat leo pellentesque. Interdum et malesuada fames ac ante ipsum primis in faucibus.</p>', '2024-01-01 18:39:36', 28, 'blog-01', 1),
	(2, 'Blog 02', 'Blog 02', 'Blog 02', 'blogs/600x300_hWlJJnG.png', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur vitae ante dictum, sagittis lacus ut, convallis leo. Integer fermentum vel risus maximus sagittis. Nulla id augue sit amet eros auctor volutpat. Ut finibus massa id tortor vulputate tincidunt. Cras bibendum justo at neque interdum imperdiet. Sed elementum lorem et sem pulvinar, vel varius odio scelerisque. Fusce ultrices augue ante, a semper libero facilisis sed.</p>\r\n\r\n<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent eu mi sodales, bibendum arcu nec, ullamcorper leo. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam consequat aliquet ex, sit amet gravida metus porttitor a. Praesent eu scelerisque ante, in volutpat nisi. Praesent vulputate quis enim non pellentesque. Nulla a ex volutpat turpis euismod lacinia. Cras a elit eu erat posuere commodo eu vel est. Nullam sagittis, lacus nec maximus fringilla, erat diam ultricies ligula, ac bibendum eros quam ut leo. Duis rutrum efficitur risus at tincidunt. Duis lacinia metus at nulla vulputate euismod. Vestibulum mollis fermentum dui. Donec pellentesque suscipit auctor. Mauris vitae dolor neque. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>\r\n\r\n<p>Aliquam pharetra fringilla ante suscipit sagittis. Quisque gravida, lorem ut ullamcorper rutrum, ex nulla sagittis tortor, non tincidunt nisl massa nec velit. Vivamus id maximus ipsum, porta laoreet purus. Sed sit amet mauris vitae libero sodales convallis. Maecenas bibendum nunc vitae ipsum consequat iaculis ut vitae tortor. Aenean in dignissim mauris, id commodo nunc. Ut at ipsum ut lorem vestibulum feugiat. Ut at vehicula mauris, eu gravida diam. Proin quis ultrices libero. Praesent a maximus est. Aliquam vestibulum ex nunc, vel finibus ipsum tincidunt ut.</p>\r\n\r\n<p>Duis quis nunc sed sapien finibus tempus at ut arcu. Proin egestas ligula sed convallis venenatis. Fusce purus mi, varius et convallis sit amet, feugiat sed ex. Praesent interdum et purus nec gravida. Curabitur porta lacus non magna imperdiet, eu dignissim est congue. Fusce velit tellus, convallis id odio ac, tempor convallis magna. Praesent dolor enim, laoreet id vulputate eget, hendrerit in magna. Curabitur at imperdiet nisl, vitae auctor libero. Praesent rutrum ex odio, at ornare dolor laoreet in. Nam vel maximus elit, sed interdum dolor.</p>\r\n\r\n<p>Nunc eleifend orci vitae nisi elementum congue. Donec eget diam ac felis ullamcorper congue ac vulputate mi. Maecenas ac tempus leo. Etiam imperdiet sollicitudin ex, ac porta felis. Nunc lacinia mattis arcu in condimentum. Duis tempus quam quis libero rhoncus, eu consequat leo pellentesque. Interdum et malesuada fames ac ante ipsum primis in faucibus.</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur vitae ante dictum, sagittis lacus ut, convallis leo. Integer fermentum vel risus maximus sagittis. Nulla id augue sit amet eros auctor volutpat. Ut finibus massa id tortor vulputate tincidunt. Cras bibendum justo at neque interdum imperdiet. Sed elementum lorem et sem pulvinar, vel varius odio scelerisque. Fusce ultrices augue ante, a semper libero facilisis sed.</p>\r\n\r\n<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent eu mi sodales, bibendum arcu nec, ullamcorper leo. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam consequat aliquet ex, sit amet gravida metus porttitor a. Praesent eu scelerisque ante, in volutpat nisi. Praesent vulputate quis enim non pellentesque. Nulla a ex volutpat turpis euismod lacinia. Cras a elit eu erat posuere commodo eu vel est. Nullam sagittis, lacus nec maximus fringilla, erat diam ultricies ligula, ac bibendum eros quam ut leo. Duis rutrum efficitur risus at tincidunt. Duis lacinia metus at nulla vulputate euismod. Vestibulum mollis fermentum dui. Donec pellentesque suscipit auctor. Mauris vitae dolor neque. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>\r\n\r\n<p>Aliquam pharetra fringilla ante suscipit sagittis. Quisque gravida, lorem ut ullamcorper rutrum, ex nulla sagittis tortor, non tincidunt nisl massa nec velit. Vivamus id maximus ipsum, porta laoreet purus. Sed sit amet mauris vitae libero sodales convallis. Maecenas bibendum nunc vitae ipsum consequat iaculis ut vitae tortor. Aenean in dignissim mauris, id commodo nunc. Ut at ipsum ut lorem vestibulum feugiat. Ut at vehicula mauris, eu gravida diam. Proin quis ultrices libero. Praesent a maximus est. Aliquam vestibulum ex nunc, vel finibus ipsum tincidunt ut.</p>\r\n\r\n<p>Duis quis nunc sed sapien finibus tempus at ut arcu. Proin egestas ligula sed convallis venenatis. Fusce purus mi, varius et convallis sit amet, feugiat sed ex. Praesent interdum et purus nec gravida. Curabitur porta lacus non magna imperdiet, eu dignissim est congue. Fusce velit tellus, convallis id odio ac, tempor convallis magna. Praesent dolor enim, laoreet id vulputate eget, hendrerit in magna. Curabitur at imperdiet nisl, vitae auctor libero. Praesent rutrum ex odio, at ornare dolor laoreet in. Nam vel maximus elit, sed interdum dolor.</p>\r\n\r\n<p>Nunc eleifend orci vitae nisi elementum congue. Donec eget diam ac felis ullamcorper congue ac vulputate mi. Maecenas ac tempus leo. Etiam imperdiet sollicitudin ex, ac porta felis. Nunc lacinia mattis arcu in condimentum. Duis tempus quam quis libero rhoncus, eu consequat leo pellentesque. Interdum et malesuada fames ac ante ipsum primis in faucibus.</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur vitae ante dictum, sagittis lacus ut, convallis leo. Integer fermentum vel risus maximus sagittis. Nulla id augue sit amet eros auctor volutpat. Ut finibus massa id tortor vulputate tincidunt. Cras bibendum justo at neque interdum imperdiet. Sed elementum lorem et sem pulvinar, vel varius odio scelerisque. Fusce ultrices augue ante, a semper libero facilisis sed.</p>\r\n\r\n<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent eu mi sodales, bibendum arcu nec, ullamcorper leo. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam consequat aliquet ex, sit amet gravida metus porttitor a. Praesent eu scelerisque ante, in volutpat nisi. Praesent vulputate quis enim non pellentesque. Nulla a ex volutpat turpis euismod lacinia. Cras a elit eu erat posuere commodo eu vel est. Nullam sagittis, lacus nec maximus fringilla, erat diam ultricies ligula, ac bibendum eros quam ut leo. Duis rutrum efficitur risus at tincidunt. Duis lacinia metus at nulla vulputate euismod. Vestibulum mollis fermentum dui. Donec pellentesque suscipit auctor. Mauris vitae dolor neque. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>\r\n\r\n<p>Aliquam pharetra fringilla ante suscipit sagittis. Quisque gravida, lorem ut ullamcorper rutrum, ex nulla sagittis tortor, non tincidunt nisl massa nec velit. Vivamus id maximus ipsum, porta laoreet purus. Sed sit amet mauris vitae libero sodales convallis. Maecenas bibendum nunc vitae ipsum consequat iaculis ut vitae tortor. Aenean in dignissim mauris, id commodo nunc. Ut at ipsum ut lorem vestibulum feugiat. Ut at vehicula mauris, eu gravida diam. Proin quis ultrices libero. Praesent a maximus est. Aliquam vestibulum ex nunc, vel finibus ipsum tincidunt ut.</p>\r\n\r\n<p>Duis quis nunc sed sapien finibus tempus at ut arcu. Proin egestas ligula sed convallis venenatis. Fusce purus mi, varius et convallis sit amet, feugiat sed ex. Praesent interdum et purus nec gravida. Curabitur porta lacus non magna imperdiet, eu dignissim est congue. Fusce velit tellus, convallis id odio ac, tempor convallis magna. Praesent dolor enim, laoreet id vulputate eget, hendrerit in magna. Curabitur at imperdiet nisl, vitae auctor libero. Praesent rutrum ex odio, at ornare dolor laoreet in. Nam vel maximus elit, sed interdum dolor.</p>\r\n\r\n<p>Nunc eleifend orci vitae nisi elementum congue. Donec eget diam ac felis ullamcorper congue ac vulputate mi. Maecenas ac tempus leo. Etiam imperdiet sollicitudin ex, ac porta felis. Nunc lacinia mattis arcu in condimentum. Duis tempus quam quis libero rhoncus, eu consequat leo pellentesque. Interdum et malesuada fames ac ante ipsum primis in faucibus.</p>', '2024-01-01 18:40:12', 2, 'blog-02', 2),
	(3, 'Blog 03', 'Blog 03', 'Blog 03', 'blogs/600x300_P6tekGy.png', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur vitae ante dictum, sagittis lacus ut, convallis leo. Integer fermentum vel risus maximus sagittis. Nulla id augue sit amet eros auctor volutpat. Ut finibus massa id tortor vulputate tincidunt. Cras bibendum justo at neque interdum imperdiet. Sed elementum lorem et sem pulvinar, vel varius odio scelerisque. Fusce ultrices augue ante, a semper libero facilisis sed.</p>\r\n\r\n<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent eu mi sodales, bibendum arcu nec, ullamcorper leo. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam consequat aliquet ex, sit amet gravida metus porttitor a. Praesent eu scelerisque ante, in volutpat nisi. Praesent vulputate quis enim non pellentesque. Nulla a ex volutpat turpis euismod lacinia. Cras a elit eu erat posuere commodo eu vel est. Nullam sagittis, lacus nec maximus fringilla, erat diam ultricies ligula, ac bibendum eros quam ut leo. Duis rutrum efficitur risus at tincidunt. Duis lacinia metus at nulla vulputate euismod. Vestibulum mollis fermentum dui. Donec pellentesque suscipit auctor. Mauris vitae dolor neque. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>\r\n\r\n<p>Aliquam pharetra fringilla ante suscipit sagittis. Quisque gravida, lorem ut ullamcorper rutrum, ex nulla sagittis tortor, non tincidunt nisl massa nec velit. Vivamus id maximus ipsum, porta laoreet purus. Sed sit amet mauris vitae libero sodales convallis. Maecenas bibendum nunc vitae ipsum consequat iaculis ut vitae tortor. Aenean in dignissim mauris, id commodo nunc. Ut at ipsum ut lorem vestibulum feugiat. Ut at vehicula mauris, eu gravida diam. Proin quis ultrices libero. Praesent a maximus est. Aliquam vestibulum ex nunc, vel finibus ipsum tincidunt ut.</p>\r\n\r\n<p>Duis quis nunc sed sapien finibus tempus at ut arcu. Proin egestas ligula sed convallis venenatis. Fusce purus mi, varius et convallis sit amet, feugiat sed ex. Praesent interdum et purus nec gravida. Curabitur porta lacus non magna imperdiet, eu dignissim est congue. Fusce velit tellus, convallis id odio ac, tempor convallis magna. Praesent dolor enim, laoreet id vulputate eget, hendrerit in magna. Curabitur at imperdiet nisl, vitae auctor libero. Praesent rutrum ex odio, at ornare dolor laoreet in. Nam vel maximus elit, sed interdum dolor.</p>\r\n\r\n<p>Nunc eleifend orci vitae nisi elementum congue. Donec eget diam ac felis ullamcorper congue ac vulputate mi. Maecenas ac tempus leo. Etiam imperdiet sollicitudin ex, ac porta felis. Nunc lacinia mattis arcu in condimentum. Duis tempus quam quis libero rhoncus, eu consequat leo pellentesque. Interdum et malesuada fames ac ante ipsum primis in faucibus.</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur vitae ante dictum, sagittis lacus ut, convallis leo. Integer fermentum vel risus maximus sagittis. Nulla id augue sit amet eros auctor volutpat. Ut finibus massa id tortor vulputate tincidunt. Cras bibendum justo at neque interdum imperdiet. Sed elementum lorem et sem pulvinar, vel varius odio scelerisque. Fusce ultrices augue ante, a semper libero facilisis sed.</p>\r\n\r\n<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent eu mi sodales, bibendum arcu nec, ullamcorper leo. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam consequat aliquet ex, sit amet gravida metus porttitor a. Praesent eu scelerisque ante, in volutpat nisi. Praesent vulputate quis enim non pellentesque. Nulla a ex volutpat turpis euismod lacinia. Cras a elit eu erat posuere commodo eu vel est. Nullam sagittis, lacus nec maximus fringilla, erat diam ultricies ligula, ac bibendum eros quam ut leo. Duis rutrum efficitur risus at tincidunt. Duis lacinia metus at nulla vulputate euismod. Vestibulum mollis fermentum dui. Donec pellentesque suscipit auctor. Mauris vitae dolor neque. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>\r\n\r\n<p>Aliquam pharetra fringilla ante suscipit sagittis. Quisque gravida, lorem ut ullamcorper rutrum, ex nulla sagittis tortor, non tincidunt nisl massa nec velit. Vivamus id maximus ipsum, porta laoreet purus. Sed sit amet mauris vitae libero sodales convallis. Maecenas bibendum nunc vitae ipsum consequat iaculis ut vitae tortor. Aenean in dignissim mauris, id commodo nunc. Ut at ipsum ut lorem vestibulum feugiat. Ut at vehicula mauris, eu gravida diam. Proin quis ultrices libero. Praesent a maximus est. Aliquam vestibulum ex nunc, vel finibus ipsum tincidunt ut.</p>\r\n\r\n<p>Duis quis nunc sed sapien finibus tempus at ut arcu. Proin egestas ligula sed convallis venenatis. Fusce purus mi, varius et convallis sit amet, feugiat sed ex. Praesent interdum et purus nec gravida. Curabitur porta lacus non magna imperdiet, eu dignissim est congue. Fusce velit tellus, convallis id odio ac, tempor convallis magna. Praesent dolor enim, laoreet id vulputate eget, hendrerit in magna. Curabitur at imperdiet nisl, vitae auctor libero. Praesent rutrum ex odio, at ornare dolor laoreet in. Nam vel maximus elit, sed interdum dolor.</p>\r\n\r\n<p>Nunc eleifend orci vitae nisi elementum congue. Donec eget diam ac felis ullamcorper congue ac vulputate mi. Maecenas ac tempus leo. Etiam imperdiet sollicitudin ex, ac porta felis. Nunc lacinia mattis arcu in condimentum. Duis tempus quam quis libero rhoncus, eu consequat leo pellentesque. Interdum et malesuada fames ac ante ipsum primis in faucibus.</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur vitae ante dictum, sagittis lacus ut, convallis leo. Integer fermentum vel risus maximus sagittis. Nulla id augue sit amet eros auctor volutpat. Ut finibus massa id tortor vulputate tincidunt. Cras bibendum justo at neque interdum imperdiet. Sed elementum lorem et sem pulvinar, vel varius odio scelerisque. Fusce ultrices augue ante, a semper libero facilisis sed.</p>\r\n\r\n<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent eu mi sodales, bibendum arcu nec, ullamcorper leo. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam consequat aliquet ex, sit amet gravida metus porttitor a. Praesent eu scelerisque ante, in volutpat nisi. Praesent vulputate quis enim non pellentesque. Nulla a ex volutpat turpis euismod lacinia. Cras a elit eu erat posuere commodo eu vel est. Nullam sagittis, lacus nec maximus fringilla, erat diam ultricies ligula, ac bibendum eros quam ut leo. Duis rutrum efficitur risus at tincidunt. Duis lacinia metus at nulla vulputate euismod. Vestibulum mollis fermentum dui. Donec pellentesque suscipit auctor. Mauris vitae dolor neque. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>\r\n\r\n<p>Aliquam pharetra fringilla ante suscipit sagittis. Quisque gravida, lorem ut ullamcorper rutrum, ex nulla sagittis tortor, non tincidunt nisl massa nec velit. Vivamus id maximus ipsum, porta laoreet purus. Sed sit amet mauris vitae libero sodales convallis. Maecenas bibendum nunc vitae ipsum consequat iaculis ut vitae tortor. Aenean in dignissim mauris, id commodo nunc. Ut at ipsum ut lorem vestibulum feugiat. Ut at vehicula mauris, eu gravida diam. Proin quis ultrices libero. Praesent a maximus est. Aliquam vestibulum ex nunc, vel finibus ipsum tincidunt ut.</p>\r\n\r\n<p>Duis quis nunc sed sapien finibus tempus at ut arcu. Proin egestas ligula sed convallis venenatis. Fusce purus mi, varius et convallis sit amet, feugiat sed ex. Praesent interdum et purus nec gravida. Curabitur porta lacus non magna imperdiet, eu dignissim est congue. Fusce velit tellus, convallis id odio ac, tempor convallis magna. Praesent dolor enim, laoreet id vulputate eget, hendrerit in magna. Curabitur at imperdiet nisl, vitae auctor libero. Praesent rutrum ex odio, at ornare dolor laoreet in. Nam vel maximus elit, sed interdum dolor.</p>\r\n\r\n<p>Nunc eleifend orci vitae nisi elementum congue. Donec eget diam ac felis ullamcorper congue ac vulputate mi. Maecenas ac tempus leo. Etiam imperdiet sollicitudin ex, ac porta felis. Nunc lacinia mattis arcu in condimentum. Duis tempus quam quis libero rhoncus, eu consequat leo pellentesque. Interdum et malesuada fames ac ante ipsum primis in faucibus.</p>', '2024-01-01 18:41:06', 8, 'blog-03', 3);

CREATE TABLE IF NOT EXISTS `tcore_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name_tr` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `name_en` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `slug` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  UNIQUE KEY `pk_tcore_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `tcore_category` (`id`, `name`, `name_tr`, `name_en`, `slug`) VALUES
	(1, 'Kategori 01', 'Kategori 01', 'Category 01', 'kategori-01'),
	(2, 'Kategori 02', 'Kategori 02', 'Category 02', 'kategori-02'),
	(3, 'Kategori 03', 'Kategori 03', 'Category 03', 'kategori-03');

CREATE TABLE IF NOT EXISTS `tcore_contact` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `full_name` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `phone` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  UNIQUE KEY `pk_tcore_contact` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `tcore_contact` (`id`, `full_name`, `phone`, `email`, `message`) VALUES
	(1, 'Emrah Yüksel', '02122121212', 'info@emrahyuksel.com.tr', 'Bu ilk Contacts modülü mesajıdır. Bu alana eğitimin ilerleyen aşamalarında Admin panelden giriş yapılacağı gibi kullanı tarafından girilen mesajlarında düşmesi sağlanacak.');

CREATE TABLE IF NOT EXISTS `tcore_pages` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `title_tr` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `title_en` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content_tr` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `content_en` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `slug` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  UNIQUE KEY `pk_tcore_pages` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `tcore_pages` (`id`, `title`, `title_tr`, `title_en`, `content`, `content_tr`, `content_en`, `slug`) VALUES
	(1, 'Örnek Sayfa 1', 'Örnek Sayfa 1', 'Example Page 1', '<p>Bu bir test sayfasıdır.</p>', '<p>Bu bir test sayfasıdır.</p>', '<p>This is a test page.</p>', 'ornek-sayfa-1'),
	(2, 'Örnek Sayfa 2', 'Örnek Sayfa 2', 'Example Page 2', '<p>Bu başka bir test sayfasıdır.</p>', '<p>Bu bir test sayfasıdır.</p>', '<p>This is a test page.</p>', 'ornek-sayfa-2');

CREATE TABLE IF NOT EXISTS `tcore_services` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `title_tr` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `title_en` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content_tr` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `content_en` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `slug` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  UNIQUE KEY `pk_tcore_services` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `tcore_services` (`id`, `title`, `title_tr`, `title_en`, `content`, `content_tr`, `content_en`, `slug`) VALUES
	(7, 'Hizmet 01', 'Hizmet 01', 'Service 01', '<p>Servis i&ccedil;eriği detayı burada yer alır.<br />\r\n&nbsp;</p>', '<p>Servis i&ccedil;eriği detayı burada yer alır.<br />\r\n&nbsp;</p>', '<p>Service content details are located here.</p>', 'hizmet-01'),
	(8, 'Hizmet 02', 'Hizmet 02', 'Service 02', '<p>Servis i&ccedil;eriği detayı burada yer alır.<br />\r\n&nbsp;</p>', '<p>Servis i&ccedil;eriği detayı burada yer alır.<br />\r\n&nbsp;</p>', '<p>Service content details are located here.</p>', 'hizmet-02'),
	(9, 'Hizmet 03', 'Hizmet 03', 'Service 03', '<p>Servis i&ccedil;eriği detayı burada yer alır.<br />\r\n&nbsp;</p>', '<p>Servis i&ccedil;eriği detayı burada yer alır.<br />\r\n&nbsp;</p>', '<p>Service content details are located here.</p>', 'hizmet-03'),
	(10, 'Hizmet 04', 'Hizmet 04', 'Service 04', '<p>Servis i&ccedil;eriği detayı burada yer alır.<br />\r\n&nbsp;</p>', '<p>Servis i&ccedil;eriği detayı burada yer alır.<br />\r\n&nbsp;</p>', '<p>Service content details are located here.</p>', 'hizmet-04');

CREATE TABLE IF NOT EXISTS `tcore_settings` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `logo_1` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `logo_2` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `title` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `title_tr` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `title_en` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description_tr` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `description_en` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `keywords` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `keywords_tr` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `keywords_en` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `phone_fixed` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `phone_mobile` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `fax` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `city` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `district` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `postal_code` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `facebook_url` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `twitter_url` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `instagram_url` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `youtube_url` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  UNIQUE KEY `pk_tcore_settings` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `tcore_settings` (`id`, `logo_1`, `logo_2`, `title`, `title_tr`, `title_en`, `description`, `description_tr`, `description_en`, `keywords`, `keywords_tr`, `keywords_en`, `phone_fixed`, `phone_mobile`, `fax`, `email`, `city`, `district`, `address`, `postal_code`, `facebook_url`, `twitter_url`, `instagram_url`, `youtube_url`) VALUES
	(1, 'dimg/logo_xwTszpO.png', 'dimg/logo_AnxHF6P.png', 'Corporate V1 Edukey Kurumsal Internet Sitesi', 'Corporate V1 Edukey Kurumsal Internet Sitesi', 'Corporate V1 Edukey Corporate Website', 'Corporate V1 Edukey Kurumsal İnternet Sitesi Emrah Yüksel tarafından Django eğitimine özel olarak hazırlanmıştır.', 'Corporate V1 Edukey Kurumsal İnternet Sitesi Emrah Yüksel tarafından Django eğitimine özel olarak hazırlanmıştır.', 'Corporate V1 Edukey Corporate Website was prepared by Emrah Yüksel specifically for Django training.', 'corporate, edukey, emrahyuksel', 'corporate, edukey, emrahyuksel', 'corporate, edukey, emrahyuksel', '2122121212', '2122121212', '2122121212', 'info@emrahyuksel.com.tr', 'Istanbul', 'Fatih', 'Adres verisi Istanbul Fatih', '34400', 'https://www.facebook.com', 'https://www.twitter.com', 'https://www.instagram.com', 'https://www.youtube.com');

CREATE TABLE IF NOT EXISTS `tcore_slider` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `image` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  UNIQUE KEY `pk_tcore_slider` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `tcore_slider` (`id`, `title`, `image`) VALUES
	(1, 'Slider01', 'slider/800x300.png'),
	(2, 'Slider 02', 'slider/800x301.png');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;

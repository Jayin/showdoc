DROP TABLE IF EXISTS `catalog`;

CREATE TABLE `catalog` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_name` text,
  `item_id` int(11) DEFAULT NULL,
  `s_number` int(11) DEFAULT '99',
  `addtime` int(11) DEFAULT '0',
  `parent_cat_id` int(10) NOT NULL DEFAULT '0',
  `level` int(10) NOT NULL DEFAULT '2',
  PRIMARY KEY (`cat_id`),
  UNIQUE KEY `cat_id` (`cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table item
# ------------------------------------------------------------

DROP TABLE IF EXISTS `item`;

CREATE TABLE `item` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_name` text,
  `item_description` text,
  `uid` int(11) DEFAULT NULL,
  `username` text,
  `password` text,
  `addtime` int(11) DEFAULT NULL,
  `last_update_time` int(11) DEFAULT '0',
  `item_domain` text NOT NULL,
  `item_type` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`item_id`),
  UNIQUE KEY `item_id` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table item_member
# ------------------------------------------------------------

DROP TABLE IF EXISTS `item_member`;

CREATE TABLE `item_member` (
  `item_member_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` text,
  `addtime` int(11) DEFAULT '0',
  `member_group_id` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`item_member_id`),
  UNIQUE KEY `item_member_id` (`item_member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table item_token
# ------------------------------------------------------------

DROP TABLE IF EXISTS `item_token`;

CREATE TABLE `item_token` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL DEFAULT '0',
  `api_key` varchar(200) NOT NULL,
  `api_token` varchar(200) NOT NULL,
  `addtime` int(11) NOT NULL DEFAULT '0',
  `last_check_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `api_key` (`api_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table options
# ------------------------------------------------------------

DROP TABLE IF EXISTS `options`;

CREATE TABLE `options` (
  `option_id` int(11) NOT NULL AUTO_INCREMENT,
  `option_name` varchar(200) NOT NULL,
  `option_value` varchar(200) NOT NULL,
  PRIMARY KEY (`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table page
# ------------------------------------------------------------

DROP TABLE IF EXISTS `page`;

CREATE TABLE `page` (
  `page_id` int(11) NOT NULL AUTO_INCREMENT,
  `author_uid` int(11) DEFAULT NULL,
  `author_username` text,
  `item_id` int(11) DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `page_title` text,
  `page_content` text,
  `s_number` int(11) DEFAULT '99',
  `addtime` int(11) DEFAULT '0',
  `page_comments` text NOT NULL,
  PRIMARY KEY (`page_id`),
  UNIQUE KEY `page_id` (`page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table page_history
# ------------------------------------------------------------

DROP TABLE IF EXISTS `page_history`;

CREATE TABLE `page_history` (
  `page_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) DEFAULT NULL,
  `author_uid` int(11) DEFAULT NULL,
  `author_username` text,
  `item_id` int(11) DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `page_title` text,
  `page_content` text,
  `s_number` int(11) DEFAULT NULL,
  `addtime` int(11) DEFAULT NULL,
  `page_comments` text NOT NULL,
  PRIMARY KEY (`page_history_id`),
  UNIQUE KEY `page_history_id` (`page_history_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table template
# ------------------------------------------------------------

DROP TABLE IF EXISTS `template`;

CREATE TABLE `template` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL DEFAULT '0',
  `username` varchar(200) NOT NULL DEFAULT '',
  `template_title` varchar(200) NOT NULL DEFAULT '',
  `template_content` text NOT NULL,
  `addtime` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` text,
  `groupid` int(11) DEFAULT '2',
  `name` text,
  `avatar` text,
  `avatar_small` text,
  `email` text,
  `password` text,
  `cookie_token` text,
  `cookie_token_expire` int(11) DEFAULT '0',
  `reg_time` int(11) DEFAULT '0',
  `last_login_time` int(11) DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table user_token
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_token`;

CREATE TABLE `user_token` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL DEFAULT '0',
  `token` varchar(200) NOT NULL DEFAULT '',
  `token_expire` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(200) NOT NULL DEFAULT '',
  `addtime` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

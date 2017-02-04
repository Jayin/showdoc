CREATE TABLE `item_member` (
	`item_member_id`	INTEGER PRIMARY KEY AUTO_INCREMENT UNIQUE,
	`item_id`	INTEGER,
	`uid`	INTEGER,
	`username`	TEXT,
	`addtime`	INTEGER DEFAULT 0
, member_group_id INT( 1 ) NOT NULL DEFAULT '1');

CREATE TABLE `item` (
	`item_id`	INTEGER PRIMARY KEY AUTO_INCREMENT UNIQUE,
	`item_name`	TEXT,
	`item_description`	TEXT,
	`uid`	INTEGER,
	`username`	TEXT,
	`password`	TEXT,
	`addtime`	INTEGER,
	`last_update_time`	INTEGER DEFAULT 0
, item_domain text NOT NULL DEFAULT '', item_type INT( 1 ) NOT NULL DEFAULT '1');

CREATE TABLE `user` (
	`uid`	INTEGER PRIMARY KEY AUTO_INCREMENT,
	`username`	TEXT,
	`groupid`	INTEGER DEFAULT 2,
	`name`	TEXT,
	`avatar`	TEXT,
	`avatar_small`	TEXT,
	`email`	TEXT,
	`password`	TEXT,
	`cookie_token`	TEXT,
	`cookie_token_expire`	INTEGER DEFAULT 0,
	`reg_time`	INTEGER DEFAULT 0,
	`last_login_time`	INTEGER DEFAULT 0
);

CREATE TABLE `catalog` (
	`cat_id`	INTEGER PRIMARY KEY AUTO_INCREMENT UNIQUE,
	`cat_name`	TEXT,
	`item_id`	INTEGER,
	`s_number`	INTEGER DEFAULT 99,
	`addtime`	INTEGER DEFAULT 0
, parent_cat_id INT( 10 ) NOT NULL DEFAULT '0', level INT( 10 ) NOT NULL DEFAULT '2');

CREATE TABLE `page` (
	`page_id`	INTEGER PRIMARY KEY AUTO_INCREMENT UNIQUE,
	`author_uid`	INTEGER,
	`author_username`	TEXT,
	`item_id`	INTEGER,
	`cat_id`	INTEGER,
	`page_title`	TEXT,
	`page_content`	TEXT,
	`s_number`	INTEGER DEFAULT 99,
	`addtime`	INTEGER DEFAULT 0
, page_comments text NOT NULL DEFAULT '');

CREATE TABLE `page_history` (
	`page_history_id`	INTEGER PRIMARY KEY AUTO_INCREMENT UNIQUE,
	`page_id`	INTEGER,
	`author_uid`	INTEGER,
	`author_username`	TEXT,
	`item_id`	INTEGER,
	`cat_id`	INTEGER,
	`page_title`	TEXT,
	`page_content`	TEXT,
	`s_number`	INTEGER,
	`addtime`	INTEGER
, page_comments text NOT NULL DEFAULT '');

CREATE TABLE `user_token` (
        `id`  INTEGER PRIMARY KEY ,
        `uid` int(10) NOT NULL DEFAULT '0',
        `token` varchar(200) NOT NULL DEFAULT '',
        `token_expire` int(11) NOT NULL DEFAULT '0' ,
        `ip` varchar(200) NOT NULL DEFAULT '',
        `addtime` int(11) NOT NULL DEFAULT '0'
        );

CREATE TABLE `template` (
        `id`  INTEGER PRIMARY KEY ,
        `uid` int(10) NOT NULL DEFAULT '0',
        `username` varchar(200) NOT NULL DEFAULT '',
        `template_title` varchar(200) NOT NULL DEFAULT '' ,
        `template_content` text NOT NULL DEFAULT '',
        `addtime` int(11) NOT NULL DEFAULT '0'
        );

CREATE TABLE `options` (
        `option_id`  INTEGER PRIMARY KEY ,
        `option_name` varchar(200) NOT NULL  ,
        `option_value` varchar(200) NOT NULL
        );
		
CREATE TABLE `item_token` (
        `id`  INTEGER PRIMARY KEY ,
        `item_id` int(11) NOT NULL DEFAULT '0' ,
        `api_key` varchar(200) NOT NULL UNIQUE ,
        `api_token` varchar(200) NOT NULL ,
        `addtime` int(11) NOT NULL DEFAULT '0' ,
        `last_check_time` int(11) NOT NULL DEFAULT '0'
        );

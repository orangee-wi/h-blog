CREATE TABLE `admin_info` (
`id` bigint(32) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '后台用户id',
`account` varchar(20) NOT NULL DEFAULT '' COMMENT '后台用户账号',
`password` varchar(36) NOT NULL DEFAULT '' COMMENT '后台用户密码',
`nickname` varchar(20) NOT NULL DEFAULT '' COMMENT '后台用户昵称',
`avatar` varchar(255) NOT NULL DEFAULT '' COMMENT '后台用户头像',
`email` varchar(50) NOT NULL DEFAULT '' COMMENT '后台用户电子邮箱',
`introduction` varchar(255) NOT NULL DEFAULT '' COMMENT '后台用户个人介绍',
`gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
PRIMARY KEY (`id`) 
);

CREATE TABLE `article_info` (
`id` bigint(32) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '文章id',
`title` varchar(32) NOT NULL DEFAULT '' COMMENT '文章标题',
`author` varchar(20) NOT NULL DEFAULT '' COMMENT '文章作者名',
`synopsis` varchar(36) NOT NULL DEFAULT '' COMMENT '文章概要',
`picture` varchar(255) NOT NULL DEFAULT '' COMMENT '文章关联图（用于首页展示）',
`like_num` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '文章点赞量',
`read_num` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '文章阅读量',
`comment_num` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '文章评论量',
`is_top` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '文章是否置顶',
`is_published` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '文章是否发布',
`is_hot` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '文章是否热门',
`article_archive_id` bigint(32) UNSIGNED NOT NULL DEFAULT 0 COMMENT '文章归档id',
`gmt_publish` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '文章发布时间；is_published为0时，gmt_publish为gmt_create，is_published为1时，gmt_publish为文章发布时间',
`gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
PRIMARY KEY (`id`) ,
UNIQUE INDEX `uk_title` (`title`(20)) USING BTREE COMMENT 'title字段唯一BTREE索引' ,
INDEX `idx_article_archive_id` (`article_archive_id`) USING BTREE COMMENT 'article_archive_id字段普通BTREE索引' 
);

CREATE TABLE `article_label` (
`id` bigint(32) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '文章标签id',
`name` varchar(20) NOT NULL DEFAULT '' COMMENT '文章标签名',
`gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
PRIMARY KEY (`id`) ,
UNIQUE INDEX `uk_name` (`name`(18)) USING BTREE COMMENT 'name字段唯一BTREE索引' 
);

CREATE TABLE `article_category` (
`id` bigint(32) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '文章分类id',
`name` varchar(20) NOT NULL DEFAULT '' COMMENT '文章分类名',
`gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
PRIMARY KEY (`id`) ,
UNIQUE INDEX `uk_name` (`name`(18)) USING BTREE COMMENT 'name字段唯一BTREE索引' 
);

CREATE TABLE `article_content` (
`id` bigint(32) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '文章内容id',
`article_info_id` bigint(32) UNSIGNED NOT NULL DEFAULT 0 COMMENT '文章id',
`detail` text NOT NULL COMMENT '文章内容详情',
`gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
PRIMARY KEY (`id`) ,
UNIQUE INDEX `uk_article_info_id` (`article_info_id`) USING HASH COMMENT 'article_info_id字段唯一HASH索引' 
);

CREATE TABLE `r_article_info_article_label` (
`id` bigint(32) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '文章与标签关系表id',
`article_info_id` bigint(32) UNSIGNED NOT NULL DEFAULT 0 COMMENT '文章id',
`article_label_id` bigint(32) UNSIGNED NOT NULL DEFAULT 0 COMMENT '文章标签id',
`gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
PRIMARY KEY (`id`) ,
INDEX `idx_article_info_id` (`article_info_id`) USING BTREE COMMENT 'article_info_id字段普通BTREE索引' ,
INDEX `idx_article_label_id` (`article_label_id`) USING BTREE COMMENT 'article_label_id字段普通BTREE索引' 
);

CREATE TABLE `r_article_info_article__category` (
`id` bigint(32) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '文章与分类关系表id',
`article_info_id` bigint(32) UNSIGNED NOT NULL DEFAULT 0 COMMENT '文章id',
`article_category_id` bigint(32) UNSIGNED NOT NULL DEFAULT 0 COMMENT '文章分类id',
`gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
PRIMARY KEY (`id`) ,
INDEX `idx_article_info_id` (`article_info_id`) USING BTREE COMMENT 'article_info_id字段普通BTREE索引' ,
INDEX `idx_article_category_id` (`article_category_id`) USING BTREE COMMENT 'article_category_id字段普BTREE通索引' 
);

CREATE TABLE `notice_info` (
`id` bigint(32) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '公告id',
`title` varchar(32) NOT NULL DEFAULT '' COMMENT '公告标题',
`synopsis` varchar(36) NOT NULL DEFAULT '' COMMENT '公告概要',
`detail` varchar(255) NOT NULL DEFAULT '' COMMENT '公告详情',
`gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
PRIMARY KEY (`id`) 
);

CREATE TABLE `link_info` (
`id` bigint(32) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '友情链接id',
`name` varchar(20) NOT NULL DEFAULT '' COMMENT '友情链接名称',
`url` varchar(255) NOT NULL DEFAULT '' COMMENT '友情链接URL',
`gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
PRIMARY KEY (`id`) 
);

CREATE TABLE `article_comment` (
`id` bigint(32) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '评论id',
`article_info_id` bigint(32) UNSIGNED NOT NULL DEFAULT 0 COMMENT '文章id',
`detail` varchar(255) NOT NULL DEFAULT '' COMMENT '评论详情',
`is_shield` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '评论是否屏蔽',
`commenter_name` varchar(20) NOT NULL DEFAULT '' COMMENT '评论者名称',
`commenter_email` varchar(50) NOT NULL DEFAULT '' COMMENT '评论者电子邮箱',
`commenter_website` varchar(255) NOT NULL DEFAULT '' COMMENT '评论者网站（个人主页）',
`commenter_avatar` varchar(255) NOT NULL DEFAULT '' COMMENT '评论者头像',
`comment_date` int(13) UNSIGNED NOT NULL DEFAULT 0 COMMENT '评论日期',
`gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
PRIMARY KEY (`id`) ,
INDEX `idx_article_info_id` (`article_info_id`) USING HASH COMMENT 'article_info_id字段普通HASH索引' ,
INDEX `idx_comment_date` (`comment_date`) USING BTREE COMMENT 'comment_date字段普通BTREE索引' 
);

CREATE TABLE `message_info` (
`id` bigint(32) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '留言id',
`detail` varchar(255) NOT NULL DEFAULT '' COMMENT '留言详情',
`is_shield` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '留言是否屏蔽',
`messager_name` varchar(20) NOT NULL DEFAULT '' COMMENT '留言者名称',
`messager_email` varchar(50) NOT NULL DEFAULT '' COMMENT '留言者电子邮箱',
`messager_website` varchar(255) NOT NULL DEFAULT '' COMMENT '留言者网站（个人主页）',
`messager_avatar` varchar(255) NOT NULL DEFAULT '' COMMENT '留言者头像',
`message_date` int(13) UNSIGNED NOT NULL DEFAULT 0 COMMENT '留言日期',
`gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
PRIMARY KEY (`id`) ,
INDEX `idx_message_date` (`message_date`) USING BTREE COMMENT 'message_date字段普通BTREE索引' 
);

CREATE TABLE `article_archive` (
`id` bigint(32) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '归档id',
`year` char(4) NOT NULL DEFAULT '' COMMENT '归档年份',
`gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
PRIMARY KEY (`id`) ,
UNIQUE INDEX `uk_year` (`year`) USING BTREE COMMENT 'year字段唯一BTREE索引' 
);

CREATE TABLE `menu_info` (
`id` bigint(32) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '菜单id',
`name` varchar(10) NOT NULL DEFAULT '' COMMENT '菜单名称',
`gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
PRIMARY KEY (`id`) 
);

CREATE TABLE `statistics_ip` (
`id` bigint(32) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '统计IPid',
`ip` int(32) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'ip地址',
`gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
PRIMARY KEY (`id`) ,
INDEX `idx_ip` (`ip`) USING BTREE COMMENT 'ip字段普通BTREE索引' 
);

CREATE TABLE `about_info` (
`id` bigint(32) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '关于页id',
`file_name` varchar(64) NOT NULL DEFAULT '' COMMENT '关于页文件名',
`file_path` varchar(255) NOT NULL DEFAULT '' COMMENT '关于页文件路径',
`gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
PRIMARY KEY (`id`) 
);

CREATE TABLE `article_comment_reply` (
`id` bigint(32) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '评论回复id',
`article_comment_id` bigint(32) UNSIGNED NOT NULL DEFAULT 0 COMMENT '评论id',
`detail` varchar(255) NOT NULL DEFAULT '' COMMENT '评论回复详情',
`is_shield` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '评论回复是否屏蔽',
`type` tinyint(2) NOT NULL DEFAULT -1 COMMENT '评论回复类型；默认-1，0为回复评论，1为回复回复',
`target_id` bigint(32) UNSIGNED NOT NULL DEFAULT 0 COMMENT '评论目标id；type为0，目标id为comment_base_id，type为1，目标id为comment_reply_id',
`commenter_name` varchar(20) NOT NULL DEFAULT '' COMMENT '评论被回复者名称',
`replier_name` varchar(20) NOT NULL DEFAULT '' COMMENT '评论回复者名称',
`replier_email` varchar(50) NOT NULL DEFAULT '' COMMENT '评论回复者电子邮箱',
`replier_website` varchar(255) NOT NULL DEFAULT '' COMMENT '评论回复者网站（个人主页）',
`replier_avatar` varchar(255) NOT NULL DEFAULT '' COMMENT '评论回复者头像',
`reply_date` int(13) UNSIGNED NOT NULL DEFAULT 0 COMMENT '评论回复日期',
`gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
PRIMARY KEY (`id`) ,
INDEX `idx_article_comment_id` (`article_comment_id`) USING HASH COMMENT 'article_comment_id字段普通HASH索引' ,
INDEX `idx_reply_date` (`reply_date`) USING BTREE COMMENT 'reply_date字段普通BTREE索引' 
);

CREATE TABLE `message_reply` (
`id` bigint(32) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '留言回复id',
`message_info_id` bigint(32) UNSIGNED NOT NULL DEFAULT 0 COMMENT '留言id',
`detail` varchar(255) NOT NULL DEFAULT '' COMMENT '留言回复详情',
`is_shield` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '留言回复是否屏蔽',
`type` tinyint(2) NOT NULL DEFAULT -1 COMMENT '留言回复类型；默认为-1，0为回复留言，1为回复回复',
`target_id` bigint(32) UNSIGNED NOT NULL DEFAULT 0 COMMENT '评论目标id；type为0，目标id为message_base_id，type为1，目标id为message_reply_id',
`messager_name` varchar(20) NOT NULL DEFAULT '' COMMENT '留言被回复者名称',
`replier_name` varchar(20) NOT NULL DEFAULT '' COMMENT '留言回复者名称',
`replier_email` varchar(50) NOT NULL DEFAULT '' COMMENT '留言回复者电子邮箱',
`replier_website` varchar(255) NOT NULL DEFAULT '' COMMENT '留言回复者网站（个人主页）',
`replier_avatar` varchar(255) NOT NULL DEFAULT '' COMMENT '留言回复者头像',
`reply_date` int(13) UNSIGNED NOT NULL DEFAULT 0 COMMENT '留言回复日期',
`gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
PRIMARY KEY (`id`) ,
INDEX `idx_message_info_id` (`message_info_id`) USING HASH COMMENT 'message_info_id字段普通HASH索引' ,
INDEX `idx_reply_date` (`reply_date`) USING BTREE COMMENT 'reply_date字段普通BTREE索引' 
);

CREATE TABLE `statistics_info` (
`id` bigint(32) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '统计id',
`page_view` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'pv；页面浏览量',
`unique_visitor` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'uv；独立访客量',
`visit_view` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'vv；访客的访问量',
`gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
PRIMARY KEY (`id`) 
);


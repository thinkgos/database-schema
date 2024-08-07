-- Create "announce" table
CREATE TABLE `announce` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT "" COMMENT "标题",
  `content` varchar(2048) NOT NULL DEFAULT "" COMMENT "内容",
  `priority` int unsigned NOT NULL DEFAULT 255 COMMENT "优先级",
  `visible` char(1) NOT NULL DEFAULT "0" COMMENT "是否显示",
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "发布时间",
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` bigint NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) CHARSET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT "公告-面向所有人的消息";
-- Create "banner" table
CREATE TABLE `banner` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `kind_id` bigint NOT NULL DEFAULT 0 COMMENT "类别id",
  `kind` varchar(64) NOT NULL DEFAULT "" COMMENT "同banner_kind类别",
  `name` varchar(32) NOT NULL DEFAULT "" COMMENT "名称",
  `image` varchar(255) NOT NULL DEFAULT "" COMMENT "图片",
  `desc` varchar(255) NOT NULL DEFAULT "" COMMENT "描述",
  `sort` int unsigned NOT NULL DEFAULT 255 COMMENT "排序",
  `visible` char(1) NOT NULL DEFAULT "0" COMMENT "是否可见",
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  INDEX `idx_kind` (`kind`),
  INDEX `idx_kind_id` (`kind_id`)
) CHARSET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT "广告横幅";
-- Create "banner_kind" table
CREATE TABLE `banner_kind` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `kind` varchar(64) NOT NULL DEFAULT "" COMMENT "类别",
  `name` varchar(64) NOT NULL DEFAULT "" COMMENT "名称",
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `uk_kind` (`kind`)
) CHARSET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT "广告横幅类别";
-- Create "dict" table
CREATE TABLE `dict` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT "字典ID",
  `key` varchar(64) NOT NULL DEFAULT "" COMMENT "关键字",
  `name` varchar(64) NOT NULL DEFAULT "" COMMENT "名称",
  `is_pin` char(1) NOT NULL DEFAULT "0" COMMENT "是否锁定",
  `remark` varchar(255) NOT NULL DEFAULT "" COMMENT "备注",
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `uk_key` (`key`)
) CHARSET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT "字典";
-- Create "dict_item" table
CREATE TABLE `dict_item` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT "字典项ID",
  `dict_id` bigint NOT NULL COMMENT "字典ID",
  `key` varchar(64) NOT NULL DEFAULT "" COMMENT "字典key",
  `name` varchar(64) NOT NULL DEFAULT "" COMMENT "字典项名称",
  `value` varchar(64) NOT NULL DEFAULT "" COMMENT "字典项值",
  `sort` int unsigned NOT NULL DEFAULT 0 COMMENT "序号",
  `remark` varchar(255) NOT NULL DEFAULT "" COMMENT "备注",
  `is_enabled` char(1) NOT NULL DEFAULT "0" COMMENT "是否启用",
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `uk_key_value` (`key`, `value`)
) CHARSET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT "字典项";
-- Create "guide" table
CREATE TABLE `guide` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT "",
  `content` varchar(8192) NOT NULL DEFAULT "",
  `visible` char(1) NOT NULL DEFAULT "0" COMMENT "是否显示",
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "发布时间",
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` bigint NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) CHARSET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT "新手指导";
-- Create "question" table
CREATE TABLE `question` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT "" COMMENT "标题",
  `content` varchar(4096) NOT NULL DEFAULT "" COMMENT "内容",
  `cover` varchar(255) NOT NULL DEFAULT "" COMMENT "封面",
  `desc` varchar(255) NOT NULL DEFAULT "" COMMENT "描述",
  `visible` char(1) NOT NULL DEFAULT "0" COMMENT "是否可见",
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` bigint NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) CHARSET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT "常见问题";
-- Create "sys_role" table
CREATE TABLE `sys_role` (
  `id` bigint NOT NULL COMMENT "角色id",
  `name` varchar(64) NOT NULL DEFAULT "" COMMENT "角色名称",
  `desc` varchar(64) NOT NULL DEFAULT "" COMMENT "角色描述",
  `is_enabled` char(1) NOT NULL DEFAULT "1" COMMENT "是否启用",
  `create_by` varchar(64) NOT NULL DEFAULT "" COMMENT "创建人",
  `update_by` varchar(64) NOT NULL DEFAULT "" COMMENT "修改人",
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` bigint NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) CHARSET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT "角色表";
-- Create "sys_role_user" table
CREATE TABLE `sys_role_user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `role_id` bigint NOT NULL COMMENT "角色id",
  `user_id` bigint NOT NULL COMMENT "用户id",
  PRIMARY KEY (`id`)
) CHARSET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT "用户角色关联表";
-- Create "sys_user" table
CREATE TABLE `sys_user` (
  `id` bigint NOT NULL COMMENT "用户ID",
  `name` varchar(64) NOT NULL DEFAULT "" COMMENT "登录名(不可修改)",
  `passwd` varchar(64) NOT NULL DEFAULT "" COMMENT "密码",
  `real_name` varchar(64) NOT NULL DEFAULT "" COMMENT "真实姓名",
  `nickname` varchar(64) NOT NULL DEFAULT "" COMMENT "昵称",
  `mobile` varchar(64) NOT NULL DEFAULT "" COMMENT "手机号",
  `email` varchar(64) NOT NULL DEFAULT "" COMMENT "email",
  `avatar` varchar(256) NOT NULL DEFAULT "" COMMENT "头像",
  `qq` varchar(64) NOT NULL DEFAULT "" COMMENT "qq",
  `wx` varchar(64) NOT NULL DEFAULT "" COMMENT "wechat",
  `gender` int unsigned NOT NULL DEFAULT 0 COMMENT "性别,[0:未指定,1:男,2:女,3:未知]",
  `last_login_ip` varchar(64) NOT NULL DEFAULT "" COMMENT "上一次登录IP",
  `last_login_loc` varchar(64) NOT NULL DEFAULT "" COMMENT "上一次登录地",
  `last_login_time` bigint NOT NULL DEFAULT 0 COMMENT "上一次登录时间",
  `is_admin` char(1) NOT NULL DEFAULT "0" COMMENT "是否是超级用户",
  `need_change` char(1) NOT NULL DEFAULT "1" COMMENT "是否需要修改密码",
  `status` int unsigned NOT NULL DEFAULT 1 COMMENT "状态,[0:未指定,1:启用,2:禁用,3:临时锁定]",
  `create_by` varchar(64) NOT NULL DEFAULT "" COMMENT "创建人",
  `update_by` varchar(64) NOT NULL DEFAULT "" COMMENT "修改人",
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` bigint NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `name_deleted_at` (`name`, `deleted_at`)
) CHARSET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT "系统用户";

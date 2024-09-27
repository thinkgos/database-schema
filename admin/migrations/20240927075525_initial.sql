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
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT "字典id",
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
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT "字典项id",
  `dict_id` bigint NOT NULL COMMENT "字典id",
  `dict_key` varchar(64) NOT NULL DEFAULT "" COMMENT "字典key",
  `label` varchar(64) NOT NULL DEFAULT "" COMMENT "字典项标签",
  `value` varchar(64) NOT NULL DEFAULT "" COMMENT "字典项值",
  `sort` int unsigned NOT NULL DEFAULT 0 COMMENT "序号",
  `remark` varchar(255) NOT NULL DEFAULT "" COMMENT "备注",
  `is_enabled` char(1) NOT NULL DEFAULT "0" COMMENT "是否启用",
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  INDEX `idx_dict_id` (`dict_id`),
  UNIQUE INDEX `uk_key_value` (`dict_key`, `value`)
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
-- Create "sys_api" table
CREATE TABLE `sys_api` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT "id",
  `group_id` bigint NOT NULL DEFAULT 0 COMMENT "api组id",
  `title` varchar(255) NOT NULL DEFAULT "" COMMENT "标题",
  `path` varchar(512) NOT NULL DEFAULT "" COMMENT "路由地址",
  `method` varchar(16) NOT NULL DEFAULT "" COMMENT "请求方法",
  `remark` varchar(255) NOT NULL DEFAULT "" COMMENT "备注",
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) CHARSET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT "api表";
-- Create "sys_api_group" table
CREATE TABLE `sys_api_group` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT "id",
  `tag` varchar(255) NOT NULL DEFAULT "" COMMENT "标签",
  `label` varchar(255) NOT NULL DEFAULT "" COMMENT "组名称",
  `remark` varchar(255) NOT NULL DEFAULT "" COMMENT "备注",
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `uk_tag` (`tag`)
) CHARSET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT "api组表";
-- Create "sys_config" table
CREATE TABLE `sys_config` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `key` varchar(64) NOT NULL COMMENT "关键字",
  `name` varchar(64) NOT NULL COMMENT "名称",
  `value` varchar(255) NOT NULL COMMENT "值",
  `is_pin` char(1) NOT NULL DEFAULT "0" COMMENT "是否锁定,一旦锁定将不可删除",
  `is_alone` char(1) NOT NULL DEFAULT "0" COMMENT "是否独立,表明该条记录不可通过通用接口更新",
  `is_front_end` char(1) NOT NULL DEFAULT "0" COMMENT "是否前端",
  `remark` varchar(255) NOT NULL COMMENT "备注",
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `uk_key` (`key`)
) CHARSET utf8mb4 COLLATE utf8mb4_general_ci COMMENT "系统参数配置";
-- Create "sys_log_login" table
CREATE TABLE `sys_log_login` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL DEFAULT 0 COMMENT "用户id",
  `username` varchar(255) NOT NULL DEFAULT "" COMMENT "用户名",
  `type` bigint NOT NULL DEFAULT 1 COMMENT "登录方式,[1:web,2:ios,3:android]",
  `os` varchar(255) NOT NULL DEFAULT "" COMMENT "操作系统",
  `platform` varchar(255) NOT NULL DEFAULT "" COMMENT "平台",
  `browser` varchar(255) NOT NULL DEFAULT "" COMMENT "浏览器",
  `user_agent` varchar(255) NOT NULL DEFAULT "" COMMENT "user_agent",
  `remark` varchar(255) NOT NULL DEFAULT "" COMMENT "备注",
  `login_at` datetime NOT NULL COMMENT "登录时间",
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  INDEX `idx_user_id` (`user_id`)
) CHARSET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT "登录日志";
-- Create "sys_org" table
CREATE TABLE `sys_org` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `pid` bigint NOT NULL DEFAULT 0 COMMENT "父级组织id",
  `tier` varchar(512) NOT NULL DEFAULT "" COMMENT "层级",
  `name` varchar(64) NOT NULL DEFAULT "" COMMENT "组织名称",
  `leader` varchar(64) NOT NULL DEFAULT "" COMMENT "负责人",
  `phone` varchar(16) NOT NULL DEFAULT "" COMMENT "负责人手机",
  `email` varchar(64) NOT NULL DEFAULT "" COMMENT "负责人邮箱",
  `sort` int unsigned NOT NULL DEFAULT 0 COMMENT "排序",
  `is_enabled` char(1) NOT NULL DEFAULT "1" COMMENT "是否使能",
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` bigint NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  INDEX `pid` (`pid`)
) CHARSET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT "组织部门";
-- Create "sys_perm" table
CREATE TABLE `sys_perm` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT "系统编号",
  `sub_type` int unsigned NOT NULL DEFAULT 0 COMMENT "权限主体类型,[0:用户,1:角色,2:组织]",
  `sub_id` bigint NOT NULL DEFAULT 0 COMMENT "主体id[用户id,角色id,组织id]",
  `obj_type` varchar(8) NOT NULL DEFAULT "menu" COMMENT "资源类型,[menu:目录,carte:菜单,btn:按钮,ifc:接口]",
  `obj_id` bigint NOT NULL DEFAULT 0 COMMENT "资源id",
  `eft` varchar(8) NOT NULL DEFAULT "" COMMENT "权限效果[允许:allow;拒绝:deny]",
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  INDEX `idx_sub_id_obj_id` (`sub_id`, `obj_id`)
) CHARSET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT "权限表(注:用户权限与角色权限可以统一用该表保存)";
-- Create "sys_post" table
CREATE TABLE `sys_post` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL DEFAULT "" COMMENT "岗位名称",
  `code` varchar(128) NOT NULL DEFAULT "" COMMENT "岗位代码",
  `sort` int unsigned NOT NULL DEFAULT 0 COMMENT "排序",
  `remark` varchar(255) NOT NULL DEFAULT "" COMMENT "描述",
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` bigint NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) CHARSET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT "岗位表";
-- Create "sys_resource" table
CREATE TABLE `sys_resource` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT "资源id",
  `pid` bigint NOT NULL DEFAULT 0 COMMENT "父级资源id",
  `level` int unsigned NOT NULL DEFAULT 0 COMMENT "层级",
  `tier` varchar(512) NOT NULL COMMENT "层级",
  `type` varchar(8) NOT NULL DEFAULT "menu" COMMENT "资源类型,[menu:目录,carte:菜单,btn:按钮]",
  `code` varchar(64) NOT NULL DEFAULT "" COMMENT "资源代码(路由name)",
  `permission` varchar(64) NOT NULL DEFAULT "" COMMENT "权限代码",
  `title` varchar(64) NOT NULL DEFAULT "" COMMENT "名称",
  `path` varchar(512) NOT NULL DEFAULT "" COMMENT "路由地址",
  `icon` varchar(64) NOT NULL DEFAULT "" COMMENT "图标",
  `breadcrumb` varchar(255) NOT NULL DEFAULT "" COMMENT "面包屑",
  `component` varchar(255) NOT NULL DEFAULT "" COMMENT "组件",
  `remark` varchar(64) NOT NULL DEFAULT "" COMMENT "备注",
  `sort` int unsigned NOT NULL DEFAULT 0 COMMENT "排序",
  `visible` char(1) NOT NULL DEFAULT "1" COMMENT "是否可见",
  `is_enabled` char(1) NOT NULL DEFAULT "1" COMMENT "是否使能",
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "创建时间",
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "修改时间",
  PRIMARY KEY (`id`)
) CHARSET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT "资源";
-- Create "sys_resource_api" table
CREATE TABLE `sys_resource_api` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `res_id` bigint NOT NULL COMMENT "资源id",
  `api_id` bigint NOT NULL COMMENT "api_id",
  PRIMARY KEY (`id`)
) CHARSET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT "资源api关联表";
-- Create "sys_role" table
CREATE TABLE `sys_role` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT "角色id",
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
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT "用户id",
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
-- Create "sys_user_org" table
CREATE TABLE `sys_user_org` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL COMMENT "用户id",
  `org_id` bigint NOT NULL COMMENT "组织id",
  PRIMARY KEY (`id`)
) CHARSET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT "用户组织关联表";
-- Create "sys_user_post" table
CREATE TABLE `sys_user_post` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL COMMENT "用户id",
  `post_id` bigint NOT NULL COMMENT "岗位id",
  PRIMARY KEY (`id`)
) CHARSET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT "用户岗位关联表";

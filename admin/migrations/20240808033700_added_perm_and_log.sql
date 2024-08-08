-- Modify "dict" table
ALTER TABLE `dict` MODIFY COLUMN `id` bigint NOT NULL AUTO_INCREMENT COMMENT "字典id";
-- Modify "dict_item" table
ALTER TABLE `dict_item` MODIFY COLUMN `id` bigint NOT NULL AUTO_INCREMENT COMMENT "字典项id", MODIFY COLUMN `dict_id` bigint NOT NULL COMMENT "字典id";
-- Modify "sys_user" table
ALTER TABLE `sys_user` MODIFY COLUMN `id` bigint NOT NULL COMMENT "用户id";
-- Create "log_login" table
CREATE TABLE `log_login` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL DEFAULT 0 COMMENT "用户id",
  `username` varchar(255) NOT NULL DEFAULT "" COMMENT "用户名",
  `type` bigint NOT NULL DEFAULT 1 COMMENT "登录方式,[1:web,2:ios,3:android]",
  `os` varchar(255) NOT NULL DEFAULT "" COMMENT "操作系统",
  `platform` varchar(255) NOT NULL DEFAULT "" COMMENT "平台",
  `user_agent` varchar(255) NOT NULL DEFAULT "" COMMENT "user_agent",
  `remark` varchar(255) NOT NULL DEFAULT "" COMMENT "备注",
  `login_at` datetime NOT NULL COMMENT "登录时间",
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  INDEX `idx_user_id` (`user_id`)
) CHARSET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT "登录日志";
-- Create "sys_api" table
CREATE TABLE `sys_api` (
  `id` bigint NOT NULL COMMENT "id",
  `type` varchar(64) NOT NULL DEFAULT "" COMMENT "分组类型",
  `title` varchar(255) NOT NULL DEFAULT "" COMMENT "标题",
  `path` varchar(512) NOT NULL DEFAULT "" COMMENT "路由地址",
  `method` varchar(16) NOT NULL DEFAULT "" COMMENT "请求方法",
  `remark` varchar(255) NOT NULL DEFAULT "" COMMENT "备注",
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` bigint NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) CHARSET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT "api表";
-- Create "sys_resource" table
CREATE TABLE `sys_resource` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT "资源id",
  `pid` bigint NOT NULL DEFAULT 0 COMMENT "父级资源id",
  `level` int unsigned NOT NULL DEFAULT 0 COMMENT "层级",
  `tier` varchar(512) NOT NULL COMMENT "层级",
  `type` int unsigned NOT NULL DEFAULT 0 COMMENT "菜单类型,[0:未指定,1:菜单,2:按钮,3:接口]",
  `code` varchar(64) NOT NULL DEFAULT "" COMMENT "资源代码(路由name)",
  `permission` varchar(64) NOT NULL DEFAULT "" COMMENT "权限代码",
  `title` varchar(64) NOT NULL DEFAULT "" COMMENT "名称",
  `path` varchar(512) NOT NULL DEFAULT "" COMMENT "路由地址",
  `link_target` int unsigned NOT NULL DEFAULT 1 COMMENT "链接目标,[0:未指定,1:当前窗口,2:新窗口,3:弹出窗口,4:弹出浏览器窗口]",
  `icon` varchar(64) NOT NULL DEFAULT "" COMMENT "图标",
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

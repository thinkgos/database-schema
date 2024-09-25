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

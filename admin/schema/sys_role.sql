-- sys_role 角色表
CREATE TABLE
  `sys_role` (
    `id` bigint (20) NOT NULL AUTO_INCREMENT COMMENT '角色id',
    `name` varchar(64) NOT NULL DEFAULT '' COMMENT '角色名称',
    `desc` varchar(64) NOT NULL DEFAULT '' COMMENT '角色描述',
    `is_enabled` char(1) NOT NULL DEFAULT '1' COMMENT '是否启用',
    `create_by` varchar(64) NOT NULL DEFAULT '' COMMENT '创建人',
    `update_by` varchar(64) NOT NULL DEFAULT '' COMMENT '修改人',
    `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `deleted_at` bigint (20) NOT NULL DEFAULT '0',
    PRIMARY KEY (`id`) USING BTREE
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '角色表';
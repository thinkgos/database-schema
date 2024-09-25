-- sys_user_org 用户组织关联表
CREATE TABLE
    `sys_user_org` (
        `id` bigint (20) NOT NULL AUTO_INCREMENT,
        `user_id` bigint (20) NOT NULL COMMENT '用户id',
        `org_id` bigint (20) NOT NULL COMMENT '组织id',
        PRIMARY KEY (`id`) USING BTREE
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户组织关联表';
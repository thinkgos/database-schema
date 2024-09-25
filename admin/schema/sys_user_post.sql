-- sys_user_post 用户岗位关联表
CREATE TABLE
    `sys_user_post` (
        `id` bigint (20) NOT NULL AUTO_INCREMENT,
        `user_id` bigint (20) NOT NULL COMMENT '用户id',
        `post_id` bigint (20) NOT NULL COMMENT '岗位id',
        PRIMARY KEY (`id`) USING BTREE
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户岗位关联表';
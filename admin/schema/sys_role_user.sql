-- sys_role_user 用户角色关联表
CREATE TABLE
  `sys_role_user` (
    `id` bigint (20) NOT NULL AUTO_INCREMENT,
    `role_id` bigint (20) NOT NULL COMMENT '角色id',
    `user_id` bigint (20) NOT NULL COMMENT '用户id',
    PRIMARY KEY (`id`) USING BTREE
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户角色关联表';
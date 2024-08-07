-- login_log
CREATE TABLE
    `log_login` (
        `id` bigint (20) NOT NULL AUTO_INCREMENT,
        `user_id` bigint (20) NOT NULL DEFAULT '0' COMMENT '用户id',
        `username` varchar(255) NOT NULL DEFAULT '' COMMENT '用户名',
        `type` bigint (20) NOT NULL DEFAULT '1' COMMENT '登录方式,[1:web,2:ios,3:android]',
        `os` varchar(255) NOT NULL DEFAULT '' COMMENT '操作系统',
        `platform` varchar(255) NOT NULL DEFAULT '' COMMENT '平台',
        `user_agent` varchar(255) NOT NULL DEFAULT '' COMMENT 'user_agent',
        `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
        `login_at` datetime NOT NULL COMMENT '登录时间',
        `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
        PRIMARY KEY (`id`) USING BTREE,
        KEY `idx_user_id` (`user_id`) USING BTREE
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '登录日志';
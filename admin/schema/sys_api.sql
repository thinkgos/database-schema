-- sys_api 角色表
CREATE TABLE
    `sys_api` (
        `id` bigint (20) NOT NULL COMMENT 'id',
        `type` varchar(64) NOT NULL DEFAULT '' COMMENT '分组类型',
        `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
        `path` varchar(512) NOT NULL DEFAULT '' COMMENT '路由地址',
        `method` varchar(16) NOT NULL DEFAULT '' COMMENT '请求方法',
        `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
        `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
        `deleted_at` bigint (20) NOT NULL DEFAULT '0',
        PRIMARY KEY (`id`) USING BTREE
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'api表';
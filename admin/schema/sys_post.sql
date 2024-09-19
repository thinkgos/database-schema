-- 岗位
CREATE TABLE
    `sys_post` (
        `id` bigint (20) NOT NULL AUTO_INCREMENT,
        `name` varchar(128) NOT NULL DEFAULT '' COMMENT '岗位名称',
        `code` varchar(128) NOT NULL DEFAULT '' COMMENT '岗位代码',
        `sort` int (10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
        `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
        `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
        `deleted_at` bigint (20) NOT NULL DEFAULT '0',
        PRIMARY KEY (`id`) USING BTREE
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '岗位表';
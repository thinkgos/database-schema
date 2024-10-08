CREATE TABLE
    `sys_org` (
        `id` bigint (20) NOT NULL AUTO_INCREMENT,
        `pid` bigint (20) NOT NULL DEFAULT '0' COMMENT '父级组织id',
        `tier` varchar(512) NOT NULL DEFAULT '' COMMENT '层级',
        `name` varchar(64) NOT NULL DEFAULT '' COMMENT '组织名称',
        `leader` varchar(64) NOT NULL DEFAULT '' COMMENT '负责人',
        `phone` varchar(16) NOT NULL DEFAULT '' COMMENT '负责人手机',
        `email` varchar(64) NOT NULL DEFAULT '' COMMENT '负责人邮箱',
        `sort` int (10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
        `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
        `is_enabled` char(1) NOT NULL DEFAULT '1' COMMENT '是否使能',
        `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
        `deleted_at` bigint (20) NOT NULL DEFAULT '0',
        PRIMARY KEY (`id`) USING BTREE,
        KEY `pid` (`pid`) USING BTREE
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '组织部门';
-- sys_api_group api组表
CREATE TABLE
    `sys_api_group` (
        `id` bigint (20) NOT NULL AUTO_INCREMENT COMMENT 'id',
        `tag` varchar(255) NOT NULL DEFAULT '' COMMENT '标签',
        `label` varchar(255) NOT NULL DEFAULT '' COMMENT '组名称',
        `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
        `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
        `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
        PRIMARY KEY (`id`) USING BTREE,
        UNIQUE KEY `uk_tag` (`tag`)
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'api组表';
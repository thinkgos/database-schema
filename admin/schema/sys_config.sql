CREATE TABLE
    `sys_config` (
        `id` bigint (20) NOT NULL AUTO_INCREMENT COMMENT '',
        `key` varchar(64) NOT NULL COMMENT '关键字',
        `name` varchar(64) NOT NULL COMMENT '名称',
        `value` varchar(255) NOT NULL COMMENT '值',
        `is_pin` char(1) NOT NULL COMMENT '是否锁定,一旦锁定将不可删除',
        `is_alone` char(1) NOT NULL COMMENT '是否独立,表明该条记录不可通过通用接口更新',
        `remark` varchar(255) NOT NULL COMMENT '备注',
        `created_at` datetime NOT NULL COMMENT '',
        `updated_at` datetime NOT NULL COMMENT '',
        PRIMARY KEY (`id`) USING BTREE,
        UNIQUE KEY `uk_key` (`key`) USING BTREE
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统参数配置';
-- dict 字典
CREATE TABLE
  `dict` (
    `id` bigint (20) NOT NULL AUTO_INCREMENT COMMENT '字典id',
    `key` varchar(64) NOT NULL DEFAULT '' COMMENT '关键字',
    `name` varchar(64) NOT NULL DEFAULT '' COMMENT '名称',
    `is_pin` char(1) NOT NULL DEFAULT '0' COMMENT '是否锁定',
    `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
    `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`) USING BTREE,
    UNIQUE KEY `uk_key` (`key`) USING BTREE
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '字典';
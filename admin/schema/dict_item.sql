-- dict_item 字典项
CREATE TABLE
  `dict_item` (
    `id` bigint (20) NOT NULL AUTO_INCREMENT COMMENT '字典项id',
    `dict_id` bigint (20) NOT NULL COMMENT '字典id',
    `dict_key` varchar(64) NOT NULL DEFAULT '' COMMENT '字典key',
    `label` varchar(64) NOT NULL DEFAULT '' COMMENT '字典项标签',
    `value` varchar(64) NOT NULL DEFAULT '' COMMENT '字典项值',
    `sort` int (10) unsigned NOT NULL DEFAULT '0' COMMENT '序号',
    `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
    `is_enabled` char(1) NOT NULL DEFAULT '0' COMMENT '是否启用',
    `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`) USING BTREE,
    KEY `idx_dict_id` (`dict_id`) USING BTREE,
    UNIQUE KEY `uk_key_value` (`dict_key`, `value`) USING BTREE
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '字典项';
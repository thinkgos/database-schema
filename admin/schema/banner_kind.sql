-- banner_kind 广告横幅类别
CREATE TABLE
  `banner_kind` (
    `id` bigint (20) NOT NULL AUTO_INCREMENT,
    `kind` varchar(64) NOT NULL DEFAULT '' COMMENT '类别',
    `name` varchar(64) NOT NULL DEFAULT '' COMMENT '名称',
    `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`) USING BTREE,
    UNIQUE KEY `uk_kind` (`kind`) USING BTREE
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '广告横幅类别';
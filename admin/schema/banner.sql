-- banner 广告横幅
CREATE TABLE
  `banner` (
    `id` bigint (20) NOT NULL AUTO_INCREMENT,
    `kind_id` bigint (20) NOT NULL DEFAULT '0' COMMENT '类别id',
    `kind` varchar(64) NOT NULL DEFAULT '' COMMENT '同banner_kind类别',
    `name` varchar(32) NOT NULL DEFAULT '' COMMENT '名称',
    `image` varchar(255) NOT NULL DEFAULT '' COMMENT '图片',
    `desc` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
    `sort` int (10) unsigned NOT NULL DEFAULT '255' COMMENT '排序',
    `visible` char(1) NOT NULL DEFAULT '0' COMMENT '是否可见',
    `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`) USING BTREE,
    KEY `idx_kind_id` (`kind_id`) USING BTREE,
    KEY `idx_kind` (`kind`) USING BTREE
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '广告横幅';
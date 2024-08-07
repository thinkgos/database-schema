-- guide 新手指导
CREATE TABLE
  `guide` (
    `id` bigint (20) NOT NULL AUTO_INCREMENT,
    `title` varchar(255) NOT NULL DEFAULT '',
    `content` varchar(8192) NOT NULL DEFAULT '',
    `visible` char(1) NOT NULL DEFAULT '0' COMMENT '是否显示',
    `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '发布时间',
    `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `deleted_at` bigint (20) NOT NULL DEFAULT '0',
    PRIMARY KEY (`id`) USING BTREE
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '新手指导';
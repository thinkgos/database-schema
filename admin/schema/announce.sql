-- announce 公告-面向所有人的消息
CREATE TABLE
  `announce` (
    `id` bigint (20) NOT NULL AUTO_INCREMENT,
    `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
    `content` varchar(2048) NOT NULL DEFAULT '' COMMENT '内容',
    `priority` int (10) unsigned NOT NULL DEFAULT '255' COMMENT '优先级',
    `visible` char(1) NOT NULL DEFAULT '0' COMMENT '是否显示',
    `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '发布时间',
    `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `deleted_at` bigint (20) NOT NULL DEFAULT '0',
    PRIMARY KEY (`id`) USING BTREE
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '公告-面向所有人的消息';
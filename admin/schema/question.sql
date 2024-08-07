-- question 常见问题
CREATE TABLE
  `question` (
    `id` bigint (20) NOT NULL AUTO_INCREMENT,
    `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
    `content` varchar(4096) NOT NULL DEFAULT '' COMMENT '内容',
    `cover` varchar(255) NOT NULL DEFAULT '' COMMENT '封面',
    `desc` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
    `visible` char(1) NOT NULL DEFAULT '0' COMMENT '是否可见',
    `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `deleted_at` bigint (20) NOT NULL DEFAULT '0',
    PRIMARY KEY (`id`) USING BTREE
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '常见问题';
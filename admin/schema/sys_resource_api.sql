-- sys_resource_api 资源api关联表
CREATE TABLE
    `sys_resource_api` (
        `id` bigint (20) NOT NULL AUTO_INCREMENT,
        `res_id` bigint (20) NOT NULL COMMENT '资源id',
        `api_id` bigint (20) NOT NULL COMMENT 'api_id',
        PRIMARY KEY (`id`) USING BTREE
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '资源api关联表';
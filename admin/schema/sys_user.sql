-- sys_user 系统用户
CREATE TABLE
  `sys_user` (
    `id` bigint (20) NOT NULL COMMENT '用户id',
    `name` varchar(64) NOT NULL DEFAULT '' COMMENT '登录名(不可修改)',
    `passwd` varchar(64) NOT NULL DEFAULT '' COMMENT '密码',
    `real_name` varchar(64) NOT NULL DEFAULT '' COMMENT '真实姓名',
    `nickname` varchar(64) NOT NULL DEFAULT '' COMMENT '昵称',
    `mobile` varchar(64) NOT NULL DEFAULT '' COMMENT '手机号',
    `email` varchar(64) NOT NULL DEFAULT '' COMMENT 'email',
    `avatar` varchar(256) NOT NULL DEFAULT '' COMMENT '头像',
    `qq` varchar(64) NOT NULL DEFAULT '' COMMENT 'qq',
    `wx` varchar(64) NOT NULL DEFAULT '' COMMENT 'wechat',
    `gender` int (10) unsigned NOT NULL DEFAULT '0' COMMENT '性别,[0:未指定,1:男,2:女,3:未知]',
    `last_login_ip` varchar(64) NOT NULL DEFAULT '' COMMENT '上一次登录IP',
    `last_login_loc` varchar(64) NOT NULL DEFAULT '' COMMENT '上一次登录地',
    `last_login_time` bigint (20) NOT NULL DEFAULT '0' COMMENT '上一次登录时间',
    `is_admin` char(1) NOT NULL DEFAULT '0' COMMENT '是否是超级用户',
    `need_change` char(1) NOT NULL DEFAULT '1' COMMENT '是否需要修改密码',
    `status` int (10) unsigned NOT NULL DEFAULT '1' COMMENT '状态,[0:未指定,1:启用,2:禁用,3:临时锁定]',
    `create_by` varchar(64) NOT NULL DEFAULT '' COMMENT '创建人',
    `update_by` varchar(64) NOT NULL DEFAULT '' COMMENT '修改人',
    `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `deleted_at` bigint (20) NOT NULL DEFAULT '0',
    PRIMARY KEY (`id`) USING BTREE,
    UNIQUE KEY `name_deleted_at` (`name`, `deleted_at`) USING BTREE
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '系统用户';
-- sys_resource 资源
CREATE TABLE
  `sys_resource` (
    `id` bigint (20) NOT NULL AUTO_INCREMENT COMMENT '资源id',
    `pid` bigint (20) NOT NULL DEFAULT '0' COMMENT '父级资源id',
    `level` int (10) unsigned NOT NULL DEFAULT '0' COMMENT '层级',
    `tier` varchar(512) NOT NULL COMMENT '层级',
    `type` varchar(8) NOT NULL DEFAULT 'dir' COMMENT '菜单类型,[menu:目录,carte:菜单,btn:按钮]',
    `code` varchar(64) NOT NULL DEFAULT '' COMMENT '资源代码(路由name)',
    `permission` varchar(64) NOT NULL DEFAULT '' COMMENT '权限代码',
    `title` varchar(64) NOT NULL DEFAULT '' COMMENT '名称',
    `path` varchar(512) NOT NULL DEFAULT '' COMMENT '路由地址',
    `icon` varchar(64) NOT NULL DEFAULT '' COMMENT '图标',
    `breadcrumb` varchar(255) DEFAULT '' COMMENT '面包屑',
    `component` varchar(255) DEFAULT '' COMMENT '组件',
    `remark` varchar(64) NOT NULL DEFAULT '' COMMENT '备注',
    `sort` int (10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
    `visible` char(1) NOT NULL DEFAULT '1' COMMENT '是否可见',
    `is_enabled` char(1) NOT NULL DEFAULT '1' COMMENT '是否使能',
    `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
    PRIMARY KEY (`id`) USING BTREE
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '资源';
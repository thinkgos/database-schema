-- perm 权限表(注:用户权限与角色权限可以统一用该表保存)
CREATE TABLE
  `sys_perm` (
    `id` bigint (20) NOT NULL AUTO_INCREMENT COMMENT '系统编号',
    `sub_type` int (10) unsigned NOT NULL DEFAULT '0' COMMENT '权限主体类型,[0:用户,1:角色,2:组织]',
    `sub_id` bigint (20) NOT NULL DEFAULT '0' COMMENT '主体id[用户id,角色id,组织id]',
    `obj_type` varchar(8) NOT NULL DEFAULT 'menu' COMMENT '资源类型,[menu:目录,carte:菜单,btn:按钮,ifc:接口]',
    `obj_id` bigint (20) NOT NULL DEFAULT '0' COMMENT '资源id',
    `eft` varchar(8) NOT NULL DEFAULT '' COMMENT '权限效果[允许:allow;拒绝:deny]',
    `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`) USING BTREE,
    KEY `idx_sub_id_obj_id` (`sub_id`, `obj_id`) USING BTREE
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '权限表(注:用户权限与角色权限可以统一用该表保存)';
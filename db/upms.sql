create table sys_dept(
  `id` int not null auto_increment,
  `name` varchar(20) not null comment '部门名称',
  `level` varchar(20) not null comment '部门层级',
  `seq` int not null default 0 comment '部门在当前层级的排序',
  `remark` varchar(36) ,
  `parent_id` int not null,
  `operator` varchar(20) not null comment '操作者',
  `operate_time` date not null comment '最后一次操作时间',
  `operate_ip` varchar(20) comment '最后一次操作的ip',
  primary key (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '部门表';

create table sys_user(
  `id` int not null auto_increment,
  `username` varchar(20) not null ,
  `telephone` varchar(20) not null ,
  `mail` varchar(100) ,
  `password` varchar(32) not null ,
  `remark` varchar(100),
  `deptId` int ,
  `status` int not null default 0 comment '状态：1正常   0冻结',
  `operator` varchar(20) not null comment '操作者',
  `operate_time` date not null comment '最后一次操作时间',
  `operate_ip` varchar(20) comment '最后一次操作的ip',
  primary key (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '人员表';

create table sys_acl_module(
  `id` int not null auto_increment,
  `name` varchar(20) not null comment '权限模块名称',
  `parent_id` int not null,
  `level` varchar(20) not null comment '权限模块层级',
  `status` int not null default 0 comment '状态：1正常   0冻结',
  `seq` int not null default 0 comment '权限模块在当前层级的排序',
  `remark` varchar(36) ,
  `operator` varchar(20) not null comment '操作者',
  `operate_time` date not null comment '最后一次操作时间',
  `operate_ip` varchar(20) comment '最后一次操作的ip',
  primary key (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '权限模块表';

create table sys_acl_module(
  `id` int not null auto_increment,
  `code` varchar(20) not null comment '权限码，某人操作某事件是否具有这个权限码',
  `name` varchar(20) not null comment '权限名称',
  `acl_module_id` int not null,
  `url` varchar(100) not null comment '请求的url，可以填正则表达式',
  `type` int not null comment '1 菜单，2 button，3 其他',
  `status` int not null default 0 comment '状态：1正常   0冻结',
  `seq` int not null default 0 comment '权限在当前模块下的排序',
  `remark` varchar(36) ,
  `operator` varchar(20) not null comment '操作者',
  `operate_time` date not null comment '最后一次操作时间',
  `operate_ip` varchar(20) comment '最后一次操作的ip',
  primary key (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 comment '权限表';
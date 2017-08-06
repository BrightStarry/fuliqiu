/**
用户表
 */
CREATE TABLE user(
  id BIGINT AUTO_INCREMENT COMMENT 'id',
  username VARCHAR(32) NOT NULL COMMENT '用户昵称',
  head_image VARCHAR(30) NOT NULL COMMENT '用户头像路径',
  phone VARCHAR(16)  COMMENT '手机号码',
  email VARCHAR(40) COMMENT '电子邮箱',
  password VARCHAR(20) COMMENT '密码',
  token VARCHAR(64) COMMENT '口令',
  last_time TIMESTAMP NOT NULL DEFAULT  CURRENT_TIMESTAMP COMMENT  '最后登录时间',
  type TINYINT NOT NULL COMMENT '用户类型',
  status TINYINT NOT NULL COMMENT '用户状态',
  address VARCHAR(40) COMMENT '用户大致地址',
  create_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',

  PRIMARY KEY (id),
  KEY idx_username(username),
  KEY idx_phone(phone),
  KEY idx_token(token),
  KEY idx_last_time(last_time),
  KEY idx_type(type),
  KEY idx_status(status),
  KEY idx_address(address),
  KEY idx_create_time(create_time),
  KEY idx_username_password(username,password)
)ENGINE = InnoDB AUTO_INCREMENT = 1000 COMMENT='用户表';

/**
帖子
 */
CREATE TABLE post(
  id BIGINT AUTO_INCREMENT COMMENT 'id',
  title VARCHAR(64) NOT NULL COMMENT '标题',
  type_a_id TINYINT NOT NULL COMMENT '一级分类',
  type_b_id TINYINT NOT NULL COMMENT '二级分类',
  type_c_id TINYINT NOT NULL COMMENT '三级分类',
  tag VARCHAR(64) NOT NULL COMMENT '标签',
  views INT NOT NULL DEFAULT 0 COMMENT '浏览量',
  comments INT NOT NULL DEFAULT 0 COMMENT '评论数',
  tops INT NOT NULL DEFAULT 0 COMMENT '点赞数',
  content TEXT NOT NULL COMMENT 'html内容',
  content_source TEXT NOT NULL COMMENT '富文本源内容',
  create_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',

  PRIMARY KEY (id),
  KEY idx_title(title),
  KEY idx_type(type),
  KEY idx_tag(tag),
  KEY idx_views(views),
  KEY idx_comments(comments),
  KEY idx_tops(tops),
  KEY idx_create_time(create_time)
)ENGINE = InnoDB AUTO_INCREMENT = 1000 COMMENT='帖子表';


/**
帖子评论表
 */
CREATE TABLE post_comment(
  id BIGINT AUTO_INCREMENT COMMENT 'id',
  post_id BIGINT NOT NULL COMMENT '帖子id',
  user_id BIGINT NOT NULL COMMENT '用户id',
  child_post_id BIGINT  COMMENT '子评论id，所有子评论显示在该父评论下，“-”分隔',
  username VARCHAR(32) NOT NULL COMMENT '用户昵称',
  tops INT NOT NULL DEFAULT 0 COMMENT '点赞数',
  content VARCHAR(300) NOT NULL COMMENT '评论内容',
  create_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',

  PRIMARY KEY (id),
  KEY idx_post_id(post_id),
  KEY idx_user_id(user_id),
  KEY idx_child_post_id(child_post_id),
  KEY idx_create_time(create_time)
)ENGINE = InnoDB AUTO_INCREMENT = 1000 COMMENT='帖子评论表';


/**
字典表
 */
CREATE TABLE dict(
  id BIGINT AUTO_INCREMENT COMMENT 'id',
  type VARCHAR(20) NOT NULL COMMENT '字典类型',
  attr VARCHAR(40) NOT NULL COMMENT '字典key',
  content VARCHAR(100) NOT NULL COMMENT '字典value',

  PRIMARY KEY(id),
  KEY idx_type(type),
  KEY idx_attr(attr),
  KEY idx_type_attr(type,attr)
)ENGINE = InnoDB AUTO_INCREMENT =1000 COMMENT='字典表';

/**
邮箱发送记录表
 */
CREATE TABLE email_record(
  id BIGINT AUTO_INCREMENT COMMENT 'id',
  user_id BIGINT NOT NULL COMMENT '用户id',
  email VARCHAR(50) NOT NULL COMMENT '邮箱',
  state TINYINT NOT NULL DEFAULT 1 COMMENT '发送状态， 1：成功 ； 0：失败',
  content VARCHAR(500) NOT NULL COMMENT '发送内容',
  create_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',

  PRIMARY KEY(id),
  KEY idx_user_id(user_id),
  KEY idx_state(state),
  KEY idx_mail(email),
  KEY idx_create_time(create_time)
)ENGINE = InnoDB AUTO_INCREMENT = 1000 COMMENT='邮件记录表';


/**
用户登录记录表
*/
CREATE TABLE login_record(
  id BIGINT AUTO_INCREMENT COMMENT 'id',
  user_id BIGINT NOT NULL COMMENT '用户id',
  ip VARCHAR(64) NOT NULL COMMENT '登录ip',
  address VARCHAR(40) NOT NULL DEFAULT '未知' COMMENT '登录地区',
  create_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',

  PRIMARY KEY(id),
  KEY idx_user_id(user_id),
  KEY idx_ip(ip),
  KEY idx_address(address),
  KEY idx_create_time(create_time)
)ENGINE = InnoDB AUTO_INCREMENT = 1000 COMMENT='登录记录表';

/**
弹幕记录表
 */
CREATE TABLE barrage_record(
  id BIGINT AUTO_INCREMENT COMMENT 'id',
  user_id BIGINT NOT NULL  COMMENT '用户id',
  username VARCHAR(40) NOT NULL  COMMENT '用户昵称',
  content VARCHAR(200) NOT NULL COMMENT '发送内容',
  create_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',

  PRIMARY KEY(id)
)ENGINE = InnoDB AUTO_INCREMENT =1000 COMMENT='弹幕记录表';

/**
页面内容,动态的加载页面上的一些内容
 */
CREATE TABLE page_content(
  id BIGINT AUTO_INCREMENT COMMENT 'id',
  page_name VARCHAR(30) NOT NULL COMMENT 'html文件名',
  number TINYINT NOT NULL COMMENT '每个页面内容编号',
  title VARCHAR(40) NOT NULL DEFAULT '未命名' COMMENT '内容标题',
  content VARCHAR(300) NOT NULL COMMENT 'html内容'

  PRIMARY KEY(id),
  KEY idx_page_name(page_name),
  KEY idx_page_name_number(page_name,number)
)ENGINE = InnoDB AUTO_INCREMENT =1000 COMMENT='页面内容表';
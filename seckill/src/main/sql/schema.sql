--��ɱ��Ʒ����
| seckill | CREATE TABLE seckill (
  seckill_id bigint(20) NOT NULL AUTO_INCREMENT COMMENT '��Ʒ���id',
  name varchar(120) NOT NULL COMMENT '��Ʒ����',
  number int(11) NOT NULL COMMENT '�������',
  create_time timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',

  start_time timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '��ɱ��
ʼʱ��',
  end_time timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '��ɱ����
ʱ��',
  PRIMARY KEY (`seckill_id`),
  KEY idx_end_time (`end_time`),
  KEY idx_create_time (`create_time`)
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COMMENT='��ɱ����'; |
--��ɱ�ɹ���ϸ��
create table success_killed(
seckill_id bigint not null comment '��ɱ��Ʒid',
user_phone bigint not null comment '�û��ֻ���',
state tinyint not null default -1 comment '״̬��ʾ��-1:��Ч 0:�ɹ� 1:�Ը���',
create_time timestamp NOT NULL COMMENT '����ʱ��',
primary key(seckill_id,user_phone),/*��������*/
KEY idx_create_time (`create_time`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='��ɱ�ɹ���ϸ��' ;

--�û���¼��֤��ص���Ϣ
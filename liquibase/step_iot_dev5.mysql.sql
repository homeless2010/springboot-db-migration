-- liquibase formatted sql

-- changeset 82431:1666749878754-1
CREATE TABLE step_iot_dev.QRTZ_BLOB_TRIGGERS (SCHED_NAME VARCHAR(120) NOT NULL, TRIGGER_NAME VARCHAR(190) NOT NULL, TRIGGER_GROUP VARCHAR(190) NOT NULL, BLOB_DATA BLOB NULL, CONSTRAINT PK_QRTZ_BLOB_TRIGGERS PRIMARY KEY (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP));

-- changeset 82431:1666749878754-2
CREATE TABLE step_iot_dev.QRTZ_CALENDARS (SCHED_NAME VARCHAR(120) NOT NULL, CALENDAR_NAME VARCHAR(190) NOT NULL, CALENDAR BLOB NOT NULL, CONSTRAINT PK_QRTZ_CALENDARS PRIMARY KEY (SCHED_NAME, CALENDAR_NAME));

-- changeset 82431:1666749878754-3
CREATE TABLE step_iot_dev.QRTZ_CRON_TRIGGERS (SCHED_NAME VARCHAR(120) NOT NULL, TRIGGER_NAME VARCHAR(190) NOT NULL, TRIGGER_GROUP VARCHAR(190) NOT NULL, CRON_EXPRESSION VARCHAR(120) NOT NULL, TIME_ZONE_ID VARCHAR(80) NULL, CONSTRAINT PK_QRTZ_CRON_TRIGGERS PRIMARY KEY (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP));

-- changeset 82431:1666749878754-4
CREATE TABLE step_iot_dev.QRTZ_FIRED_TRIGGERS (SCHED_NAME VARCHAR(120) NOT NULL, ENTRY_ID VARCHAR(95) NOT NULL, TRIGGER_NAME VARCHAR(190) NOT NULL, TRIGGER_GROUP VARCHAR(190) NOT NULL, INSTANCE_NAME VARCHAR(190) NOT NULL, FIRED_TIME BIGINT NOT NULL, SCHED_TIME BIGINT NOT NULL, PRIORITY INT NOT NULL, STATE VARCHAR(16) NOT NULL, JOB_NAME VARCHAR(190) NULL, JOB_GROUP VARCHAR(190) NULL, IS_NONCONCURRENT VARCHAR(1) NULL, REQUESTS_RECOVERY VARCHAR(1) NULL, CONSTRAINT PK_QRTZ_FIRED_TRIGGERS PRIMARY KEY (SCHED_NAME, ENTRY_ID));

-- changeset 82431:1666749878754-5
CREATE TABLE step_iot_dev.QRTZ_JOB_DETAILS (SCHED_NAME VARCHAR(120) NOT NULL, JOB_NAME VARCHAR(190) NOT NULL, JOB_GROUP VARCHAR(190) NOT NULL, `DESCRIPTION` VARCHAR(250) NULL, JOB_CLASS_NAME VARCHAR(250) NOT NULL, IS_DURABLE VARCHAR(1) NOT NULL, IS_NONCONCURRENT VARCHAR(1) NOT NULL, IS_UPDATE_DATA VARCHAR(1) NOT NULL, REQUESTS_RECOVERY VARCHAR(1) NOT NULL, JOB_DATA BLOB NULL, CONSTRAINT PK_QRTZ_JOB_DETAILS PRIMARY KEY (SCHED_NAME, JOB_NAME, JOB_GROUP));

-- changeset 82431:1666749878754-6
CREATE TABLE step_iot_dev.QRTZ_LOCKS (SCHED_NAME VARCHAR(120) NOT NULL, LOCK_NAME VARCHAR(40) NOT NULL, CONSTRAINT PK_QRTZ_LOCKS PRIMARY KEY (SCHED_NAME, LOCK_NAME));

-- changeset 82431:1666749878754-7
CREATE TABLE step_iot_dev.QRTZ_PAUSED_TRIGGER_GRPS (SCHED_NAME VARCHAR(120) NOT NULL, TRIGGER_GROUP VARCHAR(190) NOT NULL, CONSTRAINT PK_QRTZ_PAUSED_TRIGGER_GRPS PRIMARY KEY (SCHED_NAME, TRIGGER_GROUP));

-- changeset 82431:1666749878754-8
CREATE TABLE step_iot_dev.QRTZ_SCHEDULER_STATE (SCHED_NAME VARCHAR(120) NOT NULL, INSTANCE_NAME VARCHAR(190) NOT NULL, LAST_CHECKIN_TIME BIGINT NOT NULL, CHECKIN_INTERVAL BIGINT NOT NULL, CONSTRAINT PK_QRTZ_SCHEDULER_STATE PRIMARY KEY (SCHED_NAME, INSTANCE_NAME));

-- changeset 82431:1666749878754-9
CREATE TABLE step_iot_dev.QRTZ_SIMPLE_TRIGGERS (SCHED_NAME VARCHAR(120) NOT NULL, TRIGGER_NAME VARCHAR(190) NOT NULL, TRIGGER_GROUP VARCHAR(190) NOT NULL, REPEAT_COUNT BIGINT NOT NULL, REPEAT_INTERVAL BIGINT NOT NULL, TIMES_TRIGGERED BIGINT NOT NULL, CONSTRAINT PK_QRTZ_SIMPLE_TRIGGERS PRIMARY KEY (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP));

-- changeset 82431:1666749878754-10
CREATE TABLE step_iot_dev.QRTZ_SIMPROP_TRIGGERS (SCHED_NAME VARCHAR(120) NOT NULL, TRIGGER_NAME VARCHAR(190) NOT NULL, TRIGGER_GROUP VARCHAR(190) NOT NULL, STR_PROP_1 VARCHAR(512) NULL, STR_PROP_2 VARCHAR(512) NULL, STR_PROP_3 VARCHAR(512) NULL, INT_PROP_1 INT NULL, INT_PROP_2 INT NULL, LONG_PROP_1 BIGINT NULL, LONG_PROP_2 BIGINT NULL, DEC_PROP_1 DECIMAL(13, 4) NULL, DEC_PROP_2 DECIMAL(13, 4) NULL, BOOL_PROP_1 VARCHAR(1) NULL, BOOL_PROP_2 VARCHAR(1) NULL, CONSTRAINT PK_QRTZ_SIMPROP_TRIGGERS PRIMARY KEY (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP));

-- changeset 82431:1666749878754-11
CREATE TABLE step_iot_dev.QRTZ_TRIGGERS (SCHED_NAME VARCHAR(120) NOT NULL, TRIGGER_NAME VARCHAR(190) NOT NULL, TRIGGER_GROUP VARCHAR(190) NOT NULL, JOB_NAME VARCHAR(190) NOT NULL, JOB_GROUP VARCHAR(190) NOT NULL, `DESCRIPTION` VARCHAR(250) NULL, NEXT_FIRE_TIME BIGINT NULL, PREV_FIRE_TIME BIGINT NULL, PRIORITY INT NULL, TRIGGER_STATE VARCHAR(16) NOT NULL, TRIGGER_TYPE VARCHAR(8) NOT NULL, START_TIME BIGINT NOT NULL, END_TIME BIGINT NULL, CALENDAR_NAME VARCHAR(190) NULL, MISFIRE_INSTR SMALLINT NULL, JOB_DATA BLOB NULL, CONSTRAINT PK_QRTZ_TRIGGERS PRIMARY KEY (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP));

-- changeset 82431:1666749878754-12
CREATE TABLE step_iot_dev.basic_code_mapping (id INT AUTO_INCREMENT NOT NULL, name VARCHAR(50) NOT NULL COMMENT '????????????', note VARCHAR(500) NULL COMMENT '??????', items JSON(1073741824) NULL COMMENT '??????', create_by VARCHAR(20) NULL COMMENT '?????????', create_time datetime NULL COMMENT '????????????', update_by VARCHAR(20) NULL COMMENT '???????????????', update_time datetime NULL COMMENT '??????????????????', tenant_id INT NOT NULL COMMENT '??????', deleted BIT(1) NULL, CONSTRAINT PK_BASIC_CODE_MAPPING PRIMARY KEY (id)) COMMENT='????????????';
ALTER TABLE step_iot_dev.basic_code_mapping COMMENT = '????????????';
ALTER TABLE step_iot_dev.basic_code_mapping MODIFY COLUMN name VARCHAR(50) COMMENT '????????????';
ALTER TABLE step_iot_dev.basic_code_mapping MODIFY COLUMN note VARCHAR(500) COMMENT '??????';
ALTER TABLE step_iot_dev.basic_code_mapping MODIFY COLUMN items JSON(1073741824) COMMENT '??????';
ALTER TABLE step_iot_dev.basic_code_mapping MODIFY COLUMN create_by VARCHAR(20) COMMENT '?????????';
ALTER TABLE step_iot_dev.basic_code_mapping MODIFY COLUMN create_time datetime COMMENT '????????????';
ALTER TABLE step_iot_dev.basic_code_mapping MODIFY COLUMN update_by VARCHAR(20) COMMENT '???????????????';
ALTER TABLE step_iot_dev.basic_code_mapping MODIFY COLUMN update_time datetime COMMENT '??????????????????';
ALTER TABLE step_iot_dev.basic_code_mapping MODIFY COLUMN tenant_id INT COMMENT '??????';

-- changeset 82431:1666749878754-13
CREATE TABLE step_iot_dev.basic_file (id INT AUTO_INCREMENT NOT NULL, name VARCHAR(500) NOT NULL COMMENT '????????????', object_name VARCHAR(100) NOT NULL COMMENT '??????key', url VARCHAR(1000) NOT NULL COMMENT '????????????', related_type VARCHAR(30) NOT NULL COMMENT '???????????????????????????', related_id VARCHAR(100) NOT NULL COMMENT '???????????????????????????id', create_by VARCHAR(20) NULL, create_time datetime NULL, tenant_id INT NOT NULL, CONSTRAINT PK_BASIC_FILE PRIMARY KEY (id)) COMMENT='????????????';
ALTER TABLE step_iot_dev.basic_file COMMENT = '????????????';
ALTER TABLE step_iot_dev.basic_file MODIFY COLUMN name VARCHAR(500) COMMENT '????????????';
ALTER TABLE step_iot_dev.basic_file MODIFY COLUMN object_name VARCHAR(100) COMMENT '??????key';
ALTER TABLE step_iot_dev.basic_file MODIFY COLUMN url VARCHAR(1000) COMMENT '????????????';
ALTER TABLE step_iot_dev.basic_file MODIFY COLUMN related_type VARCHAR(30) COMMENT '???????????????????????????';
ALTER TABLE step_iot_dev.basic_file MODIFY COLUMN related_id VARCHAR(100) COMMENT '???????????????????????????id';

-- changeset 82431:1666749878754-14
CREATE TABLE step_iot_dev.basic_message_config (id INT AUTO_INCREMENT NOT NULL, name VARCHAR(50) NOT NULL COMMENT '????????????', type VARCHAR(30) NULL COMMENT '????????????', provider VARCHAR(30) NULL COMMENT '???????????????', config JSON(1073741824) NULL COMMENT '????????????', create_by VARCHAR(20) NULL COMMENT '?????????', create_time datetime NULL COMMENT '????????????', update_by VARCHAR(20) NULL COMMENT '???????????????', update_time datetime NULL COMMENT '??????????????????', deleted BIT(1) DEFAULT 0 NOT NULL COMMENT '1?????????0??????', tenant_id INT NOT NULL, CONSTRAINT PK_BASIC_MESSAGE_CONFIG PRIMARY KEY (id)) COMMENT='????????????';
ALTER TABLE step_iot_dev.basic_message_config COMMENT = '????????????';
ALTER TABLE step_iot_dev.basic_message_config MODIFY COLUMN name VARCHAR(50) COMMENT '????????????';
ALTER TABLE step_iot_dev.basic_message_config MODIFY COLUMN type VARCHAR(30) COMMENT '????????????';
ALTER TABLE step_iot_dev.basic_message_config MODIFY COLUMN provider VARCHAR(30) COMMENT '???????????????';
ALTER TABLE step_iot_dev.basic_message_config MODIFY COLUMN config JSON(1073741824) COMMENT '????????????';
ALTER TABLE step_iot_dev.basic_message_config MODIFY COLUMN create_by VARCHAR(20) COMMENT '?????????';
ALTER TABLE step_iot_dev.basic_message_config MODIFY COLUMN create_time datetime COMMENT '????????????';
ALTER TABLE step_iot_dev.basic_message_config MODIFY COLUMN update_by VARCHAR(20) COMMENT '???????????????';
ALTER TABLE step_iot_dev.basic_message_config MODIFY COLUMN update_time datetime COMMENT '??????????????????';
ALTER TABLE step_iot_dev.basic_message_config MODIFY COLUMN deleted BIT(1) COMMENT '1?????????0??????';

-- changeset 82431:1666749878754-15
CREATE TABLE step_iot_dev.basic_message_template (id INT AUTO_INCREMENT NOT NULL, name VARCHAR(50) NOT NULL COMMENT '????????????', type VARCHAR(30) NULL COMMENT '????????????', provider VARCHAR(30) NULL COMMENT '???????????????', config JSON(1073741824) NULL COMMENT '????????????', create_by VARCHAR(20) NULL COMMENT '?????????', create_time datetime NULL COMMENT '????????????', update_by VARCHAR(20) NULL COMMENT '???????????????', update_time datetime NULL COMMENT '??????????????????', deleted BIT(1) DEFAULT 0 NOT NULL COMMENT '1?????????0??????', tenant_id INT NOT NULL, CONSTRAINT PK_BASIC_MESSAGE_TEMPLATE PRIMARY KEY (id)) COMMENT='????????????';
ALTER TABLE step_iot_dev.basic_message_template COMMENT = '????????????';
ALTER TABLE step_iot_dev.basic_message_template MODIFY COLUMN name VARCHAR(50) COMMENT '????????????';
ALTER TABLE step_iot_dev.basic_message_template MODIFY COLUMN type VARCHAR(30) COMMENT '????????????';
ALTER TABLE step_iot_dev.basic_message_template MODIFY COLUMN provider VARCHAR(30) COMMENT '???????????????';
ALTER TABLE step_iot_dev.basic_message_template MODIFY COLUMN config JSON(1073741824) COMMENT '????????????';
ALTER TABLE step_iot_dev.basic_message_template MODIFY COLUMN create_by VARCHAR(20) COMMENT '?????????';
ALTER TABLE step_iot_dev.basic_message_template MODIFY COLUMN create_time datetime COMMENT '????????????';
ALTER TABLE step_iot_dev.basic_message_template MODIFY COLUMN update_by VARCHAR(20) COMMENT '???????????????';
ALTER TABLE step_iot_dev.basic_message_template MODIFY COLUMN update_time datetime COMMENT '??????????????????';
ALTER TABLE step_iot_dev.basic_message_template MODIFY COLUMN deleted BIT(1) COMMENT '1?????????0??????';

-- changeset 82431:1666749878754-16
CREATE TABLE step_iot_dev.core_device (id VARCHAR(50) NULL COMMENT '????????????', secret VARCHAR(30) NULL COMMENT '????????????', gateway_key VARCHAR(30) NULL COMMENT '????????????key', name VARCHAR(50) NULL COMMENT '????????????', product_id VARCHAR(20) NULL COMMENT '????????????', status VARCHAR(20) NULL COMMENT '??????', tags JSON(1073741824) NULL COMMENT '??????', create_time datetime NULL, create_by VARCHAR(20) NULL, update_time datetime NULL, update_by VARCHAR(20) NULL, tenant_id INT NOT NULL, UNIQUE (id)) COMMENT='??????';
ALTER TABLE step_iot_dev.core_device COMMENT = '??????';
ALTER TABLE step_iot_dev.core_device MODIFY COLUMN id VARCHAR(50) COMMENT '????????????';
ALTER TABLE step_iot_dev.core_device MODIFY COLUMN secret VARCHAR(30) COMMENT '????????????';
ALTER TABLE step_iot_dev.core_device MODIFY COLUMN gateway_key VARCHAR(30) COMMENT '????????????key';
ALTER TABLE step_iot_dev.core_device MODIFY COLUMN name VARCHAR(50) COMMENT '????????????';
ALTER TABLE step_iot_dev.core_device MODIFY COLUMN product_id VARCHAR(20) COMMENT '????????????';
ALTER TABLE step_iot_dev.core_device MODIFY COLUMN status VARCHAR(20) COMMENT '??????';
ALTER TABLE step_iot_dev.core_device MODIFY COLUMN tags JSON(1073741824) COMMENT '??????';

-- changeset 82431:1666749878754-17
CREATE TABLE step_iot_dev.core_product (id VARCHAR(20) NOT NULL COMMENT '??????key', secret VARCHAR(20) NOT NULL COMMENT '????????????', name VARCHAR(50) NOT NULL COMMENT '????????????', net_type VARCHAR(20) NOT NULL COMMENT '????????????', metadata JSON(1073741824) NULL COMMENT '?????????', dynamic_register BIT(1) NULL COMMENT '????????????', category_id INT NOT NULL COMMENT '??????', status VARCHAR(20) NOT NULL COMMENT '????????????', tags JSON(1073741824) NULL COMMENT '????????????', note VARCHAR(500) NULL COMMENT '????????????', create_time datetime NULL, create_by VARCHAR(20) NULL, update_time datetime NULL, update_by VARCHAR(20) NULL, deleted BIT(1) NULL, tenant_id INT NOT NULL, UNIQUE (id)) COMMENT='??????';
ALTER TABLE step_iot_dev.core_product COMMENT = '??????';
ALTER TABLE step_iot_dev.core_product MODIFY COLUMN id VARCHAR(20) COMMENT '??????key';
ALTER TABLE step_iot_dev.core_product MODIFY COLUMN secret VARCHAR(20) COMMENT '????????????';
ALTER TABLE step_iot_dev.core_product MODIFY COLUMN name VARCHAR(50) COMMENT '????????????';
ALTER TABLE step_iot_dev.core_product MODIFY COLUMN net_type VARCHAR(20) COMMENT '????????????';
ALTER TABLE step_iot_dev.core_product MODIFY COLUMN metadata JSON(1073741824) COMMENT '?????????';
ALTER TABLE step_iot_dev.core_product MODIFY COLUMN dynamic_register BIT(1) COMMENT '????????????';
ALTER TABLE step_iot_dev.core_product MODIFY COLUMN category_id INT COMMENT '??????';
ALTER TABLE step_iot_dev.core_product MODIFY COLUMN status VARCHAR(20) COMMENT '????????????';
ALTER TABLE step_iot_dev.core_product MODIFY COLUMN tags JSON(1073741824) COMMENT '????????????';
ALTER TABLE step_iot_dev.core_product MODIFY COLUMN note VARCHAR(500) COMMENT '????????????';

-- changeset 82431:1666749878754-18
CREATE TABLE step_iot_dev.core_product_category (id INT AUTO_INCREMENT NOT NULL, name VARCHAR(50) NULL, parent_id INT NULL, deleted INT DEFAULT 0 NULL, create_by VARCHAR(20) NULL, create_time datetime NULL, update_by VARCHAR(20) NULL, update_time datetime NULL, tenant_id INT NOT NULL, CONSTRAINT PK_CORE_PRODUCT_CATEGORY PRIMARY KEY (id)) COMMENT='????????????';
ALTER TABLE step_iot_dev.core_product_category COMMENT = '????????????';

-- changeset 82431:1666749878754-19
CREATE TABLE step_iot_dev.core_rule (id INT AUTO_INCREMENT NOT NULL, name VARCHAR(50) NOT NULL COMMENT '????????????', note VARCHAR(30) NULL COMMENT '????????????', config JSON(1073741824) NULL COMMENT '????????????', status VARCHAR(20) NULL COMMENT '??????', related_product_ids JSON(1073741824) NULL COMMENT '???????????????id???????????????????????????', create_by VARCHAR(20) NULL COMMENT '?????????', create_time datetime NULL COMMENT '????????????', update_by VARCHAR(20) NULL COMMENT '???????????????', update_time datetime NULL COMMENT '??????????????????', deleted BIT(1) DEFAULT 0 NOT NULL COMMENT '1?????????0??????', tenant_id INT NOT NULL, CONSTRAINT PK_CORE_RULE PRIMARY KEY (id)) COMMENT='??????';
ALTER TABLE step_iot_dev.core_rule COMMENT = '??????';
ALTER TABLE step_iot_dev.core_rule MODIFY COLUMN name VARCHAR(50) COMMENT '????????????';
ALTER TABLE step_iot_dev.core_rule MODIFY COLUMN note VARCHAR(30) COMMENT '????????????';
ALTER TABLE step_iot_dev.core_rule MODIFY COLUMN config JSON(1073741824) COMMENT '????????????';
ALTER TABLE step_iot_dev.core_rule MODIFY COLUMN status VARCHAR(20) COMMENT '??????';
ALTER TABLE step_iot_dev.core_rule MODIFY COLUMN related_product_ids JSON(1073741824) COMMENT '???????????????id???????????????????????????';
ALTER TABLE step_iot_dev.core_rule MODIFY COLUMN create_by VARCHAR(20) COMMENT '?????????';
ALTER TABLE step_iot_dev.core_rule MODIFY COLUMN create_time datetime COMMENT '????????????';
ALTER TABLE step_iot_dev.core_rule MODIFY COLUMN update_by VARCHAR(20) COMMENT '???????????????';
ALTER TABLE step_iot_dev.core_rule MODIFY COLUMN update_time datetime COMMENT '??????????????????';
ALTER TABLE step_iot_dev.core_rule MODIFY COLUMN deleted BIT(1) COMMENT '1?????????0??????';

-- changeset 82431:1666749878754-20
CREATE TABLE step_iot_dev.sys_permission (id INT NOT NULL, code VARCHAR(50) NOT NULL, name VARCHAR(50) NOT NULL, parent_id INT NULL, sort VARCHAR(2) NULL, CONSTRAINT PK_SYS_PERMISSION PRIMARY KEY (id), UNIQUE (id));

-- changeset 82431:1666749878754-21
CREATE TABLE step_iot_dev.sys_role (id INT AUTO_INCREMENT NOT NULL, name VARCHAR(50) NOT NULL, note VARCHAR(200) NULL, create_by VARCHAR(20) NULL, create_time datetime NULL, update_by VARCHAR(20) NULL, update_time datetime NULL, tenant_id INT NULL, CONSTRAINT PK_SYS_ROLE PRIMARY KEY (id), UNIQUE (id)) COMMENT='??????';
ALTER TABLE step_iot_dev.sys_role COMMENT = '??????';

-- changeset 82431:1666749878754-22
CREATE TABLE step_iot_dev.sys_role_permission (id INT AUTO_INCREMENT NOT NULL, role_id INT NULL, permission_id INT NULL, CONSTRAINT PK_SYS_ROLE_PERMISSION PRIMARY KEY (id)) COMMENT='??????????????????';
ALTER TABLE step_iot_dev.sys_role_permission COMMENT = '??????????????????';

-- changeset 82431:1666749878754-23
CREATE TABLE step_iot_dev.sys_tenant (id INT AUTO_INCREMENT NOT NULL, name VARCHAR(100) NOT NULL COMMENT '????????????', note VARCHAR(500) NULL COMMENT '??????', status VARCHAR(30) NULL COMMENT '??????', admin_id INT NOT NULL COMMENT '?????????Id', create_by VARCHAR(20) NULL COMMENT '?????????', create_time datetime NULL COMMENT '????????????', update_by VARCHAR(20) NULL COMMENT '???????????????', update_time datetime NULL COMMENT '??????????????????', deleted BIT(1) DEFAULT 0 NOT NULL COMMENT '1?????????0??????', CONSTRAINT PK_SYS_TENANT PRIMARY KEY (id)) COMMENT='????????????';
ALTER TABLE step_iot_dev.sys_tenant COMMENT = '????????????';
ALTER TABLE step_iot_dev.sys_tenant MODIFY COLUMN name VARCHAR(100) COMMENT '????????????';
ALTER TABLE step_iot_dev.sys_tenant MODIFY COLUMN note VARCHAR(500) COMMENT '??????';
ALTER TABLE step_iot_dev.sys_tenant MODIFY COLUMN status VARCHAR(30) COMMENT '??????';
ALTER TABLE step_iot_dev.sys_tenant MODIFY COLUMN admin_id INT COMMENT '?????????Id';
ALTER TABLE step_iot_dev.sys_tenant MODIFY COLUMN create_by VARCHAR(20) COMMENT '?????????';
ALTER TABLE step_iot_dev.sys_tenant MODIFY COLUMN create_time datetime COMMENT '????????????';
ALTER TABLE step_iot_dev.sys_tenant MODIFY COLUMN update_by VARCHAR(20) COMMENT '???????????????';
ALTER TABLE step_iot_dev.sys_tenant MODIFY COLUMN update_time datetime COMMENT '??????????????????';
ALTER TABLE step_iot_dev.sys_tenant MODIFY COLUMN deleted BIT(1) COMMENT '1?????????0??????';

-- changeset 82431:1666749878754-24
CREATE TABLE step_iot_dev.sys_user (id INT AUTO_INCREMENT NOT NULL, type VARCHAR(20) NOT NULL COMMENT '????????????', username VARCHAR(30) NOT NULL COMMENT '?????????', phone VARCHAR(30) NOT NULL COMMENT '??????', password VARCHAR(100) NOT NULL COMMENT '??????', name VARCHAR(30) NOT NULL COMMENT '??????', status VARCHAR(30) NULL COMMENT '??????', create_by VARCHAR(20) NULL COMMENT '?????????', create_time datetime NULL COMMENT '????????????', update_by VARCHAR(20) NULL COMMENT '???????????????', update_time datetime NULL COMMENT '??????????????????', deleted BIT(1) DEFAULT 0 NOT NULL COMMENT '1?????????0??????', tenant_id INT NULL COMMENT '??????', CONSTRAINT PK_SYS_USER PRIMARY KEY (id)) COMMENT='??????';
ALTER TABLE step_iot_dev.sys_user COMMENT = '??????';
ALTER TABLE step_iot_dev.sys_user MODIFY COLUMN type VARCHAR(20) COMMENT '????????????';
ALTER TABLE step_iot_dev.sys_user MODIFY COLUMN username VARCHAR(30) COMMENT '?????????';
ALTER TABLE step_iot_dev.sys_user MODIFY COLUMN phone VARCHAR(30) COMMENT '??????';
ALTER TABLE step_iot_dev.sys_user MODIFY COLUMN password VARCHAR(100) COMMENT '??????';
ALTER TABLE step_iot_dev.sys_user MODIFY COLUMN name VARCHAR(30) COMMENT '??????';
ALTER TABLE step_iot_dev.sys_user MODIFY COLUMN status VARCHAR(30) COMMENT '??????';
ALTER TABLE step_iot_dev.sys_user MODIFY COLUMN create_by VARCHAR(20) COMMENT '?????????';
ALTER TABLE step_iot_dev.sys_user MODIFY COLUMN create_time datetime COMMENT '????????????';
ALTER TABLE step_iot_dev.sys_user MODIFY COLUMN update_by VARCHAR(20) COMMENT '???????????????';
ALTER TABLE step_iot_dev.sys_user MODIFY COLUMN update_time datetime COMMENT '??????????????????';
ALTER TABLE step_iot_dev.sys_user MODIFY COLUMN deleted BIT(1) COMMENT '1?????????0??????';
ALTER TABLE step_iot_dev.sys_user MODIFY COLUMN tenant_id INT COMMENT '??????';

-- changeset 82431:1666749878754-25
CREATE TABLE step_iot_dev.sys_user_role (id INT AUTO_INCREMENT NOT NULL, user_id INT NULL, role_id INT NULL, CONSTRAINT PK_SYS_USER_ROLE PRIMARY KEY (id)) COMMENT='??????????????????';
ALTER TABLE step_iot_dev.sys_user_role COMMENT = '??????????????????';

-- changeset 82431:1666749878754-26
CREATE INDEX IDX_QRTZ_FT_INST_JOB_REQ_RCVRY ON step_iot_dev.QRTZ_FIRED_TRIGGERS(SCHED_NAME, INSTANCE_NAME, REQUESTS_RECOVERY);

-- changeset 82431:1666749878754-27
CREATE INDEX IDX_QRTZ_FT_JG ON step_iot_dev.QRTZ_FIRED_TRIGGERS(SCHED_NAME, JOB_GROUP);

-- changeset 82431:1666749878754-28
CREATE INDEX IDX_QRTZ_FT_J_G ON step_iot_dev.QRTZ_FIRED_TRIGGERS(SCHED_NAME, JOB_NAME, JOB_GROUP);

-- changeset 82431:1666749878754-29
CREATE INDEX IDX_QRTZ_FT_TG ON step_iot_dev.QRTZ_FIRED_TRIGGERS(SCHED_NAME, TRIGGER_GROUP);

-- changeset 82431:1666749878754-30
CREATE INDEX IDX_QRTZ_FT_TRIG_INST_NAME ON step_iot_dev.QRTZ_FIRED_TRIGGERS(SCHED_NAME, INSTANCE_NAME);

-- changeset 82431:1666749878754-31
CREATE INDEX IDX_QRTZ_FT_T_G ON step_iot_dev.QRTZ_FIRED_TRIGGERS(SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP);

-- changeset 82431:1666749878754-32
CREATE INDEX IDX_QRTZ_J_GRP ON step_iot_dev.QRTZ_JOB_DETAILS(SCHED_NAME, JOB_GROUP);

-- changeset 82431:1666749878754-33
CREATE INDEX IDX_QRTZ_J_REQ_RECOVERY ON step_iot_dev.QRTZ_JOB_DETAILS(SCHED_NAME, REQUESTS_RECOVERY);

-- changeset 82431:1666749878754-34
CREATE INDEX IDX_QRTZ_T_C ON step_iot_dev.QRTZ_TRIGGERS(SCHED_NAME, CALENDAR_NAME);

-- changeset 82431:1666749878754-35
CREATE INDEX IDX_QRTZ_T_G ON step_iot_dev.QRTZ_TRIGGERS(SCHED_NAME, TRIGGER_GROUP);

-- changeset 82431:1666749878754-36
CREATE INDEX IDX_QRTZ_T_J ON step_iot_dev.QRTZ_TRIGGERS(SCHED_NAME, JOB_NAME, JOB_GROUP);

-- changeset 82431:1666749878754-37
CREATE INDEX IDX_QRTZ_T_JG ON step_iot_dev.QRTZ_TRIGGERS(SCHED_NAME, JOB_GROUP);

-- changeset 82431:1666749878754-38
CREATE INDEX IDX_QRTZ_T_NEXT_FIRE_TIME ON step_iot_dev.QRTZ_TRIGGERS(SCHED_NAME, NEXT_FIRE_TIME);

-- changeset 82431:1666749878754-39
CREATE INDEX IDX_QRTZ_T_NFT_MISFIRE ON step_iot_dev.QRTZ_TRIGGERS(SCHED_NAME, MISFIRE_INSTR, NEXT_FIRE_TIME);

-- changeset 82431:1666749878754-40
CREATE INDEX IDX_QRTZ_T_NFT_ST ON step_iot_dev.QRTZ_TRIGGERS(SCHED_NAME, TRIGGER_STATE, NEXT_FIRE_TIME);

-- changeset 82431:1666749878754-41
CREATE INDEX IDX_QRTZ_T_NFT_ST_MISFIRE ON step_iot_dev.QRTZ_TRIGGERS(SCHED_NAME, MISFIRE_INSTR, NEXT_FIRE_TIME, TRIGGER_STATE);

-- changeset 82431:1666749878754-42
CREATE INDEX IDX_QRTZ_T_NFT_ST_MISFIRE_GRP ON step_iot_dev.QRTZ_TRIGGERS(SCHED_NAME, MISFIRE_INSTR, NEXT_FIRE_TIME, TRIGGER_GROUP, TRIGGER_STATE);

-- changeset 82431:1666749878754-43
CREATE INDEX IDX_QRTZ_T_N_G_STATE ON step_iot_dev.QRTZ_TRIGGERS(SCHED_NAME, TRIGGER_GROUP, TRIGGER_STATE);

-- changeset 82431:1666749878754-44
CREATE INDEX IDX_QRTZ_T_N_STATE ON step_iot_dev.QRTZ_TRIGGERS(SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP, TRIGGER_STATE);

-- changeset 82431:1666749878754-45
CREATE INDEX IDX_QRTZ_T_STATE ON step_iot_dev.QRTZ_TRIGGERS(SCHED_NAME, TRIGGER_STATE);

-- changeset 82431:1666749878754-46
ALTER TABLE step_iot_dev.QRTZ_BLOB_TRIGGERS ADD CONSTRAINT QRTZ_BLOB_TRIGGERS_ibfk_1 FOREIGN KEY (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP) REFERENCES step_iot_dev.QRTZ_TRIGGERS (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP) ON UPDATE RESTRICT ON DELETE RESTRICT;

-- changeset 82431:1666749878754-47
ALTER TABLE step_iot_dev.QRTZ_CRON_TRIGGERS ADD CONSTRAINT QRTZ_CRON_TRIGGERS_ibfk_1 FOREIGN KEY (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP) REFERENCES step_iot_dev.QRTZ_TRIGGERS (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP) ON UPDATE RESTRICT ON DELETE RESTRICT;

-- changeset 82431:1666749878754-48
ALTER TABLE step_iot_dev.QRTZ_SIMPLE_TRIGGERS ADD CONSTRAINT QRTZ_SIMPLE_TRIGGERS_ibfk_1 FOREIGN KEY (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP) REFERENCES step_iot_dev.QRTZ_TRIGGERS (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP) ON UPDATE RESTRICT ON DELETE RESTRICT;

-- changeset 82431:1666749878754-49
ALTER TABLE step_iot_dev.QRTZ_SIMPROP_TRIGGERS ADD CONSTRAINT QRTZ_SIMPROP_TRIGGERS_ibfk_1 FOREIGN KEY (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP) REFERENCES step_iot_dev.QRTZ_TRIGGERS (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP) ON UPDATE RESTRICT ON DELETE RESTRICT;

-- changeset 82431:1666749878754-50
ALTER TABLE step_iot_dev.QRTZ_TRIGGERS ADD CONSTRAINT QRTZ_TRIGGERS_ibfk_1 FOREIGN KEY (SCHED_NAME, JOB_NAME, JOB_GROUP) REFERENCES step_iot_dev.QRTZ_JOB_DETAILS (SCHED_NAME, JOB_NAME, JOB_GROUP) ON UPDATE RESTRICT ON DELETE RESTRICT;


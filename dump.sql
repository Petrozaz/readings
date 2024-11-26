--
create table TB_DEVICES
(
  id             NUMBER not null,
  device_type_id NUMBER not null
);
alter table TB_DEVICES
  add constraint PK_DEVICES primary key (ID);


--  
create table TB_DEVICE_TYPE
(
  id        NUMBER not null,
  type_name NVARCHAR2(50) not null
);
alter table TB_DEVICE_TYPE
  add constraint PK_DEVICE_TYPE primary key (ID);

create sequence SQ_DEVICE_TYPE
minvalue 1
maxvalue 9999999
start with 1
increment by 1
nocache;

create or replace trigger TG_DEVICE_TYPE
  before insert
  on TB_DEVICE_TYPE 
  for each row
begin
  :new.id := SQ_DEVICE_TYPE.NEXTVAL;
end TG_DEVICE_TYPE;
/  

--  
create table TB_ADDRESSES
(
  id      NUMBER not null,
  address NVARCHAR2(100) not null
);

alter table TB_ADDRESSES
  add constraint PK_ADDRESSES primary key (ID);

create sequence SQ_ADDRESSES
minvalue 1
maxvalue 9999999
start with 1
increment by 1
nocache;

create or replace trigger TG_ADDRESSES
  before insert
  on TB_ADDRESSES 
  for each row
begin
  :new.id := SQ_ADDRESSES.NEXTVAL;
end TG_ADDRESSES;
/

--
create table TB_MOVING
(
  device_id     NUMBER not null,
  default_value NUMBER not null,
  begin_date    DATE not null,
  end_date      DATE,
  device_type   NUMBER not null,
  location_id   NUMBER not null
);
 
create index IDX_MOVING_LOC on TB_MOVING (LOCATION_ID);


--
create table TB_READINGS
(
  device_id  NUMBER not null,
  read_date  DATE not null,
  read_value NUMBER
)
partition by range (READ_DATE)
(
  partition P2023 values less than (TO_DATE(' 2024-01-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN')),
  partition P2024 values less than (TO_DATE(' 2025-01-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
);
 
create index IDX_READ_DATE on TB_READINGS (READ_DATE)
  nologging  local;


--  
begin
  sys.dbms_scheduler.create_job(job_name            => 'J_ADD_PARTITION',
                                job_type            => 'PLSQL_BLOCK',
                                job_action          => 'declare
    v_sql VARCHAR2(1000);
    begin
    v_sql := ''
    ALTER TABLE TB_READINGS
    ADD PARTITION p''||TO_CHAR(sysdate+1,''YYYY'')||''
    VALUES LESS THAN (TO_DATE('''' ''||TO_CHAR(ADD_MONTHS(sysdate,13),''YYYY'')||''-01-01 00:00:00'''', ''''SYYYY-MM-DD HH24:MI:SS'''', ''''NLS_CALENDAR=GREGORIAN''''))'';
    EXECUTE IMMEDIATE v_sql;
    end;',
                                start_date          => to_date('25-11-2024 00:00:00', 'dd-mm-yyyy hh24:mi:ss'),
                                repeat_interval     => 'Freq=Yearly;ByMonth=Dec;ByMonthDay=31;ByHour=23',
                                end_date            => to_date(null),
                                job_class           => 'DEFAULT_JOB_CLASS',
                                enabled             => true,
                                auto_drop           => false,
                                comments            => '');
end;
/

--
CREATE OR REPLACE FUNCTION get_values(v_loc NUMBER, v_date DATE)
  RETURN SYS_REFCURSOR AS
  o_cursor SYS_REFCURSOR;
BEGIN
  OPEN o_cursor FOR
    SELECT f.*,
           CASE
             WHEN value_begin <> -1 AND value_end <> -1 THEN
              value_end - value_begin
             ELSE
              -1
           END diff_val
      FROM (SELECT r.device_id,
                   t.type_name,
                   CASE
                     WHEN MIN(r.read_date) > v_date THEN
                      m.begin_date
                     ELSE
                      MIN(r.read_date)
                   END period_begin,
                   CASE
                     WHEN MAX(r.read_date) < ADD_MONTHS(v_date, 1) THEN
                      MAX(r.read_date)
                     else
                      LAST_DAY(v_date)
                   END period_end,
                   CASE
                     WHEN MIN(r.read_date) > v_date THEN
                      m.default_value
                     ELSE
                      NVL(MAX(r.read_value)
                          KEEP(DENSE_RANK FIRST ORDER BY r.read_date),
                          -1)
                   END value_begin,
                   NVL(MAX(r.read_value)
                       KEEP(DENSE_RANK LAST ORDER BY r.read_date),
                       -1) value_end,
                   m.default_value,
                   a.address
            
              FROM tb_readings r
              LEFT JOIN tb_moving m
                ON r.device_id = m.device_id
               AND r.read_date BETWEEN m.begin_date AND
                   NVL(m.end_date, SYSDATE)
              LEFT JOIN tb_addresses a
                ON m.location_id = a.id
              LEFT JOIN tb_device_type t
                ON m.device_type = t.id
             WHERE m.location_id = v_loc
               AND r.read_date BETWEEN v_date AND ADD_MONTHS(v_date, 1)
             GROUP BY r.device_id,
                      t.type_name,
                      a.address,
                      m.begin_date,
                      m.default_value
             ORDER BY t.type_name, m.begin_date) f;

  RETURN o_cursor;
END;
/

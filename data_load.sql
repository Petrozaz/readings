insert into TB_ADDRESSES (id, address)
values (1, 'г.Минск, ул. Кунцевщина, 13, 121');
insert into TB_ADDRESSES (id, address)
values (2, 'г.Минск, пр-т Независимости, 44, 66');
commit;

insert into TB_DEVICES (id, device_type_id)
values (2331231, 1);
insert into TB_DEVICES (id, device_type_id)
values (2344355, 2);
insert into TB_DEVICES (id, device_type_id)
values (2344354, 3);
insert into TB_DEVICES (id, device_type_id)
values (5462342, 4);
insert into TB_DEVICES (id, device_type_id)
values (4353455, 4);
insert into TB_DEVICES (id, device_type_id)
values (4564566, 3);
insert into TB_DEVICES (id, device_type_id)
values (3453455, 2);
insert into TB_DEVICES (id, device_type_id)
values (3455465, 1);
insert into TB_DEVICES (id, device_type_id)
values (3453456, 3);
commit;

insert into TB_DEVICE_TYPE (id, type_name)
values (1, 'Счетчик электроэнергии');
insert into TB_DEVICE_TYPE (id, type_name)
values (2, 'Счетчик газа');
insert into TB_DEVICE_TYPE (id, type_name)
values (3, 'Счетчик холодной воды');
insert into TB_DEVICE_TYPE (id, type_name)
values (4, 'Счетчик горячей воды');
commit;

insert into TB_MOVING (device_id, default_value, begin_date, end_date, device_type, location_id)
values (2331231, 441.5, to_date('22-11-2024', 'dd-mm-yyyy'), null, 1, 1);
insert into TB_MOVING (device_id, default_value, begin_date, end_date, device_type, location_id)
values (3455465, 222, to_date('29-10-2024', 'dd-mm-yyyy'), to_date('22-11-2024', 'dd-mm-yyyy'), 1, 1);
insert into TB_MOVING (device_id, default_value, begin_date, end_date, device_type, location_id)
values (2344355, 11, to_date('25-10-2024', 'dd-mm-yyyy'), null, 2, 1);
insert into TB_MOVING (device_id, default_value, begin_date, end_date, device_type, location_id)
values (2344354, 0, to_date('26-10-2024', 'dd-mm-yyyy'), null, 3, 1);
insert into TB_MOVING (device_id, default_value, begin_date, end_date, device_type, location_id)
values (5462342, 22, to_date('27-10-2024', 'dd-mm-yyyy'), null, 4, 1);
commit;

insert into TB_READINGS (device_id, read_date, read_value)
values (2344355, to_date('26-10-2024', 'dd-mm-yyyy'), 20);
insert into TB_READINGS (device_id, read_date, read_value)
values (2344355, to_date('27-10-2024', 'dd-mm-yyyy'), 30);
insert into TB_READINGS (device_id, read_date, read_value)
values (2344355, to_date('28-10-2024', 'dd-mm-yyyy'), 40);
insert into TB_READINGS (device_id, read_date, read_value)
values (2344355, to_date('29-10-2024', 'dd-mm-yyyy'), 50);
insert into TB_READINGS (device_id, read_date, read_value)
values (2344355, to_date('30-10-2024', 'dd-mm-yyyy'), 60);
insert into TB_READINGS (device_id, read_date, read_value)
values (2344355, to_date('31-10-2024', 'dd-mm-yyyy'), 70);
insert into TB_READINGS (device_id, read_date, read_value)
values (2344355, to_date('01-11-2024', 'dd-mm-yyyy'), 80);
insert into TB_READINGS (device_id, read_date, read_value)
values (2344355, to_date('02-11-2024', 'dd-mm-yyyy'), 90);
insert into TB_READINGS (device_id, read_date, read_value)
values (2344355, to_date('03-11-2024', 'dd-mm-yyyy'), 100);
insert into TB_READINGS (device_id, read_date, read_value)
values (2344355, to_date('04-11-2024', 'dd-mm-yyyy'), 110);
insert into TB_READINGS (device_id, read_date, read_value)
values (2344355, to_date('05-11-2024', 'dd-mm-yyyy'), 120);
insert into TB_READINGS (device_id, read_date, read_value)
values (2344355, to_date('06-11-2024', 'dd-mm-yyyy'), 130);
insert into TB_READINGS (device_id, read_date, read_value)
values (2344355, to_date('07-11-2024', 'dd-mm-yyyy'), 140);
insert into TB_READINGS (device_id, read_date, read_value)
values (2344355, to_date('08-11-2024', 'dd-mm-yyyy'), 150);
insert into TB_READINGS (device_id, read_date, read_value)
values (2344355, to_date('09-11-2024', 'dd-mm-yyyy'), 160);
insert into TB_READINGS (device_id, read_date, read_value)
values (2344355, to_date('10-11-2024', 'dd-mm-yyyy'), 170);
insert into TB_READINGS (device_id, read_date, read_value)
values (2344355, to_date('11-11-2024', 'dd-mm-yyyy'), 180);
insert into TB_READINGS (device_id, read_date, read_value)
values (2344355, to_date('12-11-2024', 'dd-mm-yyyy'), 190);
insert into TB_READINGS (device_id, read_date, read_value)
values (2344355, to_date('13-11-2024', 'dd-mm-yyyy'), 200);
insert into TB_READINGS (device_id, read_date, read_value)
values (2344355, to_date('14-11-2024', 'dd-mm-yyyy'), 210);
insert into TB_READINGS (device_id, read_date, read_value)
values (2344355, to_date('15-11-2024', 'dd-mm-yyyy'), 220);
insert into TB_READINGS (device_id, read_date, read_value)
values (2344355, to_date('16-11-2024', 'dd-mm-yyyy'), 230);
insert into TB_READINGS (device_id, read_date, read_value)
values (2344355, to_date('17-11-2024', 'dd-mm-yyyy'), 240);
insert into TB_READINGS (device_id, read_date, read_value)
values (2344355, to_date('18-11-2024', 'dd-mm-yyyy'), 250);
insert into TB_READINGS (device_id, read_date, read_value)
values (2344355, to_date('19-11-2024', 'dd-mm-yyyy'), 260);
insert into TB_READINGS (device_id, read_date, read_value)
values (2344355, to_date('20-11-2024', 'dd-mm-yyyy'), 270);
insert into TB_READINGS (device_id, read_date, read_value)
values (2344355, to_date('21-11-2024', 'dd-mm-yyyy'), 280);
insert into TB_READINGS (device_id, read_date, read_value)
values (2344355, to_date('22-11-2024', 'dd-mm-yyyy'), 290);
insert into TB_READINGS (device_id, read_date, read_value)
values (2344355, to_date('23-11-2024', 'dd-mm-yyyy'), 300);
insert into TB_READINGS (device_id, read_date, read_value)
values (2344355, to_date('24-11-2024', 'dd-mm-yyyy'), 310);
insert into TB_READINGS (device_id, read_date, read_value)
values (2344355, to_date('25-11-2024', 'dd-mm-yyyy'), 320);
insert into TB_READINGS (device_id, read_date, read_value)
values (2344354, to_date('27-10-2024', 'dd-mm-yyyy'), 30);
insert into TB_READINGS (device_id, read_date, read_value)
values (2344354, to_date('28-10-2024', 'dd-mm-yyyy'), 40);
insert into TB_READINGS (device_id, read_date, read_value)
values (2344354, to_date('29-10-2024', 'dd-mm-yyyy'), 50);
insert into TB_READINGS (device_id, read_date, read_value)
values (2344354, to_date('30-10-2024', 'dd-mm-yyyy'), 60);
insert into TB_READINGS (device_id, read_date, read_value)
values (2344354, to_date('31-10-2024', 'dd-mm-yyyy'), 70);
insert into TB_READINGS (device_id, read_date, read_value)
values (2344354, to_date('01-11-2024', 'dd-mm-yyyy'), 80);
insert into TB_READINGS (device_id, read_date, read_value)
values (2344354, to_date('02-11-2024', 'dd-mm-yyyy'), 90);
insert into TB_READINGS (device_id, read_date, read_value)
values (2344354, to_date('03-11-2024', 'dd-mm-yyyy'), 100);
insert into TB_READINGS (device_id, read_date, read_value)
values (2344354, to_date('04-11-2024', 'dd-mm-yyyy'), 110);
insert into TB_READINGS (device_id, read_date, read_value)
values (2344354, to_date('05-11-2024', 'dd-mm-yyyy'), 120);
insert into TB_READINGS (device_id, read_date, read_value)
values (2344354, to_date('06-11-2024', 'dd-mm-yyyy'), 130);
insert into TB_READINGS (device_id, read_date, read_value)
values (2344354, to_date('07-11-2024', 'dd-mm-yyyy'), 140);
insert into TB_READINGS (device_id, read_date, read_value)
values (2344354, to_date('08-11-2024', 'dd-mm-yyyy'), 150);
insert into TB_READINGS (device_id, read_date, read_value)
values (2344354, to_date('09-11-2024', 'dd-mm-yyyy'), 160);
insert into TB_READINGS (device_id, read_date, read_value)
values (2344354, to_date('10-11-2024', 'dd-mm-yyyy'), 170);
insert into TB_READINGS (device_id, read_date, read_value)
values (2344354, to_date('11-11-2024', 'dd-mm-yyyy'), 180);
insert into TB_READINGS (device_id, read_date, read_value)
values (2344354, to_date('12-11-2024', 'dd-mm-yyyy'), 190);
insert into TB_READINGS (device_id, read_date, read_value)
values (2344354, to_date('13-11-2024', 'dd-mm-yyyy'), 200);
insert into TB_READINGS (device_id, read_date, read_value)
values (2344354, to_date('14-11-2024', 'dd-mm-yyyy'), 210);
insert into TB_READINGS (device_id, read_date, read_value)
values (2344354, to_date('15-11-2024', 'dd-mm-yyyy'), 220);
insert into TB_READINGS (device_id, read_date, read_value)
values (2344354, to_date('16-11-2024', 'dd-mm-yyyy'), 230);
insert into TB_READINGS (device_id, read_date, read_value)
values (2344354, to_date('17-11-2024', 'dd-mm-yyyy'), 240);
insert into TB_READINGS (device_id, read_date, read_value)
values (2344354, to_date('18-11-2024', 'dd-mm-yyyy'), 250);
insert into TB_READINGS (device_id, read_date, read_value)
values (2344354, to_date('19-11-2024', 'dd-mm-yyyy'), 260);
insert into TB_READINGS (device_id, read_date, read_value)
values (2344354, to_date('20-11-2024', 'dd-mm-yyyy'), 270);
insert into TB_READINGS (device_id, read_date, read_value)
values (2344354, to_date('21-11-2024', 'dd-mm-yyyy'), 280);
insert into TB_READINGS (device_id, read_date, read_value)
values (2344354, to_date('22-11-2024', 'dd-mm-yyyy'), 290);
insert into TB_READINGS (device_id, read_date, read_value)
values (2344354, to_date('23-11-2024', 'dd-mm-yyyy'), 300);
insert into TB_READINGS (device_id, read_date, read_value)
values (2344354, to_date('24-11-2024', 'dd-mm-yyyy'), 310);
insert into TB_READINGS (device_id, read_date, read_value)
values (2344354, to_date('25-11-2024', 'dd-mm-yyyy'), 320);
insert into TB_READINGS (device_id, read_date, read_value)
values (5462342, to_date('28-10-2024', 'dd-mm-yyyy'), 40);
insert into TB_READINGS (device_id, read_date, read_value)
values (5462342, to_date('29-10-2024', 'dd-mm-yyyy'), 50);
insert into TB_READINGS (device_id, read_date, read_value)
values (5462342, to_date('30-10-2024', 'dd-mm-yyyy'), 60);
insert into TB_READINGS (device_id, read_date, read_value)
values (5462342, to_date('31-10-2024', 'dd-mm-yyyy'), 70);
insert into TB_READINGS (device_id, read_date, read_value)
values (5462342, to_date('01-11-2024', 'dd-mm-yyyy'), 80);
insert into TB_READINGS (device_id, read_date, read_value)
values (5462342, to_date('02-11-2024', 'dd-mm-yyyy'), 90);
insert into TB_READINGS (device_id, read_date, read_value)
values (5462342, to_date('03-11-2024', 'dd-mm-yyyy'), 100);
insert into TB_READINGS (device_id, read_date, read_value)
values (5462342, to_date('04-11-2024', 'dd-mm-yyyy'), 110);
insert into TB_READINGS (device_id, read_date, read_value)
values (5462342, to_date('05-11-2024', 'dd-mm-yyyy'), 120);
insert into TB_READINGS (device_id, read_date, read_value)
values (5462342, to_date('06-11-2024', 'dd-mm-yyyy'), 130);
insert into TB_READINGS (device_id, read_date, read_value)
values (5462342, to_date('07-11-2024', 'dd-mm-yyyy'), 140);
insert into TB_READINGS (device_id, read_date, read_value)
values (5462342, to_date('08-11-2024', 'dd-mm-yyyy'), 150);
insert into TB_READINGS (device_id, read_date, read_value)
values (5462342, to_date('09-11-2024', 'dd-mm-yyyy'), 160);
insert into TB_READINGS (device_id, read_date, read_value)
values (5462342, to_date('10-11-2024', 'dd-mm-yyyy'), 170);
insert into TB_READINGS (device_id, read_date, read_value)
values (5462342, to_date('11-11-2024', 'dd-mm-yyyy'), 180);
insert into TB_READINGS (device_id, read_date, read_value)
values (5462342, to_date('12-11-2024', 'dd-mm-yyyy'), 190);
insert into TB_READINGS (device_id, read_date, read_value)
values (5462342, to_date('13-11-2024', 'dd-mm-yyyy'), 200);
insert into TB_READINGS (device_id, read_date, read_value)
values (5462342, to_date('14-11-2024', 'dd-mm-yyyy'), 210);
insert into TB_READINGS (device_id, read_date, read_value)
values (5462342, to_date('15-11-2024', 'dd-mm-yyyy'), 220);
insert into TB_READINGS (device_id, read_date, read_value)
values (5462342, to_date('16-11-2024', 'dd-mm-yyyy'), 230);
insert into TB_READINGS (device_id, read_date, read_value)
values (5462342, to_date('17-11-2024', 'dd-mm-yyyy'), 240);
insert into TB_READINGS (device_id, read_date, read_value)
values (5462342, to_date('18-11-2024', 'dd-mm-yyyy'), 250);
insert into TB_READINGS (device_id, read_date, read_value)
values (5462342, to_date('19-11-2024', 'dd-mm-yyyy'), 260);
insert into TB_READINGS (device_id, read_date, read_value)
values (5462342, to_date('20-11-2024', 'dd-mm-yyyy'), 270);
insert into TB_READINGS (device_id, read_date, read_value)
values (5462342, to_date('21-11-2024', 'dd-mm-yyyy'), 280);
insert into TB_READINGS (device_id, read_date, read_value)
values (5462342, to_date('22-11-2024', 'dd-mm-yyyy'), 290);
insert into TB_READINGS (device_id, read_date, read_value)
values (5462342, to_date('23-11-2024', 'dd-mm-yyyy'), 300);
insert into TB_READINGS (device_id, read_date, read_value)
values (5462342, to_date('24-11-2024', 'dd-mm-yyyy'), 310);
insert into TB_READINGS (device_id, read_date, read_value)
values (5462342, to_date('25-11-2024', 'dd-mm-yyyy'), 320);
insert into TB_READINGS (device_id, read_date, read_value)
values (2331231, to_date('24-11-2024', 'dd-mm-yyyy'), 500);
insert into TB_READINGS (device_id, read_date, read_value)
values (2331231, to_date('23-11-2024', 'dd-mm-yyyy'), 450);
insert into TB_READINGS (device_id, read_date, read_value)
values (3455465, to_date('20-11-2024', 'dd-mm-yyyy'), 405);
insert into TB_READINGS (device_id, read_date, read_value)
values (3455465, to_date('19-11-2024', 'dd-mm-yyyy'), 400);
insert into TB_READINGS (device_id, read_date, read_value)
values (3455465, to_date('18-11-2024', 'dd-mm-yyyy'), 395);
insert into TB_READINGS (device_id, read_date, read_value)
values (3455465, to_date('17-11-2024', 'dd-mm-yyyy'), 390);
insert into TB_READINGS (device_id, read_date, read_value)
values (3455465, to_date('16-11-2024', 'dd-mm-yyyy'), 385);
insert into TB_READINGS (device_id, read_date, read_value)
values (3455465, to_date('15-11-2024', 'dd-mm-yyyy'), 380);
insert into TB_READINGS (device_id, read_date, read_value)
values (3455465, to_date('14-11-2024', 'dd-mm-yyyy'), 375);
insert into TB_READINGS (device_id, read_date, read_value)
values (3455465, to_date('13-11-2024', 'dd-mm-yyyy'), 370);
commit;
insert into TB_READINGS (device_id, read_date, read_value)
values (3455465, to_date('12-11-2024', 'dd-mm-yyyy'), 360);
insert into TB_READINGS (device_id, read_date, read_value)
values (3455465, to_date('11-11-2024', 'dd-mm-yyyy'), 350);
insert into TB_READINGS (device_id, read_date, read_value)
values (3455465, to_date('10-11-2024', 'dd-mm-yyyy'), 340);
insert into TB_READINGS (device_id, read_date, read_value)
values (3455465, to_date('09-11-2024', 'dd-mm-yyyy'), 330);
insert into TB_READINGS (device_id, read_date, read_value)
values (3455465, to_date('08-11-2024', 'dd-mm-yyyy'), 320);
insert into TB_READINGS (device_id, read_date, read_value)
values (3455465, to_date('07-11-2024', 'dd-mm-yyyy'), 310);
insert into TB_READINGS (device_id, read_date, read_value)
values (3455465, to_date('06-11-2024', 'dd-mm-yyyy'), 300);
insert into TB_READINGS (device_id, read_date, read_value)
values (3455465, to_date('05-11-2024', 'dd-mm-yyyy'), 290);
insert into TB_READINGS (device_id, read_date, read_value)
values (3455465, to_date('04-11-2024', 'dd-mm-yyyy'), 280);
insert into TB_READINGS (device_id, read_date, read_value)
values (3455465, to_date('03-11-2024', 'dd-mm-yyyy'), 270);
insert into TB_READINGS (device_id, read_date, read_value)
values (3455465, to_date('02-11-2024', 'dd-mm-yyyy'), 260);
insert into TB_READINGS (device_id, read_date, read_value)
values (3455465, to_date('01-11-2024', 'dd-mm-yyyy'), 250);
insert into TB_READINGS (device_id, read_date, read_value)
values (3455465, to_date('22-11-2024', 'dd-mm-yyyy'), 420);
insert into TB_READINGS (device_id, read_date, read_value)
values (3455465, to_date('21-11-2024', 'dd-mm-yyyy'), 410);
insert into TB_READINGS (device_id, read_date, read_value)
values (2331231, to_date('25-11-2024', 'dd-mm-yyyy'), 600);
insert into TB_READINGS (device_id, read_date, read_value)
values (3455465, to_date('31-10-2024', 'dd-mm-yyyy'), 240);
insert into TB_READINGS (device_id, read_date, read_value)
values (3455465, to_date('30-10-2024', 'dd-mm-yyyy'), 230);
commit;

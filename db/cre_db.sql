create database cricvibe_development;
create database cricvibe_test;
--create database cricvibe_production;
grant all on cricvibe_development.* to 'cricvibe'@'localhost' identified by 'cricvibe';
grant all on cricvibe_test.* to 'cricvibe'@'localhost' identified by 'cricvibe';
--grant all on cricvibe_production.* to 'cricvibe'@'localhost' identified by 'cricvibe';
quit

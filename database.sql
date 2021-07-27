create user admin identified by '12345';
grant all on shopweb.* to 'admin'@'%';
flush privileges;
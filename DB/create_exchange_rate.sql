create table if not exists michelin.exchange_rate (
    ID int not null auto_increment,
    Currency varchar(8),
    conversion float,
    primary key(ID)
);

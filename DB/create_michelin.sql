create table if not exists michelin.michelin_star (
    ID int not null auto_increment,
    Name varchar(256),
    Address varchar(256),
    Location varchar(256),
    MinPrice int,
    MaxPrice int,
    Currency varchar(8),
    Cuisine varchar(64),
    Longitude float,
    Latitude float,
    PhoneNumber varchar(256),
    Url varchar(512),
    WebsiteUrl varchar(512),
    Award varchar(64),
    primary key(ID)
);

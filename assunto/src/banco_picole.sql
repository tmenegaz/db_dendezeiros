create database vendedor_capelinha;

use vendedor_capelinha;

create table vendedor(
cod_vendedor int(11) not null auto_increment,
nome_vendedor VARCHAR(50),
primary key(cod_vendedor)
);

create table praia(
cod_prai int(11) not null auto_increment,
nome_praia VARCHAR(50),
cod_vendedor int(11) null,
primary key(cod_prai),
foreign key(cod_vendedor) references vendedor_capelinha.vendedor (cod_vendedor)
on delete cascade on update cascade
);

create table picole(
cod_picole int(11) not null auto_increment,
nome_picole VARCHAR(50),
primary key(cod_picole)
);

create table cliente(
cod_cliente int(11) not null auto_increment,
nome_cliente VARCHAR(50),
primary key(cod_cliente)
);

create table fabrica(
cod_fabrica int(11) not null auto_increment,
nome_fabrica VARCHAR(50),
cod_vendedor int(11) null,
primary key(cod_fabrica),
foreign key(cod_vendedor) references vendedor_capelinha.vendedor (cod_vendedor)
on delete cascade on update cascade
);

create table vendedor_picole_cliente( -- relacionamento de 1:m:n
cod_vendedor int(11) not null auto_increment,
cod_picole int(11) not null,
cod_cliente int(11) not null,
primary key(cod_picole, cod_cliente),
foreign key(cod_vendedor) references vendedor_capelinha.vendedor (cod_vendedor)
on delete cascade on update cascade,
foreign key(cod_picole) references vendedor_capelinha.picole (cod_picole)
on delete cascade on update cascade,
foreign key(cod_cliente) references vendedor_capelinha.cliente (cod_cliente)
on delete cascade on update cascade
);

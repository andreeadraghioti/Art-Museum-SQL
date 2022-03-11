create database muzeu;
use muzeu;
create table factura(
id_factura char(3) not null,
data_emitere date not null,
metoda_plata varchar(30) not null,
primary key(id_factura)
);

create table client(
id_client char(3) not null,
nume varchar(30) not null,
prenume varchar(30) not null,
telefon char(10) not null,
email char(50) not null,
adresa char(100) not null,
id_factura char(3) not null,
primary key(id_client),
foreign key(id_factura) references factura(id_factura)
);

create table angajat(
id_angajat char(3) not null,
nume varchar(30) not null,
prenume varchar(30) not null,
telefon char(10) not null,
email char(50) not null,
adresa char(100) not null,
data_angajare date not null,
salariu char(10) not null,
primary key(id_angajat)
);

create table reclama(
id_reclama char(3) not null,
nume_platforma varchar(30) not null,
cost char(10) not null,
primary key(id_reclama)
);

create table eveniment(
id_eveniment char(3) not null,
nume varchar(30) not null,
data date not null,
ora_incepere int not null,
ora_incheiere int not null,
id_client char(3) not null,
id_angajat char(3) not null,
id_reclama char(3) not null,
primary key(id_eveniment),
foreign key(id_client) references client(id_client),
foreign key(id_angajat) references angajat(id_angajat),
foreign key(id_reclama) references reclama(id_reclama)
);

create table bilet(
id_bilet char(3) not null,
metoda_achizitionare varchar(10) not null,
categorie_varsta varchar(30) not null,
primary key(id_bilet)
);

create table sponsor(
id_sponsor char(3) not null,
nume varchar(30) not null,
prenume varchar(30) not null,
telefon char(10) not null,
email char(50) not null,
data_incepere_contract date not null,
primary key(id_sponsor)
);

create table artist(
id_artist char(3) not null,
nume varchar(30) not null,
prenume varchar(30) not null,
primary key(id_artist)
);

create table arta(
id_arta char(3) not null,
nume varchar(30) not null,
colectie varchar(30) not null,
categorie varchar(30),
id_artist char(3) not null,
primary key(id_arta),
foreign key(id_artist) references artist(id_artist)
);

create table expozitie(
id_expozitie char(3) not null,
nume varchar(30) not null,
data_incepere date not null,
data_incheiere date not null,
id_arta char(3) not null,
id_angajat char(3) not null,
id_bilet char(3) not null,
id_sponsor char(3) not null,
primary key(id_expozitie),
foreign key(id_arta) references arta(id_arta),
foreign key(id_angajat) references angajat(id_angajat),
foreign key(id_bilet) references bilet(id_bilet),
foreign key(id_sponsor) references sponsor(id_sponsor)
);
select*from expozitie;
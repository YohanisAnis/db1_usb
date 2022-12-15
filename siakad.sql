Microsoft Windows [Version 10.0.22000.1219]
(c) Microsoft Corporation. All rights reserved.

C:\Users\LENOVO>cd "C:\Program Files\PostgreSQL\14\bin"

C:\Program Files\PostgreSQL\14\bin>psql -U postgres -h localhost
Password for user postgres:
psql (14.6)
WARNING: Console code page (437) differs from Windows code page (1252)
         8-bit characters might not work correctly. See psql reference
         page "Notes for Windows users" for details.
Type "help" for help.

postgres=# \list
                                                 List of databases
       Name        |  Owner   | Encoding |        Collate         |         Ctype          |   Access privileges
-------------------+----------+----------+------------------------+------------------------+-----------------------
 informatika       | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 kelas             | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 pemasaran         | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 penjualan_produk  | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 penjualan_produkk | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 postgres          | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siaakad           | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siakaadd          | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siakad            | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siakad_g          | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siakad_inf        | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siakad_infog      | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siakad_unsulbar   | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siakadd           | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siakaddd          | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siakkad           | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siiakad           | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siswa             | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 ssiakad           | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 ssiakadd          | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 sssiakaddd        | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 template0         | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 | =c/postgres          +
                   |          |          |                        |                        | postgres=CTc/postgres
 template1         | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 | =c/postgres          +
                   |          |          |                        |                        | postgres=CTc/postgres
(23 rows)


postgres=# create database
postgres-# create database siakad_if;
ERROR:  syntax error at or near "create"
LINE 2: create database siakad_if;
        ^
postgres=# create database Siakad_if;
CREATE DATABASE
postgres=# \list
                                                 List of databases
       Name        |  Owner   | Encoding |        Collate         |         Ctype          |   Access privileges
-------------------+----------+----------+------------------------+------------------------+-----------------------
 informatika       | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 kelas             | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 pemasaran         | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 penjualan_produk  | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 penjualan_produkk | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 postgres          | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siaakad           | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siakaadd          | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siakad            | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siakad_g          | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siakad_if         | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siakad_inf        | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siakad_infog      | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siakad_unsulbar   | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siakadd           | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siakaddd          | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siakkad           | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siiakad           | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 siswa             | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 ssiakad           | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 ssiakadd          | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 sssiakaddd        | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 |
 template0         | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 | =c/postgres          +
                   |          |          |                        |                        | postgres=CTc/postgres
 template1         | postgres | UTF8     | English_Indonesia.1252 | English_Indonesia.1252 | =c/postgres          +
                   |          |          |                        |                        | postgres=CTc/postgres
(24 rows)


postgres=# \c Siakad_if
connection to server at "localhost" (::1), port 5432 failed: FATAL:  database "Siakad_if" does not exist
Previous connection kept
postgres=# \c Siakad_if
connection to server at "localhost" (::1), port 5432 failed: FATAL:  database "Siakad_if" does not exist
Previous connection kept
postgres=# \c siakad_if
You are now connected to database "siakad_if" as user "postgres".
siakad_if=# create table mahasiswa(nim varchar(30) not null primary key,nama varchar (50),prodi varchar(50));
CREATE TABLE
siakad_if=# \d mahasiswa;
                    Table "public.mahasiswa"
 Column |         Type          | Collation | Nullable | Default
--------+-----------------------+-----------+----------+---------
 nim    | character varying(30) |           | not null |
 nama   | character varying(50) |           |          |
 prodi  | character varying(50) |           |          |
Indexes:
    "mahasiswa_pkey" PRIMARY KEY, btree (nim)


siakad_if=# create table dosen(nidn int not null primary key,nama varchar (50), program_studi varchar(50));
CREATE TABLE
siakad_if=# \d dosen;
                          Table "public.dosen"
    Column     |         Type          | Collation | Nullable | Default
---------------+-----------------------+-----------+----------+---------
 nidn          | integer               |           | not null |
 nama          | character varying(50) |           |          |
 program_studi | character varying(50) |           |          |
Indexes:
    "dosen_pkey" PRIMARY KEY, btree (nidn)


siakad_if=# create table kuliah(kode_makul varchar(30) not null primary key,nama_makul varchar (50), sks int,semeter int);
CREATE TABLE
siakad_if=# \d kuliah;
                        Table "public.kuliah"
   Column   |         Type          | Collation | Nullable | Default
------------+-----------------------+-----------+----------+---------
 kode_makul | character varying(30) |           | not null |
 nama_makul | character varying(50) |           |          |
 sks        | integer               |           |          |
 semeter    | integer               |           |          |
Indexes:
    "kuliah_pkey" PRIMARY KEY, btree (kode_makul)


siakad_if=# \d mahasiswa;
                    Table "public.mahasiswa"
 Column |         Type          | Collation | Nullable | Default
--------+-----------------------+-----------+----------+---------
 nim    | character varying(30) |           | not null |
 nama   | character varying(50) |           |          |
 prodi  | character varying(50) |           |          |
Indexes:
    "mahasiswa_pkey" PRIMARY KEY, btree (nim)


siakad_if=# insert into mahasiswa (nim,nama,prodi) values ('D0221100','DOLANDRE FEBRIANTO','INFORMATIKA'),('D0221101','YOHANIS','INFORMATIKA'),('D0221103','YUNUS','INFORMATIKA');
INSERT 0 3
siakad_if=# select * from mahasiswa;
   nim    |        nama        |    prodi
----------+--------------------+-------------
 D0221100 | DOLANDRE FEBRIANTO | INFORMATIKA
 D0221101 | YOHANIS            | INFORMATIKA
 D0221103 | YUNUS              | INFORMATIKA
(3 rows)


siakad_if=# \d dosen;
                          Table "public.dosen"
    Column     |         Type          | Collation | Nullable | Default
---------------+-----------------------+-----------+----------+---------
 nidn          | integer               |           | not null |
 nama          | character varying(50) |           |          |
 program_studi | character varying(50) |           |          |
Indexes:
    "dosen_pkey" PRIMARY KEY, btree (nidn)


siakad_if=# insert into dosen (nidn,nama,program_studi) values ('0032567491','MUZAKI','INFORMATIKA'),('00132465364','FUAD MANSYUR','INFORMATIKA'),('0024165347','ALAMSYAH','INFORMATIKA');
INSERT 0 3
siakad_if=# select * from dosen;
   nidn    |     nama     | program_studi
-----------+--------------+---------------
  32567491 | MUZAKI       | INFORMATIKA
 132465364 | FUAD MANSYUR | INFORMATIKA
  24165347 | ALAMSYAH     | INFORMATIKA
(3 rows)


siakad_if=# \d kuliah;
                        Table "public.kuliah"
   Column   |         Type          | Collation | Nullable | Default
------------+-----------------------+-----------+----------+---------
 kode_makul | character varying(30) |           | not null |
 nama_makul | character varying(50) |           |          |
 sks        | integer               |           |          |
 semeter    | integer               |           |          |
Indexes:
    "kuliah_pkey" PRIMARY KEY, btree (kode_makul)


siakad_if=# insert into kuliah (kode_makul,nama_makul,sks,semeter) values ('INF210054','MIKROKONTROLER',2,3),('INF216543','APLIKASI KOMPUTER',3,3),('INF215673','BAHASA INGGRIS',3,3);
INSERT 0 3
siakad_if=# select * from kuliah;
 kode_makul |    nama_makul     | sks | semeter
------------+-------------------+-----+---------
 INF210054  | MIKROKONTROLER    |   2 |       3
 INF216543  | APLIKASI KOMPUTER |   3 |       3
 INF215673  | BAHASA INGGRIS    |   3 |       3
(3 rows)


siakad_if=# update mahasiswa set nama= 'yunus' where nim= 'D0221101';
UPDATE 1
siakad_if=# select * from mahasiswa
siakad_if-# select * from mahasiswa;
ERROR:  syntax error at or near "select"
LINE 2: select * from mahasiswa;
        ^
siakad_if=# \d mahasiswa;
                    Table "public.mahasiswa"
 Column |         Type          | Collation | Nullable | Default
--------+-----------------------+-----------+----------+---------
 nim    | character varying(30) |           | not null |
 nama   | character varying(50) |           |          |
 prodi  | character varying(50) |           |          |
Indexes:
    "mahasiswa_pkey" PRIMARY KEY, btree (nim)


siakad_if=# update mahasiswa set nama= 'yunus' where nim= 'D0221103';
UPDATE 1
siakad_if=# select * from mahasiswa;
   nim    |        nama        |    prodi
----------+--------------------+-------------
 D0221100 | DOLANDRE FEBRIANTO | INFORMATIKA
 D0221101 | yunus              | INFORMATIKA
 D0221103 | yunus              | INFORMATIKA
(3 rows)


siakad_if=# \d dosen;
                          Table "public.dosen"
    Column     |         Type          | Collation | Nullable | Default
---------------+-----------------------+-----------+----------+---------
 nidn          | integer               |           | not null |
 nama          | character varying(50) |           |          |
 program_studi | character varying(50) |           |          |
Indexes:
    "dosen_pkey" PRIMARY KEY, btree (nidn)


siakad_if=# update dosen set nama= 'Fuad Mansyur' where nidn= 132465365;
UPDATE 0
siakad_if=# select * from dosen;
   nidn    |     nama     | program_studi
-----------+--------------+---------------
  32567491 | MUZAKI       | INFORMATIKA
 132465364 | FUAD MANSYUR | INFORMATIKA
  24165347 | ALAMSYAH     | INFORMATIKA
(3 rows)


siakad_if=# update dosen set nama= 'Fuad Mansyur' where nidn= 132465364;
UPDATE 1
siakad_if=# select * from dosen;
   nidn    |     nama     | program_studi
-----------+--------------+---------------
  32567491 | MUZAKI       | INFORMATIKA
  24165347 | ALAMSYAH     | INFORMATIKA
 132465364 | Fuad Mansyur | INFORMATIKA
(3 rows)


siakad_if=# \d kuliah;
                        Table "public.kuliah"
   Column   |         Type          | Collation | Nullable | Default
------------+-----------------------+-----------+----------+---------
 kode_makul | character varying(30) |           | not null |
 nama_makul | character varying(50) |           |          |
 sks        | integer               |           |          |
 semeter    | integer               |           |          |
Indexes:
    "kuliah_pkey" PRIMARY KEY, btree (kode_makul)


siakad_if=# update kuliah set nama_makul='MIKRO' where kode_makul= 'INF210054';
UPDATE 1
siakad_if=# select * from kuliah;
 kode_makul |    nama_makul     | sks | semeter
------------+-------------------+-----+---------
 INF216543  | APLIKASI KOMPUTER |   3 |       3
 INF215673  | BAHASA INGGRIS    |   3 |       3
 INF210054  | MIKRO             |   2 |       3
(3 rows)


siakad_if=#
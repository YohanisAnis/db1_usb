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

postgres=# \c siakad_if
You are now connected to database "siakad_if" as user "postgres".
siakad_if=# \dt
           List of relations
 Schema |   Name    | Type  |  Owner
--------+-----------+-------+----------
 public | dosen     | table | postgres
 public | kuliah    | table | postgres
 public | mahasiswa | table | postgres
(3 rows)


siakad_if=# select * from mahasiswa;
   nim    |        nama        |    prodi
----------+--------------------+-------------
 D0221100 | DOLANDRE FEBRIANTO | INFORMATIKA
 D0221101 | yunus              | INFORMATIKA
 D0221103 | yunus              | INFORMATIKA
(3 rows)


siakad_if=# delete from mahasiswa where nim='D0221101';
DELETE 1
siakad_if=# select * from mahasiswa;
   nim    |        nama        |    prodi
----------+--------------------+-------------
 D0221100 | DOLANDRE FEBRIANTO | INFORMATIKA
 D0221103 | yunus              | INFORMATIKA
(2 rows)


siakad_if=# select * from dosen;
   nidn    |     nama     | program_studi
-----------+--------------+---------------
  32567491 | MUZAKI       | INFORMATIKA
  24165347 | ALAMSYAH     | INFORMATIKA
 132465364 | Fuad Mansyur | INFORMATIKA
(3 rows)


siakad_if=# delete from dosen where nidn='32567491';
DELETE 1
siakad_if=# select from * dosen;
ERROR:  syntax error at or near "*"
LINE 1: select from * dosen;
                    ^
siakad_if=# select * from dosen;
   nidn    |     nama     | program_studi
-----------+--------------+---------------
  24165347 | ALAMSYAH     | INFORMATIKA
 132465364 | Fuad Mansyur | INFORMATIKA
(2 rows)


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


siakad_if=# select * from kuliah;
 kode_makul |    nama_makul     | sks | semeter
------------+-------------------+-----+---------
 INF216543  | APLIKASI KOMPUTER |   3 |       3
 INF215673  | BAHASA INGGRIS    |   3 |       3
 INF210054  | MIKRO             |   2 |       3
(3 rows)


siakad_if=# delete from kuliah where nama_makul='MIKRO';
DELETE 1
siakad_if=# select * from kuliah;
 kode_makul |    nama_makul     | sks | semeter
------------+-------------------+-----+---------
 INF216543  | APLIKASI KOMPUTER |   3 |       3
 INF215673  | BAHASA INGGRIS    |   3 |       3
(2 rows)


siakad_if=#
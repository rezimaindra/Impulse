CREATE TABLE ASPRAK
  (
    kode_asprak  VARCHAR2 (3) NOT NULL ,
    nama_asprak  VARCHAR2 (20),
    no_hp VARCHAR2 (13)
  ) ;
ALTER TABLE ASPRAK ADD CONSTRAINT Asprak_PK PRIMARY KEY ( kode_asprak ) ;

CREATE TABLE MATAKULIAH
  (
    id_matkul VARCHAR2 (10) NOT NULL ,
    Kode_asprak VARCHAR2 (3) NOT NULL,
    nama_matkul VARCHAR2 (20)  
  ) ;
ALTER TABLE MATAKULIAH ADD CONSTRAINT Matakuliah_PK PRIMARY KEY ( id_matkul ) ;


CREATE TABLE PRAKTIKUM
  (
    id_praktikum VARCHAR2 (10) NOT NULL ,
    id_matkul VARCHAR2 (10) NOT NULL ,
    nim VARCHAR2 (10) NOT NULL
  ) ;
ALTER TABLE Praktikum ADD CONSTRAINT Praktikum_PK PRIMARY KEY ( id_praktikum ) ;


CREATE TABLE Mahasiswa
  (
    nim VARCHAR2 (10) NOT NULL ,
    id_kelas   VARCHAR2 (10) NOT NULL,
    nama_mahasiswa VARCHAR2 (20) NOT NULL,
    alamat VARCHAR2 (30)
  ) ;
ALTER TABLE Mahasiswa ADD CONSTRAINT Mahasiswa_PK PRIMARY KEY ( nim ) ;

CREATE TABLE Kelas
  (
    id_kelas   VARCHAR2 (10) NOT NULL ,
    nama_kelas VARCHAR2 (10), 
    nama_hari VARCHAR2 (10) NOT NULL
  ) ;
ALTER TABLE Kelas ADD CONSTRAINT Kelas_PK PRIMARY KEY ( id_kelas ) ;

ALTER TABLE Kelas add id_hari VARCHAR2(10);
ALTER TABLE Kelas add nama_kelas VARCHAR2(10); 

CREATE TABLE Hari
  (
    id_hari VARCHAR2 (10) NOT NULL,
    nama_hari VARCHAR2 (10) NOT NULL ,
    mulai varchar(10) ,
    selesai varchar(10)
  ) ;
ALTER TABLE hari ADD CONSTRAINT hari_pk PRIMARY KEY ( id_hari ) ;



CREATE TABLE Penilaian
  (
    id_penilaian  VARCHAR2 (10) NOT NULL ,
    id_praktikum VARCHAR2 (10) NOT NULL,
    id_modul VARCHAR2 (10) NOT NULL,
    nomor_modul VARCHAR2 (10),
    Nilai    NUMBER
  ) ;
ALTER TABLE penilaian ADD CONSTRAINT penilaian_PK PRIMARY KEY ( id_penilaian ) ;

CREATE TABLE MODUL
  (
    id_modul VARCHAR2(10) NOT NULL,
    nomor_modul VARCHAR2 (10) ,
    id_matkul VARCHAR2(20) NOT NULL,
    materi VARCHAR2 (30)

  ) ;
ALTER TABLE MODUL ADD CONSTRAINT Modul_PK PRIMARY KEY ( id_modul ) ;

ALTER TABLE MODUL  MODIFY materi VARCHAR2 (55);


ALTER TABLE praktikum ADD CONSTRAINT praktikum_matakuliah_FK FOREIGN KEY ( id_matkul ) REFERENCES matakuliah ( id_matkul ) ;

ALTER TABLE praktikum ADD CONSTRAINT praktikum_mahasiswa_FK FOREIGN KEY ( NIM ) REFERENCES mahasiswa ( NIM ) ;

ALTER TABLE penilaian ADD CONSTRAINT penilaian_praktikum_FK FOREIGN KEY ( id_praktikum ) REFERENCES praktikum ( id_praktikum ) ;

ALTER TABLE penilaian ADD CONSTRAINT penilaian_modul_FK FOREIGN KEY ( id_modul ) REFERENCES modul ( id_modul ) ;

ALTER TABLE MATAKULIAH ADD CONSTRAINT MATAKULIAH_ASPRAK_FK FOREIGN KEY (Kode_asprak ) REFERENCES ASPRAK ( kode_asprak ) ;

ALTER TABLE MAHASISWA ADD CONSTRAINT MAHASISWA_KELAS_FK FOREIGN KEY ( id_kelas ) REFERENCES kelas ( id_kelas ) ;

ALTER TABLE KELAS ADD CONSTRAINT KELAS_HARI_FK FOREIGN KEY (nama_hari) REFERENCES hari (id_hari);

ALTER TABLE modul ADD CONSTRAINT modul_matakuliah_FK FOREIGN KEY ( id_matkul) REFERENCES matakuliah ( id_matkul ) ;

ALTER TABLE ASPRAK MODIFY no_hp VARCHAR2(20); 

ALTER TABLE MATAKULIAH MODIFY NAMA_MATKUL VARCHAR2(30);

INSERT INTO Asprak (kode_asprak,nama_asprak,no_hp) VALUES('IHA','Ihsan Ahsanu','085267656789');
INSERT INTO Asprak (kode_asprak,nama_asprak,no_hp) VALUES('CEB','Clement Enrico','081367589632');
INSERT INTO Asprak (kode_asprak,nama_asprak,no_hp) VALUES('YMP','Yodra Muhammad Putra','081267867543');
INSERT INTO Asprak (kode_asprak,nama_asprak,no_hp) VALUES('FRM','Fakhrurezi Maindra','085267935678');
INSERT INTO Asprak (kode_asprak,nama_asprak,no_hp) VALUES('NDP','Nadhilla Putri','085767298908');
INSERT INTO Asprak (kode_asprak,nama_asprak,no_hp) VALUES('AQM','Aqmal Pangestu','085643755398');
INSERT INTO Asprak (kode_asprak,nama_asprak,no_hp) VALUES('NAF','Nabil Anwar','081398426789');
INSERT INTO Asprak (kode_asprak,nama_asprak,no_hp) VALUES('CAE','Chairul Tanjung','081398423425');
INSERT INTO Asprak (kode_asprak,nama_asprak,no_hp) VALUES('PUT','Putri Widia','081398426123');
INSERT INTO Asprak (kode_asprak,nama_asprak,no_hp) VALUES('ASP','Asep Purkon','081398426789');
INSERT INTO Asprak (kode_asprak,nama_asprak,no_hp) VALUES('TAH','Taufik Hidayat','081325426789');
INSERT INTO Asprak (kode_asprak,nama_asprak,no_hp) VALUES('BAP','Bambang Pamungkas','083577426789');
INSERT INTO Asprak (kode_asprak,nama_asprak,no_hp) VALUES('ISM','Ismail Marzuki','082435426789');
INSERT INTO Asprak (kode_asprak,nama_asprak,no_hp) VALUES('INT','Indra tohir','084564426789');
INSERT INTO Asprak (kode_asprak,nama_asprak,no_hp) VALUES('EDC','Edward Dwi Cahyo','085643426789');
INSERT INTO Asprak (kode_asprak,nama_asprak,no_hp) VALUES('CAN','Cristian Alif Nouval','082466426789');
INSERT INTO Asprak (kode_asprak,nama_asprak,no_hp) VALUES('KHA','Khoirul Amir','081342546563');
INSERT INTO Asprak (kode_asprak,nama_asprak,no_hp) VALUES('TRB','Tristan Bimo','083226432456');
INSERT INTO Asprak (kode_asprak,nama_asprak,no_hp) VALUES('KUD','Kurnia Dede','081354334664');
INSERT INTO Asprak (kode_asprak,nama_asprak,no_hp) VALUES('LMA','Leonel Maradona','083266443234');

INSERT INTO Matakuliah (id_matkul,nama_matkul,kode_asprak) VALUES('AA001','Dasar Algoritma Pemograman','NAF');
INSERT INTO Matakuliah (id_matkul,nama_matkul,kode_asprak) VALUES('AA002','Struktur Data','IHA');
INSERT INTO Matakuliah (id_matkul,nama_matkul,kode_asprak) VALUES('AA003','Pemograman Berorientasi Objek','AQM');
INSERT INTO Matakuliah (id_matkul,nama_matkul,kode_asprak) VALUES('AA004','Pemodelan Basis Data','YMP');
INSERT INTO Matakuliah (id_matkul,nama_matkul,kode_asprak) VALUES('AA005','Dasar Algoritma Pemograman','CEB');
INSERT INTO Matakuliah (id_matkul,nama_matkul,kode_asprak) VALUES('AA006','Dasar Algoritma Pemograman','NDP');
INSERT INTO Matakuliah (id_matkul,nama_matkul,kode_asprak) VALUES('AA007','Pemodelan Basis Data','FRM');
INSERT INTO Matakuliah (id_matkul,nama_matkul,kode_asprak) VALUES('AA008','Pemodelan Basis Data','CAE');
INSERT INTO Matakuliah (id_matkul,nama_matkul,kode_asprak) VALUES('AA009','Pemodelan Basis Data','CAN');
INSERT INTO Matakuliah (id_matkul,nama_matkul,kode_asprak) VALUES('AA010','Pemodelan Basis Data','CAN');
INSERT INTO Matakuliah (id_matkul,nama_matkul,kode_asprak) VALUES('AA011','Pemodelan Basis Data','CAE');
INSERT INTO Matakuliah (id_matkul,nama_matkul,kode_asprak) VALUES('AA012','Pemodelan Basis Data','CAN');
INSERT INTO Matakuliah (id_matkul,nama_matkul,kode_asprak) VALUES('AA013','Pemodelan Basis Data','CAE');
INSERT INTO Matakuliah (id_matkul,nama_matkul,kode_asprak) VALUES('AA014','Pemodelan Basis Data','CAN');
INSERT INTO Matakuliah (id_matkul,nama_matkul,kode_asprak) VALUES('AA015','Pemograman Berorientasi Objek','AQM');
INSERT INTO Matakuliah (id_matkul,nama_matkul,kode_asprak) VALUES('AA016','Pemograman Berorientasi Objek','AQM');
INSERT INTO Matakuliah (id_matkul,nama_matkul,kode_asprak) VALUES('AA017','Pemograman Berorientasi Objek','ISM');
INSERT INTO Matakuliah (id_matkul,nama_matkul,kode_asprak) VALUES('AA018','Pemograman Berorientasi Objek','INT');
INSERT INTO Matakuliah (id_matkul,nama_matkul,kode_asprak) VALUES('AA019','Pemograman Berorientasi Objek','ISM');
INSERT INTO Matakuliah (id_matkul,nama_matkul,kode_asprak) VALUES('AA020','Pemograman Berorientasi Objek','KUD');
INSERT INTO Matakuliah (id_matkul,nama_matkul,kode_asprak) VALUES('AA021','Pemograman Berorientasi Objek','INT');
INSERT INTO Matakuliah (id_matkul,nama_matkul,kode_asprak) VALUES('AA022','Pemograman Berorientasi Objek','ISM');
INSERT INTO Matakuliah (id_matkul,nama_matkul,kode_asprak) VALUES('AA023','Struktur Data','TAH');
INSERT INTO Matakuliah (id_matkul,nama_matkul,kode_asprak) VALUES('AA024','Struktur Data','LMA');
INSERT INTO Matakuliah (id_matkul,nama_matkul,kode_asprak) VALUES('AA025','Struktur Data','TAH');
INSERT INTO Matakuliah (id_matkul,nama_matkul,kode_asprak) VALUES('AA026','Struktur Data','TAH');
INSERT INTO Matakuliah (id_matkul,nama_matkul,kode_asprak) VALUES('AA027','Struktur Data','BAP');
INSERT INTO Matakuliah (id_matkul,nama_matkul,kode_asprak) VALUES('AA028','Struktur Data','BAP');
INSERT INTO Matakuliah (id_matkul,nama_matkul,kode_asprak) VALUES('AA029','Struktur Data','BAP');
INSERT INTO Matakuliah (id_matkul,nama_matkul,kode_asprak) VALUES('AA030','Struktur Data','LMA');
INSERT INTO Matakuliah (id_matkul,nama_matkul,kode_asprak) VALUES('AA031','Struktur Data','LMA');
INSERT INTO Matakuliah (id_matkul,nama_matkul,kode_asprak) VALUES('AA032','Dasar Algoritma Pemograman','YMP');
INSERT INTO Matakuliah (id_matkul,nama_matkul,kode_asprak) VALUES('AA033','Dasar Algoritma Pemograman','PUT');
INSERT INTO Matakuliah (id_matkul,nama_matkul,kode_asprak) VALUES('AA034','Dasar Algoritma Pemograman','YMP');
INSERT INTO Matakuliah (id_matkul,nama_matkul,kode_asprak) VALUES('AA035','Dasar Algoritma Pemograman','YMP');
INSERT INTO Matakuliah (id_matkul,nama_matkul,kode_asprak) VALUES('AA036','Dasar Algoritma Pemograman','PUT');
INSERT INTO Matakuliah (id_matkul,nama_matkul,kode_asprak) VALUES('AA037','Dasar Algoritma Pemograman','PUT');
INSERT INTO Matakuliah (id_matkul,nama_matkul,kode_asprak) VALUES('AA038','Dasar Algoritma Pemograman','ASP');
INSERT INTO Matakuliah (id_matkul,nama_matkul,kode_asprak) VALUES('AA039','Dasar Algoritma Pemograman','ASP');
INSERT INTO Matakuliah (id_matkul,nama_matkul,kode_asprak) VALUES('AA040','Dasar Algoritma Pemograman','ASP');

INSERT INTO Hari(id_hari,nama_hari,mulai,selesai) VALUES('H001','Senin','06:00','09:00');
INSERT INTO Hari(id_hari,nama_hari,mulai,selesai) VALUES('H002','Senin','09:00','12:00');
INSERT INTO Hari(id_hari,nama_hari,mulai,selesai) VALUES('H003','Senin','12:00','15:00');
INSERT INTO Hari(id_hari,nama_hari,mulai,selesai) VALUES('H004','Senin','15:00','18:00');
INSERT INTO Hari(id_hari,nama_hari,mulai,selesai) VALUES('H005','Selasa','06:00','09:00');
INSERT INTO Hari(id_hari,nama_hari,mulai,selesai) VALUES('H006','Selasa','09:00','12:00');
INSERT INTO Hari(id_hari,nama_hari,mulai,selesai) VALUES('H007','Selasa','12:00','15:00');
INSERT INTO Hari(id_hari,nama_hari,mulai,selesai) VALUES('H008','Selasa','15:00','18:00');
INSERT INTO Hari(id_hari,nama_hari,mulai,selesai) VALUES('H009','Rabu','06:00','09:00');
INSERT INTO Hari(id_hari,nama_hari,mulai,selesai) VALUES('H010','Rabu','09:00','12:00');
INSERT INTO Hari(id_hari,nama_hari,mulai,selesai) VALUES('H011','Rabu','12:00','15:00');
INSERT INTO Hari(id_hari,nama_hari,mulai,selesai) VALUES('H012','Rabu','15:00','18:00');
INSERT INTO Hari(id_hari,nama_hari,mulai,selesai) VALUES('H013','Kamis','06:00','09:00');
INSERT INTO Hari(id_hari,nama_hari,mulai,selesai) VALUES('H014','Kamis','09:00','12:00');
INSERT INTO Hari(id_hari,nama_hari,mulai,selesai) VALUES('H015','Kamis','12:00','15:00');
INSERT INTO Hari(id_hari,nama_hari,mulai,selesai) VALUES('H016','Kamis','15:00','18:00');
INSERT INTO Hari(id_hari,nama_hari,mulai,selesai) VALUES('H017','Jumat','06:00','09:00');
INSERT INTO Hari(id_hari,nama_hari,mulai,selesai) VALUES('H018','Jumat','09:00','12:00');
INSERT INTO Hari(id_hari,nama_hari,mulai,selesai) VALUES('H019','Jumat','12:00','15:00');
INSERT INTO Hari(id_hari,nama_hari,mulai,selesai) VALUES('H020','Jumat','15:00','18:00');

INSERT INTO Kelas (id_kelas,id_hari,nama_kelas) VALUES('BB001','H006','IF4209');
INSERT INTO Kelas (id_kelas,id_hari,nama_kelas) VALUES('BB002','H020','IF4209');
INSERT INTO Kelas (id_kelas,id_hari,nama_kelas) VALUES('BB003','H015','IF4202');
INSERT INTO Kelas (id_kelas,id_hari,nama_kelas) VALUES('BB004','H016','IF4202');
INSERT INTO Kelas (id_kelas,id_hari,nama_kelas) VALUES('BB005','H002','IF4212');

INSERT INTO Kelas (id_kelas,id_hari,nama_kelas) VALUES('BB006','H007','IF4201');
INSERT INTO Kelas (id_kelas,id_hari,nama_kelas) VALUES('BB007','H001','IF4202');
INSERT INTO Kelas (id_kelas,id_hari,nama_kelas) VALUES('BB008','H005','IF4202');
INSERT INTO Kelas (id_kelas,id_hari,nama_kelas) VALUES('BB009','H012','IF4203');
INSERT INTO Kelas (id_kelas,id_hari,nama_kelas) VALUES('BB010','H002','IF4204');
INSERT INTO Kelas (id_kelas,id_hari,nama_kelas) VALUES('BB011','H006','IF4209');
INSERT INTO Kelas (id_kelas,id_hari,nama_kelas) VALUES('BB012','H008','IF4205');
INSERT INTO Kelas (id_kelas,id_hari,nama_kelas) VALUES('BB013','H010','IF4208');
INSERT INTO Kelas (id_kelas,id_hari,nama_kelas) VALUES('BB014','H017','IF4210');
INSERT INTO Kelas (id_kelas,id_hari,nama_kelas) VALUES('BB015','H008','IF4212');
INSERT INTO Kelas (id_kelas,id_hari,nama_kelas) VALUES('BB016','H016','IF4202');
INSERT INTO Kelas (id_kelas,id_hari,nama_kelas) VALUES('BB017','H012','IF4206');
INSERT INTO Kelas (id_kelas,id_hari,nama_kelas) VALUES('BB018','H014','IF4208');
INSERT INTO Kelas (id_kelas,id_hari,nama_kelas) VALUES('BB019','H013','IF4209');
INSERT INTO Kelas (id_kelas,id_hari,nama_kelas) VALUES('BB020','H020','IF4210');
INSERT INTO Kelas (id_kelas,id_hari,nama_kelas) VALUES('BB021','H006','IF4207');
INSERT INTO Kelas (id_kelas,id_hari,nama_kelas) VALUES('BB022','H001','IF4202');
INSERT INTO Kelas (id_kelas,id_hari,nama_kelas) VALUES('BB023','H001','IF4208');
INSERT INTO Kelas (id_kelas,id_hari,nama_kelas) VALUES('BB024','H015','IF4206');
INSERT INTO Kelas (id_kelas,id_hari,nama_kelas) VALUES('BB025','H009','IF4210');
INSERT INTO Kelas (id_kelas,id_hari,nama_kelas) VALUES('BB026','H002','IF4203');
INSERT INTO Kelas (id_kelas,id_hari,nama_kelas) VALUES('BB027','H020','IF4207');
INSERT INTO Kelas (id_kelas,id_hari,nama_kelas) VALUES('BB028','H015','IF4202');
INSERT INTO Kelas (id_kelas,id_hari,nama_kelas) VALUES('BB029','H016','IF4201');
INSERT INTO Kelas (id_kelas,id_hari,nama_kelas) VALUES('BB030','H018','IF4203');
INSERT INTO Kelas (id_kelas,id_hari,nama_kelas) VALUES('BB031','H011','IF4204');
INSERT INTO Kelas (id_kelas,id_hari,nama_kelas) VALUES('BB032','H019','IF4209');
INSERT INTO Kelas (id_kelas,id_hari,nama_kelas) VALUES('BB033','H015','IF4205');
INSERT INTO Kelas (id_kelas,id_hari,nama_kelas) VALUES('BB034','H016','IF4206');
INSERT INTO Kelas (id_kelas,id_hari,nama_kelas) VALUES('BB035','H003','IF4207');
INSERT INTO Kelas (id_kelas,id_hari,nama_kelas) VALUES('BB036','H007','IF4208');
INSERT INTO Kelas (id_kelas,id_hari,nama_kelas) VALUES('BB037','H009','IF4209');
INSERT INTO Kelas (id_kelas,id_hari,nama_kelas) VALUES('BB038','H012','IF4210');
INSERT INTO Kelas (id_kelas,id_hari,nama_kelas) VALUES('BB039','H016','IF4211');
INSERT INTO Kelas (id_kelas,id_hari,nama_kelas) VALUES('BB040','H008','IF4212');

Update Mahasiswa SET alamat = 'Payakumbuh' where nim = '13011877';

INSERT INTO Mahasiswa (nim,id_kelas,nama_mahasiswa) VALUES('13011801','BB005','Alif Naufal');
INSERT INTO Mahasiswa (nim,id_kelas,nama_mahasiswa) VALUES('13011806','BB002','Rifqi Luthfi');
INSERT INTO Mahasiswa (nim,id_kelas,nama_mahasiswa) VALUES('13011803','BB001','Sabil Naufal');
INSERT INTO Mahasiswa (nim,id_kelas,nama_mahasiswa) VALUES('13011804','BB003','Tiwa Rahmdani');
INSERT INTO Mahasiswa (nim,id_kelas,nama_mahasiswa) VALUES('13011812','BB004','Iqbal Syamil');
INSERT INTO Mahasiswa (nim,id_kelas,nama_mahasiswa) VALUES('13011877','BB002','Athalla Rizki');
INSERT INTO Mahasiswa (nim,id_kelas,nama_mahasiswa,alamat) VALUES('13011827','BB038','Ari Naufal','Makassar');
INSERT INTO Mahasiswa (nim,id_kelas,nama_mahasiswa,alamat) VALUES('13011840','BB035','Rifqi Aditya','Cimahi');
INSERT INTO Mahasiswa (nim,id_kelas,nama_mahasiswa,alamat) VALUES('13011844','BB007','Sabil Kurnia','Bandung');
INSERT INTO Mahasiswa (nim,id_kelas,nama_mahasiswa,alamat) VALUES('13011822','BB009','Karna Rahmdani','Balikpapan');
INSERT INTO Mahasiswa (nim,id_kelas,nama_mahasiswa,alamat) VALUES('13011890','BB017','Alifia Viana','Purwakarta');
INSERT INTO Mahasiswa (nim,id_kelas,nama_mahasiswa,alamat) VALUES('13011821','BB007','Thalia Arsyan','Purwokerto');
INSERT INTO Mahasiswa (nim,id_kelas,nama_mahasiswa,alamat) VALUES('13011805','BB006','Arsya Mas','Solo');
INSERT INTO Mahasiswa (nim,id_kelas,nama_mahasiswa,alamat) VALUES('13011823','BB029','Jono Hadi','Yogyakarta');
INSERT INTO Mahasiswa (nim,id_kelas,nama_mahasiswa,alamat) VALUES('13011886','BB019','Tono Indrawan','Wonosobo');
INSERT INTO Mahasiswa (nim,id_kelas,nama_mahasiswa,alamat) VALUES('13011830','BB021','Novianti','Dieng');
INSERT INTO Mahasiswa (nim,id_kelas,nama_mahasiswa,alamat) VALUES('13011836','BB020','Iqbal Hasyani','Bogor');
INSERT INTO Mahasiswa (nim,id_kelas,nama_mahasiswa,alamat) VALUES('13011811','BB001','Alisya Hani','Depok');
INSERT INTO Mahasiswa (nim,id_kelas,nama_mahasiswa,alamat) VALUES('13011867','BB039','Hani Yulia','Semarang');
INSERT INTO Mahasiswa (nim,id_kelas,nama_mahasiswa,alamat) VALUES('13011855','BB023','Rifqi Fauzia','Bekasi');
INSERT INTO Mahasiswa (nim,id_kelas,nama_mahasiswa,alamat) VALUES('13011881','BB026','Sabil Mas','Dieng');
INSERT INTO Mahasiswa (nim,id_kelas,nama_mahasiswa,alamat) VALUES('13011815','BB015','Towa Ramdani','Tangerang');
INSERT INTO Mahasiswa (nim,id_kelas,nama_mahasiswa,alamat) VALUES('13011833','BB002','Iqbal Kamal','Batam');
INSERT INTO Mahasiswa (nim,id_kelas,nama_mahasiswa,alamat) VALUES('13011809','BB019','Muhamad Rizky','Semarang');
INSERT INTO Mahasiswa (nim,id_kelas,nama_mahasiswa,alamat) VALUES('13011810','BB035','Arya Naufal','Boyolali');
INSERT INTO Mahasiswa (nim,id_kelas,nama_mahasiswa,alamat) VALUES('13011820','BB002','Aditya Luthfi','Batam');
INSERT INTO Mahasiswa (nim,id_kelas,nama_mahasiswa,alamat) VALUES('13011802','BB002','Surya Hadi','Purwokerto');
INSERT INTO Mahasiswa (nim,id_kelas,nama_mahasiswa,alamat) VALUES('13011843','BB040','Kana Hasnia','Solo');
INSERT INTO Mahasiswa (nim,id_kelas,nama_mahasiswa,alamat) VALUES('13011839','BB022','Iqbal Hari','Dieng');
INSERT INTO Mahasiswa (nim,id_kelas,nama_mahasiswa,alamat) VALUES('13011878','BB016','Sania Wardah','Wonosobo');
INSERT INTO Mahasiswa (nim,id_kelas,nama_mahasiswa,alamat) VALUES('13011828','BB032','Nabilah Ayu','Bekasi');
INSERT INTO Mahasiswa (nim,id_kelas,nama_mahasiswa,alamat) VALUES('13011816','BB031','Maria Desy','Cilacap');
INSERT INTO Mahasiswa (nim,id_kelas,nama_mahasiswa,alamat) VALUES('13011800','BB012','Lia Kurnia','Jombang');
INSERT INTO Mahasiswa (nim,id_kelas,nama_mahasiswa,alamat) VALUES('13011845','BB003','Abel Ramdan','Kendal');
INSERT INTO Mahasiswa (nim,id_kelas,nama_mahasiswa,alamat) VALUES('13011819','BB040','Iqbal Setiawan','Jakarta');
INSERT INTO Mahasiswa (nim,id_kelas,nama_mahasiswa,alamat) VALUES('13011891','BB011','Budi Setiawan','Bali');
INSERT INTO Mahasiswa (nim,id_kelas,nama_mahasiswa,alamat) VALUES('13011847','BB016','Hasbi Yarlon','Malang');
INSERT INTO Mahasiswa (nim,id_kelas,nama_mahasiswa,alamat) VALUES('13011887','BB017','Rafika Putri','Bukittinggi');
INSERT INTO Mahasiswa (nim,id_kelas,nama_mahasiswa,alamat) VALUES('13011817','BB036','Ibnu Hadi','Padang');
INSERT INTO Mahasiswa (nim,id_kelas,nama_mahasiswa,alamat) VALUES('13011899','BB016','Alfi Novriwanda','Puruik Putuih');

INSERT INTO Praktikum(id_praktikum,id_matkul,nim) VALUES('P001','AA001','13011804');
INSERT INTO Praktikum(id_praktikum,id_matkul,nim) VALUES('P002','AA003','13011806');
INSERT INTO Praktikum(id_praktikum,id_matkul,nim) VALUES('P003','AA007','13011803');
INSERT INTO Praktikum(id_praktikum,id_matkul,nim) VALUES('P004','AA004','13011801');
INSERT INTO Praktikum(id_praktikum,id_matkul,nim) VALUES('P005','AA002','13011812');
INSERT INTO Praktikum(id_praktikum,id_matkul,nim) VALUES('P006','AA006','13011877');
INSERT INTO Praktikum(id_praktikum,id_matkul,nim) VALUES('P007','AA013','13011820');
INSERT INTO Praktikum(id_praktikum,id_matkul,nim) VALUES('P008','AA035','13011830');
INSERT INTO Praktikum(id_praktikum,id_matkul,nim) VALUES('P009','AA018','13011822');
INSERT INTO Praktikum(id_praktikum,id_matkul,nim) VALUES('P010','AA005','13011836');
INSERT INTO Praktikum(id_praktikum,id_matkul,nim) VALUES('P011','AA024','13011840');
INSERT INTO Praktikum(id_praktikum,id_matkul,nim) VALUES('P012','AA011','13011800');
INSERT INTO Praktikum(id_praktikum,id_matkul,nim) VALUES('P013','AA001','13011886');
INSERT INTO Praktikum(id_praktikum,id_matkul,nim) VALUES('P014','AA026','13011805');
INSERT INTO Praktikum(id_praktikum,id_matkul,nim) VALUES('P015','AA012','13011844');
INSERT INTO Praktikum(id_praktikum,id_matkul,nim) VALUES('P016','AA015','13011819');
INSERT INTO Praktikum(id_praktikum,id_matkul,nim) VALUES('P017','AA034','13011878');
INSERT INTO Praktikum(id_praktikum,id_matkul,nim) VALUES('P018','AA003','13011810');
INSERT INTO Praktikum(id_praktikum,id_matkul,nim) VALUES('P019','AA013','13011821');
INSERT INTO Praktikum(id_praktikum,id_matkul,nim) VALUES('P020','AA014','13011845');
INSERT INTO Praktikum(id_praktikum,id_matkul,nim) VALUES('P021','AA029','13011830');
INSERT INTO Praktikum(id_praktikum,id_matkul,nim) VALUES('P022','AA030','13011878');
INSERT INTO Praktikum(id_praktikum,id_matkul,nim) VALUES('P023','AA018','13011827');
INSERT INTO Praktikum(id_praktikum,id_matkul,nim) VALUES('P024','AA034','13011822');
INSERT INTO Praktikum(id_praktikum,id_matkul,nim) VALUES('P025','AA021','13011881');
INSERT INTO Praktikum(id_praktikum,id_matkul,nim) VALUES('P026','AA025','13011810');
INSERT INTO Praktikum(id_praktikum,id_matkul,nim) VALUES('P027','AA013','13011811');
INSERT INTO Praktikum(id_praktikum,id_matkul,nim) VALUES('P028','AA030','13011886');
INSERT INTO Praktikum(id_praktikum,id_matkul,nim) VALUES('P029','AA002','13011802');
INSERT INTO Praktikum(id_praktikum,id_matkul,nim) VALUES('P030','AA005','13011815');
INSERT INTO Praktikum(id_praktikum,id_matkul,nim) VALUES('P031','AA003','13011830');
INSERT INTO Praktikum(id_praktikum,id_matkul,nim) VALUES('P032','AA017','13011819');
INSERT INTO Praktikum(id_praktikum,id_matkul,nim) VALUES('P033','AA039','13011833');
INSERT INTO Praktikum(id_praktikum,id_matkul,nim) VALUES('P034','AA001','13011899');
INSERT INTO Praktikum(id_praktikum,id_matkul,nim) VALUES('P035','AA035','13011816');
INSERT INTO Praktikum(id_praktikum,id_matkul,nim) VALUES('P036','AA037','13011881');
INSERT INTO Praktikum(id_praktikum,id_matkul,nim) VALUES('P037','AA015','13011816');
INSERT INTO Praktikum(id_praktikum,id_matkul,nim) VALUES('P038','AA016','13011800');
INSERT INTO Praktikum(id_praktikum,id_matkul,nim) VALUES('P039','AA003','13011867');
INSERT INTO Praktikum(id_praktikum,id_matkul,nim) VALUES('P040','AA012','13011830');

INSERT INTO Penilaian(id_penilaian,id_praktikum,id_modul,nilai) VALUES('N001','P030','MM049',49);
INSERT INTO Penilaian(id_penilaian,id_praktikum,id_modul,nilai) VALUES('N002','P013','MM001',67);
INSERT INTO Penilaian(id_penilaian,id_praktikum,id_modul,nilai) VALUES('N003','P040','MM118',20);
INSERT INTO Penilaian(id_penilaian,id_praktikum,id_modul,nilai) VALUES('N004','P040','MM112',27);
INSERT INTO Penilaian(id_penilaian,id_praktikum,id_modul,nilai) VALUES('N005','P034','MM007',91);
INSERT INTO Penilaian(id_penilaian,id_praktikum,id_modul,nilai) VALUES('N006','P035','MM341',27);
INSERT INTO Penilaian(id_penilaian,id_praktikum,id_modul,nilai) VALUES('N007','P037','MM364',60);
INSERT INTO Penilaian(id_penilaian,id_praktikum,id_modul,nilai) VALUES('N008','P003','MM070',98);
INSERT INTO Penilaian(id_penilaian,id_praktikum,id_modul,nilai) VALUES('N009','P010','MM047',51);
INSERT INTO Penilaian(id_penilaian,id_praktikum,id_modul,nilai) VALUES('N010','P033','MM386',29);

INSERT INTO Penilaian(id_penilaian,id_praktikum,id_modul,nilai) VALUES('N011','P020','MM132',36);
INSERT INTO Penilaian(id_penilaian,id_praktikum,id_modul,nilai) VALUES('N012','P032','MM163',52);
INSERT INTO Penilaian(id_penilaian,id_praktikum,id_modul,nilai) VALUES('N013','P019','MM125',78);
INSERT INTO Penilaian(id_penilaian,id_praktikum,id_modul,nilai) VALUES('N014','P023','MM180',41);
INSERT INTO Penilaian(id_penilaian,id_praktikum,id_modul,nilai) VALUES('N015','P040','MM115',75);
INSERT INTO Penilaian(id_penilaian,id_praktikum,id_modul,nilai) VALUES('N016','P020','MM140',69);
INSERT INTO Penilaian(id_penilaian,id_praktikum,id_modul,nilai) VALUES('N017','P021','MM286',44);
INSERT INTO Penilaian(id_penilaian,id_praktikum,id_modul,nilai) VALUES('N018','P005','MM015',37);
INSERT INTO Penilaian(id_penilaian,id_praktikum,id_modul,nilai) VALUES('N019','P016','MM141',94);
INSERT INTO Penilaian(id_penilaian,id_praktikum,id_modul,nilai) VALUES('N020','P011','MM240',51);

INSERT INTO Penilaian(id_penilaian,id_praktikum,id_modul,nilai) VALUES('N021','P032','MM165',69);
INSERT INTO Penilaian(id_penilaian,id_praktikum,id_modul,nilai) VALUES('N022','P035','MM345',95);
INSERT INTO Penilaian(id_penilaian,id_praktikum,id_modul,nilai) VALUES('N023','P002','MM029',61);
INSERT INTO Penilaian(id_penilaian,id_praktikum,id_modul,nilai) VALUES('N024','P009','MM171',16);
INSERT INTO Penilaian(id_penilaian,id_praktikum,id_modul,nilai) VALUES('N025','P026','MM246',100);
INSERT INTO Penilaian(id_penilaian,id_praktikum,id_modul,nilai) VALUES('N026','P028','MM226',26);
INSERT INTO Penilaian(id_penilaian,id_praktikum,id_modul,nilai) VALUES('N027','P007','MM130',60);
INSERT INTO Penilaian(id_penilaian,id_praktikum,id_modul,nilai) VALUES('N028','P010','MM044',19);
INSERT INTO Penilaian(id_penilaian,id_praktikum,id_modul,nilai) VALUES('N029','P025','MM208',61);
INSERT INTO Penilaian(id_penilaian,id_praktikum,id_modul,nilai) VALUES('N030','P037','MM145',85);

INSERT INTO Penilaian(id_penilaian,id_praktikum,id_modul,nilai) VALUES('N031','P038','MM159',53);
INSERT INTO Penilaian(id_penilaian,id_praktikum,id_modul,nilai) VALUES('N032','P016','MM145',24);
INSERT INTO Penilaian(id_penilaian,id_praktikum,id_modul,nilai) VALUES('N033','P033','MM388',77);
INSERT INTO Penilaian(id_penilaian,id_praktikum,id_modul,nilai) VALUES('N034','P008','MM344',25);
INSERT INTO Penilaian(id_penilaian,id_praktikum,id_modul,nilai) VALUES('N035','P008','MM343',78);
INSERT INTO Penilaian(id_penilaian,id_praktikum,id_modul,nilai) VALUES('N036','P009','MM171',81);
INSERT INTO Penilaian(id_penilaian,id_praktikum,id_modul,nilai) VALUES('N037','P004','MM039',86);
INSERT INTO Penilaian(id_penilaian,id_praktikum,id_modul,nilai) VALUES('N038','P027','MM130',23);
INSERT INTO Penilaian(id_penilaian,id_praktikum,id_modul,nilai) VALUES('N039','P019','MM127',18);
INSERT INTO Penilaian(id_penilaian,id_praktikum,id_modul,nilai) VALUES('N040','P013','MM006',20);

UPDATE penilaian Set id_modul = 'MM148' WHERE id_penilaian = 'N007';

INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM001','Modul 1','AA001','Pengenalan Pascal');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM002','Modul 2','AA001','Variable, I/O, Assignment, dan Operator');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM003','Modul 3','AA001','Percabangan');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM004','Modul 4','AA001','Fungsi dan Prosedur');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM005','Modul 5','AA001','Perulangan');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM006','Modul 6','AA001','Skema Pemrosesan Skuensial');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM007','Modul 7','AA001','Array');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM008','Modul 8','AA001','Searching dan Sorting');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM009','Modul 9','AA001','Sequential');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM010','Modul 10','AA001','Mesin Abstrak');


INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM011','Modul 1','AA002','Pengenalan Bahasa C++');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM012','Modul 2','AA002','Pengenalan Bahasa C++(2)');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM013','Modul 3','AA002','Single Linked list');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM014','Modul 4','AA002','Double Linked List');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM015','Modul 5','AA002','Multi Linked List');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM016','Modul 6','AA002','Stack');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM017','Modul 7','AA002','Queue');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM018','Modul 8','AA002','Prosedur dan Fungsi Rekursif');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM019','Modul 9','AA002','Tree');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM020','Modul 10','AA002','Graph');


INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM021','Modul 1','AA003','Pengenalan Java');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM022','Modul 2','AA003','Konsep Dasar Pemrograman Berorientasi Objek');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM023','Modul 3','AA003','Agregasi dan Komposisi');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM024','Modul 4','AA003','Inheritance dan Polimorfisme');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM025','Modul 5','AA003','Abstract, Inteface, dan Referensi Variabel Casting');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM026','Modul 6','AA003','Exception');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM027','Modul 7','AA003','Inner Class, Collection, Generics');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM028','Modul 8','AA003','GUI');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM029','Modul 9','AA003','Input Output JDBC');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM030','Modul 10','AA003','Buat Aplikasi');


INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM031','Modul 1','AA004','Pengantar Pemodelan Basis Data');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM032','Modul 2','AA004','Data Definition Language dan Data Manipulation Language');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM033','Modul 3','AA004','Query Dasar');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM034','Modul 4','AA004','Query Dasar II');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM035','Modul 5','AA004','Join');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM036','Modul 6','AA004','Query Agregate');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM037','Modul 7','AA004','Query Agregate II');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM038','Modul 8','AA004','Sub Query');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM039','Modul 9','AA004','Sub Query II');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM040','Modul 10','AA004','Trigger');

INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM041','Modul 1','AA005','Pengenalan Pascal');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM042','Modul 2','AA005','Variable, I/O, Assignment, dan Operator');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM043','Modul 3','AA005','Percabangan');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM044','Modul 4','AA005','Fungsi dan Prosedur');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM045','Modul 5','AA005','Perulangan');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM046','Modul 6','AA005','Skema Pemrosesan Skuensial');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM047','Modul 7','AA005','Array');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM048','Modul 8','AA005','Searching dan Sorting');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM049','Modul 9','AA005','Sequential');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM050','Modul 10','AA005','Mesin Abstrak');


INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM051','Modul 1','AA006','Pengenalan Pascal');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM052','Modul 2','AA006','Variable, I/O, Assignment, dan Operator');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM053','Modul 3','AA006','Percabangan');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM054','Modul 4','AA006','Fungsi dan Prosedur');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM055','Modul 5','AA006','Perulangan');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM056','Modul 6','AA006','Skema Pemrosesan Skuensial');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM057','Modul 7','AA006','Array');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM058','Modul 8','AA006','Searching dan Sorting');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM059','Modul 9','AA006','Sequential');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM060','Modul 10','AA006','Mesin Abstrak');

INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM061','Modul 1','AA007','Pengantar Pemodelan Basis Data');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM062','Modul 2','AA007','Data Definition Language dan Data Manipulation Language');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM063','Modul 3','AA007','Query Dasar');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM064','Modul 4','AA007','Query Dasar II');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM065','Modul 5','AA007','Join');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM066','Modul 6','AA007','Query Agregate');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM067','Modul 7','AA007','Query Agregate II');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM068','Modul 8','AA007','Sub Query');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM069','Modul 9','AA007','Sub Query II');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM070','Modul 10','AA007','Trigger');


INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM071','Modul 1','AA008','Pengantar Pemodelan Basis Data');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM072','Modul 2','AA008','Data Definition Language dan Data Manipulation Language');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM073','Modul 3','AA008','Query Dasar');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM074','Modul 4','AA008','Query Dasar II');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM075','Modul 5','AA008','Join');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM076','Modul 6','AA008','Query Agregate');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM077','Modul 7','AA008','Query Agregate II');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM078','Modul 8','AA008','Sub Query');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM079','Modul 9','AA008','Sub Query II');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM080','Modul 10','AA008','Trigger');

INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM081','Modul 1','AA009','Pengantar Pemodelan Basis Data');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM082','Modul 2','AA009','Data Definition Language dan Data Manipulation Language');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM083','Modul 3','AA009','Query Dasar');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM084','Modul 4','AA009','Query Dasar II');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM085','Modul 5','AA009','Join');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM086','Modul 6','AA009','Query Agregate');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM087','Modul 7','AA009','Query Agregate II');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM088','Modul 8','AA009','Sub Query');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM089','Modul 9','AA009','Sub Query II');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM090','Modul 10','AA009','Trigger');

INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM091','Modul 1','AA010','Pengantar Pemodelan Basis Data');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM092','Modul 2','AA010','Data Definition Language dan Data Manipulation Language');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM093','Modul 3','AA010','Query Dasar');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM094','Modul 4','AA010','Query Dasar II');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM095','Modul 5','AA010','Join');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM096','Modul 6','AA010','Query Agregate');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM097','Modul 7','AA010','Query Agregate II');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM098','Modul 8','AA010','Sub Query');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM099','Modul 9','AA010','Sub Query II');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM100','Modul 10','AA010','Trigger');

INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM101','Modul 1','AA011','Pengantar Pemodelan Basis Data');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM102','Modul 2','AA011','Data Definition Language dan Data Manipulation Language');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM103','Modul 3','AA011','Query Dasar');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM104','Modul 4','AA011','Query Dasar II');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM105','Modul 5','AA011','Join');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM106','Modul 6','AA011','Query Agregate');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM107','Modul 7','AA011','Query Agregate II');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM108','Modul 8','AA011','Sub Query');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM109','Modul 9','AA011','Sub Query II');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM110','Modul 10','AA011','Trigger');



INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM111','Modul 1','AA012','Pengantar Pemodelan Basis Data');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM112','Modul 2','AA012','Data Definition Language dan Data Manipulation Language');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM113','Modul 3','AA012','Query Dasar');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM114','Modul 4','AA012','Query Dasar II');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM115','Modul 5','AA012','Join');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM116','Modul 6','AA012','Query Agregate');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM117','Modul 7','AA012','Query Agregate II');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM118','Modul 8','AA012','Sub Query');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM119','Modul 9','AA012','Sub Query II');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM120','Modul 10','AA012','Trigger');

INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM121','Modul 1','AA013','Pengantar Pemodelan Basis Data');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM122','Modul 2','AA013','Data Definition Language dan Data Manipulation Language');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM123','Modul 3','AA013','Query Dasar');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM124','Modul 4','AA013','Query Dasar II');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM125','Modul 5','AA013','Join');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM126','Modul 6','AA013','Query Agregate');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM127','Modul 7','AA013','Query Agregate II');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM128','Modul 8','AA013','Sub Query');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM129','Modul 9','AA013','Sub Query II');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM130','Modul 10','AA013','Trigger');

INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM131','Modul 1','AA014','Pengantar Pemodelan Basis Data');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM132','Modul 2','AA014','Data Definition Language dan Data Manipulation Language');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM133','Modul 3','AA014','Query Dasar');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM134','Modul 4','AA014','Query Dasar II');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM135','Modul 5','AA014','Join');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM136','Modul 6','AA014','Query Agregate');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM137','Modul 7','AA014','Query Agregate II');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM138','Modul 8','AA014','Sub Query');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM139','Modul 9','AA014','Sub Query II');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM140','Modul 10','AA014','Trigger');



INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM141','Modul 1','AA015','Pengenalan Java');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM142','Modul 2','AA015','Konsep Dasar Pemrograman Berorientasi Objek');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM143','Modul 3','AA015','Agregasi dan Komposisi');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM144','Modul 4','AA015','Inheritance dan Polimorfisme');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM145','Modul 5','AA015','Abstract, Inteface, dan Referensi Variabel Casting');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM146','Modul 6','AA015','Exception');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM147','Modul 7','AA015','Inner Class, Collection, Generics');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM148','Modul 8','AA015','GUI');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM149','Modul 9','AA015','Input Output JDBC');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM150','Modul 10','AA015','Buat Aplikasi');


INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM151','Modul 1','AA016','Pengenalan Java');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM152','Modul 2','AA016','Konsep Dasar Pemrograman Berorientasi Objek');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM153','Modul 3','AA016','Agregasi dan Komposisi');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM154','Modul 4','AA016','Inheritance dan Polimorfisme');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM155','Modul 5','AA016','Abstract, Inteface, dan Referensi Variabel Casting');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM156','Modul 6','AA016','Exception');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM157','Modul 7','AA016','Inner Class, Collection, Generics');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM158','Modul 8','AA016','GUI');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM159','Modul 9','AA016','Input Output JDBC');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM160','Modul 10','AA016','Buat Aplikasi');


INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM161','Modul 1','AA017','Pengenalan Java');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM162','Modul 2','AA017','Konsep Dasar Pemrograman Berorientasi Objek');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM163','Modul 3','AA017','Agregasi dan Komposisi');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM164','Modul 4','AA017','Inheritance dan Polimorfisme');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM165','Modul 5','AA017','Abstract, Inteface, dan Referensi Variabel Casting');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM166','Modul 6','AA017','Exception');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM167','Modul 7','AA017','Inner Class, Collection, Generics');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM168','Modul 8','AA017','GUI');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM169','Modul 9','AA017','Input Output JDBC');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM170','Modul 10','AA017','Buat Aplikasi');


INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM171','Modul 1','AA018','Pengenalan Java');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM172','Modul 2','AA018','Konsep Dasar Pemrograman Berorientasi Objek');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM173','Modul 3','AA018','Agregasi dan Komposisi');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM174','Modul 4','AA018','Inheritance dan Polimorfisme');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM175','Modul 5','AA018','Abstract, Inteface, dan Referensi Variabel Casting');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM176','Modul 6','AA018','Exception');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM177','Modul 7','AA018','Inner Class, Collection, Generics');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM178','Modul 8','AA018','GUI');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM179','Modul 9','AA018','Input Output JDBC');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM180','Modul 10','AA018','Buat Aplikasi');


INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM181','Modul 1','AA019','Pengenalan Java');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM182','Modul 2','AA019','Konsep Dasar Pemrograman Berorientasi Objek');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM183','Modul 3','AA019','Agregasi dan Komposisi');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM184','Modul 4','AA019','Inheritance dan Polimorfisme');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM185','Modul 5','AA019','Abstract, Inteface, dan Referensi Variabel Casting');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM186','Modul 6','AA019','Exception');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM187','Modul 7','AA019','Inner Class, Collection, Generics');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM188','Modul 8','AA019','GUI');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM189','Modul 9','AA019','Input Output JDBC');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM190','Modul 10','AA019','Buat Aplikasi');


INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM191','Modul 1','AA020','Pengenalan Java');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM192','Modul 2','AA020','Konsep Dasar Pemrograman Berorientasi Objek');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM193','Modul 3','AA020','Agregasi dan Komposisi');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM194','Modul 4','AA020','Inheritance dan Polimorfisme');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM195','Modul 5','AA020','Abstract, Inteface, dan Referensi Variabel Casting');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM196','Modul 6','AA020','Exception');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM197','Modul 7','AA020','Inner Class, Collection, Generics');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM198','Modul 8','AA020','GUI');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM199','Modul 9','AA020','Input Output JDBC');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM200','Modul 10','AA020','Buat Aplikasi');



INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM201','Modul 1','AA021','Pengenalan Java');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM202','Modul 2','AA021','Konsep Dasar Pemrograman Berorientasi Objek');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM203','Modul 3','AA021','Agregasi dan Komposisi');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM204','Modul 4','AA021','Inheritance dan Polimorfisme');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM205','Modul 5','AA021','Abstract, Inteface, dan Referensi Variabel Casting');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM206','Modul 6','AA021','Exception');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM207','Modul 7','AA021','Inner Class, Collection, Generics');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM208','Modul 8','AA021','GUI');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM209','Modul 9','AA021','Input Output JDBC');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM210','Modul 10','AA021','Buat Aplikasi');



INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM211','Modul 1','AA022','Pengenalan Java');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM212','Modul 2','AA022','Konsep Dasar Pemrograman Berorientasi Objek');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM213','Modul 3','AA022','Agregasi dan Komposisi');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM214','Modul 4','AA022','Inheritance dan Polimorfisme');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM215','Modul 5','AA022','Abstract, Inteface, dan Referensi Variabel Casting');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM216','Modul 6','AA022','Exception');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM217','Modul 7','AA022','Inner Class, Collection, Generics');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM218','Modul 8','AA022','GUI');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM219','Modul 9','AA022','Input Output JDBC');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM220','Modul 10','AA022','Buat Aplikasi');


INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM221','Modul 1','AA023','Pengenalan Bahasa C++');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM222','Modul 2','AA023','Pengenalan Bahasa C++(2)');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM223','Modul 3','AA023','Single Linked list');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM224','Modul 4','AA023','Double Linked List');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM225','Modul 5','AA023','Multi Linked List');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM226','Modul 6','AA023','Stack');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM227','Modul 7','AA023','Queue');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM228','Modul 8','AA023','Prosedur dan Fungsi Rekursif');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM229','Modul 9','AA023','Tree');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM230','Modul 10','AA023','Graph');

INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM231','Modul 1','AA024','Pengenalan Bahasa C++');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM232','Modul 2','AA024','Pengenalan Bahasa C++(2)');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM233','Modul 3','AA024','Single Linked list');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM234','Modul 4','AA024','Double Linked List');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM235','Modul 5','AA024','Multi Linked List');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM236','Modul 6','AA024','Stack');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM237','Modul 7','AA024','Queue');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM238','Modul 8','AA024','Prosedur dan Fungsi Rekursif');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM239','Modul 9','AA024','Tree');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM240','Modul 10','AA024','Graph');

INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM241','Modul 1','AA025','Pengenalan Bahasa C++');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM242','Modul 2','AA025','Pengenalan Bahasa C++(2)');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM243','Modul 3','AA025','Single Linked list');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM244','Modul 4','AA025','Double Linked List');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM245','Modul 5','AA025','Multi Linked List');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM246','Modul 6','AA025','Stack');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM247','Modul 7','AA025','Queue');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM248','Modul 8','AA025','Prosedur dan Fungsi Rekursif');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM249','Modul 9','AA025','Tree');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM250','Modul 10','AA025','Graph');


INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM251','Modul 1','AA026','Pengenalan Bahasa C++');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM252','Modul 2','AA026','Pengenalan Bahasa C++(2)');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM253','Modul 3','AA026','Single Linked list');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM254','Modul 4','AA026','Double Linked List');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM255','Modul 5','AA026','Multi Linked List');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM256','Modul 6','AA026','Stack');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM257','Modul 7','AA026','Queue');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM258','Modul 8','AA026','Prosedur dan Fungsi Rekursif');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM259','Modul 9','AA026','Tree');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM260','Modul 10','AA026','Graph');

INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM261','Modul 1','AA027','Pengenalan Bahasa C++');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM262','Modul 2','AA027','Pengenalan Bahasa C++(2)');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM263','Modul 3','AA027','Single Linked list');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM264','Modul 4','AA027','Double Linked List');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM265','Modul 5','AA027','Multi Linked List');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM266','Modul 6','AA027','Stack');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM267','Modul 7','AA027','Queue');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM268','Modul 8','AA027','Prosedur dan Fungsi Rekursif');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM269','Modul 9','AA027','Tree');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM270','Modul 10','AA027','Graph');

INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM271','Modul 1','AA028','Pengenalan Bahasa C++');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM272','Modul 2','AA028','Pengenalan Bahasa C++(2)');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM273','Modul 3','AA028','Single Linked list');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM274','Modul 4','AA028','Double Linked List');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM275','Modul 5','AA028','Multi Linked List');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM276','Modul 6','AA028','Stack');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM277','Modul 7','AA028','Queue');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM278','Modul 8','AA028','Prosedur dan Fungsi Rekursif');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM279','Modul 9','AA028','Tree');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM280','Modul 10','AA028','Graph');

INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM281','Modul 1','AA029','Pengenalan Bahasa C++');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM282','Modul 2','AA029','Pengenalan Bahasa C++(2)');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM283','Modul 3','AA029','Single Linked list');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM284','Modul 4','AA029','Double Linked List');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM285','Modul 5','AA029','Multi Linked List');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM286','Modul 6','AA029','Stack');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM287','Modul 7','AA029','Queue');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM288','Modul 8','AA029','Prosedur dan Fungsi Rekursif');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM289','Modul 9','AA029','Tree');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM290','Modul 10','AA029','Graph');

INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM291','Modul 1','AA030','Pengenalan Bahasa C++');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM292','Modul 2','AA030','Pengenalan Bahasa C++(2)');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM293','Modul 3','AA030','Single Linked list');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM294','Modul 4','AA030','Double Linked List');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM295','Modul 5','AA030','Multi Linked List');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM296','Modul 6','AA030','Stack');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM297','Modul 7','AA030','Queue');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM298','Modul 8','AA030','Prosedur dan Fungsi Rekursif');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM299','Modul 9','AA030','Tree');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM300','Modul 10','AA030','Graph');



INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM301','Modul 1','AA031','Pengenalan Bahasa C++');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM302','Modul 2','AA031','Pengenalan Bahasa C++(2)');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM303','Modul 3','AA031','Single Linked list');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM304','Modul 4','AA031','Double Linked List');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM305','Modul 5','AA031','Multi Linked List');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM306','Modul 6','AA031','Stack');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM307','Modul 7','AA031','Queue');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM308','Modul 8','AA031','Prosedur dan Fungsi Rekursif');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM309','Modul 9','AA031','Tree');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM310','Modul 10','AA031','Graph');



INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM311','Modul 1','AA032','Pengenalan Pascal');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM312','Modul 2','AA032','Variable, I/O, Assignment, dan Operator');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM313','Modul 3','AA032','Percabangan');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM314','Modul 4','AA032','Fungsi dan Prosedur');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM315','Modul 5','AA032','Perulangan');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM316','Modul 6','AA032','Skema Pemrosesan Skuensial');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM317','Modul 7','AA032','Array');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM318','Modul 8','AA032','Searching dan Sorting');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM319','Modul 9','AA032','Sequential');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM320','Modul 10','AA032','Mesin Abstrak');




INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM321','Modul 1','AA033','Pengenalan Pascal');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM322','Modul 2','AA033','Variable, I/O, Assignment, dan Operator');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM323','Modul 3','AA033','Percabangan');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM324','Modul 4','AA033','Fungsi dan Prosedur');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM325','Modul 5','AA033','Perulangan');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM326','Modul 6','AA033','Skema Pemrosesan Skuensial');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM327','Modul 7','AA033','Array');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM328','Modul 8','AA033','Searching dan Sorting');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM329','Modul 9','AA033','Sequential');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM330','Modul 10','AA033','Mesin Abstrak');



INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM331','Modul 1','AA034','Pengenalan Pascal');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM332','Modul 2','AA034','Variable, I/O, Assignment, dan Operator');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM333','Modul 3','AA034','Percabangan');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM334','Modul 4','AA034','Fungsi dan Prosedur');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM335','Modul 5','AA034','Perulangan');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM336','Modul 6','AA034','Skema Pemrosesan Skuensial');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM337','Modul 7','AA034','Array');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM338','Modul 8','AA034','Searching dan Sorting');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM339','Modul 9','AA034','Sequential');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM340','Modul 10','AA034','Mesin Abstrak');



INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM341','Modul 1','AA035','Pengenalan Pascal');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM342','Modul 2','AA035','Variable, I/O, Assignment, dan Operator');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM343','Modul 3','AA035','Percabangan');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM344','Modul 4','AA035','Fungsi dan Prosedur');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM345','Modul 5','AA035','Perulangan');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM346','Modul 6','AA035','Skema Pemrosesan Skuensial');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM347','Modul 7','AA035','Array');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM348','Modul 8','AA035','Searching dan Sorting');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM349','Modul 9','AA035','Sequential');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM350','Modul 10','AA035','Mesin Abstrak');


INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM351','Modul 1','AA036','Pengenalan Pascal');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM352','Modul 2','AA036','Variable, I/O, Assignment, dan Operator');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM353','Modul 3','AA036','Percabangan');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM354','Modul 4','AA036','Fungsi dan Prosedur');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM355','Modul 5','AA036','Perulangan');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM356','Modul 6','AA036','Skema Pemrosesan Skuensial');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM357','Modul 7','AA036','Array');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM358','Modul 8','AA036','Searching dan Sorting');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM359','Modul 9','AA036','Sequential');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM360','Modul 10','AA036','Mesin Abstrak');



INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM361','Modul 1','AA037','Pengenalan Pascal');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM362','Modul 2','AA037','Variable, I/O, Assignment, dan Operator');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM363','Modul 3','AA037','Percabangan');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM364','Modul 4','AA037','Fungsi dan Prosedur');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM365','Modul 5','AA037','Perulangan');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM366','Modul 6','AA037','Skema Pemrosesan Skuensial');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM367','Modul 7','AA037','Array');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM368','Modul 8','AA037','Searching dan Sorting');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM369','Modul 9','AA037','Sequential');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM370','Modul 10','AA037','Mesin Abstrak');



INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM371','Modul 1','AA038','Pengenalan Pascal');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM372','Modul 2','AA038','Variable, I/O, Assignment, dan Operator');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM373','Modul 3','AA038','Percabangan');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM374','Modul 4','AA038','Fungsi dan Prosedur');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM375','Modul 5','AA038','Perulangan');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM376','Modul 6','AA038','Skema Pemrosesan Skuensial');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM377','Modul 7','AA038','Array');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM378','Modul 8','AA038','Searching dan Sorting');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM379','Modul 9','AA038','Sequential');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM380','Modul 10','AA038','Mesin Abstrak');




INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM381','Modul 1','AA039','Pengenalan Pascal');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM382','Modul 2','AA039','Variable, I/O, Assignment, dan Operator');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM383','Modul 3','AA039','Percabangan');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM384','Modul 4','AA039','Fungsi dan Prosedur');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM385','Modul 5','AA039','Perulangan');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM386','Modul 6','AA039','Skema Pemrosesan Skuensial');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM387','Modul 7','AA039','Array');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM388','Modul 8','AA039','Searching dan Sorting');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM389','Modul 9','AA039','Sequential');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM390','Modul 10','AA039','Mesin Abstrak');



INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM391','Modul 1','AA040','Pengenalan Pascal');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM392','Modul 2','AA040','Variable, I/O, Assignment, dan Operator');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM393','Modul 3','AA040','Percabangan');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM394','Modul 4','AA040','Fungsi dan Prosedur');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM395','Modul 5','AA040','Perulangan');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM396','Modul 6','AA040','Skema Pemrosesan Skuensial');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM397','Modul 7','AA040','Array');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM398','Modul 8','AA040','Searching dan Sorting');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM399','Modul 9','AA040','Sequential');
INSERT INTO Modul(id_modul,nomor_modul,id_matkul,materi) VALUES('MM400','Modul 10','AA040','Mesin Abstrak');





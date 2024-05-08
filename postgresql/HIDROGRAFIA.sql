CREATE SCHEMA IF NOT EXISTS "public";

CREATE SEQUENCE "public".areaumida_idareaumida_seq AS integer START WITH 1 INCREMENT BY 1;

CREATE SEQUENCE "public".baciahidrografica_idbaciahidrografica_seq AS integer START WITH 1 INCREMENT BY 1;

CREATE SEQUENCE "public".bancoareia_idbancoareia_seq AS integer START WITH 1 INCREMENT BY 1;

CREATE SEQUENCE "public".barragem_idbarragem_seq AS integer START WITH 1 INCREMENT BY 1;

CREATE SEQUENCE "public".comporta_idcomporta_seq AS integer START WITH 1 INCREMENT BY 1;

CREATE SEQUENCE "public".corredeira_idcorredeira_seq AS integer START WITH 1 INCREMENT BY 1;

CREATE SEQUENCE "public".cursodagua_idcursodagua_seq AS integer START WITH 1 INCREMENT BY 1;

CREATE SEQUENCE "public".eclusa_ideclusa_seq AS integer START WITH 1 INCREMENT BY 1;

CREATE SEQUENCE "public".fontedagua_idfontedagua_seq AS integer START WITH 1 INCREMENT BY 1;

CREATE SEQUENCE "public".fozmaritima_idfozmaritima_seq AS integer START WITH 1 INCREMENT BY 1;

CREATE SEQUENCE "public".ilha_idilha_seq AS integer START WITH 1 INCREMENT BY 1;

CREATE SEQUENCE "public".massadagua_idmassadagua_seq AS integer START WITH 1 INCREMENT BY 1;

CREATE SEQUENCE "public".naturezafundo_idnaturezafundo_seq AS integer START WITH 1 INCREMENT BY 1;

CREATE SEQUENCE "public".pontodrenagem_idpontodrenagem_seq AS integer START WITH 1 INCREMENT BY 1;

CREATE SEQUENCE "public".pontoiniciodrenagem_idpontoiniciodrenagem_seq AS integer START WITH 1 INCREMENT BY 1;

CREATE SEQUENCE "public".quebramarmolhe_idquebramarmolhe_seq AS integer START WITH 1 INCREMENT BY 1;

CREATE SEQUENCE "public".quedadagua_idquedadagua_seq AS integer START WITH 1 INCREMENT BY 1;

CREATE SEQUENCE "public".recife_idrecife_seq AS integer START WITH 1 INCREMENT BY 1;

CREATE SEQUENCE "public".reservatoriohidrico_idreservatoriohidrico_seq AS integer START WITH 1 INCREMENT BY 1;

CREATE SEQUENCE "public".rochaemagua_idrochaemagua_seq AS integer START WITH 1 INCREMENT BY 1;

CREATE SEQUENCE "public".sumidourovertedouro_idsumidourovertedouro_seq AS integer START WITH 1 INCREMENT BY 1;

CREATE SEQUENCE "public".terrenosujeitoinundacao_idterrenosujeitoinundacao_seq AS integer START WITH 1 INCREMENT BY 1;

CREATE SEQUENCE "public".trechocursodagua_idtrechocursodagua_seq AS integer START WITH 1 INCREMENT BY 1;

CREATE SEQUENCE "public".trechodrenagem_idtrechodrenagem_seq AS integer START WITH 1 INCREMENT BY 1;

CREATE SEQUENCE "public".trechomassadagua_idtrechomassadagua_seq AS integer START WITH 1 INCREMENT BY 1;

CREATE  TABLE "public".baciahidrografica ( 
	idbaciahidrografica  serial  NOT NULL  ,
	descricao            text    ,
	CONSTRAINT baciahidrografica_pkey PRIMARY KEY ( idbaciahidrografica )
 );

CREATE  TABLE "public".bancoareia ( 
	idbancoareia         serial  NOT NULL  ,
	descricao            text    ,
	CONSTRAINT bancoareia_pkey PRIMARY KEY ( idbancoareia )
 );

CREATE  TABLE "public".barragem ( 
	idbarragem           serial  NOT NULL  ,
	descricao            text    ,
	volume_liters        numeric    ,
	CONSTRAINT barragem_pkey PRIMARY KEY ( idbarragem )
 );

CREATE  TABLE "public".comporta ( 
	idcomporta           serial  NOT NULL  ,
	descricao            text    ,
	CONSTRAINT comporta_pkey PRIMARY KEY ( idcomporta )
 );

CREATE  TABLE "public".corredeira ( 
	idcorredeira         serial  NOT NULL  ,
	descricao            text    ,
	CONSTRAINT corredeira_pkey PRIMARY KEY ( idcorredeira )
 );

CREATE  TABLE "public".cursodagua ( 
	idcursodagua         serial  NOT NULL  ,
	baciahidrografica    integer  NOT NULL  ,
	descricao            text    ,
	CONSTRAINT cursodagua_pkey PRIMARY KEY ( idcursodagua )
 );

CREATE  TABLE "public".eclusa ( 
	ideclusa             serial  NOT NULL  ,
	descricao            text    ,
	CONSTRAINT eclusa_pkey PRIMARY KEY ( ideclusa )
 );

CREATE  TABLE "public".fontedagua ( 
	idfontedagua         serial  NOT NULL  ,
	descricao            text    ,
	CONSTRAINT fontedagua_pkey PRIMARY KEY ( idfontedagua )
 );

CREATE  TABLE "public".fozmaritima ( 
	idfozmaritima        serial  NOT NULL  ,
	descricao            text    ,
	CONSTRAINT fozmaritima_pkey PRIMARY KEY ( idfozmaritima )
 );

CREATE  TABLE "public".ilha ( 
	idilha               serial  NOT NULL  ,
	descricao            text    ,
	CONSTRAINT ilha_pkey PRIMARY KEY ( idilha )
 );

CREATE  TABLE "public".naturezafundo ( 
	idnaturezafundo      serial  NOT NULL  ,
	descricao            text    ,
	CONSTRAINT naturezafundo_pkey PRIMARY KEY ( idnaturezafundo )
 );

CREATE  TABLE "public".quebramarmolhe ( 
	idquebramarmolhe     serial  NOT NULL  ,
	descricao            text    ,
	CONSTRAINT quebramarmolhe_pkey PRIMARY KEY ( idquebramarmolhe )
 );

CREATE  TABLE "public".quedadagua ( 
	idquedadagua         serial  NOT NULL  ,
	descricao            text    ,
	CONSTRAINT quedadagua_pkey PRIMARY KEY ( idquedadagua )
 );

CREATE  TABLE "public".recife ( 
	idrecife             serial  NOT NULL  ,
	descricao            text    ,
	CONSTRAINT recife_pkey PRIMARY KEY ( idrecife )
 );

CREATE  TABLE "public".reservatoriohidrico ( 
	idreservatoriohidrico serial  NOT NULL  ,
	descricao            text    ,
	CONSTRAINT reservatoriohidrico_pkey PRIMARY KEY ( idreservatoriohidrico )
 );

CREATE  TABLE "public".rochaemagua ( 
	idrochaemagua        serial  NOT NULL  ,
	descricao            text    ,
	CONSTRAINT rochaemagua_pkey PRIMARY KEY ( idrochaemagua )
 );

CREATE  TABLE "public".sumidourovertedouro ( 
	idsumidourovertedouro serial  NOT NULL  ,
	descricao            text    ,
	CONSTRAINT sumidourovertedouro_pkey PRIMARY KEY ( idsumidourovertedouro )
 );

CREATE  TABLE "public".trechocursodagua ( 
	idtrechocursodagua   serial  NOT NULL  ,
	cursodagua           integer  NOT NULL  ,
	descricao            text    ,
	CONSTRAINT trechocursodagua_pkey PRIMARY KEY ( idtrechocursodagua )
 );

CREATE  TABLE "public".massadagua ( 
	idmassadagua         serial  NOT NULL  ,
	baciahidrografica    integer  NOT NULL  ,
	reservatoriohidrico  integer  NOT NULL  ,
	naturezafundo        integer  NOT NULL  ,
	ilha                 integer  NOT NULL  ,
	rochaemagua          integer  NOT NULL  ,
	recife               integer  NOT NULL  ,
	bancoareia           integer  NOT NULL  ,
	quebramarmolhe       integer  NOT NULL  ,
	descricao            text    ,
	barragem             integer  NOT NULL  ,
	CONSTRAINT massadagua_pkey PRIMARY KEY ( idmassadagua )
 );

CREATE  TABLE "public".pontodrenagem ( 
	idpontodrenagem      serial  NOT NULL  ,
	sumidourovertedouro  integer  NOT NULL  ,
	fozmaritima          integer  NOT NULL  ,
	corredeira           integer  NOT NULL  ,
	quedadagua           integer  NOT NULL  ,
	comporta             integer  NOT NULL  ,
	barragem             integer  NOT NULL  ,
	eclusa               integer  NOT NULL  ,
	descricao            text    ,
	CONSTRAINT pontodrenagem_pkey PRIMARY KEY ( idpontodrenagem )
 );

CREATE  TABLE "public".pontoiniciodrenagem ( 
	idpontoiniciodrenagem serial  NOT NULL  ,
	pontodrenagem        integer  NOT NULL  ,
	fontedagua           integer  NOT NULL  ,
	descricao            text    ,
	CONSTRAINT pontoiniciodrenagem_pkey PRIMARY KEY ( idpontoiniciodrenagem )
 );

CREATE  TABLE "public".terrenosujeitoinundacao ( 
	idterrenosujeitoinundacao serial  NOT NULL  ,
	fozmaritima          integer  NOT NULL  ,
	massadagua           integer  NOT NULL  ,
	descricao            text    ,
	CONSTRAINT terrenosujeitoinundacao_pkey PRIMARY KEY ( idterrenosujeitoinundacao )
 );

CREATE  TABLE "public".trechomassadagua ( 
	idtrechomassadagua   serial  NOT NULL  ,
	massadagua           integer  NOT NULL  ,
	trechocursodagua     integer  NOT NULL  ,
	descricao            text    ,
	CONSTRAINT trechomassadagua_pkey PRIMARY KEY ( idtrechomassadagua )
 );

CREATE  TABLE "public".areaumida ( 
	idareaumida          serial  NOT NULL  ,
	massadagua           integer  NOT NULL  ,
	descricao            text    ,
	CONSTRAINT areaumida_pkey PRIMARY KEY ( idareaumida )
 );

CREATE  TABLE "public".trechodrenagem ( 
	idtrechodrenagem     serial  NOT NULL  ,
	corredeira           integer  NOT NULL  ,
	quedadagua           integer  NOT NULL  ,
	barragem             integer  NOT NULL  ,
	pontodrenagem        integer  NOT NULL  ,
	trechocursodagua     integer  NOT NULL  ,
	trechomassadagua     integer  NOT NULL  ,
	massadagua           integer  NOT NULL  ,
	areaumida            integer  NOT NULL  ,
	terrenosujeitoinundacao integer  NOT NULL  ,
	descricao            text    ,
	CONSTRAINT trechodrenagem_pkey PRIMARY KEY ( idtrechodrenagem )
 );

ALTER TABLE "public".areaumida ADD CONSTRAINT fk_area_umida FOREIGN KEY ( massadagua ) REFERENCES "public".massadagua( idmassadagua );

ALTER TABLE "public".cursodagua ADD CONSTRAINT fk_curso_dagua FOREIGN KEY ( baciahidrografica ) REFERENCES "public".baciahidrografica( idbaciahidrografica );

ALTER TABLE "public".massadagua ADD CONSTRAINT fk_massa_dagua_bh FOREIGN KEY ( baciahidrografica ) REFERENCES "public".baciahidrografica( idbaciahidrografica );

ALTER TABLE "public".massadagua ADD CONSTRAINT fk_massa_dagua_rh FOREIGN KEY ( reservatoriohidrico ) REFERENCES "public".reservatoriohidrico( idreservatoriohidrico );

ALTER TABLE "public".massadagua ADD CONSTRAINT fk_massa_dagua_nf FOREIGN KEY ( naturezafundo ) REFERENCES "public".naturezafundo( idnaturezafundo );

ALTER TABLE "public".massadagua ADD CONSTRAINT fk_massa_dagua_ilha FOREIGN KEY ( ilha ) REFERENCES "public".ilha( idilha );

ALTER TABLE "public".massadagua ADD CONSTRAINT fk_massa_dagua_ra FOREIGN KEY ( rochaemagua ) REFERENCES "public".rochaemagua( idrochaemagua );

ALTER TABLE "public".massadagua ADD CONSTRAINT fk_massa_dagua_rc FOREIGN KEY ( recife ) REFERENCES "public".recife( idrecife );

ALTER TABLE "public".massadagua ADD CONSTRAINT fk_massa_dagua_ba FOREIGN KEY ( bancoareia ) REFERENCES "public".bancoareia( idbancoareia );

ALTER TABLE "public".massadagua ADD CONSTRAINT fk_massa_dagua_qm FOREIGN KEY ( quebramarmolhe ) REFERENCES "public".quebramarmolhe( idquebramarmolhe );

ALTER TABLE "public".massadagua ADD CONSTRAINT fk_massadagua_bg FOREIGN KEY ( barragem ) REFERENCES "public".barragem( idbarragem );

ALTER TABLE "public".pontodrenagem ADD CONSTRAINT fk_ponto_drenagem_sv FOREIGN KEY ( sumidourovertedouro ) REFERENCES "public".sumidourovertedouro( idsumidourovertedouro );

ALTER TABLE "public".pontodrenagem ADD CONSTRAINT fk_ponto_drenagem_fm FOREIGN KEY ( fozmaritima ) REFERENCES "public".fozmaritima( idfozmaritima );

ALTER TABLE "public".pontodrenagem ADD CONSTRAINT fk_ponto_drenagem_cr FOREIGN KEY ( corredeira ) REFERENCES "public".corredeira( idcorredeira );

ALTER TABLE "public".pontodrenagem ADD CONSTRAINT fk_ponto_drenagem_qd FOREIGN KEY ( quedadagua ) REFERENCES "public".quedadagua( idquedadagua );

ALTER TABLE "public".pontodrenagem ADD CONSTRAINT fk_ponto_drenagem_cp FOREIGN KEY ( comporta ) REFERENCES "public".comporta( idcomporta );

ALTER TABLE "public".pontodrenagem ADD CONSTRAINT fk_ponto_drenagem_bg FOREIGN KEY ( barragem ) REFERENCES "public".barragem( idbarragem );

ALTER TABLE "public".pontodrenagem ADD CONSTRAINT fk_ponto_drenagem_ec FOREIGN KEY ( eclusa ) REFERENCES "public".eclusa( ideclusa );

ALTER TABLE "public".pontoiniciodrenagem ADD CONSTRAINT fk_inicio_drenagem_pd FOREIGN KEY ( pontodrenagem ) REFERENCES "public".pontodrenagem( idpontodrenagem );

ALTER TABLE "public".pontoiniciodrenagem ADD CONSTRAINT fk_inicio_drenagem_fd FOREIGN KEY ( fontedagua ) REFERENCES "public".fontedagua( idfontedagua );

ALTER TABLE "public".terrenosujeitoinundacao ADD CONSTRAINT fk_terreno_inundacao_fm FOREIGN KEY ( fozmaritima ) REFERENCES "public".fozmaritima( idfozmaritima );

ALTER TABLE "public".terrenosujeitoinundacao ADD CONSTRAINT fk_terreno_inundacao_md FOREIGN KEY ( massadagua ) REFERENCES "public".massadagua( idmassadagua );

ALTER TABLE "public".trechocursodagua ADD CONSTRAINT fk_trecho_curso_dagua FOREIGN KEY ( cursodagua ) REFERENCES "public".cursodagua( idcursodagua );

ALTER TABLE "public".trechodrenagem ADD CONSTRAINT fk_trecho_drenagem_cr FOREIGN KEY ( corredeira ) REFERENCES "public".corredeira( idcorredeira );

ALTER TABLE "public".trechodrenagem ADD CONSTRAINT fk_trecho_drenagem_qd FOREIGN KEY ( quedadagua ) REFERENCES "public".quedadagua( idquedadagua );

ALTER TABLE "public".trechodrenagem ADD CONSTRAINT fk_trecho_drenagem_bg FOREIGN KEY ( barragem ) REFERENCES "public".barragem( idbarragem );

ALTER TABLE "public".trechodrenagem ADD CONSTRAINT fk_trecho_drenagem_pd FOREIGN KEY ( pontodrenagem ) REFERENCES "public".pontodrenagem( idpontodrenagem );

ALTER TABLE "public".trechodrenagem ADD CONSTRAINT fk_trecho_drenagem_tcd FOREIGN KEY ( trechocursodagua ) REFERENCES "public".trechocursodagua( idtrechocursodagua );

ALTER TABLE "public".trechodrenagem ADD CONSTRAINT fk_trecho_drenagem_tmd FOREIGN KEY ( trechomassadagua ) REFERENCES "public".trechomassadagua( idtrechomassadagua );

ALTER TABLE "public".trechodrenagem ADD CONSTRAINT fk_trecho_drenagem_md FOREIGN KEY ( massadagua ) REFERENCES "public".massadagua( idmassadagua );

ALTER TABLE "public".trechodrenagem ADD CONSTRAINT fk_trecho_drenagem_au FOREIGN KEY ( areaumida ) REFERENCES "public".areaumida( idareaumida );

ALTER TABLE "public".trechodrenagem ADD CONSTRAINT fk_trecho_drenagem_ti FOREIGN KEY ( terrenosujeitoinundacao ) REFERENCES "public".terrenosujeitoinundacao( idterrenosujeitoinundacao );

ALTER TABLE "public".trechomassadagua ADD CONSTRAINT fk_trecho_massa_dagua_md FOREIGN KEY ( massadagua ) REFERENCES "public".massadagua( idmassadagua );

ALTER TABLE "public".trechomassadagua ADD CONSTRAINT fk_trecho_massa_dagua_tcd FOREIGN KEY ( trechocursodagua ) REFERENCES "public".trechocursodagua( idtrechocursodagua );


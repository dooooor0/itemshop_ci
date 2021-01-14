-- Table: promotion

create table "promotion" (
id serial,
locale character varying(10) default 'jp',

"type" integer default 1,

title character varying(255),
src character varying(255),
href character varying(255),
html text,

sdate timestamp not null default now(),
edate timestamp not null default now(),

ctime timestamp not null default now(),
utime timestamp not null default now(),
gold_discount smallint DEFAULT 0,
coin_discount smallint DEFAULT 0,
CONSTRAINT promotion_pkey PRIMARY KEY (id)
)

WITH ( OIDS=FALSE );

ALTER TABLE "promotion" OWNER TO pxprogram;

comment on table "promotion" is 'promotion main table';

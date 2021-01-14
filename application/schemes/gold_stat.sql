-- Table: gold_stat

create table gold_stat (
id serial,
locale character varying(10),
wdate date default now(),

gold_sum numeric default 0,

cnt integer default 0,
gold_increase integer default 0,
gold_use integer default 0,

ctime timestamp not null default now(),

CONSTRAINT gold_stat_pkey PRIMARY KEY (id)
)

WITH ( OIDS=FALSE);

ALTER TABLE gold_stat OWNER TO pxprogram;

comment on table "gold_stat" is 'gold_stat main table';

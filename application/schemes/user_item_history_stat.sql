-- Table: user_item_history_stat

create table user_item_history_stat (
id serial,
locale character varying(10),
categoryid smallint default 0,
wdate date default now(),

cnt integer default 0,
gold_use integer default 0,

ctime timestamp not null default now(),
coin_use integer DEFAULT 0,
CONSTRAINT user_item_history_stat_pkey PRIMARY KEY (id),
CONSTRAINT user_item_history_stat_unique_key UNIQUE (locale, categoryid, wdate)
)

WITH ( OIDS=FALSE);

ALTER TABLE user_item_history_stat OWNER TO pxprogram;

comment on table "user_item_history_stat" is 'user_item_history_stat main table';


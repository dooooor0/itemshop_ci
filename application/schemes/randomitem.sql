-- Table: randomitem

create table "randomitem" (
id serial,
locale character varying(10) default 'jp',

title character varying(255),
price integer default 100,
turns_day integer default 1,

sdate timestamp not null default now(),
edate timestamp not null default now(),

ctime timestamp not null default now(),
utime timestamp not null default now(),
coin_turns_day smallint DEFAULT 0,
coin_probability_capsule1 smallint DEFAULT 5,
coin_probability_capsule2 smallint DEFAULT 10,
coin_probability_capsule3 smallint DEFAULT 25,
coin_probability_capsule4 smallint DEFAULT 60,
CONSTRAINT randomitem_pkey PRIMARY KEY (id)
)

WITH ( OIDS=FALSE );

ALTER TABLE "randomitem" OWNER TO pxprogram;

comment on table "randomitem" is 'randomitem main table';

-- Table: copyitem_user

create table copyitem_user (
id serial,
locale character varying(10) default 'jp',

itemid integer not null,
rfid numeric not null,
eventtype character varying(20),
shopid integer default 0,

issues integer default 0,

ctime timestamp not null default now(),
utime timestamp not null default now(),
CONSTRAINT copyitem_user_pkey PRIMARY KEY (id)
)

WITH ( OIDS=FALSE);

ALTER TABLE copyitem_user OWNER TO pxprogram;

comment on table "copyitem_user" is 'copyitem_user main table';

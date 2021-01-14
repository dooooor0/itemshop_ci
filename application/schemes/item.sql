-- Table: item

create table item (
id serial,
categoryid integer not null default 0,
itemtype integer not null default 1,
status integer not null default 1,

groupname character varying(20),
name character varying(60),
desc1 character varying(100),
desc2 character varying(200),

thumbnail character varying(255),
screenshot1 character varying(255) default '',
screenshot2 character varying(255) default '',

premiere integer default 0,
plevel integer default 3,
isnew integer default 0,

private character varying(20) not null default '0',

booktime timestamp not null default now(),
ctime timestamp not null default now(),
utime timestamp not null default now(),

CONSTRAINT item_pkey PRIMARY KEY (id)
)

WITH ( OIDS=FALSE);

ALTER TABLE item OWNER TO pxprogram;

comment on table "item" is 'item main table';
comment on column "item"."itemtype" is '1 => normal, set';
comment on column "item"."status" is '0 => stopsale, sale, willsale, event, happyitem(not use), copyitem, proitem';

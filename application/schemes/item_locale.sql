-- Table: item_locale

create table item_locale (
id serial,
itemid integer not null,
locale character varying( 10 ) not null default 'jp',

categoryid integer not null default 0,
itemtype integer not null default 1,

status smallint default 0,

groupname character varying(20),
name character varying(60),
desc1 character varying(100),
desc2 character varying(200),

thumbnail character varying(255),
screenshot1 character varying(255) default '',
screenshot2 character varying(255) default '',

premiere integer default 0,
plevel integer default 3,
isnew integer default 1,

sold integer default 0,
presentCount integer default 0,
requestCount integer default 0,

booktime timestamp not null default now(),
ctime timestamp not null default now(),
utime timestamp not null default now(),
  expiretime timestamp without time zone DEFAULT '9999-12-31 00:00:00'::timestamp without time zone, -- item expire date
  item_rare smallint DEFAULT 1,
  extendtime timestamp without time zone DEFAULT '9999-12-31 00:00:00'::timestamp without time zone,
CONSTRAINT item_locale_pkey unique (id),
CONSTRAINT item_locale_ukey unique (itemid, locale)
)

WITH ( OIDS=FALSE );

ALTER TABLE item OWNER TO pxprogram;

comment on table "item_locale" is 'item country mapping table';

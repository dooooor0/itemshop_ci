-- Table: resource

create table "resource" (
id serial,

clientcode character varying(40),
awseq integer default 1,

exp integer default 0,
playoption character varying(255),
games character varying(255),
child character varying(255),

src character varying(255) default '',
fsize integer,
md5sum character varying(34),

ctime timestamp not null default now(),
utime timestamp not null default now(),

CONSTRAINT resource_pkey PRIMARY KEY ( id )
)

WITH ( OIDS=FALSE);

ALTER TABLE resource OWNER TO pxprogram;

comment on table "resource" is 'resource of item';

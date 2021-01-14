-- Table: faq

create table faq (
id serial,
relid integer default 0,
domain character varying(40),
locale character varying(10) default 'default',

title character varying(255),
contents text,

ctime timestamp not null default now(),
utime timestamp not null default now(),

CONSTRAINT faq_pkey PRIMARY KEY (id)
)

WITH ( OIDS=FALSE);

ALTER TABLE faq OWNER TO pxprogram;

comment on table "faq" is 'faq main table';
comment on column "faq"."locale" is 'use locale code like "ko"';

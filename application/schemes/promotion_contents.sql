-- Table: promotion

create table "promotion_contents" (
id serial,
promotionid integer not null,

title character varying(255),
contents character varying(255),

ctime timestamp not null default now(),
utime timestamp not null default now(),

CONSTRAINT promotion__contents_pkey PRIMARY KEY (id)
)

WITH ( OIDS=FALSE );

ALTER TABLE "promotion_contents" OWNER TO pxprogram;

comment on table "promotion_contents" is 'promotion_contents main table';

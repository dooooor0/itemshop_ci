-- Table: promotion_locale

create table "promotion_locale" (
id integer not null,
relid character varying(10) not null,

CONSTRAINT promotion_locale_pkey PRIMARY KEY (id, relid)
)

WITH ( OIDS=FALSE );

ALTER TABLE "promotion_locale" OWNER TO pxprogram;

comment on table "promotion_locale" is 'promotion_locale map table';

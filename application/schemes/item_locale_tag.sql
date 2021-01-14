-- Table: item_locale_tag

create table item_locale_tag (
id serial,
itemid integer not null,
locale character varying( 20 ),
tag character varying( 20 ) not null,
ctime timestamp not null default now(),
ordernum smallint DEFAULT 1
CONSTRAINT item_locale_tag_pkey PRIMARY KEY (id),
CONSTRAINT item_locale_tag_ukey unique (itemid, locale, tag)
)

WITH ( OIDS=FALSE);

ALTER TABLE item_locale_tag OWNER TO pxprogram;

comment on table "item_locale_tag" is 'item_locale_tag map table';
comment on column "item_locale_tag"."itemid" is 'item.id';
comment on column "item_locale_tag"."locale" is 'locale id';
comment on column "item_locale_tag"."tag" is 'tag name';

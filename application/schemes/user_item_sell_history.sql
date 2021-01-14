-- Table: user_item_history

create table user_item_sell_history (
id serial,
rfid numeric,
locale character varying(10) default 'jp',
itemid integer not null,
gold integer default 10,

ctime timestamp default now(),

CONSTRAINT user_item_sell_history_pkey PRIMARY KEY (id)
);

ALTER TABLE user_item_sell_history OWNER TO pxprogram;

comment on table "user_item_sell_history" is 'user_item_sell_history table';
comment on column "user_item_sell_history"."gold" is 'gold, pc, days can be different with item_price data. you can find this data from eventid is item_event.id';

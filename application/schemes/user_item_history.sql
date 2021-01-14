-- Table: itemshop.user_item_history

-- DROP TABLE itemshop.user_item_history;

CREATE TABLE itemshop.user_item_history
(
	id serial NOT NULL,
	rfid numeric,
	itemid integer NOT NULL,
	gold integer, -- gold, pc, days can be different with item_price data. you can find this data from eventid is item_event.id
	days integer DEFAULT 0,
	ctime timestamp without time zone DEFAULT now(),
	edate date,
	memo text DEFAULT ''::text,
	locale character varying(10) DEFAULT 'jp'::character varying,
	c_seq bigint DEFAULT 0,
	coin integer DEFAULT 0,
	purchase_type smallint DEFAULT 1, -- 1 : purchase, 2 : extend
	  is_ranking smallint DEFAULT 0,
	  is_new smallint DEFAULT 0,
	  is_sale smallint DEFAULT 0,
	  is_recommend smallint DEFAULT 0,
	  is_hot smallint DEFAULT 0,
	  purchase_location smallint DEFAULT 1, -- purchase location - 1:web, 2:machine
	CONSTRAINT user_item_history_pkey PRIMARY KEY (id)
	USING INDEX TABLESPACE pxindex
)
INHERITS (itemshop.user_item_history_pt_total)
WITH (
  OIDS=FALSE
);
ALTER TABLE itemshop.user_item_history
  OWNER TO pxprogram;
COMMENT ON TABLE itemshop.user_item_history
  IS 'user_item table';
COMMENT ON COLUMN itemshop.user_item_history.gold IS 'gold, pc, days can be different with item_price data. you can find this data from eventid is item_event.id';
COMMENT ON COLUMN itemshop.user_item_history.purchase_location IS 'purchase location - 1:web, 2:machine';
COMMENT ON COLUMN itemshop.user_item_history.purchase_type IS 'purchase type - 
1. purchase
2. extend
3. present (normal)
4. present (gift item)
5. phoenix 
6. beginner item
7. starter setitem
8. scratch item
9. purchase promotion item
10. card item promotion
99. admin
';
COMMENT ON COLUMN itemshop.user_item_history.is_ranking IS 'is ranking';
COMMENT ON COLUMN itemshop.user_item_history.is_new IS 'is new';
COMMENT ON COLUMN itemshop.user_item_history.is_sale IS 'is sale';
COMMENT ON COLUMN itemshop.user_item_history.is_recommend IS 'is recommend';
COMMENT ON COLUMN itemshop.user_item_history.is_hot IS 'is hot - 1:ranking, 2:new, 3:ranking,new';


-- Index: itemshop.idx_user_item_history_ctime

-- DROP INDEX itemshop.idx_user_item_history_ctime;

CREATE INDEX idx_user_item_history_ctime
  ON itemshop.user_item_history
  USING btree
  (ctime);


-- Index: itemshop.idx_user_item_history_locale

-- DROP INDEX itemshop.idx_user_item_history_locale;

CREATE INDEX idx_user_item_history_locale
  ON itemshop.user_item_history
  USING btree
  (locale COLLATE pg_catalog."default");

-- Index: itemshop.idx_user_item_history_purchase_type

-- DROP INDEX itemshop.idx_user_item_history_purchase_type;

CREATE INDEX idx_user_item_history_purchase_type
  ON itemshop.user_item_history
  USING btree
  (purchase_type);

-- Index: itemshop.idx_user_item_history_itemid

-- DROP INDEX itemshop.idx_user_item_history_itemid;

CREATE INDEX idx_user_item_history_itemid
  ON itemshop.user_item_history
  USING btree
  (itemid);
  

-- Index: itemshop.user_item_history_c_seq_i

-- DROP INDEX itemshop.user_item_history_c_seq_i;

CREATE INDEX user_item_history_c_seq_i
  ON itemshop.user_item_history
  USING btree
  (c_seq)
TABLESPACE pxindex;
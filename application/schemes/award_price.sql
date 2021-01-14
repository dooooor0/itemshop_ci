-- Table: award_price

DROP TABLE award_price;

CREATE TABLE award_price (
  num integer NOT NULL,
  locale character(2),
  period integer NOT NULL,
  amt integer NOT NULL,
  amt2 integer NOT NULL,
  aw_goodid integer NOT NULL,
  sale_count integer NOT NULL DEFAULT 0,
  CONSTRAINT award_price_pkey PRIMARY KEY (num, locale)
)
WITH (
  OIDS=FALSE
);

ALTER TABLE award_price OWNER TO pxprogram;

COMMENT ON TABLE award_price IS 'gold item sale master table';
COMMENT ON COLUMN award_price.num IS 'serial';
COMMENT ON COLUMN award_price.period IS 'period (day)';
COMMENT ON COLUMN award_price.amt IS 'normal price';
COMMENT ON COLUMN award_price.amt2 IS 'sale price';
COMMENT ON COLUMN award_price.aw_goodid IS 'fk. =award_goods.num';


-- Index: fki_ap_agnum_i

-- DROP INDEX fki_ap_agnum_i;

CREATE INDEX fki_ap_agnum_i ON award_price USING btree (aw_goodid);

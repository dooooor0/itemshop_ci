-- Table: giveitem_checkrfid

-- DROP TABLE giveitem_checkrfid;

CREATE TABLE giveitem_checkrfid (
  c_seq bigint default 0,
  rfid numeric NOT NULL,
  cardno character varying(16) NOT NULL,
  ctime date NOT NULL,
  itemid text,
  status integer NOT NULL DEFAULT 0, -- 0:아이템 아직 안받음,1:받음
  memo text,
  issetstyle integer NOT NULL DEFAULT 0, -- 에일리스타일 최초 유지&해제 설정 여부판별(0:미설정,1:설정)
  CONSTRAINT giveitem_checkrfid_pkey PRIMARY KEY (rfid)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE giveitem_checkrfid OWNER TO pxprogram;
GRANT ALL ON TABLE giveitem_checkrfid TO pxprogram;
-- GRANT SELECT ON TABLE giveitem_checkrfid TO bkuser;
COMMENT ON TABLE giveitem_checkrfid IS '카드 구매시 아이템을 선물로 주는 카드목록 구분을 위한 테이블';
COMMENT ON COLUMN giveitem_checkrfid.status IS '0:아이템 아직 안받음,1:받음';
COMMENT ON COLUMN giveitem_checkrfid.issetstyle IS '에일리스타일 최초 유지&해제 설정 여부판별(0:미설정,1:설정)';


-- Index: giveitem_checkrfid_cardno_i

-- DROP INDEX giveitem_checkrfid_cardno_i;

CREATE UNIQUE INDEX giveitem_checkrfid_cardno_i
  ON giveitem_checkrfid
  USING btree
  (cardno);

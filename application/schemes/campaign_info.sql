-- Table: campaign_info

-- DROP TABLE campaign_info;

CREATE TABLE campaign_info (
locale character varying(10) NOT NULL,
l_type integer NOT NULL, -- 캠페인 발생 위치 (1:로그인,2:세팅,3:선물,4:조르기)
p_type integer NOT NULL, -- 선물 타입 (1: ITEM, 2: GOLD, 3: 하트)
contents text, -- p_type 타입별 상품...
stime timestamp without time zone DEFAULT now(), -- 캠페인 시행 일자
etime timestamp without time zone DEFAULT now(), -- 캠페인 종료 일자
id serial NOT NULL,
status integer NOT NULL DEFAULT 0,
CONSTRAINT campaign_info_pk PRIMARY KEY (id)
)
WITH (
	OIDS=FALSE
);
ALTER TABLE campaign_info
OWNER TO pxprogram;
COMMENT ON TABLE campaign_info
IS 'campaign_info table:캠페인 정보 테이블';
COMMENT ON COLUMN campaign_info.l_type IS '캠페인 발생 위치 (1:로그인,2:세팅,3:선물,4:조르기)';
COMMENT ON COLUMN campaign_info.p_type IS '선물 타입 (1: ITEM, 2: GOLD, 3: 하트)';
COMMENT ON COLUMN campaign_info.contents IS 'p_type 타입별 상품
(type=1: itemid 쉼표로구분, type=2:gold,type=3:hart)';
COMMENT ON COLUMN campaign_info.stime IS '캠페인 시행 일자';
COMMENT ON COLUMN campaign_info.etime IS '캠페인 종료 일자';


-- Index: campaign_info_idx

-- DROP INDEX campaign_info_idx;

CREATE INDEX campaign_info_idx
ON campaign_info
USING btree
(locale COLLATE pg_catalog."default");

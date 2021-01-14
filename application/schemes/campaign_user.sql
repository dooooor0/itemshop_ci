-- Table: campaign_user

-- DROP TABLE campaign_user;

CREATE TABLE campaign_user (
id serial NOT NULL,
c_seq bigint default 0;
rfid numeric NOT NULL, -- 캠페인는 카드단위 참여
ctime timestamp without time zone DEFAULT now(), -- 캠페인 클리어 일자
campaignid integer NOT NULL, -- 캠페인 id
status integer NOT NULL DEFAULT 0, -- 캠페인 상태값 (0:미참여,1:참여,2:참여후상품수령)
contents text, -- 선택한 상품
locale character varying(10),
CONSTRAINT campaign_user_pk PRIMARY KEY (id)
)
WITH (
OIDS=FALSE
);

ALTER TABLE campaign_user OWNER TO pxprogram;

COMMENT ON TABLE campaign_user IS 'campaign_user table:캠페인 유저정보 테이블';
COMMENT ON COLUMN campaign_user.rfid IS '캠페인는 카드단위 참여';
COMMENT ON COLUMN campaign_user.ctime IS '캠페인 클리어 일자';
COMMENT ON COLUMN campaign_user.campaignid IS '캠페인 id';
COMMENT ON COLUMN campaign_user.status IS '캠페인 상태값 (0:미참여,1:참여,2:참여후상품수령)';
COMMENT ON COLUMN campaign_user.contents IS '선택한 상품';

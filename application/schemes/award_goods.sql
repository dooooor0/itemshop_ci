-- Table: award_goods

CREATE TABLE award_goods (
  num integer NOT NULL, -- serial
  typenum integer, -- capital char of userinfo.adoneffect_px[1|2] ex) 1=M 2=F, 3=S, 4=G, 5=E,6=I
  awtype integer, -- award type ex M1=low tone M2=high tone .... S1=single bull ....
  awseq integer, -- 개별 판매 상품들 ex) M1=awseq, I1=awseq, ....
  machtype integer, -- 1=px1, 2=px2, 3=px1&2
  fsize integer, -- file size
  md5sum character varying(34), -- md5sum of this file
  fname character varying(80), -- not used - file name (px1: /www/user_awards/M1_1.avi ... | px2: /www/chroot/www/user_awards/M1_1.avi ....)
  ctime timestamp without time zone, -- create time
  title1 character varying(20), -- head title
  title2 character varying(60), -- main title
  status integer, -- 3=event 2=plan 1=sale 0=not sale
  premiere integer DEFAULT 0,
  plevel integer, -- 인기도
  desc1 character varying(100), -- short description
  desc2 character varying(500), -- long description
  exp integer DEFAULT 0,
  playoption text DEFAULT ''::text,
  games text DEFAULT ''::text,
  child text,
  tags text,
  isnew integer DEFAULT 0,

  CONSTRAINT award_goods_temp_pkey primary key (num)
)
WITH (
  OIDS=FALSE
);


ALTER TABLE award_goods OWNER TO pxprogram;


COMMENT ON TABLE award_goods IS 'if award_goods.typenum > 100 then that is a right of typenum of typenum - 100 typenum (IMPORTANT!!)';
COMMENT ON COLUMN award_goods.typenum IS 'capital char of userinfo.adoneffect_px[1|2] ex) 1=M 2=F, 3=S, 4=G, 5=E,6=I';
COMMENT ON COLUMN award_goods.awtype IS 'award type ex M1=low tone M2=high tone .... S1=single bull ....';
COMMENT ON COLUMN award_goods.awseq IS '개별 판매 상품들 ex) M1=awseq, I1=awseq, ....';
COMMENT ON COLUMN award_goods.fsize IS 'file size';
COMMENT ON COLUMN award_goods.md5sum IS 'md5sum of this file';
COMMENT ON COLUMN award_goods.fname IS 'not used - file name (px1: /www/user_awards/M1_1.avi ... | px2: /www/chroot/www/user_awards/M1_1.avi ....)';
COMMENT ON COLUMN award_goods.ctime IS 'create time';
COMMENT ON COLUMN award_goods.title1 IS 'head title';
COMMENT ON COLUMN award_goods.title2 IS 'main title';
COMMENT ON COLUMN award_goods.status IS '3=event 2=plan 1=sale 0=not sale ';
COMMENT ON COLUMN award_goods.num IS 'serial';
COMMENT ON COLUMN award_goods.machtype IS '1=px1, 2=px2, 3=px1&2';
COMMENT ON COLUMN award_goods.plevel IS '인기도';
COMMENT ON COLUMN award_goods.desc1 IS 'short description';
COMMENT ON COLUMN award_goods.desc2 IS 'long description';

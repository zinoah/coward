-- 시퀀스 삭제 구문 --
-- DROP SEQUENCE SEQ_SKILL_NO;
-- DROP SEQUENCE SEQ_MEMBER_NO;
-- DROP SEQUENCE SEQ_CONTEST_NO;
-- DROP SEQUENCE SEQ_LIKE_USER_NO;
-- DROP SEQUENCE SEQ_LIKE_CON_NO;
-- DROP SEQUENCE SEQ_EVENT_NO;
-- DROP SEQUENCE SEQ_CR_NO;
-- DROP SEQUENCE SEQ_CM_NO;
-- DROP SEQUENCE SEQ_ATTEND_NO;
-- DROP SEQUENCE SEQ_REGION_NO;
-- DROP SEQUENCE SEQ_BANK_NO;
-- DROP SEQUENCE SEQ_TYPE_NO;
-- DROP SEQUENCE SEQ_C_LIST_NO;
-- DROP SEQUENCE SEQ_AD_NO;


-- 시퀀스 생성 구문 -- 
CREATE SEQUENCE SEQ_SKILL_NO
INCREMENT BY 1
START WITH 1
MINVALUE 1
MAXVALUE 9999
NOCYCLE
NOCACHE
NOORDER;

CREATE SEQUENCE SEQ_MEMBER_NO
INCREMENT BY 1
START WITH 1
MINVALUE 1
MAXVALUE 9999
NOCYCLE
NOCACHE
NOORDER;

CREATE SEQUENCE SEQ_CONTEST_NO
INCREMENT BY 1
START WITH 1
MINVALUE 1
MAXVALUE 9999
NOCYCLE
NOCACHE
NOORDER;

CREATE SEQUENCE SEQ_LIKE_CON_NO
INCREMENT BY 1
START WITH 1
MINVALUE 1
MAXVALUE 9999
NOCYCLE
NOCACHE
NOORDER;

CREATE SEQUENCE SEQ_ATTEND_NO
INCREMENT BY 1
START WITH 1
MINVALUE 1
MAXVALUE 9999
NOCYCLE
NOCACHE
NOORDER;

CREATE SEQUENCE SEQ_LIKE_USER_NO
INCREMENT BY 1
START WITH 1
MINVALUE 1
MAXVALUE 9999
NOCYCLE
NOCACHE
NOORDER;


CREATE SEQUENCE SEQ_EVENT_NO
INCREMENT BY 1
START WITH 1
MINVALUE 1
MAXVALUE 9999
NOCYCLE
NOCACHE
NOORDER;

CREATE SEQUENCE SEQ_CR_NO
INCREMENT BY 1
START WITH 1
MINVALUE 1
MAXVALUE 9999
NOCYCLE
NOCACHE
NOORDER;

CREATE SEQUENCE SEQ_CM_NO
INCREMENT BY 1
START WITH 1
MINVALUE 1
MAXVALUE 9999
NOCYCLE
NOCACHE
NOORDER;

CREATE SEQUENCE SEQ_REGION_NO
INCREMENT BY 1
START WITH 1
MINVALUE 1
MAXVALUE 9999
NOCYCLE
NOCACHE
NOORDER;

CREATE SEQUENCE SEQ_TYPE_NO
INCREMENT BY 1
START WITH 1
MINVALUE 1
MAXVALUE 9999
NOCYCLE
NOCACHE
NOORDER;

CREATE SEQUENCE SEQ_AD_NO
INCREMENT BY 1
START WITH 1
MINVALUE 1
MAXVALUE 9999
NOCYCLE
NOCACHE
NOORDER;

CREATE SEQUENCE SEQ_BANK_NO
INCREMENT BY 1
START WITH 1
MINVALUE 1
MAXVALUE 9999
NOCYCLE
NOCACHE
NOORDER;

CREATE SEQUENCE SEQ_C_LIST_NO
INCREMENT BY 1
START WITH 1
MINVALUE 1
MAXVALUE 9999
NOCYCLE
NOCACHE
NOORDER;
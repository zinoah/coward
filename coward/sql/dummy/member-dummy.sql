-- member 테이블, 시퀀스 불도저 구문

-- DROP TABLE "MEMBER" CASCADE CONSTRAINTS;

-- CREATE TABLE "MEMBER" (
-- 	"MEMBER_NO"	NUMBER	CONSTRAINT "PK_MEMBER" PRIMARY KEY,
-- 	"MEMBER_TYPE"	VARCHAR2(10)  NOT NULL,
-- 	"MEMBER_ID"	VARCHAR2(30) CONSTRAINT "UK_MEMBER_ID" UNIQUE  NOT NULL,
-- 	"MEMBER_PW"	VARCHAR2(30)	NOT NULL,
-- 	"MEMBER_NICK"	VARCHAR2(20)	NOT NULL,
-- 	"PROFILE_IMG"	VARCHAR2(300),
-- 	"PHONE"	VARCHAR2(15),
--   "REGION_NO"	NUMBER	CONSTRAINT "FK_REGION_TO_MEMBER"  REFERENCES "REGION" ("REGION_NO"),
-- 	"STACK"	VARCHAR2(10),
-- 	"SKILL" VARCHAR2(300),
-- 	"SLOGAN"	VARCHAR2(200),
-- 	"INTRODUCE"	VARCHAR2(1000),
-- 	"TOTAL_PRICE" NUMBER,
-- 	"CURR_PRICE" NUMBER,
-- 	"ENROLL_DATE"	DATE		DEFAULT SYSDATE,
-- 	"SECESSION_FL"	VARCHAR2(3)	DEFAULT 'N',
-- 	"TERMS_FL"	VARCHAR2(3)	DEFAULT 'N',
-- 	"SNS_FL"	VARCHAR2(10)	DEFAULT 'BASIC'
-- );

-- DROP SEQUENCE SEQ_MEMBER_NO;

-- CREATE SEQUENCE SEQ_MEMBER_NO
-- INCREMENT BY 1
-- START WITH 1
-- MINVALUE 1
-- MAXVALUE 9999
-- NOCYCLE
-- NOCACHE
-- NOORDER;




-- Note: member dummy 1 ~ 8
INSERT INTO MEMBER (MEMBER_NO, MEMBER_TYPE, MEMBER_ID, MEMBER_PW, MEMBER_NICK, PROFILE_IMG, PHONE, REGION_NO, STACK, SKILL, SLOGAN, INTRODUCE, TOTAL_PRICE, CURR_PRICE, ENROLL_DATE, SECESSION_FL, TERMS_FL, SNS_FL)
VALUES (SEQ_MEMBER_NO.NEXTVAL, 'P', 'test01', 'pass01!', '스폰지밥', '/resources/assets/images/dummy/user-profile/profile-1.jpg', '010-1234-5678', '1', 'back', 'java,python', '스폰지밥 슬로건', '스폰지밥의 소개말', '500', '500', DEFAULT, 'N', 'N', 'N');

INSERT INTO MEMBER (MEMBER_NO, MEMBER_TYPE, MEMBER_ID, MEMBER_PW, MEMBER_NICK, PROFILE_IMG, PHONE, REGION_NO, STACK, SKILL, SLOGAN, INTRODUCE, TOTAL_PRICE, CURR_PRICE, ENROLL_DATE, SECESSION_FL, TERMS_FL, SNS_FL)
VALUES (SEQ_MEMBER_NO.NEXTVAL, 'C', 'test02', 'Abc22345', '뚱이', '/resources/assets/images/dummy/user-profile/profile-2.jpg', '010-1234-5677', '2', 'full', 'java,javaScript', '뚱이 슬로건', '뚱이의 소개말', '700', '600', DEFAULT, 'N', 'N', 'N');

INSERT INTO MEMBER (MEMBER_NO, MEMBER_TYPE, MEMBER_ID, MEMBER_PW, MEMBER_NICK, PROFILE_IMG, PHONE, REGION_NO, STACK, SKILL, SLOGAN, INTRODUCE, TOTAL_PRICE, CURR_PRICE, ENROLL_DATE, SECESSION_FL, TERMS_FL, SNS_FL)
VALUES (SEQ_MEMBER_NO.NEXTVAL, 'P', 'test03', 'Abc32345', '징징이', '/resources/assets/images/dummy/user-profile/profile-3.jpg', '010-1234-5676', '3', 'front', 'Angular,Spring', '징징이 슬로건', '징징이의 소개말', '800', '200', DEFAULT, 'N', 'N', 'N');

INSERT INTO MEMBER (MEMBER_NO, MEMBER_TYPE, MEMBER_ID, MEMBER_PW, MEMBER_NICK, PROFILE_IMG, PHONE, REGION_NO, STACK, SKILL, SLOGAN, INTRODUCE, TOTAL_PRICE, CURR_PRICE, ENROLL_DATE, SECESSION_FL, TERMS_FL, SNS_FL)
VALUES (SEQ_MEMBER_NO.NEXTVAL, 'C', 'test04', 'Abc42345', '집게사장', '/resources/assets/images/dummy/user-profile/profile-4.jpg', '010-1234-5675', '4', 'full', 'HTML,PHP', '집게사장 슬로건', '집게사장 소개말', '1100', '900', DEFAULT, 'N', 'N', 'N');
	  
INSERT INTO MEMBER (MEMBER_NO, MEMBER_TYPE, MEMBER_ID, MEMBER_PW, MEMBER_NICK, PROFILE_IMG, PHONE, REGION_NO, STACK, SKILL, SLOGAN, INTRODUCE, TOTAL_PRICE, CURR_PRICE, ENROLL_DATE, SECESSION_FL, TERMS_FL, SNS_FL)
VALUES (SEQ_MEMBER_NO.NEXTVAL, 'P', 'test05', 'Abc52345', '진주', '/resources/assets/images/dummy/user-profile/profile-5.jpg', '010-1234-5674', '5', 'back', 'CSS,Swift', '박진주 슬로건', '진주의 소개말', '1300', '200', DEFAULT, 'N', 'N', 'N');
	  
INSERT INTO MEMBER (MEMBER_NO, MEMBER_TYPE, MEMBER_ID, MEMBER_PW, MEMBER_NICK, PROFILE_IMG, PHONE, REGION_NO, STACK, SKILL, SLOGAN, INTRODUCE, TOTAL_PRICE, CURR_PRICE, ENROLL_DATE, SECESSION_FL, TERMS_FL, SNS_FL)
VALUES (SEQ_MEMBER_NO.NEXTVAL, 'C', 'test06', 'Abc62345', '핑핑이', '/resources/assets/images/dummy/user-profile/profile-6.jpg', '010-1234-5673', '6', 'front', 'React,Kotlin', '핑핑이 슬로건', '핑핑이 소개말', '100', '0', DEFAULT, 'N', 'N', 'N');
	  
INSERT INTO MEMBER (MEMBER_NO, MEMBER_TYPE, MEMBER_ID, MEMBER_PW, MEMBER_NICK, PROFILE_IMG, PHONE, REGION_NO, STACK, SKILL, SLOGAN, INTRODUCE, TOTAL_PRICE, CURR_PRICE, ENROLL_DATE, SECESSION_FL, TERMS_FL, SNS_FL)
VALUES (SEQ_MEMBER_NO.NEXTVAL, 'P', 'test07', 'Abc72345', '다람이', '/resources/assets/images/dummy/user-profile/profile-7.jpg', '010-1234-5672', '7', 'back', 'jQuery,Vue.js', '다람이 슬로건', '다람이 소개말', '1500', '1500', DEFAULT, 'N', 'N', 'N');
	  
INSERT INTO MEMBER (MEMBER_NO, MEMBER_TYPE, MEMBER_ID, MEMBER_PW, MEMBER_NICK, PROFILE_IMG, PHONE, REGION_NO, STACK, SKILL, SLOGAN, INTRODUCE, TOTAL_PRICE, CURR_PRICE, ENROLL_DATE, SECESSION_FL, TERMS_FL, SNS_FL)
VALUES (SEQ_MEMBER_NO.NEXTVAL, 'C', 'test08', 'Abc82345', '인어맨', '/resources/assets/images/dummy/user-profile/profile-8.jpg', '010-1234-5671', '8', 'full', 'C++,Node.js', '인어맨 슬로건', '인어맨의 소개말', '700', '600', DEFAULT, 'N', 'N', 'N');



-- Note: member dummy 9 ~ 12

INSERT INTO MEMBER (MEMBER_NO, MEMBER_TYPE, MEMBER_ID, MEMBER_PW, MEMBER_NICK, PROFILE_IMG, PHONE, REGION_NO, STACK, SKILL, SLOGAN, INTRODUCE, TOTAL_PRICE, CURR_PRICE, ENROLL_DATE, SECESSION_FL, TERMS_FL, SNS_FL)
VALUES (SEQ_MEMBER_NO.NEXTVAL, 'C', 'test09', 'Abc92345', '앰버', '/resources/assets/images/dummy/user-profile/profile-9.jpg', '010-1234-3333', '9', 'full', 'Java,Spring', '앰버 슬로건', '앰버의 소개말', '700', '600', DEFAULT, 'N', 'N', 'N');

INSERT INTO MEMBER (MEMBER_NO, MEMBER_TYPE, MEMBER_ID, MEMBER_PW, MEMBER_NICK, PROFILE_IMG, PHONE, REGION_NO, STACK, SKILL, SLOGAN, INTRODUCE, TOTAL_PRICE, CURR_PRICE, ENROLL_DATE, SECESSION_FL, TERMS_FL, SNS_FL)
VALUES (SEQ_MEMBER_NO.NEXTVAL, 'C', 'test10', 'Abc102345', '웨이드', '/resources/assets/images/dummy/user-profile/profile-10.jpg', '010-1234-1111', '10', 'back', 'C++,Node.js', '웨이드 슬로건', '웨이드의 소개말', '700', '600', DEFAULT, 'N', 'N', 'N');

INSERT INTO MEMBER (MEMBER_NO, MEMBER_TYPE, MEMBER_ID, MEMBER_PW, MEMBER_NICK, PROFILE_IMG, PHONE, REGION_NO, STACK, SKILL, SLOGAN, INTRODUCE, TOTAL_PRICE, CURR_PRICE, ENROLL_DATE, SECESSION_FL, TERMS_FL, SNS_FL)
VALUES (SEQ_MEMBER_NO.NEXTVAL, 'C', 'test11', 'Abc112345', '짜그리1', '/resources/assets/images/dummy/user-profile/profile-11.jpg', '010-1234-5222', '11', 'front', 'Java,python', '짜그리1 슬로건', '짜그리1의 소개말', '700', '600', DEFAULT, 'N', 'N', 'N');

INSERT INTO MEMBER (MEMBER_NO, MEMBER_TYPE, MEMBER_ID, MEMBER_PW, MEMBER_NICK, PROFILE_IMG, PHONE, REGION_NO, STACK, SKILL, SLOGAN, INTRODUCE, TOTAL_PRICE, CURR_PRICE, ENROLL_DATE, SECESSION_FL, TERMS_FL, SNS_FL)
VALUES (SEQ_MEMBER_NO.NEXTVAL, 'C', 'test12', 'Abc122345', '짜그리2', '/resources/assets/images/dummy/user-profile/profile-12.jpg', '010-1234-5645', '12', 'full', 'C,jQeury', '짜그리2 슬로건', '짜그리2의 소개말', '700', '600', DEFAULT, 'N', 'N', 'N');

COMMIT;

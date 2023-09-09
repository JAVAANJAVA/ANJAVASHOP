CREATE TABLE tbl_members (
  idx NUMBER NOT NULL, -- 회원번호 
  userid VARCHAR2(255) NOT NULL, -- 회원 이름
  username VARCHAR2(50) NOT NULL, -- 회원아이디 (중복검사 필요)
  pass VARCHAR2(100) NOT NULL, -- 비밀번호
  zipcode VARCHAR2(10), -- 우편번호
  address VARCHAR2(255), -- 주소 (자동입력 - 우편번호에 따라)
  de_address VARCHAR2(255), -- 상세주소

  PRIMARY KEY (idx),
  UNIQUE (username) -- 회원아이디 중복 검사용 UNIQUE 제약조건
);

CREATE SEQUENCE tbl_members_seq_idx;


CREATE TABLE tbl_products (
  idx NUMBER NOT NULL, -- 상품번호 (자동입력)
  seller VARCHAR2(50) NOT NULL,               -- 판매자
  product_name VARCHAR2(255) NOT NULL,       -- 상품이름
  contents VARCHAR2(2000),                -- 상품설명
  price NUMBER(10, 2) NOT NULL,              -- 상품가격 소수점 두번까지
  creation_date DATE DEFAULT SYSDATE,        -- 작성일자 (기본값: 현재 날짜)
  readcnt NUMBER(5) DEFAULT 0,            -- 조회수 (기본값: 0)
  file_path VARCHAR2(255),                  -- 파일 경로
  pass VARCHAR2(50),                    -- 비밀번호

  PRIMARY KEY (idx)
);

CREATE SEQUENCE tbl_products_seq_idx;



CREATE TABLE askreply (
  idx number NOT NULL ,                    --  고유번호
  pass varchar2(20) NOT NULL ,                --  비밀번호
  name varchar2(20) NOT NULL ,                --  작성자 이름
  regdate date default sysdate,                --  작성일자
  subject varchar2(100) NOT NULL,            --  제목
  contents varchar2(2000) NOT NULL,            --  내용
  parent number(2) not null,                --  최상위 부모글번호
  realparent number(2) not null,            --  바로 한수준 위의 글번호
  indent number(2) not null,                --  들여쓰기 기준
  depth number(2) not null,                --  답변글의 넘버를 저장하는 필드로 
                            --  첫번째 답변글은 1, 두 번째 답변글은 2,
                            --  n번째 답변글은 n의 값이 저장
  readcnt number default 0 ,                --  조회수
  PRIMARY KEY  (idx)
);


create sequence tbl_askreply_seq_idx;



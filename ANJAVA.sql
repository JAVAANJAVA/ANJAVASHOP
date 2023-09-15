DROP TABLE ASKREPLY;
DROP TABLE TBL_MEMBERS;
DROP TABLE TBL_PRODUCTS;

CREATE TABLE tbl_member (
    user_id VARCHAR2(20) NOT NULL,
    pass VARCHAR2(255) NOT NULL,
    name VARCHAR2(20) NOT NULL,
    hp CHAR(13) NOT NULL,
    email VARCHAR2(100) NOT NULL,
    zip VARCHAR2(10),
    addr1 VARCHAR2(255),
    addr2 VARCHAR2(255),
    tel VARCHAR2(20),
    etc1 NUMBER,
    etc2 NUMBER,
    etc3 VARCHAR2(10),
    etc4 VARCHAR2(20),
    etc5 VARCHAR2(30)
);
CREATE TABLE tbl_member_point (
  pointNo NUMBER (20) NOT NULL PRIMARY KEY,
  user_id VARCHAR2(20) NOT NULL,
  orderNo INT NOT NULL,
  point INT NOT NULL,
  pointDate DATE NOT NULL
);

CREATE TABLE tbl_member_terms(
    terms CLOB NOT NULL,
    privacy CLOB NOT NULL,
    location CLOB NOT NULL,
    finance CLOB NOT NULL,
    tax CLOB NOT NULL
);

CREATE TABLE tbl_product_cate1 (
    cate1 NUMBER(2) NOT NULL,
    c1name VARCHAR2(20) NOT NULL,
    PRIMARY KEY (cate1)
);

CREATE TABLE tbl_product_cate2 (
    cate1 INT NOT NULL,
    cate2 INT NOT NULL,
    c2name VARCHAR2(20),
    FOREIGN KEY (cate1) REFERENCES tbl_product_cate1(cate1)
);

CREATE TABLE tbl_product (
    prodNo NUMBER (20) NOT NULL PRIMARY KEY,
    prodCate1 NUMBER(3) NOT NULL,
    prodCate2 NUMBER(3) NOT NULL,
    prodName VARCHAR2(100) NOT NULL,
    descript VARCHAR2(100) NOT NULL,
    company VARCHAR2(100) NOT NULL,
    seller VARCHAR2(20) NOT NULL,
    price NUMBER NOT NULL,
    discount NUMBER DEFAULT 0,
    point NUMBER DEFAULT 0,
    stock NUMBER DEFAULT 0,
    sold NUMBER DEFAULT 0,
    delivery NUMBER DEFAULT 0,
    hit NUMBER DEFAULT 0,
    score NUMBER DEFAULT 0,
    review NUMBER DEFAULT 0,
    thumb1 VARCHAR2(255) NOT NULL,
    thumb2 VARCHAR2(255) NOT NULL,
    thumb3 VARCHAR2(255) NOT NULL,
    detail VARCHAR2(255) NOT NULL,
    receipt VARCHAR2(20),
    rdate TIMESTAMP NOT NULL,
    etc1 NUMBER,
    etc2 NUMBER,
    etc3 VARCHAR2(10),
    etc4 VARCHAR2(20),
    etc5 VARCHAR2(30)
);


CREATE TABLE tbl_product_cart (
    cartNo NUMBER (20) NOT NULL PRIMARY KEY,
    user_id VARCHAR2(20) NOT NULL,
    prodNo NUMBER(10) NOT NULL,
    count NUMBER NOT NULL,
    price NUMBER NOT NULL,
    discount NUMBER NOT NULL,
    point NUMBER NOT NULL,
    delivery NUMBER NOT NULL,
    total NUMBER NOT NULL,
    rdate TIMESTAMP NOT NULL
);


CREATE TABLE tbl_product_order (
    ordNo NUMBER (20) NOT NULL PRIMARY KEY,
    orduser_id VARCHAR2(20) NOT NULL,
    ordCount NUMBER DEFAULT 0,
    ordPrice NUMBER DEFAULT 0,
    ordDiscount NUMBER DEFAULT 0,
    ordDelivery NUMBER DEFAULT 0,
    savePoint NUMBER DEFAULT 0,
    usedPoint NUMBER DEFAULT 0,
    ordTotPrice NUMBER DEFAULT 0,
    recipName VARCHAR2(20) NOT NULL,
    recipHp CHAR(13) NOT NULL,
    recipZip CHAR(5) NOT NULL,
    recipAddr1 VARCHAR2(255) NOT NULL,
    recipAddr2 VARCHAR2(255) NOT NULL,
    ordPayment NUMBER NOT NULL, -- 여기에 적절한 데이터 유형을 사용하세요.
    ordComplete NUMBER NOT NULL, -- 여기에 적절한 데이터 유형을 사용하세요.
    ordDate TIMESTAMP NOT NULL
);


CREATE TABLE tbl_product_order_item (
    ordNo NUMBER(10) NOT NULL,
    prodNo NUMBER(10) NOT NULL,
    count NUMBER NOT NULL,
    price NUMBER NOT NULL,
    discount NUMBER NOT NULL,
    point NUMBER NOT NULL,
    delivery NUMBER NOT NULL,
    total NUMBER NOT NULL,
    FOREIGN KEY (prodNo) REFERENCES tbl_product(prodNo)
    );


CREATE TABLE tbl_product_review (
    revNo NUMBER (20) NOT NULL PRIMARY KEY,
    prodNo NUMBER(10) NOT NULL,
    content VARCHAR2(255) NOT NULL,
    user_id VARCHAR2(20) NOT NULL,
    rating NUMBER(3) NOT NULL,
    regip VARCHAR2(100) NOT NULL,
    rdate TIMESTAMP NOT NULL,
    FOREIGN KEY (prodNo) REFERENCES tbl_product(prodNo)
);

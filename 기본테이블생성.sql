CREATE TABLE tbl_members (
  idx NUMBER NOT NULL, -- ȸ����ȣ 
  username VARCHAR2(50) NOT NULL, -- ȸ�����̵� (�ߺ��˻� �ʿ�)
  pass VARCHAR2(100) NOT NULL, -- ��й�ȣ
  zipcode VARCHAR2(10), -- �����ȣ
  address VARCHAR2(255), -- �ּ� (�ڵ��Է� - �����ȣ�� ����)
  de_address VARCHAR2(255), -- ���ּ�

  PRIMARY KEY (idx),
  UNIQUE (username) -- ȸ�����̵� �ߺ� �˻�� UNIQUE ��������
);

CREATE SEQUENCE tbl_members_seq_idx;


CREATE TABLE tbl_products (
  idx NUMBER NOT NULL, -- ��ǰ��ȣ (�ڵ��Է�)
  seller VARCHAR2(50) NOT NULL,               -- �Ǹ���
  product_name VARCHAR2(255) NOT NULL,       -- ��ǰ�̸�
  contents VARCHAR2(2000),                -- ��ǰ����
  price NUMBER(10, 2) NOT NULL,              -- ��ǰ���� �Ҽ��� �ι�������
  creation_date DATE DEFAULT SYSDATE,        -- �ۼ����� (�⺻��: ���� ��¥)
  readcnt NUMBER(5) DEFAULT 0,            -- ��ȸ�� (�⺻��: 0)
  file_path VARCHAR2(255),                  -- ���� ���
  pass VARCHAR2(50),                    -- ��й�ȣ

  PRIMARY KEY (idx)
);

CREATE SEQUENCE tbl_products_seq_idx;



CREATE TABLE askreply (
  idx number NOT NULL ,                    --  ������ȣ
  pass varchar2(20) NOT NULL ,                --  ��й�ȣ
  name varchar2(20) NOT NULL ,                --  �ۼ��� �̸�
  regdate date default sysdate,                --  �ۼ�����
  subject varchar2(100) NOT NULL,            --  ����
  contents varchar2(2000) NOT NULL,            --  ����
  parent number(2) not null,                --  �ֻ��� �θ�۹�ȣ
  realparent number(2) not null,            --  �ٷ� �Ѽ��� ���� �۹�ȣ
  indent number(2) not null,                --  �鿩���� ����
  depth number(2) not null,                --  �亯���� �ѹ��� �����ϴ� �ʵ�� 
                            --  ù��° �亯���� 1, �� ��° �亯���� 2,
                            --  n��° �亯���� n�� ���� ����
  readcnt number default 0 ,                --  ��ȸ��
  PRIMARY KEY  (idx)
);


create sequence tbl_askreply_seq_idx;



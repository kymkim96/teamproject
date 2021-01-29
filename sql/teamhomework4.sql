-- 생성자 Oracle SQL Developer Data Modeler 20.2.0.167.1538
--   위치:        2021-01-28 19:44:57 KST
--   사이트:      Oracle Database 11g
--   유형:      Oracle Database 11g



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE books (
    isbn                      VARCHAR2(50) NOT NULL,
    btitle                    VARCHAR2(100) NOT NULL,
    bsub_title                CLOB,
    bpublisher                VARCHAR2(100) NOT NULL,
    btranslator               VARCHAR2(100),
    bpublish_date             DATE NOT NULL,
    bbestseller               CHAR(1),
    bprice                    NUMBER(7) NOT NULL,
    bdiscount                 NUMBER(3) DEFAULT 0,
    bdelivery_fee             NUMBER(5),
    bcontent                  CLOB NOT NULL,
    bindex                    CLOB NOT NULL,
    bimg_link                 VARCHAR2(1000),
    bimg_filename             VARCHAR2(100) DEFAULT 'default_image.jpg' NOT NULL,
    bcontent_type             VARCHAR2(100),
    bstate                    VARCHAR2(30),
    bvideo_link               VARCHAR2(1000),
    categories_category_name  VARCHAR2(100)
);

ALTER TABLE books ADD CONSTRAINT books_pk PRIMARY KEY ( isbn );

CREATE TABLE books_writers (
    books_isbn   VARCHAR2(50) NOT NULL,
    writers_wid  NUMBER(10) NOT NULL
);

ALTER TABLE books_writers ADD CONSTRAINT books_writers_pk PRIMARY KEY ( books_isbn,
                                                                        writers_wid );

CREATE TABLE cart_items (
    ctid              NUMBER(3) NOT NULL,
    ctprice           NUMBER(7) NOT NULL,
    ctcount           NUMBER(3) NOT NULL,
    ctdiscount        NUMBER(3) DEFAULT 0,
    books_isbn        VARCHAR2(50),
    order_items_otid  VARCHAR2(10),
    carts_cid         NUMBER(3) NOT NULL
);

ALTER TABLE cart_items
    ADD CONSTRAINT ck_cdiscount CHECK ( ctdiscount BETWEEN 0 AND 100 );

ALTER TABLE cart_items ADD CONSTRAINT carts_pk PRIMARY KEY ( ctid );

CREATE TABLE carts (
    cid         NUMBER(3) NOT NULL,
    camount     NUMBER(8) NOT NULL,
    ctotal      NUMBER(4) NOT NULL,
    users_uaid  VARCHAR2(100)
);

ALTER TABLE carts ADD CONSTRAINT carts_pk PRIMARY KEY ( cid );

CREATE TABLE categories (
    category_name VARCHAR2(100) NOT NULL
);

ALTER TABLE categories ADD CONSTRAINT categories_pk PRIMARY KEY ( category_name );

CREATE TABLE order_items (
    otid        VARCHAR2(10) NOT NULL,
    otprice     NUMBER(7) NOT NULL,
    otcount     NUMBER(3) NOT NULL,
    orders_oid  NUMBER(10),
    otdiscount  NUMBER(3)
);

ALTER TABLE order_items ADD CONSTRAINT order_items_pk PRIMARY KEY ( otid );

CREATE TABLE orders (
    oid         NUMBER(10) NOT NULL,
    oamount     NUMBER(8) NOT NULL,
    oaddress    VARCHAR2(100) NOT NULL,
    users_uaid  VARCHAR2(100),
    odate       DATE NOT NULL,
    ototal      NUMBER(4) NOT NULL
);

ALTER TABLE orders ADD CONSTRAINT orders_pk PRIMARY KEY ( oid );

CREATE TABLE reviews (
    rid         NUMBER(7) NOT NULL,
    rstar       NUMBER(1) NOT NULL,
    rdate       DATE NOT NULL,
    rcontent    CLOB,
    users_uid   VARCHAR2(100),
    books_isbn  VARCHAR2(50)
);

ALTER TABLE reviews ADD CONSTRAINT reviews_pk PRIMARY KEY ( rid );

CREATE TABLE users (
    uaname      VARCHAR2(10) NOT NULL,
    uaid        VARCHAR2(100) NOT NULL,
    uapassword  VARCHAR2(100) NOT NULL,
    role        VARCHAR2(20)
);

ALTER TABLE users ADD CONSTRAINT users_pk PRIMARY KEY ( uaid );

CREATE TABLE writers (
    wid       NUMBER(10) NOT NULL,
    wname     VARCHAR2(10) NOT NULL,
    wcontent  CLOB NOT NULL
);

ALTER TABLE writers ADD CONSTRAINT writers_pk PRIMARY KEY ( wid );

ALTER TABLE books
    ADD CONSTRAINT books_categories_fk FOREIGN KEY ( categories_category_name )
        REFERENCES categories ( category_name );

ALTER TABLE books_writers
    ADD CONSTRAINT books_wrtiers_books_fk FOREIGN KEY ( books_isbn )
        REFERENCES books ( isbn );

ALTER TABLE books_writers
    ADD CONSTRAINT books_wrtiers_writers_fk FOREIGN KEY ( writers_wid )
        REFERENCES writers ( wid );

ALTER TABLE cart_items
    ADD CONSTRAINT cart_items_books_fk FOREIGN KEY ( books_isbn )
        REFERENCES books ( isbn );

ALTER TABLE cart_items
    ADD CONSTRAINT cart_items_carts_fk FOREIGN KEY ( carts_cid )
        REFERENCES carts ( cid );

ALTER TABLE cart_items
    ADD CONSTRAINT cart_items_order_items_fk FOREIGN KEY ( order_items_otid )
        REFERENCES order_items ( otid )
            ON DELETE SET NULL;

ALTER TABLE carts
    ADD CONSTRAINT carts_users_fk FOREIGN KEY ( users_uaid )
        REFERENCES users ( uaid )
            ON DELETE SET NULL;

ALTER TABLE order_items
    ADD CONSTRAINT order_items_orders_fk FOREIGN KEY ( orders_oid )
        REFERENCES orders ( oid )
            ON DELETE SET NULL;

ALTER TABLE orders
    ADD CONSTRAINT orders_users_fk FOREIGN KEY ( users_uaid )
        REFERENCES users ( uaid );

ALTER TABLE reviews
    ADD CONSTRAINT reviews_books_fk FOREIGN KEY ( books_isbn )
        REFERENCES books ( isbn )
            ON DELETE CASCADE;

ALTER TABLE reviews
    ADD CONSTRAINT reviews_users_fk FOREIGN KEY ( users_uid )
        REFERENCES users ( uaid )
            ON DELETE CASCADE;

CREATE SEQUENCE cart_items_ctid_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER cart_items_ctid_trg BEFORE
    INSERT ON cart_items
    FOR EACH ROW
    WHEN ( new.ctid IS NULL )
BEGIN
    :new.ctid := cart_items_ctid_seq.nextval;
END;
/

CREATE SEQUENCE carts_cid_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER carts_cid_trg BEFORE
    INSERT ON carts
    FOR EACH ROW
    WHEN ( new.cid IS NULL )
BEGIN
    :new.cid := carts_cid_seq.nextval;
END;
/

CREATE SEQUENCE order_items_otid_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER order_items_otid_trg BEFORE
    INSERT ON order_items
    FOR EACH ROW
    WHEN ( new.otid IS NULL )
BEGIN
    :new.otid := order_items_otid_seq.nextval;
END;
/

CREATE SEQUENCE orders_oid_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER orders_oid_trg BEFORE
    INSERT ON orders
    FOR EACH ROW
    WHEN ( new.oid IS NULL )
BEGIN
    :new.oid := orders_oid_seq.nextval;
END;
/

CREATE SEQUENCE reviews_rid_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER reviews_rid_trg BEFORE
    INSERT ON reviews
    FOR EACH ROW
    WHEN ( new.rid IS NULL )
BEGIN
    :new.rid := reviews_rid_seq.nextval;
END;
/

CREATE SEQUENCE writers_wid_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER writers_wid_trg BEFORE
    INSERT ON writers
    FOR EACH ROW
    WHEN ( new.wid IS NULL )
BEGIN
    :new.wid := writers_wid_seq.nextval;
END;
/



-- Oracle SQL Developer Data Modeler 요약 보고서: 
-- 
-- CREATE TABLE                            10
-- CREATE INDEX                             0
-- ALTER TABLE                             22
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           6
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          6
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
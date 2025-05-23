DROP TABLE CLIENTS IF EXISTS;
CREATE TABLE CLIENTS (
    ID INT NOT NULL PRIMARY KEY,
    NAME VARCHAR(75) NOT NULL,
    LASTNAME VARCHAR(75)  NOT NULL,
    DOCNUMBER  VARCHAR(11)  NOT NULL
);

DROP TABLE INVOICE IF EXISTS;
CREATE TABLE INVOICE (
    ID INT NOT NULL PRIMARY KEY,
    CLIENT_ID INT NOT NULL,
    CREATED_AT DATETIME NOT NULL,
    TOTAL DOUBLE NOT NULL,
    FOREIGN KEY (CLIENT_ID) REFERENCES CLIENTS(ID)
);

DROP TABLE INVOICE_DETAILS IF EXISTS;
CREATE TABLE INVOICE_DETAILS (
    INVOICE_ID INT NOT NULL,
    INVOICE_DETAILS_ID INT NOT NULL PRIMARY KEY,
    AMOUNT INT NOT NULL,
    PRODUCT_ID INT NOT NULL,
    PRICE DOUBLE NOT NULL
    FOREIGN KEY (INVOICE_ID) REFERENCES INVOICE(ID),
    FOREIGN KEY (PRODUCT_ID) REFERENCES PRODUCTS(ID)
);

DROP TABLE PRODUCTS IF EXISTS;
CREATE TABLE PRODUCTS (
    ID INT NOT NULL PRIMARY KEY,
    DESCRIPTION VARCHAR(150) NOT NULL,
    CODE VARCHAR(50) NOT NULL,
    STOCK INT NOT NULL,
    PRICE DOUBLE NOT NULL
);
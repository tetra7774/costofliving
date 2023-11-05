--
CREATE TABLE USERS
(
    user_id INTEGER NOT NULL AUTO_INCREMENT,
    name VARCHAR(256) NOT NULL,
    PRIMARY KEY(user_id)
);

--

CREATE TABLE EXPENCE_AMOUNT
(
    expense_id INTEGER NOT NULL AUTO_INCREMENT,
    user_id INTEGER NOT NULL,
    payment_amount INTEGER NOT NULL,
    date_time DATETIME NOT NULL,
    PRIMARY KEY(expense_id,user_id),
    FOREIGN KEY(user_id) REFERENCES USERS (user_id) ON DELETE RESTRICT -- NOTE: restrict制約
);

--

CREATE TABLE MONTHLY_CALCULATION_RESULTS(
    user_id INTEGER NOT NULL,
    calculation_month DATE NOT NULL,
    calculation_result INTEGER NOT NULL,
    PRIMARY KEY(user_id, calculation_month),
    FOREIGN KEY(user_id) REFERENCES USERS (user_id) ON DELETE RESTRICT -- NOTE: restrict制約
);

--

CREATE TABLE PAYMENT_RATE(
    user_id INTEGER NOT NULL,
    rate CHAR(2) NOT NULL,
    PRIMARY KEY(user_id),
    FOREIGN KEY(user_id) REFERENCES USERS (user_id) ON DELETE RESTRICT -- NOTE: restrict制約
);

--

CREATE TABLE BILLING_AMOUNT(
    user_id INTEGER NOT NULL,
    calculation_month DATE NOT NULL,
    billing_amount INTEGER NOT NULL,
    payment_flag BOOLEAN NOT NULL,
    date_time DATETIME NOT NULL,
    PRIMARY KEY(user_id, calculation_month),
    FOREIGN KEY(user_id) REFERENCES USERS (user_id) ON DELETE RESTRICT -- NOTE: restrict制約
);
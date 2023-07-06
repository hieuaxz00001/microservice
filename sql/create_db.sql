use core_bank;

CREATE TABLE banking_core_user (
    id bigint(20) NOT NULL AUTO_INCREMENT,
    email varchar(255) DEFAULT NULL,
    first_name varchar(255) DEFAULT NULL,
    identification_number varchar(255) DEFAULT NULL,
    last_name varchar(255) DEFAULT NULL,
    PRIMARY KEY (id)
);

-- banking_core_service.banking_core_account definition
CREATE TABLE banking_core_account (
    id bigint(20) NOT NULL AUTO_INCREMENT,
    actual_balance decimal(19, 2) DEFAULT NULL,
    available_balance decimal(19, 2) DEFAULT NULL,
    number varchar(255) DEFAULT NULL,
    status varchar(255) DEFAULT NULL,
    type varchar(255) DEFAULT NULL,
    user_id bigint(20) DEFAULT NULL,
    PRIMARY KEY (id),
    KEY FKt5uqy9p0v3rp3yhlgvm7ep0ij (user_id),
    CONSTRAINT FKt5uqy9p0v3rp3yhlgvm7ep0ij FOREIGN KEY (user_id) REFERENCES banking_core_user (id)
);

-- banking_core_service.banking_core_account definition
CREATE TABLE banking_core_utility_account (
    id bigint(20) NOT NULL AUTO_INCREMENT,
    number varchar(255) DEFAULT NULL,
    provider_name varchar(255) DEFAULT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE banking_core_transaction (
    id bigint(20) NOT NULL AUTO_INCREMENT,
    amount decimal(19, 2) DEFAULT NULL,
    transaction_type varchar(30) NOT NULL,
    reference_number varchar(50) NOT NULL,
    transaction_id varchar(50) NOT NULL,
    account_id bigint(20) DEFAULT NULL,
    PRIMARY KEY (id),
    KEY FKk9w2ogq595jbe8r2due7vv3xr (account_id),
    CONSTRAINT FKk9w2ogq595jbe8r2due7vv3xr FOREIGN KEY (account_id) REFERENCES banking_core_account (id)
);



INSERT INTO
    banking_core_user (
        id,
        email,
        first_name,
        identification_number,
        last_name
    )
VALUES
    (
        '1',
        'sam@gmail.com',
        'Sam',
        '808829932V',
        'Silva'
    );

INSERT INTO
    banking_core_user (
        id,
        email,
        first_name,
        identification_number,
        last_name
    )
VALUES
    (
        '2',
        'guru@gmail.com',
        'Guru',
        '901830556V',
        'Darmaraj'
    );

INSERT INTO
    banking_core_user (
        id,
        email,
        first_name,
        identification_number,
        last_name
    )
VALUES
    (
        '3',
        'ragu@gmail.com',
        'Ragu',
        '348829932V',
        'Sivaraj'
    );

INSERT INTO
    banking_core_user (
        id,
        email,
        first_name,
        identification_number,
        last_name
    )
VALUES
    (
        '4',
        'randor@gmail.com',
        'Randor',
        '842829932V',
        'Manoon'
    );

INSERT INTO
    banking_core_account (
        actual_balance,
        available_balance,
        `number`,
        status,
        `type`,
        user_id
    )
VALUES
    (
        100000.00,
        100000.00,
        100015003000,
        'ACTIVE',
        'SAVINGS_ACCOUNT',
        '1'
    ),
    (
        100000.00,
        100000.00,
        100015003001,
        'ACTIVE',
        'SAVINGS_ACCOUNT',
        '1'
    ),
    (
        100000.00,
        100000.00,
        100015003002,
        'ACTIVE',
        'SAVINGS_ACCOUNT',
        '2'
    ),
    (
        12000.00,
        12000.00,
        100015003003,
        'ACTIVE',
        'SAVINGS_ACCOUNT',
        '2'
    ),
    (
        12000.00,
        12000.00,
        100015003004,
        'ACTIVE',
        'SAVINGS_ACCOUNT',
        '2'
    ),
    (
        12000.00,
        12000.00,
        100015003005,
        'ACTIVE',
        'SAVINGS_ACCOUNT',
        '3'
    ),
    (
        290000.00,
        290000.00,
        100015003006,
        'ACTIVE',
        'SAVINGS_ACCOUNT',
        '3'
    ),
    (
        290000.00,
        290000.00,
        100015003007,
        'ACTIVE',
        'SAVINGS_ACCOUNT',
        '3'
    ),
    (
        290000.00,
        290000.00,
        100015003008,
        'ACTIVE',
        'SAVINGS_ACCOUNT',
        '3'
    ),
    (
        365023.00,
        365023.00,
        100015003009,
        'ACTIVE',
        'SAVINGS_ACCOUNT',
        '3'
    ),
    (
        365023.00,
        365023.00,
        100015003010,
        'ACTIVE',
        'SAVINGS_ACCOUNT',
        '4'
    ),
    (
        365023.00,
        89456.00,
        100015003011,
        'ACTIVE',
        'SAVINGS_ACCOUNT',
        '4'
    ),
    (
        89456.00,
        89456.00,
        100015003012,
        'ACTIVE',
        'SAVINGS_ACCOUNT',
        '4'
    ),
    (
        889000.33,
        889000.33,
        100015003013,
        'ACTIVE',
        'SAVINGS_ACCOUNT',
        '4'
    );

INSERT INTO
    banking_core_utility_account (`number`, provider_name)
VALUES
    ('8203232565', 'VODAFONE');

INSERT INTO
    banking_core_utility_account (`number`, provider_name)
VALUES
    ('5464546545', 'VERIZON');

INSERT INTO
    banking_core_utility_account (`number`, provider_name)
VALUES
    ('6546456464', 'SINGTEL');

INSERT INTO
    banking_core_utility_account (`number`, provider_name)
VALUES
    ('7889987999', 'HUTCH');

INSERT INTO
    banking_core_utility_account (`number`, provider_name)
VALUES
    ('2132123132', 'AIRTEL');

INSERT INTO
    banking_core_utility_account (`number`, provider_name)
VALUES
    ('61645564646', 'GIO');
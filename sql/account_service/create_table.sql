CREATE table IF NOT EXISTS "account_info"(
    account_id text not null default '',
    account text unique not null default '',
    password text not null default '',
    state text not null default 'enable',
    permissions text not null default '',
    create_time timestamp with time zone not null default current_timestamp,
    last_login_time timestamp with time zone not null default current_timestamp,
    CONSTRAINT pk_account_info PRIMARY KEY (account_id)
);

CREATE table IF NOT EXISTS "account_detail"(
    ad_id text not null default '',
    account_id text not null default '',
    name text not null default '',
    img_url text not null default '',
    phone text not null default '',
    qq text not null default '',
    vx text not null default '',
    email text not null default '',
    sex text not null default '0', 
    description text not null default '',
    CONSTRAINT pk_account_detail PRIMARY KEY (ad_id)
);

CREATE table IF NOT EXISTS "account_addr"(
    addr_id text not null default '',
    account_id text not null default '',
    phone text not null default '',
    receiver text not null default '',
    create_time timestamp with time zone not null default current_timestamp,
    province_id text not null default '',
    city_id text not null default '',
    area_id text not null default '',
    town_id text not null default '', 
    detail text not null default '',
    CONSTRAINT pk_account_addr PRIMARY KEY (addr_id)
);

CREATE table IF NOT EXISTS "notify_message"(
    nm_id text not null default '',
    title text not null default '',
    content text not null default '',
    permissions text not null default '',
    recv_account_id text not null default '',
    from_account_id text not null default '',
    create_time timestamp with time zone not null default current_timestamp,
    odr_idx text not null default '',
    state text not null default '', 
    CONSTRAINT pk_notify_message PRIMARY KEY (nm_id)
);

CREATE table IF NOT EXISTS "notify_message_read"(
    read_id text not null default '',
    nm_id text not null default '',
    account_id text not null default '',
    create_time timestamp with time zone not null default current_timestamp,
    CONSTRAINT pk_notify_message_read PRIMARY KEY (read_id)
);
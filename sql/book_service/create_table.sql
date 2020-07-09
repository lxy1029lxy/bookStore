CREATE table IF NOT EXISTS "book_info"(
    book_id text not null default '',
    category_id text not null default '',
    title text not null default '',
    author text[] not null default '{}',
    translator text not null default '',
    description text not null default '',
    book_url text not null default '',
    press_name text not null default '',
    publish_date timestamp with time zone not null,
    create_time timestamp with time zone not null default current_timestamp,
    book_state text not null default 'review',
    CONSTRAINT pk_book_info PRIMARY KEY (book_id)
);

CREATE table IF NOT EXISTS "book_sku"(
    book_sku_id text not null default '',
    book_id text not null default '',
    price decimal(8,2) not null default 0,
    discount int not null default 100,
    stock int not null default 0,
    sales_volume int not null default 0,
    CONSTRAINT pk_book_sku PRIMARY KEY (book_sku_id)
);

CREATE table IF NOT EXISTS "book_type"(
    category_id text not null default '',
    category_name text not null default '',
    parent_id text not null default '',
    CONSTRAINT pk_book_type PRIMARY KEY (category_id)
);
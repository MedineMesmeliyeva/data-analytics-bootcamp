ALTER TABLE production.products
ADD color VARCHAR(50) DEFAULT 'Black';

CREATE TABLE sales.store_reviews (
    review_id INT IDENTITY(1, 1) PRIMARY KEY,
    store_id INT NOT NULL,
    rating TINYINT CHECK (rating >= 1 AND rating <= 5),
    comment VARCHAR(500),
    FOREIGN KEY (store_id) REFERENCES sales.stores(store_id) ON DELETE CASCADE
);
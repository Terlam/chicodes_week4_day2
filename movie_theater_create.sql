-- Customer Table Creation
CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(150),
	last_name VARCHAR(150),
	email VARCHAR(150)
);

-- Movie Table Creation
CREATE TABLE movie(
	movie_id SERIAL PRIMARY KEY,
	title VARCHAR(150),
	rating VARCHAR(150)
);

-- Ticket Table Creation
CREATE TABLE ticket(
	ticket_id SERIAL PRIMARY KEY,
	amount NUMERIC(6,2),
	movie_id INTEGER NOT NULL,
	FOREIGN KEY(movie_id) REFERENCES movie(movie_id)
);

-- Concession Table Creation
CREATE TABLE concession(
	item_id SERIAL PRIMARY KEY,
	item_name VARCHAR(100),
	amount NUMERIC(6,2),
	customer_id INTEGER NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);

-- Checkout Table Creation
CREATE TABLE checkout(
	checkout_id SERIAL PRIMARY KEY,
	customer_id INTEGER,
	ticket_id INTEGER,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY(ticket_id) REFERENCES ticket(ticket_id)
);
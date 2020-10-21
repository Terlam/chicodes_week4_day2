INSERT INTO customer(
	customer_id,
	first_name,
	last_name,
	email
)VALUES(
	1,
	'Bart',
	'Simpson',
	'ayecaramba@yahoo.com'
);

--Insert Statement for Movie Data
INSERT INTO movie(
	movie_id,
	title,
	rating
)VALUES(
	1,
	'The Bloodening',
	'R'
);

--Insert Statement for Ticket Data
INSERT INTO ticket(
	ticket_id,
	amount,
	movie_id
)VALUES(
	1,
	5.00,
	1
);

--Insert Statement for Concession Data
INSERT INTO concession(
	item_id,
	item_name,
	amount,
	customer_id
)VALUES(
	1,
	'Butter Finger',
	'2.00',
	1
);

--Insert Statement for checkout Data
INSERT INTO checkout(
	checkout_id,
	customer_id,
	ticket_id
)VALUES(
	1,
	1,
	1
);
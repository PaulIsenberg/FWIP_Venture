CREATE TABLE objects(
	index INT NOT NULL,
	object_id VARCHAR NOT NULL,
	entity_type VARCHAR NOT NULL,
	parent_id VARCHAR,
	name VARCHAR,
	category_code VARCHAR,
	status VARCHAR,
	founded_at DATE,
	closed_at DATE,
	country_code VARCHAR,
	state_code VARCHAR,
	city VARCHAR,
	region VARCHAR,
	first_investment_at DATE,
	last_investment_at DATE,
	investment_rounds INT,
	invested_companies INT,
	first_funding_at DATE,
	last_funding_at DATE,
	funding_rounds INT,
	funding_total_usd FLOAT,
	first_milestone_at DATE,
	last_milestone_at DATE,
	milestone INT,
	relationships INT,
PRIMARY KEY (object_id),
UNIQUE (object_id)
);	
	
CREATE TABLE offices(
	index INT NOT NULL,
	object_id VARCHAR NOT NULL,
	region VARCHAR,
	address1 VARCHAR,
	address2 VARCHAR,
	city VARCHAR,
	zip_code VARCHAR,
	state_code VARCHAR,
	country_code VARCHAR,
	latitude VARCHAR,
	longitude VARCHAR,
FOREIGN KEY (object_id) REFERENCES objects(object_id)
);

CREATE TABLE ipos(
	index INT NOT NULL,
	object_id VARCHAR NOT NULL,
	valuation_amount FLOAT,
	valuation_currency_code VARCHAR,
	raised_amount FLOAT,
	raised_currency_code VARCHAR,
	public_at DATE,
	stock_symbol VARCHAR,
FOREIGN KEY (object_id) REFERENCES objects(object_id)
);

CREATE TABLE milestones(
	index INT NOT NULL,
	object_id VARCHAR NOT NULL,
	milestone_at DATE,
	milestone_code VARCHAR,
FOREIGN KEY (object_id) REFERENCES objects(object_id)
);

CREATE TABLE people(
	index INT NOT NULL,
	object_id VARCHAR NOT NULL,
	first_name VARCHAR,
	last_name VARCHAR,
	affiliation_name VARCHAR,
FOREIGN KEY (object_id) REFERENCES objects(object_id)	
);

CREATE TABLE degrees(
	index INT NOT NULL,
	object_id VARCHAR NOT NULL,
	degree_type VARCHAR,
	subject VARCHAR,
	institution VARCHAR,
	graduated_at DATE,
FOREIGN KEY (object_id) REFERENCES objects(object_id)
);

CREATE TABLE funding_rounds(
	index INT NOT NULL,
	funding_round_id INT NOT NULL,
	object_id VARCHAR NOT NULL,
	funded_at DATE,
	funding_round_type VARCHAR,
	funding_round_code VARCHAR,
	raised_amount_usd FLOAT,
	raised_amount FLOAT,
	raised_currency_code VARCHAR,
	pre_money_valuation_usd FLOAT,
	pre_money_valuation FLOAT,
	pre_money_currency_code VARCHAR,
	post_money_valuation_usd FLOAT,
	post_money_valuation FLOAT,
	post_money_currency_code VARCHAR,
	participants INT,
	is_first_round BOOLEAN,
	is_last_round BOOLEAN,
FOREIGN KEY (object_id) REFERENCES objects(object_id)
);

CREATE TABLE funds(
	index INT NOT NULL,
	object_id VARCHAR NOT NULL,
	name VARCHAR NOT NULL,
	funded_at DATE,
	raised_amount FLOAT,
	raised_currency_code VARCHAR,
FOREIGN KEY (object_id) REFERENCES objects(object_id)
);

CREATE TABLE relationships(
	index INT NOT NULL,
	person_object_id VARCHAR NOT NULL,
	relationship_object_id VARCHAR,
	start_at DATE,
	end_at DATE,
	is_past BOOLEAN,
	sequence INT,
	title VARCHAR,
FOREIGN KEY (person_object_id) REFERENCES objects(object_id)
);

CREATE TABLE investments(
	index INT NOT NULL,
	funding_round_id INT NOT NULL,
	funded_object_id VARCHAR NOT NULL,
	investor_object_id VARCHAR NOT NULL,
FOREIGN KEY (funded_object_id) REFERENCES objects(object_id),
FOREIGN KEY (investor_object_id) REFERENCES objects(object_id)
);

CREATE TABLE acquisitions(
	index INT NOT NULL,
	object_id VARCHAR,
	object_id  VARCHAR,
	term_code VARCHAR,
	price_amount FLOAT,
	price_currency_code VARCHAR,
	acquired_at DATE,
FOREIGN KEY (object_id) REFERENCES objects(object_id),
FOREIGN KEY (object_id) REFERENCES objects(object_id)
);


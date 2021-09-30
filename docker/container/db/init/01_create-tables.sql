
/* Drop Tables */

DROP TABLE IF EXISTS t_conv_history;
DROP TABLE IF EXISTS m_facility;
DROP TABLE IF EXISTS m_category;
DROP TABLE IF EXISTS m_prefecture;
DROP TABLE IF EXISTS m_user;




/* Create Tables */

CREATE TABLE m_category
(
	category_code char(2) NOT NULL,
	category_name text NOT NULL,
	created_datetime timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL,
	crated_pgid text NOT NULL,
	created_usr text NOT NULL,
	updated_datetime timestamp,
	updated_pgid text,
	updated_usr text,
	PRIMARY KEY (category_code)
) WITHOUT OIDS;


CREATE TABLE m_facility
(
	facility_id uuid NOT NULL,
	facility_name text NOT NULL,
	category_code char(2) NOT NULL,
	zipcode text NOT NULL,
	prefecture_code char(2) NOT NULL,
	city text NOT NULL,
	address1 text,
	address2 text,
	tel text,
	fax text,
	created_datetime timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL,
	crated_pgid text NOT NULL,
	created_usr text NOT NULL,
	updated_datetime timestamp,
	updated_pgid text,
	updated_usr text,
	PRIMARY KEY (facility_id)
) WITHOUT OIDS;


CREATE TABLE m_prefecture
(
	prefecture_code char(2) NOT NULL,
	prefecture_name text NOT NULL,
	created_datetime timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL,
	crated_pgid text NOT NULL,
	created_usr text NOT NULL,
	updated_datetime timestamp,
	updated_pgid text,
	updated_usr text,
	PRIMARY KEY (prefecture_code)
) WITHOUT OIDS;


CREATE TABLE m_user
(
	user_id uuid NOT NULL,
	user_name text NOT NULL,
	user_role char(2) NOT NULL,
	created_datetime timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL,
	crated_pgid text NOT NULL,
	created_usr text NOT NULL,
	updated_datetime timestamp,
	updated_pgid text,
	updated_usr text,
	PRIMARY KEY (user_id)
) WITHOUT OIDS;


CREATE TABLE t_conv_history
(
	conv_history_id uuid NOT NULL,
	conv_datetime timestamp NOT NULL,
	facility_id uuid NOT NULL,
	facility_name text NOT NULL,
	user_id uuid NOT NULL,
	user_name text NOT NULL,
	created_datetime timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL,
	crated_pgid text NOT NULL,
	created_usr text NOT NULL,
	updated_datetime timestamp,
	updated_pgid text,
	updated_usr text,
	PRIMARY KEY (conv_history_id)
) WITHOUT OIDS;




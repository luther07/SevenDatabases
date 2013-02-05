--Add your own country into the countries table
INSERT INTO countries (country_code,country_name)
VALUES ('us','United States');

--Add your own city into the cities table
INSERT INTO cities (name, postal_code, country_code)
VALUES ('Chicago','60640','us');

--Add your own address as a venue
INSERT INTO venues (name,street_address,postal_code,
       	    	   country_code)
VALUES ('My Place','1234 House Ave','60640','us');
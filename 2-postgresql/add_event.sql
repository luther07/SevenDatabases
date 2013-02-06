CREATE OR REPLACE FUNCTION add_event( i_title text, i_starts timestamp,
  i_ends timestamp, i_venue text, i_postal varchar(9), i_country char(2) ) 
RETURNS boolean AS $$
DECLARE
  did_insert boolean := false;
  found_count integer;
  the_venue_id integer;
BEGIN
  SELECT venue_id INTO the_venue_id
  FROM venues v
  WHERE v.postal_code=i_postal AND v.country_code=i_country AND v.name ILIKE i_venue
  LIMIT 1;
  
  IF the_venue_id IS NULL THEN
    INSERT INTO venues (name, postal_code, country_code)
    VALUES (i_venue, i_postal, i_country)
    RETURNING venue_id INTO the_venue_id;
    
    did_insert := true;
  END IF;
	
  -- Note: not an “error”, as in some programming languages
  RAISE NOTICE 'Venue found %', the_venue_id;

  INSERT INTO events (title, starts, ends, venue_id)
  VALUES (i_title, i_starts, i_ends, the_venue_id);

  RETURN did_insert;
END;
$$ LANGUAGE plpgsql;

CREATE TABLE events (
event_id SERIAL,
title text,
starts timestamp,
ends timestamp,
venue_id integer,
FOREIGN KEY (venue_id) REFERENCES venues (venue_id)
);
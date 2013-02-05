INSERT INTO events (title,starts,ends,venue_id)
VALUES ( 'Wedding', '2012-02-26 21:00:00','2012-02-26 23:00:00',
       (SELECT venue_id FROM venues WHERE name = 'Voodoo Donuts') ),
       ('Dinner with Mom','2012-02-26 18:00:00','2012-02-26 18:00:00',
       (SELECT venue_id FROM venues WHERE name = 'My Place') );

INSERT INTO events (title,starts,ends)
VALUES ('Valentine''s Day','2012-02-14 00:00:00','2012-02-14 23:59:00');
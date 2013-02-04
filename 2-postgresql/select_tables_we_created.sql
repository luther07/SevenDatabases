-- relkind: 
-- r = ordinary table, 
-- i = index, 
-- S = sequence, 
-- v = view, 
-- c = composite type, 
-- t = TOAST table
SELECT relname, usename, usesysid, pg_class.*
FROM pg_class INNER JOIN pg_user ON pg_class.relowner=pg_user.usesysid
WHERE pg_user.usename = 'mjohns07'
AND relkind = 'r';
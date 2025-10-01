-- Export a view to a JSON file
--
-- outfile      Absolute path to output JSON file
-- tempview     The view name to read data from

-- Disable expanded output
\x off
\pset tuples_only on

-- Disabled aligned output
\pset format unaligned

-- Set output file
\o :outfile

-- The query
SELECT json_agg(row_to_json(t))
FROM :tempview t;

-- Stop outputing to the file
\o

-- Restore modified psql settings
\pset tuples_only off
\pset format aligned
\x auto

CREATE FUNCTION search_receipt_suppliers(search text)
RETURNS SETOF receipts AS $$
    SELECT *
    FROM receipts
    WHERE supplier->>'tin' ilike ('%' || search || '%')
$$ LANGUAGE sql STABLE;

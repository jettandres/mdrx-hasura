CREATE FUNCTION search_receipt_suppliers(tin text)
 RETURNS SETOF receipts
 LANGUAGE sql
 STABLE
AS $function$
    SELECT *
    FROM receipts
    WHERE supplier->>'tin' ilike ('%' || tin || '%')
$function$;

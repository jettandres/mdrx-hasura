alter table "public"."expense_report_km_reading" drop constraint "expense_report_km_reading_pkey";
alter table "public"."expense_report_km_reading"
    add constraint "expense_report_km_reading_pkey" 
    primary key ( "receipt_id", "expense_report_id" );

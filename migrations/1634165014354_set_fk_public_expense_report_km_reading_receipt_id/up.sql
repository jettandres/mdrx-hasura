alter table "public"."expense_report_km_reading"
           add constraint "expense_report_km_reading_receipt_id_fkey"
           foreign key ("receipt_id")
           references "public"."receipts"
           ("id") on update cascade on delete cascade;

alter table "public"."expense_report_km_reading"
           add constraint "expense_report_km_reading_expense_report_id_fkey"
           foreign key ("expense_report_id")
           references "public"."expense_report"
           ("id") on update cascade on delete cascade;

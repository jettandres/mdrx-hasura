alter table "public"."receipts"
           add constraint "receipts_expense_report_id_fkey"
           foreign key ("expense_report_id")
           references "public"."expense_report"
           ("id") on update cascade on delete cascade;

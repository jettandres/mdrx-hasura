alter table "public"."expense_report"
           add constraint "expense_report_status_fkey"
           foreign key ("status")
           references "public"."report_status"
           ("name") on update cascade on delete cascade;

alter table "public"."receipts"
           add constraint "receipts_expense_id_fkey"
           foreign key ("expense_id")
           references "public"."expense"
           ("id") on update cascade on delete cascade;

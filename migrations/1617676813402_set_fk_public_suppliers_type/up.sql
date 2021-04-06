alter table "public"."suppliers"
           add constraint "suppliers_type_fkey"
           foreign key ("type")
           references "public"."supplier_type"
           ("value") on update cascade on delete set null;

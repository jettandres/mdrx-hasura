alter table "public"."employees" drop constraint "employees_pkey";
alter table "public"."employees"
    add constraint "employees_pkey" 
    primary key ( "id", "code" );

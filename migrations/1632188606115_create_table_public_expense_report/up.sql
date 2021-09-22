CREATE EXTENSION IF NOT EXISTS pgcrypto;
CREATE TABLE "public"."expense_report"("id" uuid NOT NULL DEFAULT gen_random_uuid(), "created_at" timestamptz NOT NULL DEFAULT now(), "updated_at" timestamptz NOT NULL DEFAULT now(), "employee_id" uuid NOT NULL, "report_number" text NOT NULL, PRIMARY KEY ("id") , FOREIGN KEY ("employee_id") REFERENCES "public"."employees"("id") ON UPDATE cascade ON DELETE cascade, UNIQUE ("id"));
CREATE OR REPLACE FUNCTION "public"."set_current_timestamp_updated_at"()
RETURNS TRIGGER AS $$
DECLARE
  _new record;
BEGIN
  _new := NEW;
  _new."updated_at" = NOW();
  RETURN _new;
END;
$$ LANGUAGE plpgsql;
CREATE TRIGGER "set_public_expense_report_updated_at"
BEFORE UPDATE ON "public"."expense_report"
FOR EACH ROW
EXECUTE PROCEDURE "public"."set_current_timestamp_updated_at"();
COMMENT ON TRIGGER "set_public_expense_report_updated_at" ON "public"."expense_report" 
IS 'trigger to set value of column "updated_at" to current timestamp on row update';

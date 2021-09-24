CREATE TABLE "public"."expense_report_funds"("expense_report_id" uuid NOT NULL, "created_at" timestamptz NOT NULL DEFAULT now(), "updated_at" timestamptz NOT NULL DEFAULT now(), "revolving_fund_amount" jsonb NOT NULL, "replenishable_amount" jsonb NOT NULL, "unused_amount" jsonb NOT NULL, PRIMARY KEY ("expense_report_id") , FOREIGN KEY ("expense_report_id") REFERENCES "public"."expense_report"("id") ON UPDATE cascade ON DELETE cascade, UNIQUE ("expense_report_id"));
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
CREATE TRIGGER "set_public_expense_report_funds_updated_at"
BEFORE UPDATE ON "public"."expense_report_funds"
FOR EACH ROW
EXECUTE PROCEDURE "public"."set_current_timestamp_updated_at"();
COMMENT ON TRIGGER "set_public_expense_report_funds_updated_at" ON "public"."expense_report_funds" 
IS 'trigger to set value of column "updated_at" to current timestamp on row update';

ALTER TABLE "public"."expense_report_km_reading" ADD COLUMN "km_consumed" numeric;
ALTER TABLE "public"."expense_report_km_reading" ALTER COLUMN "km_consumed" DROP NOT NULL;
ALTER TABLE "public"."expense_report_km_reading" ALTER COLUMN "km_consumed" SET DEFAULT 0;

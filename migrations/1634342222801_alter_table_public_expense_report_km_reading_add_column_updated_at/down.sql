DROP TRIGGER IF EXISTS "set_public_expense_report_km_reading_updated_at" ON "public"."expense_report_km_reading";
ALTER TABLE "public"."expense_report_km_reading" DROP COLUMN "updated_at";

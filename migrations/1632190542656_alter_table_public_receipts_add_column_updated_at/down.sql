DROP TRIGGER IF EXISTS "set_public_receipts_updated_at" ON "public"."receipts";
ALTER TABLE "public"."receipts" DROP COLUMN "updated_at";

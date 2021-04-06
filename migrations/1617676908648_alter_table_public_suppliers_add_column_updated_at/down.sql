DROP TRIGGER IF EXISTS "set_public_suppliers_updated_at" ON "public"."suppliers";
ALTER TABLE "public"."suppliers" DROP COLUMN "updated_at";

ALTER TABLE "public"."receipts" ADD COLUMN "vatable" bool;
ALTER TABLE "public"."receipts" ALTER COLUMN "vatable" DROP NOT NULL;

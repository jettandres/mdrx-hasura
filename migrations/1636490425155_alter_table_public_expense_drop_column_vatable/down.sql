ALTER TABLE "public"."expense" ADD COLUMN "vatable" bool;
ALTER TABLE "public"."expense" ALTER COLUMN "vatable" DROP NOT NULL;

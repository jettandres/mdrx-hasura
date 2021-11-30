ALTER TABLE "public"."employees" ADD COLUMN "code" text;
ALTER TABLE "public"."employees" ALTER COLUMN "code" DROP NOT NULL;

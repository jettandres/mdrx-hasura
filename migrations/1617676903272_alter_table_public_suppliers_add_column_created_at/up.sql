ALTER TABLE "public"."suppliers" ADD COLUMN "created_at" timestamptz NULL DEFAULT now();

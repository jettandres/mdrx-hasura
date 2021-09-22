ALTER TABLE "public"."receipts" ADD COLUMN "created_at" timestamptz NOT NULL DEFAULT now();

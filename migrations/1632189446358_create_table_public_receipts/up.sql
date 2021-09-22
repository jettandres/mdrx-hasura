CREATE EXTENSION IF NOT EXISTS pgcrypto;
CREATE TABLE "public"."receipts"("id" uuid NOT NULL DEFAULT gen_random_uuid(), "vatable" boolean NOT NULL, "amount" jsonb NOT NULL, "supplier" jsonb NOT NULL, "image_url" text NOT NULL, PRIMARY KEY ("id") , UNIQUE ("id"));

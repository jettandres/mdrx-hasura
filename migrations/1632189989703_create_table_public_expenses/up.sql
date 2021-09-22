CREATE EXTENSION IF NOT EXISTS pgcrypto;
CREATE TABLE "public"."expenses"("id" uuid NOT NULL DEFAULT gen_random_uuid(), "name" text NOT NULL, "bir_class" text NOT NULL, "vatable" boolean NOT NULL, PRIMARY KEY ("id") );

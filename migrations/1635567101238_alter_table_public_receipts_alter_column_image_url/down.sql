COMMENT ON COLUMN "public"."receipts"."image_url" IS E'';
alter table "public"."receipts" rename column "image_key" to "image_url";

COMMENT ON COLUMN "public"."receipts"."image_url" IS E'aws s3 bucket key';
alter table "public"."receipts" rename column "image_url" to "image_key";

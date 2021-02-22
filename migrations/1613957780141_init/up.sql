CREATE TABLE public.schema_migrations (
    version character varying(255) NOT NULL
);
ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);

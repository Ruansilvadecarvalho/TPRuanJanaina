CREATE DATABASE crud
	  WITH OWNER = postgres
	       ENCODING = 'UTF8'
	       TABLESPACE = pg_default
	       LC_COLLATE = 'Portuguese_Brazil.1252'
	       LC_CTYPE = 'Portuguese_Brazil.1252'
	       CONNECTION LIMIT = -1;
	
	CREATE TABLE public.usuario
	(
	  id_usuario numeric NOT NULL,
	  nome character varying,
	  senha character varying,
	  CONSTRAINT chave PRIMARY KEY (id_usuario)
	)
	WITH (
	  OIDS=FALSE
	);
	ALTER TABLE public.usuario
	  OWNER TO postgres;
	
	
	CREATE SEQUENCE public.sq_usuario;
	ALTER TABLE public.sq_usuario
	  OWNER TO postgres;

ALTER TABLE public.usuario
    ADD COLUMN end_municipio character varying (50);
ALTER TABLE public.usuario
    ADD COLUMN end_cep numeric (8,0);

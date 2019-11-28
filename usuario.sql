-- Table: public.usuario

-- DROP TABLE public.usuario;

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
ALTER TABLE public.usuario
ADD COLUMN doc_rg caracter varying (20);
ALTER TABLE public.usuario
ADD COLUMN doc_cpf numeric (11,0);
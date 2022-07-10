-- Table: public.quadrante

-- DROP TABLE public.quadrante;

CREATE TABLE public.quadrante
(
    id SERIAL,
    descricao_quadrante character varying(100) COLLATE pg_catalog."default" NOT NULL,
    lado character varying(9) COLLATE pg_catalog."default" NOT NULL,
    criado_em timestamp with time zone NOT NULL,
    atualizado_em timestamp with time zone NOT NULL,
    CONSTRAINT quadrante_pkey PRIMARY KEY (id)
);

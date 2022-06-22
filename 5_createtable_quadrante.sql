-- Table: public.quadrante

-- DROP TABLE public.quadrante;

CREATE TABLE public.quadrante
(
    id bigint NOT NULL DEFAULT nextval('quadrante_id_seq'::regclass),
    descricao_quadrante character varying(100) COLLATE pg_catalog."default" NOT NULL,
    lado character varying(9) COLLATE pg_catalog."default" NOT NULL,
    criado_em timestamp with time zone NOT NULL,
    atualizado_em timestamp with time zone NOT NULL,
    CONSTRAINT quadrante_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE public.quadrante
    OWNER to postgres;
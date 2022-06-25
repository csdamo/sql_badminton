-- Table: public.tipoerro

-- DROP TABLE public.tipoerro;

CREATE TABLE public.tipoerro
(
    id bigint NOT NULL DEFAULT nextval('tipoerro_id_seq'::regclass),
    descricao_erro character varying(200) COLLATE pg_catalog."default" NOT NULL,
    criado_em timestamp with time zone NOT NULL,
    atualizado_em timestamp with time zone NOT NULL,
    CONSTRAINT tipoerro_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE public.tipoerro
    OWNER to postgres;
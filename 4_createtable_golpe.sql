-- Table: public.golpe

-- DROP TABLE public.golpe;

CREATE TABLE public.golpe
(
    id bigint NOT NULL DEFAULT nextval('golpe_id_seq'::regclass),
    descricao_golpe character varying(200) COLLATE pg_catalog."default" NOT NULL,
    criado_em timestamp with time zone NOT NULL,
    atualizado_em timestamp with time zone NOT NULL,
    CONSTRAINT golpe_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE public.golpe
    OWNER to postgres;
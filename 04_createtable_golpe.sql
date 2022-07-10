-- Table: public.golpe

-- DROP TABLE public.golpe;

CREATE TABLE public.golpe
(
    id SERIAL,
    descricao_golpe character varying(200) COLLATE pg_catalog."default" NOT NULL,
    criado_em timestamp with time zone NOT NULL,
    atualizado_em timestamp with time zone NOT NULL,
    CONSTRAINT golpe_pkey PRIMARY KEY (id)
);


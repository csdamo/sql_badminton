-- Table: public.jogador

-- DROP TABLE public.jogador;

CREATE TABLE public.jogador
(
    id bigint NOT NULL DEFAULT nextval('jogador_id_seq'::regclass),
    nome_jogador character varying(200) COLLATE pg_catalog."default" NOT NULL,
    data_nascimento date,
    telefone character varying(12) COLLATE pg_catalog."default",
    email character varying(200) COLLATE pg_catalog."default",
    lateralidade character varying(12) COLLATE pg_catalog."default" NOT NULL,
    criado_em timestamp with time zone NOT NULL,
    atualizado_em timestamp with time zone NOT NULL,
    foto character varying(100) COLLATE pg_catalog."default",
    CONSTRAINT jogador_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE public.jogador
    OWNER to postgres;
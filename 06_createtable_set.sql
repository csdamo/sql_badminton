-- Table: public.set

-- DROP TABLE public.set;

CREATE TABLE public.set
(
    id bigint NOT NULL,
    ordem smallint NOT NULL,
    criado_em timestamp with time zone NOT NULL,
    atualizado_em timestamp with time zone NOT NULL,
    partida_id bigint NOT NULL,
    CONSTRAINT set_pkey PRIMARY KEY (id),
    CONSTRAINT set_partida_id_4d123e38_fk_partida_id FOREIGN KEY (partida_id)
        REFERENCES public.partida (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        DEFERRABLE INITIALLY DEFERRED,
    CONSTRAINT set_ordem_check CHECK (ordem >= 0)
);


-- Index: set_partida_id_4d123e38

-- DROP INDEX public.set_partida_id_4d123e38;

CREATE INDEX set_partida_id_4d123e38
    ON public.set USING btree
    (partida_id ASC NULLS LAST);

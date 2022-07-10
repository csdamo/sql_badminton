-- Table: public.partida

-- DROP TABLE public.partida;

CREATE TABLE public.partida
(
    id SERIAL,
    data_partida timestamp with time zone NOT NULL,
    tipo_jogo character varying(7) COLLATE pg_catalog."default" NOT NULL,
    modalidade character varying(9) COLLATE pg_catalog."default" NOT NULL,
    criado_em timestamp with time zone NOT NULL,
    atualizado_em timestamp with time zone NOT NULL,
    jogador_1_id bigint NOT NULL,
    jogador_2_id bigint,
    jogador_adversario_1_id bigint NOT NULL,
    jogador_adversario_2_id bigint,
    nome character varying(100) COLLATE pg_catalog."default",
    CONSTRAINT partida_pkey PRIMARY KEY (id),
    CONSTRAINT partida_jogador_1_id_a97c9f6f_fk_jogador_id FOREIGN KEY (jogador_1_id)
        REFERENCES public.jogador (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        DEFERRABLE INITIALLY DEFERRED,
    CONSTRAINT partida_jogador_2_id_e6616618_fk_jogador_id FOREIGN KEY (jogador_2_id)
        REFERENCES public.jogador (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        DEFERRABLE INITIALLY DEFERRED,
    CONSTRAINT partida_jogador_adversario_1_id_1bf0e3c1_fk_jogador_id FOREIGN KEY (jogador_adversario_1_id)
        REFERENCES public.jogador (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        DEFERRABLE INITIALLY DEFERRED,
    CONSTRAINT partida_jogador_adversario_2_id_ced2b7cd_fk_jogador_id FOREIGN KEY (jogador_adversario_2_id)
        REFERENCES public.jogador (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        DEFERRABLE INITIALLY DEFERRED
);


-- Index: partida_jogador_1_id_a97c9f6f

-- DROP INDEX public.partida_jogador_1_id_a97c9f6f;

CREATE INDEX partida_jogador_1_id_a97c9f6f
    ON public.partida USING btree
    (jogador_1_id ASC NULLS LAST);
    
-- Index: partida_jogador_2_id_e6616618

-- DROP INDEX public.partida_jogador_2_id_e6616618;

CREATE INDEX partida_jogador_2_id_e6616618
    ON public.partida USING btree
    (jogador_2_id ASC NULLS LAST);
   
-- Index: partida_jogador_adversario_1_id_1bf0e3c1s

-- DROP INDEX public.partida_jogador_adversario_1_id_1bf0e3c1;

CREATE INDEX partida_jogador_adversario_1_id_1bf0e3c1
    ON public.partida USING btree
    (jogador_adversario_1_id ASC NULLS LAST);
   
-- Index: partida_jogador_adversario_2_id_ced2b7cd

-- DROP INDEX public.partida_jogador_adversario_2_id_ced2b7cd;

CREATE INDEX partida_jogador_adversario_2_id_ced2b7cd
    ON public.partida USING btree
    (jogador_adversario_2_id ASC NULLS LAST);
    
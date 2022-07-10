-- Table: public.jogada

-- DROP TABLE public.jogada;

CREATE TABLE public.jogada
(
    id bigint NOT NULL,
    criado_em timestamp with time zone NOT NULL,
    atualizado_em timestamp with time zone NOT NULL,
    golpe_id bigint NOT NULL,
    jogador_id bigint,
    quadrante_id bigint NOT NULL,
    set_id bigint NOT NULL,
    acerto boolean NOT NULL,
    CONSTRAINT jogada_pkey PRIMARY KEY (id),
    CONSTRAINT jogada_golpe_id_7466526d_fk_golpe_id FOREIGN KEY (golpe_id)
        REFERENCES public.golpe (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        DEFERRABLE INITIALLY DEFERRED,
    CONSTRAINT jogada_jogador_id_7f5af025_fk_jogador_id FOREIGN KEY (jogador_id)
        REFERENCES public.jogador (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        DEFERRABLE INITIALLY DEFERRED,
    CONSTRAINT jogada_quadrante_id_a7b51401_fk_quadrante_id FOREIGN KEY (quadrante_id)
        REFERENCES public.quadrante (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        DEFERRABLE INITIALLY DEFERRED,
    CONSTRAINT jogada_set_id_b7cbe87f_fk_set_id FOREIGN KEY (set_id)
        REFERENCES public.set (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        DEFERRABLE INITIALLY DEFERRED
);


-- Index: jogada_golpe_id_7466526d

-- DROP INDEX public.jogada_golpe_id_7466526d;

CREATE INDEX jogada_golpe_id_7466526d
    ON public.jogada USING btree
    (golpe_id ASC NULLS LAST);
    
-- Index: jogada_jogador_id_7f5af025

-- DROP INDEX public.jogada_jogador_id_7f5af025;

CREATE INDEX jogada_jogador_id_7f5af025
    ON public.jogada USING btree
    (jogador_id ASC NULLS LAST);
    
-- Index: jogada_quadrante_id_a7b51401

-- DROP INDEX public.jogada_quadrante_id_a7b51401;

CREATE INDEX jogada_quadrante_id_a7b51401
    ON public.jogada USING btree
    (quadrante_id ASC NULLS LAST);
  
-- Index: jogada_set_id_b7cbe87f

-- DROP INDEX public.jogada_set_id_b7cbe87f;

CREATE INDEX jogada_set_id_b7cbe87f
    ON public.jogada USING btree
    (set_id ASC NULLS LAST);
  
--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.21
-- Dumped by pg_dump version 9.6.21

-- Started on 2021-09-12 12:21:53

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 12387)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2655 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 188 (class 1259 OID 36793)
-- Name: Actividad_contenido; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Actividad_contenido" (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    tipo_id integer
);


ALTER TABLE public."Actividad_contenido" OWNER TO postgres;

--
-- TOC entry 187 (class 1259 OID 36791)
-- Name: Actividad_contenido_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Actividad_contenido_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Actividad_contenido_id_seq" OWNER TO postgres;

--
-- TOC entry 2656 (class 0 OID 0)
-- Dependencies: 187
-- Name: Actividad_contenido_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Actividad_contenido_id_seq" OWNED BY public."Actividad_contenido".id;


--
-- TOC entry 190 (class 1259 OID 36801)
-- Name: Actividad_tipo_contenido; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Actividad_tipo_contenido" (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL
);


ALTER TABLE public."Actividad_tipo_contenido" OWNER TO postgres;

--
-- TOC entry 189 (class 1259 OID 36799)
-- Name: Actividad_tipo_contenido_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Actividad_tipo_contenido_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Actividad_tipo_contenido_id_seq" OWNER TO postgres;

--
-- TOC entry 2657 (class 0 OID 0)
-- Dependencies: 189
-- Name: Actividad_tipo_contenido_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Actividad_tipo_contenido_id_seq" OWNED BY public."Actividad_tipo_contenido".id;


--
-- TOC entry 198 (class 1259 OID 36851)
-- Name: Area_area; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Area_area" (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL
);


ALTER TABLE public."Area_area" OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 36849)
-- Name: Area_area_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Area_area_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Area_area_id_seq" OWNER TO postgres;

--
-- TOC entry 2658 (class 0 OID 0)
-- Dependencies: 197
-- Name: Area_area_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Area_area_id_seq" OWNED BY public."Area_area".id;


--
-- TOC entry 200 (class 1259 OID 36859)
-- Name: Area_areas_carreras; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Area_areas_carreras" (
    id integer NOT NULL,
    area_id integer,
    carrera_id integer
);


ALTER TABLE public."Area_areas_carreras" OWNER TO postgres;

--
-- TOC entry 199 (class 1259 OID 36857)
-- Name: Area_areas_carreras_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Area_areas_carreras_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Area_areas_carreras_id_seq" OWNER TO postgres;

--
-- TOC entry 2659 (class 0 OID 0)
-- Dependencies: 199
-- Name: Area_areas_carreras_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Area_areas_carreras_id_seq" OWNED BY public."Area_areas_carreras".id;


--
-- TOC entry 196 (class 1259 OID 36837)
-- Name: Carrera_carrera; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Carrera_carrera" (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    universidad_id integer
);


ALTER TABLE public."Carrera_carrera" OWNER TO postgres;

--
-- TOC entry 195 (class 1259 OID 36835)
-- Name: Carrera_carrera_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Carrera_carrera_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Carrera_carrera_id_seq" OWNER TO postgres;

--
-- TOC entry 2660 (class 0 OID 0)
-- Dependencies: 195
-- Name: Carrera_carrera_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Carrera_carrera_id_seq" OWNED BY public."Carrera_carrera".id;


--
-- TOC entry 258 (class 1259 OID 45062)
-- Name: Curso_archivo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Curso_archivo" (
    id integer NOT NULL,
    doc character varying(100),
    curso_id integer
);


ALTER TABLE public."Curso_archivo" OWNER TO postgres;

--
-- TOC entry 257 (class 1259 OID 45060)
-- Name: Curso_archivo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Curso_archivo_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Curso_archivo_id_seq" OWNER TO postgres;

--
-- TOC entry 2661 (class 0 OID 0)
-- Dependencies: 257
-- Name: Curso_archivo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Curso_archivo_id_seq" OWNED BY public."Curso_archivo".id;


--
-- TOC entry 221 (class 1259 OID 37028)
-- Name: Curso_asignatura; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Curso_asignatura" (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    sigla character varying(10),
    autor_id integer,
    carrera_id integer
);


ALTER TABLE public."Curso_asignatura" OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 37036)
-- Name: Curso_asignatura_alumnos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Curso_asignatura_alumnos" (
    id integer NOT NULL,
    alumno_id character varying(13),
    curso_id integer,
    evaluacion_id integer
);


ALTER TABLE public."Curso_asignatura_alumnos" OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 37034)
-- Name: Curso_asignatura_alumnos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Curso_asignatura_alumnos_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Curso_asignatura_alumnos_id_seq" OWNER TO postgres;

--
-- TOC entry 2662 (class 0 OID 0)
-- Dependencies: 222
-- Name: Curso_asignatura_alumnos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Curso_asignatura_alumnos_id_seq" OWNED BY public."Curso_asignatura_alumnos".id;


--
-- TOC entry 220 (class 1259 OID 37026)
-- Name: Curso_asignatura_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Curso_asignatura_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Curso_asignatura_id_seq" OWNER TO postgres;

--
-- TOC entry 2663 (class 0 OID 0)
-- Dependencies: 220
-- Name: Curso_asignatura_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Curso_asignatura_id_seq" OWNED BY public."Curso_asignatura".id;


--
-- TOC entry 225 (class 1259 OID 37044)
-- Name: Curso_curso; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Curso_curso" (
    id integer NOT NULL,
    semestre character varying(2),
    anio character varying(4),
    asignatura_id integer,
    profesor_id integer,
    paralelo_id integer
);


ALTER TABLE public."Curso_curso" OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 37042)
-- Name: Curso_curso_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Curso_curso_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Curso_curso_id_seq" OWNER TO postgres;

--
-- TOC entry 2664 (class 0 OID 0)
-- Dependencies: 224
-- Name: Curso_curso_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Curso_curso_id_seq" OWNED BY public."Curso_curso".id;


--
-- TOC entry 248 (class 1259 OID 37313)
-- Name: Curso_curso_paralelo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Curso_curso_paralelo" (
    id integer NOT NULL,
    nombre character varying(1) NOT NULL
);


ALTER TABLE public."Curso_curso_paralelo" OWNER TO postgres;

--
-- TOC entry 247 (class 1259 OID 37311)
-- Name: Curso_curso_paralelo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Curso_curso_paralelo_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Curso_curso_paralelo_id_seq" OWNER TO postgres;

--
-- TOC entry 2665 (class 0 OID 0)
-- Dependencies: 247
-- Name: Curso_curso_paralelo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Curso_curso_paralelo_id_seq" OWNED BY public."Curso_curso_paralelo".id;


--
-- TOC entry 227 (class 1259 OID 37052)
-- Name: Curso_evaluacion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Curso_evaluacion" (
    id integer NOT NULL,
    nombre character varying(50),
    ponderacion integer,
    is_grupal boolean NOT NULL,
    curso_id integer,
    tipo_id integer
);


ALTER TABLE public."Curso_evaluacion" OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 37060)
-- Name: Curso_evaluacion_alumnos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Curso_evaluacion_alumnos" (
    id integer NOT NULL,
    nota integer,
    alumno_id character varying(13),
    evaluacion_id integer
);


ALTER TABLE public."Curso_evaluacion_alumnos" OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 37058)
-- Name: Curso_evaluacion_alumnos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Curso_evaluacion_alumnos_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Curso_evaluacion_alumnos_id_seq" OWNER TO postgres;

--
-- TOC entry 2666 (class 0 OID 0)
-- Dependencies: 228
-- Name: Curso_evaluacion_alumnos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Curso_evaluacion_alumnos_id_seq" OWNED BY public."Curso_evaluacion_alumnos".id;


--
-- TOC entry 226 (class 1259 OID 37050)
-- Name: Curso_evaluacion_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Curso_evaluacion_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Curso_evaluacion_id_seq" OWNER TO postgres;

--
-- TOC entry 2667 (class 0 OID 0)
-- Dependencies: 226
-- Name: Curso_evaluacion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Curso_evaluacion_id_seq" OWNED BY public."Curso_evaluacion".id;


--
-- TOC entry 231 (class 1259 OID 37068)
-- Name: Curso_grupo_en_evaluacion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Curso_grupo_en_evaluacion" (
    id integer NOT NULL,
    nombre character varying(50),
    evaluacion_id integer
);


ALTER TABLE public."Curso_grupo_en_evaluacion" OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 37076)
-- Name: Curso_grupo_en_evaluacion_alumno; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Curso_grupo_en_evaluacion_alumno" (
    id integer NOT NULL,
    grupo_en_evaluacion_id integer NOT NULL,
    alumno_id character varying(13) NOT NULL
);


ALTER TABLE public."Curso_grupo_en_evaluacion_alumno" OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 37074)
-- Name: Curso_grupo_en_evaluacion_alumno_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Curso_grupo_en_evaluacion_alumno_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Curso_grupo_en_evaluacion_alumno_id_seq" OWNER TO postgres;

--
-- TOC entry 2668 (class 0 OID 0)
-- Dependencies: 232
-- Name: Curso_grupo_en_evaluacion_alumno_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Curso_grupo_en_evaluacion_alumno_id_seq" OWNED BY public."Curso_grupo_en_evaluacion_alumno".id;


--
-- TOC entry 230 (class 1259 OID 37066)
-- Name: Curso_grupo_en_evaluacion_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Curso_grupo_en_evaluacion_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Curso_grupo_en_evaluacion_id_seq" OWNER TO postgres;

--
-- TOC entry 2669 (class 0 OID 0)
-- Dependencies: 230
-- Name: Curso_grupo_en_evaluacion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Curso_grupo_en_evaluacion_id_seq" OWNED BY public."Curso_grupo_en_evaluacion".id;


--
-- TOC entry 235 (class 1259 OID 37084)
-- Name: Curso_tipo_evaluacion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Curso_tipo_evaluacion" (
    id integer NOT NULL,
    nombre character varying(20)
);


ALTER TABLE public."Curso_tipo_evaluacion" OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 37082)
-- Name: Curso_tipo_evaluacion_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Curso_tipo_evaluacion_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Curso_tipo_evaluacion_id_seq" OWNER TO postgres;

--
-- TOC entry 2670 (class 0 OID 0)
-- Dependencies: 234
-- Name: Curso_tipo_evaluacion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Curso_tipo_evaluacion_id_seq" OWNED BY public."Curso_tipo_evaluacion".id;


--
-- TOC entry 192 (class 1259 OID 36815)
-- Name: Pais_pais; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Pais_pais" (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL
);


ALTER TABLE public."Pais_pais" OWNER TO postgres;

--
-- TOC entry 191 (class 1259 OID 36813)
-- Name: Pais_pais_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Pais_pais_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Pais_pais_id_seq" OWNER TO postgres;

--
-- TOC entry 2671 (class 0 OID 0)
-- Dependencies: 191
-- Name: Pais_pais_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Pais_pais_id_seq" OWNED BY public."Pais_pais".id;


--
-- TOC entry 237 (class 1259 OID 37181)
-- Name: RA_ra; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."RA_ra" (
    id integer NOT NULL,
    nombre character varying(300) NOT NULL,
    codigo character varying(10),
    asignatura_id integer,
    autor_id integer
);


ALTER TABLE public."RA_ra" OWNER TO postgres;

--
-- TOC entry 236 (class 1259 OID 37179)
-- Name: RA_ra_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."RA_ra_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."RA_ra_id_seq" OWNER TO postgres;

--
-- TOC entry 2672 (class 0 OID 0)
-- Dependencies: 236
-- Name: RA_ra_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."RA_ra_id_seq" OWNED BY public."RA_ra".id;


--
-- TOC entry 254 (class 1259 OID 44904)
-- Name: Rubrica_calificacion_aspecto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Rubrica_calificacion_aspecto" (
    id integer NOT NULL,
    nombre character varying(15),
    flag boolean NOT NULL
);


ALTER TABLE public."Rubrica_calificacion_aspecto" OWNER TO postgres;

--
-- TOC entry 253 (class 1259 OID 44902)
-- Name: Rubrica_calificacion_aspecto_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Rubrica_calificacion_aspecto_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Rubrica_calificacion_aspecto_id_seq" OWNER TO postgres;

--
-- TOC entry 2673 (class 0 OID 0)
-- Dependencies: 253
-- Name: Rubrica_calificacion_aspecto_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Rubrica_calificacion_aspecto_id_seq" OWNED BY public."Rubrica_calificacion_aspecto".id;


--
-- TOC entry 239 (class 1259 OID 37203)
-- Name: Rubrica_estado_rubrica; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Rubrica_estado_rubrica" (
    id integer NOT NULL,
    nombre character varying(50)
);


ALTER TABLE public."Rubrica_estado_rubrica" OWNER TO postgres;

--
-- TOC entry 238 (class 1259 OID 37201)
-- Name: Rubrica_estado_rubrica_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Rubrica_estado_rubrica_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Rubrica_estado_rubrica_id_seq" OWNER TO postgres;

--
-- TOC entry 2674 (class 0 OID 0)
-- Dependencies: 238
-- Name: Rubrica_estado_rubrica_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Rubrica_estado_rubrica_id_seq" OWNED BY public."Rubrica_estado_rubrica".id;


--
-- TOC entry 250 (class 1259 OID 37366)
-- Name: Rubrica_puntaje; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Rubrica_puntaje" (
    id integer NOT NULL,
    descripcion character varying(400),
    rubrica_id integer,
    calificacion_id integer,
    topico_id integer
);


ALTER TABLE public."Rubrica_puntaje" OWNER TO postgres;

--
-- TOC entry 249 (class 1259 OID 37364)
-- Name: Rubrica_puntaje_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Rubrica_puntaje_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Rubrica_puntaje_id_seq" OWNER TO postgres;

--
-- TOC entry 2675 (class 0 OID 0)
-- Dependencies: 249
-- Name: Rubrica_puntaje_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Rubrica_puntaje_id_seq" OWNED BY public."Rubrica_puntaje".id;


--
-- TOC entry 241 (class 1259 OID 37211)
-- Name: Rubrica_rubrica; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Rubrica_rubrica" (
    id integer NOT NULL,
    nombre character varying(100),
    is_private boolean NOT NULL,
    fecha_creacion date NOT NULL,
    autor_id integer,
    estado_id integer,
    evaluacion_id integer,
    curso_id integer,
    tipo_id integer
);


ALTER TABLE public."Rubrica_rubrica" OWNER TO postgres;

--
-- TOC entry 240 (class 1259 OID 37209)
-- Name: Rubrica_rubrica_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Rubrica_rubrica_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Rubrica_rubrica_id_seq" OWNER TO postgres;

--
-- TOC entry 2676 (class 0 OID 0)
-- Dependencies: 240
-- Name: Rubrica_rubrica_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Rubrica_rubrica_id_seq" OWNED BY public."Rubrica_rubrica".id;


--
-- TOC entry 252 (class 1259 OID 37472)
-- Name: Rubrica_tipo_rubrica; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Rubrica_tipo_rubrica" (
    id integer NOT NULL,
    nombre character varying(100)
);


ALTER TABLE public."Rubrica_tipo_rubrica" OWNER TO postgres;

--
-- TOC entry 251 (class 1259 OID 37470)
-- Name: Rubrica_tipo_rubrica_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Rubrica_tipo_rubrica_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Rubrica_tipo_rubrica_id_seq" OWNER TO postgres;

--
-- TOC entry 2677 (class 0 OID 0)
-- Dependencies: 251
-- Name: Rubrica_tipo_rubrica_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Rubrica_tipo_rubrica_id_seq" OWNED BY public."Rubrica_tipo_rubrica".id;


--
-- TOC entry 256 (class 1259 OID 44918)
-- Name: Rubrica_topico; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Rubrica_topico" (
    id integer NOT NULL,
    nombre character varying(400),
    rubrica_id integer,
    estado character varying(20) NOT NULL
);


ALTER TABLE public."Rubrica_topico" OWNER TO postgres;

--
-- TOC entry 255 (class 1259 OID 44916)
-- Name: Rubrica_topico_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Rubrica_topico_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Rubrica_topico_id_seq" OWNER TO postgres;

--
-- TOC entry 2678 (class 0 OID 0)
-- Dependencies: 255
-- Name: Rubrica_topico_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Rubrica_topico_id_seq" OWNED BY public."Rubrica_topico".id;


--
-- TOC entry 243 (class 1259 OID 37219)
-- Name: Rubrica_topico_rubricas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Rubrica_topico_rubricas" (
    id integer NOT NULL,
    puntaje_id integer,
    rubrica_id integer,
    topico_id integer
);


ALTER TABLE public."Rubrica_topico_rubricas" OWNER TO postgres;

--
-- TOC entry 242 (class 1259 OID 37217)
-- Name: Rubrica_topico_rubricas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Rubrica_topico_rubricas_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Rubrica_topico_rubricas_id_seq" OWNER TO postgres;

--
-- TOC entry 2679 (class 0 OID 0)
-- Dependencies: 242
-- Name: Rubrica_topico_rubricas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Rubrica_topico_rubricas_id_seq" OWNED BY public."Rubrica_topico_rubricas".id;


--
-- TOC entry 194 (class 1259 OID 36823)
-- Name: Universidad_universidad; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Universidad_universidad" (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    pais_id integer
);


ALTER TABLE public."Universidad_universidad" OWNER TO postgres;

--
-- TOC entry 193 (class 1259 OID 36821)
-- Name: Universidad_universidad_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Universidad_universidad_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Universidad_universidad_id_seq" OWNER TO postgres;

--
-- TOC entry 2680 (class 0 OID 0)
-- Dependencies: 193
-- Name: Universidad_universidad_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Universidad_universidad_id_seq" OWNED BY public."Universidad_universidad".id;


--
-- TOC entry 215 (class 1259 OID 36991)
-- Name: Usuario_alumno; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Usuario_alumno" (
    rut character varying(13) NOT NULL,
    nombre character varying(100) NOT NULL,
    apellido_pat character varying(50) NOT NULL,
    apellido_mat character varying(50) NOT NULL,
    mail character varying(254) NOT NULL,
    telefono integer,
    user_id integer,
    carrera_id integer
);


ALTER TABLE public."Usuario_alumno" OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 36998)
-- Name: Usuario_persona; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Usuario_persona" (
    id integer NOT NULL,
    rut character varying(13),
    telefono character varying(15),
    foto character varying(100),
    tipo_usuario_id integer,
    user_id integer NOT NULL
);


ALTER TABLE public."Usuario_persona" OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 36996)
-- Name: Usuario_persona_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Usuario_persona_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Usuario_persona_id_seq" OWNER TO postgres;

--
-- TOC entry 2681 (class 0 OID 0)
-- Dependencies: 216
-- Name: Usuario_persona_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Usuario_persona_id_seq" OWNED BY public."Usuario_persona".id;


--
-- TOC entry 219 (class 1259 OID 37006)
-- Name: Usuario_tipousuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Usuario_tipousuario" (
    id integer NOT NULL,
    nombre character varying(20)
);


ALTER TABLE public."Usuario_tipousuario" OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 37004)
-- Name: Usuario_tipousuario_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Usuario_tipousuario_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Usuario_tipousuario_id_seq" OWNER TO postgres;

--
-- TOC entry 2682 (class 0 OID 0)
-- Dependencies: 218
-- Name: Usuario_tipousuario_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Usuario_tipousuario_id_seq" OWNED BY public."Usuario_tipousuario".id;


--
-- TOC entry 206 (class 1259 OID 36897)
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 36895)
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- TOC entry 2683 (class 0 OID 0)
-- Dependencies: 205
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- TOC entry 208 (class 1259 OID 36907)
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 36905)
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 2684 (class 0 OID 0)
-- Dependencies: 207
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- TOC entry 204 (class 1259 OID 36889)
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 36887)
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- TOC entry 2685 (class 0 OID 0)
-- Dependencies: 203
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- TOC entry 210 (class 1259 OID 36915)
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 36925)
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 36923)
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- TOC entry 2686 (class 0 OID 0)
-- Dependencies: 211
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- TOC entry 209 (class 1259 OID 36913)
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgres;

--
-- TOC entry 2687 (class 0 OID 0)
-- Dependencies: 209
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- TOC entry 214 (class 1259 OID 36933)
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 36931)
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 2688 (class 0 OID 0)
-- Dependencies: 213
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- TOC entry 245 (class 1259 OID 37257)
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- TOC entry 244 (class 1259 OID 37255)
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- TOC entry 2689 (class 0 OID 0)
-- Dependencies: 244
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- TOC entry 202 (class 1259 OID 36879)
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 36877)
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- TOC entry 2690 (class 0 OID 0)
-- Dependencies: 201
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- TOC entry 186 (class 1259 OID 36782)
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- TOC entry 185 (class 1259 OID 36780)
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- TOC entry 2691 (class 0 OID 0)
-- Dependencies: 185
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- TOC entry 246 (class 1259 OID 37285)
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- TOC entry 2224 (class 2604 OID 36796)
-- Name: Actividad_contenido id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Actividad_contenido" ALTER COLUMN id SET DEFAULT nextval('public."Actividad_contenido_id_seq"'::regclass);


--
-- TOC entry 2225 (class 2604 OID 36804)
-- Name: Actividad_tipo_contenido id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Actividad_tipo_contenido" ALTER COLUMN id SET DEFAULT nextval('public."Actividad_tipo_contenido_id_seq"'::regclass);


--
-- TOC entry 2229 (class 2604 OID 36854)
-- Name: Area_area id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Area_area" ALTER COLUMN id SET DEFAULT nextval('public."Area_area_id_seq"'::regclass);


--
-- TOC entry 2230 (class 2604 OID 36862)
-- Name: Area_areas_carreras id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Area_areas_carreras" ALTER COLUMN id SET DEFAULT nextval('public."Area_areas_carreras_id_seq"'::regclass);


--
-- TOC entry 2228 (class 2604 OID 36840)
-- Name: Carrera_carrera id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Carrera_carrera" ALTER COLUMN id SET DEFAULT nextval('public."Carrera_carrera_id_seq"'::regclass);


--
-- TOC entry 2259 (class 2604 OID 45065)
-- Name: Curso_archivo id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_archivo" ALTER COLUMN id SET DEFAULT nextval('public."Curso_archivo_id_seq"'::regclass);


--
-- TOC entry 2240 (class 2604 OID 37031)
-- Name: Curso_asignatura id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_asignatura" ALTER COLUMN id SET DEFAULT nextval('public."Curso_asignatura_id_seq"'::regclass);


--
-- TOC entry 2241 (class 2604 OID 37039)
-- Name: Curso_asignatura_alumnos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_asignatura_alumnos" ALTER COLUMN id SET DEFAULT nextval('public."Curso_asignatura_alumnos_id_seq"'::regclass);


--
-- TOC entry 2242 (class 2604 OID 37047)
-- Name: Curso_curso id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_curso" ALTER COLUMN id SET DEFAULT nextval('public."Curso_curso_id_seq"'::regclass);


--
-- TOC entry 2254 (class 2604 OID 37316)
-- Name: Curso_curso_paralelo id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_curso_paralelo" ALTER COLUMN id SET DEFAULT nextval('public."Curso_curso_paralelo_id_seq"'::regclass);


--
-- TOC entry 2243 (class 2604 OID 37055)
-- Name: Curso_evaluacion id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_evaluacion" ALTER COLUMN id SET DEFAULT nextval('public."Curso_evaluacion_id_seq"'::regclass);


--
-- TOC entry 2244 (class 2604 OID 37063)
-- Name: Curso_evaluacion_alumnos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_evaluacion_alumnos" ALTER COLUMN id SET DEFAULT nextval('public."Curso_evaluacion_alumnos_id_seq"'::regclass);


--
-- TOC entry 2245 (class 2604 OID 37071)
-- Name: Curso_grupo_en_evaluacion id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_grupo_en_evaluacion" ALTER COLUMN id SET DEFAULT nextval('public."Curso_grupo_en_evaluacion_id_seq"'::regclass);


--
-- TOC entry 2246 (class 2604 OID 37079)
-- Name: Curso_grupo_en_evaluacion_alumno id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_grupo_en_evaluacion_alumno" ALTER COLUMN id SET DEFAULT nextval('public."Curso_grupo_en_evaluacion_alumno_id_seq"'::regclass);


--
-- TOC entry 2247 (class 2604 OID 37087)
-- Name: Curso_tipo_evaluacion id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_tipo_evaluacion" ALTER COLUMN id SET DEFAULT nextval('public."Curso_tipo_evaluacion_id_seq"'::regclass);


--
-- TOC entry 2226 (class 2604 OID 36818)
-- Name: Pais_pais id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Pais_pais" ALTER COLUMN id SET DEFAULT nextval('public."Pais_pais_id_seq"'::regclass);


--
-- TOC entry 2248 (class 2604 OID 37184)
-- Name: RA_ra id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RA_ra" ALTER COLUMN id SET DEFAULT nextval('public."RA_ra_id_seq"'::regclass);


--
-- TOC entry 2257 (class 2604 OID 44907)
-- Name: Rubrica_calificacion_aspecto id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_calificacion_aspecto" ALTER COLUMN id SET DEFAULT nextval('public."Rubrica_calificacion_aspecto_id_seq"'::regclass);


--
-- TOC entry 2249 (class 2604 OID 37206)
-- Name: Rubrica_estado_rubrica id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_estado_rubrica" ALTER COLUMN id SET DEFAULT nextval('public."Rubrica_estado_rubrica_id_seq"'::regclass);


--
-- TOC entry 2255 (class 2604 OID 37369)
-- Name: Rubrica_puntaje id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_puntaje" ALTER COLUMN id SET DEFAULT nextval('public."Rubrica_puntaje_id_seq"'::regclass);


--
-- TOC entry 2250 (class 2604 OID 37214)
-- Name: Rubrica_rubrica id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_rubrica" ALTER COLUMN id SET DEFAULT nextval('public."Rubrica_rubrica_id_seq"'::regclass);


--
-- TOC entry 2256 (class 2604 OID 37475)
-- Name: Rubrica_tipo_rubrica id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_tipo_rubrica" ALTER COLUMN id SET DEFAULT nextval('public."Rubrica_tipo_rubrica_id_seq"'::regclass);


--
-- TOC entry 2258 (class 2604 OID 44921)
-- Name: Rubrica_topico id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_topico" ALTER COLUMN id SET DEFAULT nextval('public."Rubrica_topico_id_seq"'::regclass);


--
-- TOC entry 2251 (class 2604 OID 37222)
-- Name: Rubrica_topico_rubricas id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_topico_rubricas" ALTER COLUMN id SET DEFAULT nextval('public."Rubrica_topico_rubricas_id_seq"'::regclass);


--
-- TOC entry 2227 (class 2604 OID 36826)
-- Name: Universidad_universidad id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Universidad_universidad" ALTER COLUMN id SET DEFAULT nextval('public."Universidad_universidad_id_seq"'::regclass);


--
-- TOC entry 2238 (class 2604 OID 37001)
-- Name: Usuario_persona id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Usuario_persona" ALTER COLUMN id SET DEFAULT nextval('public."Usuario_persona_id_seq"'::regclass);


--
-- TOC entry 2239 (class 2604 OID 37009)
-- Name: Usuario_tipousuario id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Usuario_tipousuario" ALTER COLUMN id SET DEFAULT nextval('public."Usuario_tipousuario_id_seq"'::regclass);


--
-- TOC entry 2233 (class 2604 OID 36900)
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- TOC entry 2234 (class 2604 OID 36910)
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- TOC entry 2232 (class 2604 OID 36892)
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- TOC entry 2235 (class 2604 OID 36918)
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- TOC entry 2236 (class 2604 OID 36928)
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- TOC entry 2237 (class 2604 OID 36936)
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- TOC entry 2252 (class 2604 OID 37260)
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- TOC entry 2231 (class 2604 OID 36882)
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- TOC entry 2223 (class 2604 OID 36785)
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- TOC entry 2577 (class 0 OID 36793)
-- Dependencies: 188
-- Data for Name: Actividad_contenido; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Actividad_contenido" (id, nombre, tipo_id) FROM stdin;
\.


--
-- TOC entry 2692 (class 0 OID 0)
-- Dependencies: 187
-- Name: Actividad_contenido_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Actividad_contenido_id_seq"', 1, false);


--
-- TOC entry 2579 (class 0 OID 36801)
-- Dependencies: 190
-- Data for Name: Actividad_tipo_contenido; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Actividad_tipo_contenido" (id, nombre) FROM stdin;
\.


--
-- TOC entry 2693 (class 0 OID 0)
-- Dependencies: 189
-- Name: Actividad_tipo_contenido_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Actividad_tipo_contenido_id_seq"', 1, false);


--
-- TOC entry 2587 (class 0 OID 36851)
-- Dependencies: 198
-- Data for Name: Area_area; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Area_area" (id, nombre) FROM stdin;
\.


--
-- TOC entry 2694 (class 0 OID 0)
-- Dependencies: 197
-- Name: Area_area_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Area_area_id_seq"', 1, false);


--
-- TOC entry 2589 (class 0 OID 36859)
-- Dependencies: 200
-- Data for Name: Area_areas_carreras; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Area_areas_carreras" (id, area_id, carrera_id) FROM stdin;
\.


--
-- TOC entry 2695 (class 0 OID 0)
-- Dependencies: 199
-- Name: Area_areas_carreras_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Area_areas_carreras_id_seq"', 1, false);


--
-- TOC entry 2585 (class 0 OID 36837)
-- Dependencies: 196
-- Data for Name: Carrera_carrera; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Carrera_carrera" (id, nombre, universidad_id) FROM stdin;
1	Ingeniería de Ejecución en Informática	1
2	Ingeniería Civil Informática	1
3	Ingeniería Civil en Ciencia de Datos	1
\.


--
-- TOC entry 2696 (class 0 OID 0)
-- Dependencies: 195
-- Name: Carrera_carrera_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Carrera_carrera_id_seq"', 1, false);


--
-- TOC entry 2647 (class 0 OID 45062)
-- Dependencies: 258
-- Data for Name: Curso_archivo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Curso_archivo" (id, doc, curso_id) FROM stdin;
6	plantillas/2021/08/18/plantilla-subir-listado-alumnos4167478785925_JM1AZZF.xlsx	1
8	plantillas/2021/08/18/plantilla-subir-listado-alumnos4167478785925_sjtZd98.xlsx	2
\.


--
-- TOC entry 2697 (class 0 OID 0)
-- Dependencies: 257
-- Name: Curso_archivo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Curso_archivo_id_seq"', 8, true);


--
-- TOC entry 2610 (class 0 OID 37028)
-- Dependencies: 221
-- Data for Name: Curso_asignatura; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Curso_asignatura" (id, nombre, sigla, autor_id, carrera_id) FROM stdin;
1	Taller de Ingeniería en Software	INF 4550	1	1
2	Taller de Ingeniería en Software	ICI 4540	1	2
3	Taller de Ingeniería en Software	ICCD 4540	1	3
\.


--
-- TOC entry 2612 (class 0 OID 37036)
-- Dependencies: 223
-- Data for Name: Curso_asignatura_alumnos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Curso_asignatura_alumnos" (id, alumno_id, curso_id, evaluacion_id) FROM stdin;
30	19271880-5	1	\N
31	19876895-2	1	\N
32	7340462-2	1	\N
33	13366157-3	1	\N
34	19271880-5	2	\N
35	19876895-2	2	\N
36	7340462-2	2	\N
37	13366157-3	2	\N
38	19271880-6	2	\N
\.


--
-- TOC entry 2698 (class 0 OID 0)
-- Dependencies: 222
-- Name: Curso_asignatura_alumnos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Curso_asignatura_alumnos_id_seq"', 38, true);


--
-- TOC entry 2699 (class 0 OID 0)
-- Dependencies: 220
-- Name: Curso_asignatura_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Curso_asignatura_id_seq"', 3, true);


--
-- TOC entry 2614 (class 0 OID 37044)
-- Dependencies: 225
-- Data for Name: Curso_curso; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Curso_curso" (id, semestre, anio, asignatura_id, profesor_id, paralelo_id) FROM stdin;
1	1	2021	1	1	1
2	1	2021	2	1	1
3	2	2021	3	1	1
\.


--
-- TOC entry 2700 (class 0 OID 0)
-- Dependencies: 224
-- Name: Curso_curso_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Curso_curso_id_seq"', 3, true);


--
-- TOC entry 2637 (class 0 OID 37313)
-- Dependencies: 248
-- Data for Name: Curso_curso_paralelo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Curso_curso_paralelo" (id, nombre) FROM stdin;
1	1
2	2
3	3
\.


--
-- TOC entry 2701 (class 0 OID 0)
-- Dependencies: 247
-- Name: Curso_curso_paralelo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Curso_curso_paralelo_id_seq"', 1, false);


--
-- TOC entry 2616 (class 0 OID 37052)
-- Dependencies: 227
-- Data for Name: Curso_evaluacion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Curso_evaluacion" (id, nombre, ponderacion, is_grupal, curso_id, tipo_id) FROM stdin;
15	Informe de Avance	50	t	1	4
16	Evaluacion 2	50	t	1	2
17	Autoevaluación Inicial	50	t	3	6
18	Evaluación de Avance	50	f	3	2
\.


--
-- TOC entry 2618 (class 0 OID 37060)
-- Dependencies: 229
-- Data for Name: Curso_evaluacion_alumnos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Curso_evaluacion_alumnos" (id, nota, alumno_id, evaluacion_id) FROM stdin;
\.


--
-- TOC entry 2702 (class 0 OID 0)
-- Dependencies: 228
-- Name: Curso_evaluacion_alumnos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Curso_evaluacion_alumnos_id_seq"', 1, false);


--
-- TOC entry 2703 (class 0 OID 0)
-- Dependencies: 226
-- Name: Curso_evaluacion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Curso_evaluacion_id_seq"', 18, true);


--
-- TOC entry 2620 (class 0 OID 37068)
-- Dependencies: 231
-- Data for Name: Curso_grupo_en_evaluacion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Curso_grupo_en_evaluacion" (id, nombre, evaluacion_id) FROM stdin;
\.


--
-- TOC entry 2622 (class 0 OID 37076)
-- Dependencies: 233
-- Data for Name: Curso_grupo_en_evaluacion_alumno; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Curso_grupo_en_evaluacion_alumno" (id, grupo_en_evaluacion_id, alumno_id) FROM stdin;
\.


--
-- TOC entry 2704 (class 0 OID 0)
-- Dependencies: 232
-- Name: Curso_grupo_en_evaluacion_alumno_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Curso_grupo_en_evaluacion_alumno_id_seq"', 1, false);


--
-- TOC entry 2705 (class 0 OID 0)
-- Dependencies: 230
-- Name: Curso_grupo_en_evaluacion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Curso_grupo_en_evaluacion_id_seq"', 1, false);


--
-- TOC entry 2624 (class 0 OID 37084)
-- Dependencies: 235
-- Data for Name: Curso_tipo_evaluacion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Curso_tipo_evaluacion" (id, nombre) FROM stdin;
1	Presentación Oral
2	Cátedra
3	Flipped Classroom
4	Informe de Avance
5	Informe Final
6	Autoevaluación
7	Laboratorio
\.


--
-- TOC entry 2706 (class 0 OID 0)
-- Dependencies: 234
-- Name: Curso_tipo_evaluacion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Curso_tipo_evaluacion_id_seq"', 1, false);


--
-- TOC entry 2581 (class 0 OID 36815)
-- Dependencies: 192
-- Data for Name: Pais_pais; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Pais_pais" (id, nombre) FROM stdin;
1	Chile
\.


--
-- TOC entry 2707 (class 0 OID 0)
-- Dependencies: 191
-- Name: Pais_pais_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Pais_pais_id_seq"', 1, false);


--
-- TOC entry 2626 (class 0 OID 37181)
-- Dependencies: 237
-- Data for Name: RA_ra; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."RA_ra" (id, nombre, codigo, asignatura_id, autor_id) FROM stdin;
5	Comprende y ejemplifica evaluaciones guiadas a través del concepto de metodologías	RA1	1	1
\.


--
-- TOC entry 2708 (class 0 OID 0)
-- Dependencies: 236
-- Name: RA_ra_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."RA_ra_id_seq"', 5, true);


--
-- TOC entry 2643 (class 0 OID 44904)
-- Dependencies: 254
-- Data for Name: Rubrica_calificacion_aspecto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Rubrica_calificacion_aspecto" (id, nombre, flag) FROM stdin;
1	INSUFICIENTE	t
2	SUFICIENTE	t
3	BUENO	t
4	EXCELENTE	t
\.


--
-- TOC entry 2709 (class 0 OID 0)
-- Dependencies: 253
-- Name: Rubrica_calificacion_aspecto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Rubrica_calificacion_aspecto_id_seq"', 1, false);


--
-- TOC entry 2628 (class 0 OID 37203)
-- Dependencies: 239
-- Data for Name: Rubrica_estado_rubrica; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Rubrica_estado_rubrica" (id, nombre) FROM stdin;
1	No Iniciada
3	Finalizada
4	Activa
2	En Proceso
\.


--
-- TOC entry 2710 (class 0 OID 0)
-- Dependencies: 238
-- Name: Rubrica_estado_rubrica_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Rubrica_estado_rubrica_id_seq"', 1, false);


--
-- TOC entry 2639 (class 0 OID 37366)
-- Dependencies: 250
-- Data for Name: Rubrica_puntaje; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Rubrica_puntaje" (id, descripcion, rubrica_id, calificacion_id, topico_id) FROM stdin;
9	hola	7	1	19
10	como	7	2	19
11	estas	7	3	19
12	bien	7	4	19
13	y	7	1	20
14	tu	7	2	20
15	jaja	7	3	20
16	jeje	7	4	20
35	1	8	1	21
36	2	8	2	21
37	3	8	3	21
38	4	8	4	21
39	está very insuficiente	8	1	22
40	suficiente	8	2	22
41	estuvo weno	8	3	22
42	very gus	8	4	22
43	very in	8	1	23
44	sufi	8	2	23
45	gus	8	3	23
46	muy very gus	8	4	23
\.


--
-- TOC entry 2711 (class 0 OID 0)
-- Dependencies: 249
-- Name: Rubrica_puntaje_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Rubrica_puntaje_id_seq"', 46, true);


--
-- TOC entry 2630 (class 0 OID 37211)
-- Dependencies: 241
-- Data for Name: Rubrica_rubrica; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Rubrica_rubrica" (id, nombre, is_private, fecha_creacion, autor_id, estado_id, evaluacion_id, curso_id, tipo_id) FROM stdin;
7	Rúbrica Avance Proyecto	t	2021-08-16	1	3	15	1	6
8	Rúbrica Autoevaluación Inicial	t	2021-09-11	1	3	17	3	6
\.


--
-- TOC entry 2712 (class 0 OID 0)
-- Dependencies: 240
-- Name: Rubrica_rubrica_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Rubrica_rubrica_id_seq"', 8, true);


--
-- TOC entry 2641 (class 0 OID 37472)
-- Dependencies: 252
-- Data for Name: Rubrica_tipo_rubrica; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Rubrica_tipo_rubrica" (id, nombre) FROM stdin;
1	Cuestionario
2	Lista de Cotejo
3	Prueba
4	Informe
5	Entrevista
6	Autoevaluación
\.


--
-- TOC entry 2713 (class 0 OID 0)
-- Dependencies: 251
-- Name: Rubrica_tipo_rubrica_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Rubrica_tipo_rubrica_id_seq"', 1, false);


--
-- TOC entry 2645 (class 0 OID 44918)
-- Dependencies: 256
-- Data for Name: Rubrica_topico; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Rubrica_topico" (id, nombre, rubrica_id, estado) FROM stdin;
19	Comprende y ejemplifica evaluaciones guiadas a través del concepto de metodologías	7	Sin Definir
20	Generas nuevas ideas que den solución a futuras demandas del medioambiente	7	Sin Definir
21	Aspecto 1	8	Definido
22	Aspecto 2	8	Definido
23	Aspecto 3	8	Definido
\.


--
-- TOC entry 2714 (class 0 OID 0)
-- Dependencies: 255
-- Name: Rubrica_topico_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Rubrica_topico_id_seq"', 23, true);


--
-- TOC entry 2632 (class 0 OID 37219)
-- Dependencies: 243
-- Data for Name: Rubrica_topico_rubricas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Rubrica_topico_rubricas" (id, puntaje_id, rubrica_id, topico_id) FROM stdin;
\.


--
-- TOC entry 2715 (class 0 OID 0)
-- Dependencies: 242
-- Name: Rubrica_topico_rubricas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Rubrica_topico_rubricas_id_seq"', 1, false);


--
-- TOC entry 2583 (class 0 OID 36823)
-- Dependencies: 194
-- Data for Name: Universidad_universidad; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Universidad_universidad" (id, nombre, pais_id) FROM stdin;
1	Pontificia Universidad Católica de Valparaíso	1
\.


--
-- TOC entry 2716 (class 0 OID 0)
-- Dependencies: 193
-- Name: Universidad_universidad_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Universidad_universidad_id_seq"', 1, false);


--
-- TOC entry 2604 (class 0 OID 36991)
-- Dependencies: 215
-- Data for Name: Usuario_alumno; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Usuario_alumno" (rut, nombre, apellido_pat, apellido_mat, mail, telefono, user_id, carrera_id) FROM stdin;
19271880-6	Camilo	Jimenez	Perez	camilo.jimenez.perez@hotmail.com	933111098	1	1
19271880-5	CATALINA PATRICIA	PIZARRO	AGUILERA	catalina.pizarro.a@mail.pucv.cl	\N	1	1
19876895-2	MARIELA CATALINA	MARTINEZ	PASTEN	mariela.martinez.p@mail.pucv.cl	\N	1	1
7340462-2	PATRICIA DEL CARMEN	JORQUERA	PEREZ	patricia.jorquera.p@mail.pucv.cl	\N	1	1
13366157-3	SANDRA RITA	AGUILERA	JORQUERA	sandra.aguilera.j@mail.pucv.cl	\N	1	1
\.


--
-- TOC entry 2606 (class 0 OID 36998)
-- Dependencies: 217
-- Data for Name: Usuario_persona; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Usuario_persona" (id, rut, telefono, foto, tipo_usuario_id, user_id) FROM stdin;
1	\N	\N	\N	2	1
\.


--
-- TOC entry 2717 (class 0 OID 0)
-- Dependencies: 216
-- Name: Usuario_persona_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Usuario_persona_id_seq"', 1, false);


--
-- TOC entry 2608 (class 0 OID 37006)
-- Dependencies: 219
-- Data for Name: Usuario_tipousuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Usuario_tipousuario" (id, nombre) FROM stdin;
1	Administrador
2	Docente
3	Usuario
\.


--
-- TOC entry 2718 (class 0 OID 0)
-- Dependencies: 218
-- Name: Usuario_tipousuario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Usuario_tipousuario_id_seq"', 1, false);


--
-- TOC entry 2595 (class 0 OID 36897)
-- Dependencies: 206
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- TOC entry 2719 (class 0 OID 0)
-- Dependencies: 205
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- TOC entry 2597 (class 0 OID 36907)
-- Dependencies: 208
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- TOC entry 2720 (class 0 OID 0)
-- Dependencies: 207
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- TOC entry 2593 (class 0 OID 36889)
-- Dependencies: 204
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add area	1	add_area
2	Can change area	1	change_area
3	Can delete area	1	delete_area
4	Can view area	1	view_area
5	Can add areas_carreras	2	add_areas_carreras
6	Can change areas_carreras	2	change_areas_carreras
7	Can delete areas_carreras	2	delete_areas_carreras
8	Can view areas_carreras	2	view_areas_carreras
9	Can add carrera	3	add_carrera
10	Can change carrera	3	change_carrera
11	Can delete carrera	3	delete_carrera
12	Can view carrera	3	view_carrera
13	Can add asignatura	4	add_asignatura
14	Can change asignatura	4	change_asignatura
15	Can delete asignatura	4	delete_asignatura
16	Can view asignatura	4	view_asignatura
17	Can add asignatura_alumnos	5	add_asignatura_alumnos
18	Can change asignatura_alumnos	5	change_asignatura_alumnos
19	Can delete asignatura_alumnos	5	delete_asignatura_alumnos
20	Can view asignatura_alumnos	5	view_asignatura_alumnos
21	Can add curso	6	add_curso
22	Can change curso	6	change_curso
23	Can delete curso	6	delete_curso
24	Can view curso	6	view_curso
25	Can add evaluacion	7	add_evaluacion
26	Can change evaluacion	7	change_evaluacion
27	Can delete evaluacion	7	delete_evaluacion
28	Can view evaluacion	7	view_evaluacion
29	Can add evaluacion_alumnos	8	add_evaluacion_alumnos
30	Can change evaluacion_alumnos	8	change_evaluacion_alumnos
31	Can delete evaluacion_alumnos	8	delete_evaluacion_alumnos
32	Can view evaluacion_alumnos	8	view_evaluacion_alumnos
33	Can add grupo_en_ evaluacion	9	add_grupo_en_evaluacion
34	Can change grupo_en_ evaluacion	9	change_grupo_en_evaluacion
35	Can delete grupo_en_ evaluacion	9	delete_grupo_en_evaluacion
36	Can view grupo_en_ evaluacion	9	view_grupo_en_evaluacion
37	Can add tipo_evaluacion	10	add_tipo_evaluacion
38	Can change tipo_evaluacion	10	change_tipo_evaluacion
39	Can delete tipo_evaluacion	10	delete_tipo_evaluacion
40	Can view tipo_evaluacion	10	view_tipo_evaluacion
41	Can add alumno	11	add_alumno
42	Can change alumno	11	change_alumno
43	Can delete alumno	11	delete_alumno
44	Can view alumno	11	view_alumno
45	Can add persona	12	add_persona
46	Can change persona	12	change_persona
47	Can delete persona	12	delete_persona
48	Can view persona	12	view_persona
49	Can add tipo usuario	13	add_tipousuario
50	Can change tipo usuario	13	change_tipousuario
51	Can delete tipo usuario	13	delete_tipousuario
52	Can view tipo usuario	13	view_tipousuario
53	Can add topico	14	add_topico
54	Can change topico	14	change_topico
55	Can delete topico	14	delete_topico
56	Can view topico	14	view_topico
57	Can add universidad	15	add_universidad
58	Can change universidad	15	change_universidad
59	Can delete universidad	15	delete_universidad
60	Can view universidad	15	view_universidad
61	Can add contenido	16	add_contenido
62	Can change contenido	16	change_contenido
63	Can delete contenido	16	delete_contenido
64	Can view contenido	16	view_contenido
65	Can add tipo_contenido	17	add_tipo_contenido
66	Can change tipo_contenido	17	change_tipo_contenido
67	Can delete tipo_contenido	17	delete_tipo_contenido
68	Can view tipo_contenido	17	view_tipo_contenido
69	Can add pais	18	add_pais
70	Can change pais	18	change_pais
71	Can delete pais	18	delete_pais
72	Can view pais	18	view_pais
73	Can add ra	19	add_ra
74	Can change ra	19	change_ra
75	Can delete ra	19	delete_ra
76	Can view ra	19	view_ra
77	Can add estado_rubrica	20	add_estado_rubrica
78	Can change estado_rubrica	20	change_estado_rubrica
79	Can delete estado_rubrica	20	delete_estado_rubrica
80	Can view estado_rubrica	20	view_estado_rubrica
81	Can add rubrica	21	add_rubrica
82	Can change rubrica	21	change_rubrica
83	Can delete rubrica	21	delete_rubrica
84	Can view rubrica	21	view_rubrica
85	Can add topico_rubricas	22	add_topico_rubricas
86	Can change topico_rubricas	22	change_topico_rubricas
87	Can delete topico_rubricas	22	delete_topico_rubricas
88	Can view topico_rubricas	22	view_topico_rubricas
89	Can add log entry	23	add_logentry
90	Can change log entry	23	change_logentry
91	Can delete log entry	23	delete_logentry
92	Can view log entry	23	view_logentry
93	Can add permission	24	add_permission
94	Can change permission	24	change_permission
95	Can delete permission	24	delete_permission
96	Can view permission	24	view_permission
97	Can add group	25	add_group
98	Can change group	25	change_group
99	Can delete group	25	delete_group
100	Can view group	25	view_group
101	Can add user	26	add_user
102	Can change user	26	change_user
103	Can delete user	26	delete_user
104	Can view user	26	view_user
105	Can add content type	27	add_contenttype
106	Can change content type	27	change_contenttype
107	Can delete content type	27	delete_contenttype
108	Can view content type	27	view_contenttype
109	Can add session	28	add_session
110	Can change session	28	change_session
111	Can delete session	28	delete_session
112	Can view session	28	view_session
113	Can add curso_ paralelo	29	add_curso_paralelo
114	Can change curso_ paralelo	29	change_curso_paralelo
115	Can delete curso_ paralelo	29	delete_curso_paralelo
116	Can view curso_ paralelo	29	view_curso_paralelo
117	Can add puntaje	30	add_puntaje
118	Can change puntaje	30	change_puntaje
119	Can delete puntaje	30	delete_puntaje
120	Can view puntaje	30	view_puntaje
121	Can add tipo_rubrica	31	add_tipo_rubrica
122	Can change tipo_rubrica	31	change_tipo_rubrica
123	Can delete tipo_rubrica	31	delete_tipo_rubrica
124	Can view tipo_rubrica	31	view_tipo_rubrica
125	Can add calificacion_aspecto	32	add_calificacion_aspecto
126	Can change calificacion_aspecto	32	change_calificacion_aspecto
127	Can delete calificacion_aspecto	32	delete_calificacion_aspecto
128	Can view calificacion_aspecto	32	view_calificacion_aspecto
129	Can add topico	33	add_topico
130	Can change topico	33	change_topico
131	Can delete topico	33	delete_topico
132	Can view topico	33	view_topico
133	Can add archivo	34	add_archivo
134	Can change archivo	34	change_archivo
135	Can delete archivo	34	delete_archivo
136	Can view archivo	34	view_archivo
137	Can add archivo	35	add_archivo
138	Can change archivo	35	change_archivo
139	Can delete archivo	35	delete_archivo
140	Can view archivo	35	view_archivo
\.


--
-- TOC entry 2721 (class 0 OID 0)
-- Dependencies: 203
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 140, true);


--
-- TOC entry 2599 (class 0 OID 36915)
-- Dependencies: 210
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
13	pbkdf2_sha256$120000$4T1Jn7j4vyPP$n8CQfOa+t6f2FlDkA1S80s7I0l/A9wCt3mLHEtd2tRg=	\N	t	Jorge Ivan	Verschae	Caceres	jorge.verschae.c@mail.pucv.cl	t	t	2021-09-12 02:50:52.932368-03
14	pbkdf2_sha256$120000$gdrNh9WTPuWG$8176PUUBLhetU2LYtEs38iuF2x59+LAooL8Ftun5+jY=	\N	t	Gabriel Alonso	Toro	Guzman	gabriel.toro.g@mail.pucv.cl	t	t	2021-09-12 02:51:16.820017-03
15	pbkdf2_sha256$120000$XS1uoBNuw9aQ$+sPtng3b5xDmTtr4VLWDVMac4ESymik8/Kl0pCcbTAY=	\N	t	Vicente Tomas de Jesus	Salgado	Jadue	vicente.salgado.j@mail.pucv.cl	t	t	2021-09-12 02:51:51.873894-03
16	pbkdf2_sha256$120000$tjVDEoXf569a$Tp3ZwRM3E/nM/OpDMngmc3pASZIAMoTGMWuzkBNt+ew=	\N	t	Roberto Alonso	Concha	Vergara	roberto.concha.v@mail.pucv.cl	t	t	2021-09-12 02:52:18.054098-03
17	pbkdf2_sha256$120000$wikzP9zRxirb$7YWAlrXY7K9HxkimwWz2KfMLJ5bPdKWAWRm0YzXn0Dc=	\N	t	Angie Francisca	Aguilar	Miranda	angie.aguilar.m@mail.pucv.cl	t	t	2021-09-12 02:52:46.400169-03
18	pbkdf2_sha256$120000$HOUq0zBPlogR$JMTJO1GPFBY4wZasgUN0CUmlPgP/NIN3WHtRBwQxVRs=	\N	t	Benjamin Aaron	Frenkel	Silva	benjamin.frenkel.s@mail.pucv.cl	t	t	2021-09-12 02:53:13.82589-03
19	pbkdf2_sha256$120000$VHxCs4jfKllc$9innJqgF7ZkKyEeoZM1uZk8o/PSPT1r2160KppfUlv4=	\N	t	Matias Arturo	Morales	Mendez	matias.morales.m@mail.pucv.cl	t	t	2021-09-12 02:53:48.370677-03
1	pbkdf2_sha256$120000$X4ZOBZHQH01c$9y6KS2MhtG8aeaCJjpBtT1DOP+Uaw4GXuWMFt546LqY=	2021-09-10 23:28:42.925214-03	t	Camilo			camilo.pizarro.a@mail.pucv.cl	t	t	2021-08-05 20:28:59.712089-04
68	pbkdf2_sha256$120000$heT3VcqbXijF$NfsDcZCaEY2FZwzL2zpwQRvSDYooBKENV5c4TSEv/FI=	\N	t	Diego Tomas	Muñoz	Muñoz	diego.munoz.m02@mail.pucv.cl	t	t	2021-09-12 12:14:38.525636-03
2	pbkdf2_sha256$120000$IaHaEs7APPov$qIcYmlvTgDiUFq4g+BedzU+onXf+rtM6CMhfs66x3IM=	\N	t	Felipe Antonio	Soto 	Guerrero	felipe.a.soto.g@gmail.com	t	t	2021-09-12 02:35:35.599025-03
3	pbkdf2_sha256$120000$Z7nPl6unaL74$mgyzaWHkXIbCN/2ZCpMtkwyzJZXxqTWkon3ALnxFkec=	\N	t	Pablo Andres	Acuña	Ramirez	pablo.acuna.r@mail.pucv.cl	t	t	2021-09-12 02:36:00.135743-03
4	pbkdf2_sha256$120000$SVtI896loXgU$Sg+XPUs/5LmK+26kkSs6k9M/SKs3WcGA2idTZ+IhVNs=	\N	t	Gonzalo Esteban	Escobar	Leon	g.leonesteban@gmail.com	t	t	2021-09-12 02:37:05.651065-03
5	pbkdf2_sha256$120000$1D4T0l3OjxZQ$5JyPgTp4r95dmA5jmqQVPHCDM5ttQ1FL8lA9GxhpsHI=	\N	t	Jesus Ignacio	Cadiz	Fernandez	cadiz_jesus@yahoo.com	t	t	2021-09-12 02:37:30.388048-03
6	pbkdf2_sha256$120000$5bMBZ6oyUNKH$RpeP56nz2mASqmD5ehvvw5kyVUn7Nx2Nh7iwL87K8ss=	\N	t	Matias Alejandro	Martinez	Olea	mati.dh.energy@gmail.com	t	t	2021-09-12 02:38:02.775966-03
65	pbkdf2_sha256$120000$izTLXbExkPId$DBx9jbG1WcBIgr+u1Dch4biMjuoOLg9VD2hrW788r/o=	\N	t	Sebastian Alejandro	Lillo	Acosta	sebastian.lillo.a@mail.pucv.cl	t	t	2021-09-12 12:13:04.589632-03
71	pbkdf2_sha256$120000$LQtRrszV9hKE$1dZT6IeAr7EX+ONrDa/WvuTVbp8aTsMZF/Mx14jjFOg=	\N	t	Francisco Javier	Briceño	Alfaro	francisco.briceno.a@mail.pucv.cl	t	t	2021-09-12 12:16:38.098616-03
74	pbkdf2_sha256$120000$XdvTXKQz89XF$FJr/vOS9/OYp/G33Bx6CeGKKteKZ85wRWMv5+L60koc=	\N	t	Flavio Renato	Olavarria	Learrasca	reno.olavarria@gmail.com	t	t	2021-09-12 12:18:20.844935-03
20	pbkdf2_sha256$120000$exU05JB2sroM$g0G3sFapxb2PMLe9cYdDiGp+oNb2rKgKHdNyDuO0G8g=	\N	t	Rodrigo Joaquin Ignacio	Ordenes	Arce	rodrigo.ordenes.a@mail.pucv.cl	t	t	2021-09-12 02:54:31.381009-03
7	pbkdf2_sha256$120000$w5TsC1pg4O0M$5pOp5ANxhnagN/4W3pV/sFWW4L3feDbEtGWD4nUpTME=	\N	f	Jean Luka	Charnay	Parra	jeanlchp@gmail.com	f	t	2021-09-12 02:43:57-03
8	pbkdf2_sha256$120000$aptHSryU9w9O$vNf+/stQIAzeSLhuiQbvl8kbK9x7rPBeCDIWE3G5a1E=	\N	t	Nicolas Ignacio	Vargas	Tapia	vargastapianicolas@gmail.com	t	t	2021-09-12 02:44:25.403235-03
9	pbkdf2_sha256$120000$79DlQV8LyXJR$9shBgvNxldQ1V934OAodHaUwdEUXcBFYvU2hCd/tAFQ=	\N	t	Patricio Matias	Mardones	Galvez	pmardonesg@hotmail.com	t	t	2021-09-12 02:44:55.756019-03
10	pbkdf2_sha256$120000$d7GSHCg6Ormh$A6TFbzfxVDbyloXKmIMXC5bGfWlRvXyd3m2+22PcYdc=	\N	t	Kevin Luis	Alarcon	Baltazar	kevin.alarcon.b@mail.pucv.cl	t	t	2021-09-12 02:45:26.350847-03
11	pbkdf2_sha256$120000$YBeeifgfH14E$4cw+1CW8m+OcniusSUuFQ2OpHGAwyhS7naGZi8gKUbk=	\N	t	Javier Fernando	Souza	Vidal	javier.souza.v@mail.pucv.cl	t	t	2021-09-12 02:49:39.437352-03
12	pbkdf2_sha256$120000$TTUcmPCkClnB$1xgZAHSctLHqXHBjDDYTMyw+kJ3NmAPUPQ2Sm/pA5uw=	\N	t	Nicolas Hanns	Espinoza	Waltemath	nicolas.espinoza.w@mail.pucv.cl	t	t	2021-09-12 02:50:19.949043-03
21	pbkdf2_sha256$120000$8fmsrhy3pOu0$fsUqmCOA3/6jrMQUGp/ySbUYQ6EorQoi9aRw/oEN9Fo=	\N	t	Ariel Francisco	Piña	Catalan	ariel.pina.c@mail.pucv.cl	t	t	2021-09-12 02:54:52.141161-03
22	pbkdf2_sha256$120000$7q8ifl7ANidh$a9P6c8XyWzC7h+5J/WXCKIzYfKeuhBTtWJ92v/s+NLQ=	\N	t	Benjamin Patricio	Lopez	Cortes	benjamin.lopez.c@mail.pucv.cl	t	t	2021-09-12 02:59:32.604551-03
23	pbkdf2_sha256$120000$69BgcLPacPyC$lrsf3TBJ+fNs+yGpnAgYb3qOHfjsXnEO0Cc1qJQnj5M=	\N	t	Cristian Felipe	Bernal	Salinas	bernal.tatann@gmail.com	t	t	2021-09-12 03:00:08.764575-03
24	pbkdf2_sha256$120000$LZMhfqoleMnW$AvhdHqfwSHYBrwoTYasO0aKMTXh0bQQWahwSUmlLLYs=	\N	t	Etienne Stephanie	Bellenger	Herrera	etienne.bellenger@gmail.com	t	t	2021-09-12 03:00:43.633947-03
25	pbkdf2_sha256$120000$y7uBWKPmQjbS$b9T0U57K0yWrTG6jZvmdrysKZy2m0wrP6N6IQa2WL4I=	\N	t	Cesar Eduardo	Gordon	Muena	cesar.gordon.m@mail.pucv.cl	t	t	2021-09-12 03:01:07.441757-03
26	pbkdf2_sha256$120000$cNHvPSyULoSA$1XBM9kKcgnPRGQeEUG9s2hh56ZScrSG4Zm635kFSaTk=	\N	t	Alberto Esteban	Aguilera	Luengo	albert16692a@gmail.com	t	t	2021-09-12 03:01:39.258257-03
27	pbkdf2_sha256$120000$TCnSlwEzpXr9$LUt4G/JbZf1emXnkoyjut6qBKpbBa5KjWT2stDZA0VI=	\N	t	Diego Francisco	Araya	Valencia	diegofaraya1@hotmail.com	t	t	2021-09-12 03:02:07.038825-03
28	pbkdf2_sha256$120000$AxNXaphg0nUd$kQ+PZlrRhUcMYd/4yrWutf0wj9z0k7nuxUbaxPE9vFI=	\N	t	Alejandro Esteban	Lobos	Arenas	alejandro.lobos.a@mail.pucv.cl	t	t	2021-09-12 03:02:30.782685-03
29	pbkdf2_sha256$120000$289pofVaBAVZ$W+Pvfa2crVXX6qFs72dfwJiOkyopUzZ6RqT5ojVw3sU=	\N	t	Michael David Humberto	Vilches	Cortes	michael.vilches.c@mail.pucv.cl	t	t	2021-09-12 03:02:58.602833-03
30	pbkdf2_sha256$120000$GrIg4yNEmEBh$4efECEnLBB3WykQyXzp+Js1oYsWis4bjWpg9kFBZn64=	\N	t	Francisco Martin	Flores	Fernandez	francisco.flores.f@mail.pucv.cl	t	t	2021-09-12 03:03:28.35872-03
31	pbkdf2_sha256$120000$B6ao9CXOgiEF$ITISW0GrVAjK2Y2FmZcL5Z5/POX0XH4kjei4Qf0hE/g=	\N	t	Jorge Nicolas	Guzman	Cura	jorge.guzman.c@mail.pucv.cl	t	t	2021-09-12 03:03:56.569905-03
32	pbkdf2_sha256$120000$A038t69bS2B2$2wFIOQyaKj/zxrofkQXiUyjsqcZTD0+fT9emLkCGyeY=	\N	t	Patricio Alejandro	Labra	Verdugo	patricio.labra827@gmail.com	t	t	2021-09-12 03:04:31.692301-03
34	pbkdf2_sha256$120000$ZCaLWfOcCX2C$CKhqbAPQSjZW0/jP59JVW493nSYO/cori5V6wCnYWHo=	\N	t	Diego Nicolas	Baeza	Garcia	DBaezaG09@hotmail.com	t	t	2021-09-12 11:45:22.769074-03
35	pbkdf2_sha256$120000$21CKQAhK4Tbp$9GujrLBHnEB1z0RDVQE5ehXG9chEu38lrcopRq3uOw4=	\N	t	Patricio Antonio	Barra	Reyes	patricio.barra.r@mail.pucv.cl	t	t	2021-09-12 11:46:30.753448-03
36	pbkdf2_sha256$120000$iXXE2bEe21dY$Gmf2c3xTlvVjRNrrIXnrXT9xjy3GPtibagQ88t575eE=	\N	t	Ivan Dan	Santos	Vila	ivan.santos.v@mail.pucv.cl	t	t	2021-09-12 11:47:03.353997-03
37	pbkdf2_sha256$120000$ZcGUtFuQ863H$Zd5UcnDP4Lv+dtH6gp8cCSrC/2w/ckF3p04Ygh0GY+U=	\N	t	Ignacio Andres	Valdebenito	Caceres	ignacio.valdebenito.c@mail.pucv.cl	t	t	2021-09-12 11:47:40.396978-03
38	pbkdf2_sha256$120000$rqC5F4iAZFpy$yurzAKmeRuQZjg6NUrf+KDIf5nUj7thoXtRsXiwEYWI=	\N	t	Maria Gabriela	Castro	Almendra	maria.castro.a@mail.pucv.cl	t	t	2021-09-12 11:48:11.058401-03
39	pbkdf2_sha256$120000$sRwora46QJQB$rw6ry/vjm+pkL2/gD5i6ss6wlyRNXXfD+W8Bl5AxQzQ=	\N	t	Bastian Ramiro	Jeria	Vergara	bastian.jeria.v@mail.pucv.cl	t	t	2021-09-12 11:49:10.186979-03
40	pbkdf2_sha256$120000$YkwTPXqtJ1Vp$EVtsWwBsXA8trpFdh3BzrCuRTsBWqzrM1RSFwD9yEvc=	\N	t	Benjamin Felipe	Morales	Ortiz	benjamin.morales.o@mail.pucv.cl	t	t	2021-09-12 11:50:36.971312-03
41	pbkdf2_sha256$120000$LFDXLMfTLfZn$vSEAFvzllPhlbp3IR7N4oGsln5G89vwAR/emMqv7pv4=	\N	t	Francisca Edulia	Jerez	Cerda	francisca.jerez.c@mail.pucv.cl	t	t	2021-09-12 11:51:06.331262-03
42	pbkdf2_sha256$120000$yPi1teFs0ezp$YaO7vPa37acN25N9DMx4j/orQ6ZwLJXK2ajZHChmrBI=	\N	t	Karina Noemi	Matamala	Palta	karina.matamala.p@mail.pucv.cl	t	t	2021-09-12 11:51:36.134107-03
43	pbkdf2_sha256$120000$qDPsuvuAkPRE$ZdEj/eWSEPmHXqWW8lA4lNyyXEsPwSl6SywHeyYm16Y=	\N	t	Cristobal Benjamin	Soto	Pizarro	cristobal.soto.p@mail.pucv.cl	t	t	2021-09-12 11:52:04.913362-03
44	pbkdf2_sha256$120000$Phy6S015gfZI$fk3n5OKVWriTwafH1v9fw4b9LG4AN3s1pOb49RRVGV0=	\N	t	Leandro Adan	Maureira	Lopez	leandro.maureira.l@mail.pucv.cl	t	t	2021-09-12 11:52:45.449307-03
45	pbkdf2_sha256$120000$6eaVweppBPhw$Q2uWPDXQmPsIlIyVj2tM4nDGEbH47mESOci2GNqDoD4=	\N	t	Josefina Daniela	Castellon	Bobillier	josefina.castellon.b@mail.pucv.cl	t	t	2021-09-12 11:53:21.967535-03
66	pbkdf2_sha256$120000$h1dapjgeWyuN$YJg3UAiOWkIUSP1X/40cakwGtYv2y0iJHiq6CPNuQl0=	\N	t	Felipe Antonio1	Barja	Carcamo	felipe.barja.c@mail.pucv.cl	t	t	2021-09-12 12:13:45.869208-03
69	pbkdf2_sha256$120000$jzJQpiCK8x9t$SO4xC1Kt/cF2xyVH6TJ4Z5rO3N/9BCz0VWlX2Fp1XlQ=	\N	t	Diego Antonio	Catalan	Marchese	diego.catalan.m@mail.pucv.cl	t	t	2021-09-12 12:15:36.178913-03
47	pbkdf2_sha256$120000$Ph19zIBJytnY$I9fnec8ishZi9yB9MqKwQTyEaJwFVzsLRliHjHXlYpQ=	\N	t	Matias Mario Andres	Diaz	Concha	matiasdiaz85@gmail.com	t	t	2021-09-12 11:58:03.3369-03
72	pbkdf2_sha256$120000$TLiqGlIfAo0W$nmR7KwKYSZOLtylEBEH1axAF6qHPAnHDukQnI0Cu2+o=	\N	t	Carlos Alberto	Mendez	Guzman	carlos.mendez.g01@mail.pucv.cl	t	t	2021-09-12 12:17:11.523198-03
75	pbkdf2_sha256$120000$dVYJGDhCmwvh$Y7LYtO3ulcAK6Dnwy2SWkl+CSm/U38V7SPZdhWN6jk0=	\N	t	Tomas Esteban	Rojas	La luz	tomas.rojas.l01@mail.pucv.cl	t	t	2021-09-12 12:18:49.093086-03
48	pbkdf2_sha256$120000$Xm6Exh9QTSjQ$7N6s84CncpWzavQEvakZbWEKdNQ+lMnczJK0wFnpyJs=	\N	t	Benjamin Ignacio	Vial	Hermann	benjamin.vial.h@mail.pucv.cl	t	t	2021-09-12 11:58:43.521407-03
54	pbkdf2_sha256$120000$OsX0IQBVjREy$TEkkCfMa0HWD6ZIiu/SOMoePN3wXHU8d24eKahyuSak=	\N	t	Sebastian Andres	Cataldo	Smith	sebastian.cataldo.s@mail.pucv.cl	t	t	2021-09-12 12:02:22.329796-03
46	pbkdf2_sha256$120000$g386mhHx9y1f$DFAmJrIyN6r786eXAmArbYxg9xPu1v8wvlcMnaZU7/c=	\N	t	Karina Andre	Rozas	Romo	karina.rozas.r@mail.pucv.cl	t	t	2021-09-12 11:57:36.917746-03
49	pbkdf2_sha256$120000$kY4xH508QmLP$AT6rsknPb5hh1zeuneshHnunuufzdZQXot74g66eM9Y=	\N	t	Roberto Cristobal	Isla	Henriquez	roberto.isla.h@mail.pucv.cl	t	t	2021-09-12 11:59:05.024761-03
50	pbkdf2_sha256$120000$uoqxh7lcqlIl$ApDmh5JrwwZG9NIhpcLWN9PY691gMbLJG6/9eYfs/tI=	\N	t	Rafael Alejandro	Lema	Vega	rafael.lema.v@mail.pucv.cl	t	t	2021-09-12 11:59:40.720189-03
51	pbkdf2_sha256$120000$GKNGRjBCryKF$aOAaTGZQRihmUc5VT71PUYiWZvHNvBDwJxTLRHV0zpk=	\N	t	Matias Nicolas Leandro	Salinas	Brito	matias.salinas.b@mail.pucv.cl	t	t	2021-09-12 12:00:27.280381-03
52	pbkdf2_sha256$120000$vmS3Fj7nfJL0$JawpXAYvSgJUVMtdoTg12w90+bF3a86URMS7a3hyccU=	\N	t	Nicolas Fernando	Poblete	Alvial	nicolaspobletealvial@gmail.com	t	t	2021-09-12 12:01:01.951447-03
53	pbkdf2_sha256$120000$zdhtCKM7dlfg$2PxTfq9PiLAb/9naAz09pMze0p70bbHMh/q0HOpNIQ8=	\N	t	Pedro Ignacio	Basualto	Leon	pedro.basualto.l@mail.pucv.cl	t	t	2021-09-12 12:01:39.649749-03
55	pbkdf2_sha256$120000$MQSefh3W3UAO$JPI75Nek4/s1/eon5+WXf8IfuYel4EhrTetDzDS6sQE=	\N	t	Luis Felipe	Gonzalez	Riquelme	luis.gonzalez.r01@mail.pucv.cl	t	t	2021-09-12 12:03:24.00229-03
56	pbkdf2_sha256$120000$RzzEMcd8xSdn$90zuBYaQQyzTssiUbt5GSJSabZOWWk/uOXJAYS9I89A=	\N	t	Sergio Felipe	Tapia	Ortiz	sergio.tapia.o@mail.pucv.cl	t	t	2021-09-12 12:03:57.030614-03
57	pbkdf2_sha256$120000$lWlmHkoqLgZ4$z6MeldxuV2S/v0eWbNCT+mowC1HcKEMVw2TS1uXrX4Y=	\N	t	Eduardo Andres	Gutierrez	Cerpa	eduardo.gutierrez.c@mail.pucv.cl	t	t	2021-09-12 12:04:26.06036-03
58	pbkdf2_sha256$120000$JA0rNPE8yfcl$983u5vNf5WBfUhYzekulJ//jNT3CJKwkQPMjlEz3WZk=	\N	t	Jorge Carlos	Contreras	Jara	jorge.contreras.j@mail.pucv.cl	t	t	2021-09-12 12:04:50.447701-03
59	pbkdf2_sha256$120000$aUefPJEW96zT$wY9vr6slk/q89PLPyPD+d6VhX9qR5wpj3Z34NdakOhs=	\N	t	Benjamin Alejandro	Ramos	Tapia	benjamin.ramos.t@mail.pucv.cl	t	t	2021-09-12 12:05:59.685896-03
60	pbkdf2_sha256$120000$LkkIFx8Y0wi9$5S5GkiIBMOCO5oemMMXx2GJ0w80oDx7RcL0CNh1hQY4=	\N	t	Felipe Gabriel	Inostroza	Ordenes	felipe.inostroza.o01@mail.pucv.cl	t	t	2021-09-12 12:06:27.066054-03
61	pbkdf2_sha256$120000$E7YIdlVUAWZS$i9a7kwelS5OOtGl1EQ/De2HGj2auDPBG2B8waXP3DFQ=	\N	t	Pablo Alberto Arturo	Osses	Bruno	pablo.osses2@gmail.com	t	t	2021-09-12 12:06:56.646297-03
62	pbkdf2_sha256$120000$Hg4dZwot56rR$edc7lbQHJe0MPFtQ9CdHfQH+UDOgpAZQh9aTI4BlK38=	\N	t	Manuel Fernando	Encina	Muñoz	ocich93@gmail.com	t	t	2021-09-12 12:07:24.786727-03
63	pbkdf2_sha256$120000$o0RC6v4Ma314$qClJagrsEJ09J+d6QOrn7xe9TXlvbeWXNVKsQ9cpdIk=	\N	t	Josefa Olga	Martinez	Alvarez	josefa.martinez.a@mail.pucv.cl	t	t	2021-09-12 12:07:54.771584-03
64	pbkdf2_sha256$120000$GKr8JO29gqqs$KC4j7JdFl1Bx+YvJeT8tRYLPNmzPiZgf57C2NUGZH5k=	\N	t	Ignacio Alberto	Montenegro	Guerra	ignacio.montentegro.g@mail.pucv.cl	t	t	2021-09-12 12:08:20.762593-03
67	pbkdf2_sha256$120000$VxHp100N81mB$jePaiA2yhW40mVn459GRE3g6YxH/Cna6ZZzsEUYwwF0=	\N	t	Diana Paola	Moraga	Prado	diana.moraga.p@mail.pucv.cl	t	t	2021-09-12 12:14:05.783856-03
70	pbkdf2_sha256$120000$XwZkUDg33kgp$sqXNTw5pw9Ggag9yMSh6xxsZER4AsKsNsd3FU6skrmM=	\N	t	Andres Ignacio	Matamala	Schafer	andres.matamala12@gmail.com	t	t	2021-09-12 12:16:10.382931-03
73	pbkdf2_sha256$120000$tsw1A3yYvSPS$moUThKWawjnkUbcvXHS7T/vViMdv6+U7MkgD0d0RWjY=	\N	t	Oscar Ignacio	Belda	Collado	oscar.belda.c@mail.pucv.cl	t	t	2021-09-12 12:17:36.578574-03
\.


--
-- TOC entry 2601 (class 0 OID 36925)
-- Dependencies: 212
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- TOC entry 2722 (class 0 OID 0)
-- Dependencies: 211
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- TOC entry 2723 (class 0 OID 0)
-- Dependencies: 209
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 75, true);


--
-- TOC entry 2603 (class 0 OID 36933)
-- Dependencies: 214
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- TOC entry 2724 (class 0 OID 0)
-- Dependencies: 213
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 2634 (class 0 OID 37257)
-- Dependencies: 245
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2021-08-16 21:28:22.437079-04	3	plantillas/2021/08/16/plantilla-subir-listado-alumnos5585309494324.xlsx	1	[{"added": {}}]	34	1
2	2021-08-16 21:30:03.975663-04	3	plantillas/2021/08/16/plantilla-subir-listado-alumnos5585309494324.xlsx	3		34	1
3	2021-08-16 21:30:03.980674-04	2		3		34	1
4	2021-09-12 02:47:40.497729-03	7	Jean	2	[{"changed": {"fields": ["first_name", "last_name", "is_staff", "is_superuser"]}}]	26	1
\.


--
-- TOC entry 2725 (class 0 OID 0)
-- Dependencies: 244
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 4, true);


--
-- TOC entry 2591 (class 0 OID 36879)
-- Dependencies: 202
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	Area	area
2	Area	areas_carreras
3	Carrera	carrera
4	Curso	asignatura
5	Curso	asignatura_alumnos
6	Curso	curso
7	Curso	evaluacion
8	Curso	evaluacion_alumnos
9	Curso	grupo_en_evaluacion
10	Curso	tipo_evaluacion
11	Usuario	alumno
12	Usuario	persona
13	Usuario	tipousuario
14	Tema	topico
15	Universidad	universidad
16	Actividad	contenido
17	Actividad	tipo_contenido
18	Pais	pais
19	RA	ra
20	Rubrica	estado_rubrica
21	Rubrica	rubrica
22	Rubrica	topico_rubricas
23	admin	logentry
24	auth	permission
25	auth	group
26	auth	user
27	contenttypes	contenttype
28	sessions	session
29	Curso	curso_paralelo
30	Rubrica	puntaje
31	Rubrica	tipo_rubrica
32	Rubrica	calificacion_aspecto
33	Rubrica	topico
34	Usuario	archivo
35	Curso	archivo
\.


--
-- TOC entry 2726 (class 0 OID 0)
-- Dependencies: 201
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 35, true);


--
-- TOC entry 2575 (class 0 OID 36782)
-- Dependencies: 186
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	Actividad	0001_initial	2021-08-05 20:27:45.951968-04
2	Pais	0001_initial	2021-08-05 20:27:45.964349-04
3	Universidad	0001_initial	2021-08-05 20:27:45.989865-04
4	Carrera	0001_initial	2021-08-05 20:27:46.000649-04
5	Area	0001_initial	2021-08-05 20:27:46.052322-04
6	contenttypes	0001_initial	2021-08-05 20:27:46.072111-04
7	auth	0001_initial	2021-08-05 20:27:46.180876-04
8	Usuario	0001_initial	2021-08-05 20:27:46.244421-04
9	Curso	0001_initial	2021-08-05 20:27:46.562361-04
10	RA	0001_initial	2021-08-05 20:27:46.602123-04
11	Tema	0001_initial	2021-08-05 20:27:46.613931-04
12	Rubrica	0001_initial	2021-08-05 20:27:46.742552-04
13	admin	0001_initial	2021-08-05 20:27:46.794912-04
14	admin	0002_logentry_remove_auto_add	2021-08-05 20:27:46.820475-04
15	admin	0003_logentry_add_action_flag_choices	2021-08-05 20:27:46.839974-04
16	contenttypes	0002_remove_content_type_name	2021-08-05 20:27:46.893958-04
17	auth	0002_alter_permission_name_max_length	2021-08-05 20:27:46.901935-04
18	auth	0003_alter_user_email_max_length	2021-08-05 20:27:46.923701-04
19	auth	0004_alter_user_username_opts	2021-08-05 20:27:46.94678-04
20	auth	0005_alter_user_last_login_null	2021-08-05 20:27:46.962351-04
21	auth	0006_require_contenttypes_0002	2021-08-05 20:27:46.970357-04
22	auth	0007_alter_validators_add_error_messages	2021-08-05 20:27:46.992559-04
23	auth	0008_alter_user_username_max_length	2021-08-05 20:27:47.020919-04
24	auth	0009_alter_user_last_name_max_length	2021-08-05 20:27:47.032469-04
25	sessions	0001_initial	2021-08-05 20:27:47.06031-04
26	Curso	0002_auto_20210805_2039	2021-08-05 20:39:29.287455-04
27	Curso	0003_auto_20210805_2100	2021-08-05 21:00:29.586272-04
28	Curso	0004_auto_20210805_2120	2021-08-05 21:21:00.797174-04
29	Usuario	0002_alumno_user	2021-08-05 23:50:01.635789-04
30	Usuario	0003_alumno_carrera	2021-08-05 23:52:21.893932-04
31	RA	0002_ra_autor	2021-08-09 20:53:32.210535-04
32	RA	0003_auto_20210809_2056	2021-08-09 20:56:15.331367-04
33	RA	0004_auto_20210809_2057	2021-08-09 20:57:25.40208-04
34	Rubrica	0002_rubrica_curso	2021-08-10 19:25:41.242992-04
35	Rubrica	0003_auto_20210810_1931	2021-08-10 19:32:04.834527-04
36	Rubrica	0004_auto_20210810_2056	2021-08-10 20:56:57.49697-04
37	Rubrica	0005_auto_20210810_2058	2021-08-10 20:58:18.128621-04
38	Rubrica	0006_auto_20210810_2218	2021-08-10 22:18:07.274141-04
39	Rubrica	0007_auto_20210811_1802	2021-08-11 18:02:19.11838-04
40	Rubrica	0008_auto_20210811_1808	2021-08-11 18:08:50.546568-04
41	Rubrica	0009_puntaje_rubrica	2021-08-11 18:13:38.55812-04
42	Rubrica	0010_auto_20210811_2008	2021-08-11 20:08:30.238438-04
43	Rubrica	0011_auto_20210811_2026	2021-08-11 20:26:28.108411-04
44	Rubrica	0012_auto_20210811_2051	2021-08-11 20:52:00.055172-04
45	Tema	0002_delete_topico	2021-08-11 20:52:00.070784-04
46	Rubrica	0013_puntaje_topico	2021-08-11 22:32:11.49252-04
47	Usuario	0004_archivo	2021-08-16 16:48:24.401765-04
48	Curso	0005_archivo	2021-08-16 21:46:16.758762-04
49	Rubrica	0014_auto_20210827_0014	2021-08-27 00:14:50.607238-04
50	Rubrica	0015_topico_estado	2021-09-11 01:22:12.363656-03
51	Rubrica	0016_calificacion_aspecto_flag	2021-09-11 02:49:05.693234-03
\.


--
-- TOC entry 2727 (class 0 OID 0)
-- Dependencies: 185
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 51, true);


--
-- TOC entry 2635 (class 0 OID 37285)
-- Dependencies: 246
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
qu14cfbs4rf130b2j3pc02t801uajyyx	M2I5MWUyZmM4ZjBkMjVjNDA1ZTdmMTIzYjU3NGFkNDkyYzUzYWI0Zjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjQwYmNkM2ZhMTRmNGU1MTA1Y2Q3YjI5MjVmNDc2YThkZjBlMjI2In0=	2021-08-19 20:31:31.311306-04
ebha9hjwgff9far3ny2mmz466af0xsib	M2I5MWUyZmM4ZjBkMjVjNDA1ZTdmMTIzYjU3NGFkNDkyYzUzYWI0Zjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjQwYmNkM2ZhMTRmNGU1MTA1Y2Q3YjI5MjVmNDc2YThkZjBlMjI2In0=	2021-08-28 22:15:17.484762-04
7xhgex9z6wd8vk07q9gv3zohm9dyhrrv	M2I5MWUyZmM4ZjBkMjVjNDA1ZTdmMTIzYjU3NGFkNDkyYzUzYWI0Zjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjQwYmNkM2ZhMTRmNGU1MTA1Y2Q3YjI5MjVmNDc2YThkZjBlMjI2In0=	2021-09-13 19:26:48.28895-03
ulk5nebdq0sgtp4wbebhbppunen7yucl	M2I5MWUyZmM4ZjBkMjVjNDA1ZTdmMTIzYjU3NGFkNDkyYzUzYWI0Zjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjQwYmNkM2ZhMTRmNGU1MTA1Y2Q3YjI5MjVmNDc2YThkZjBlMjI2In0=	2021-09-17 22:27:35.313957-03
ta2bsfuknbvk6bics25g30b2yjch145a	M2I5MWUyZmM4ZjBkMjVjNDA1ZTdmMTIzYjU3NGFkNDkyYzUzYWI0Zjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjQwYmNkM2ZhMTRmNGU1MTA1Y2Q3YjI5MjVmNDc2YThkZjBlMjI2In0=	2021-09-23 16:44:54.323829-03
1sm3622osh0n68y1x3l0ef65l1pbrb9g	M2I5MWUyZmM4ZjBkMjVjNDA1ZTdmMTIzYjU3NGFkNDkyYzUzYWI0Zjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjQwYmNkM2ZhMTRmNGU1MTA1Y2Q3YjI5MjVmNDc2YThkZjBlMjI2In0=	2021-09-24 23:28:42.933213-03
\.


--
-- TOC entry 2263 (class 2606 OID 36798)
-- Name: Actividad_contenido Actividad_contenido_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Actividad_contenido"
    ADD CONSTRAINT "Actividad_contenido_pkey" PRIMARY KEY (id);


--
-- TOC entry 2266 (class 2606 OID 36806)
-- Name: Actividad_tipo_contenido Actividad_tipo_contenido_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Actividad_tipo_contenido"
    ADD CONSTRAINT "Actividad_tipo_contenido_pkey" PRIMARY KEY (id);


--
-- TOC entry 2276 (class 2606 OID 36856)
-- Name: Area_area Area_area_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Area_area"
    ADD CONSTRAINT "Area_area_pkey" PRIMARY KEY (id);


--
-- TOC entry 2280 (class 2606 OID 36864)
-- Name: Area_areas_carreras Area_areas_carreras_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Area_areas_carreras"
    ADD CONSTRAINT "Area_areas_carreras_pkey" PRIMARY KEY (id);


--
-- TOC entry 2273 (class 2606 OID 36842)
-- Name: Carrera_carrera Carrera_carrera_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Carrera_carrera"
    ADD CONSTRAINT "Carrera_carrera_pkey" PRIMARY KEY (id);


--
-- TOC entry 2408 (class 2606 OID 45067)
-- Name: Curso_archivo Curso_archivo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_archivo"
    ADD CONSTRAINT "Curso_archivo_pkey" PRIMARY KEY (id);


--
-- TOC entry 2339 (class 2606 OID 37041)
-- Name: Curso_asignatura_alumnos Curso_asignatura_alumnos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_asignatura_alumnos"
    ADD CONSTRAINT "Curso_asignatura_alumnos_pkey" PRIMARY KEY (id);


--
-- TOC entry 2333 (class 2606 OID 37033)
-- Name: Curso_asignatura Curso_asignatura_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_asignatura"
    ADD CONSTRAINT "Curso_asignatura_pkey" PRIMARY KEY (id);


--
-- TOC entry 2393 (class 2606 OID 37318)
-- Name: Curso_curso_paralelo Curso_curso_paralelo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_curso_paralelo"
    ADD CONSTRAINT "Curso_curso_paralelo_pkey" PRIMARY KEY (id);


--
-- TOC entry 2343 (class 2606 OID 37049)
-- Name: Curso_curso Curso_curso_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_curso"
    ADD CONSTRAINT "Curso_curso_pkey" PRIMARY KEY (id);


--
-- TOC entry 2353 (class 2606 OID 37065)
-- Name: Curso_evaluacion_alumnos Curso_evaluacion_alumnos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_evaluacion_alumnos"
    ADD CONSTRAINT "Curso_evaluacion_alumnos_pkey" PRIMARY KEY (id);


--
-- TOC entry 2347 (class 2606 OID 37057)
-- Name: Curso_evaluacion Curso_evaluacion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_evaluacion"
    ADD CONSTRAINT "Curso_evaluacion_pkey" PRIMARY KEY (id);


--
-- TOC entry 2358 (class 2606 OID 37151)
-- Name: Curso_grupo_en_evaluacion_alumno Curso_grupo_en_evaluacio_grupo_en_evaluacion_id_a_abcaaf67_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_grupo_en_evaluacion_alumno"
    ADD CONSTRAINT "Curso_grupo_en_evaluacio_grupo_en_evaluacion_id_a_abcaaf67_uniq" UNIQUE (grupo_en_evaluacion_id, alumno_id);


--
-- TOC entry 2363 (class 2606 OID 37081)
-- Name: Curso_grupo_en_evaluacion_alumno Curso_grupo_en_evaluacion_alumno_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_grupo_en_evaluacion_alumno"
    ADD CONSTRAINT "Curso_grupo_en_evaluacion_alumno_pkey" PRIMARY KEY (id);


--
-- TOC entry 2356 (class 2606 OID 37073)
-- Name: Curso_grupo_en_evaluacion Curso_grupo_en_evaluacion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_grupo_en_evaluacion"
    ADD CONSTRAINT "Curso_grupo_en_evaluacion_pkey" PRIMARY KEY (id);


--
-- TOC entry 2365 (class 2606 OID 37089)
-- Name: Curso_tipo_evaluacion Curso_tipo_evaluacion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_tipo_evaluacion"
    ADD CONSTRAINT "Curso_tipo_evaluacion_pkey" PRIMARY KEY (id);


--
-- TOC entry 2268 (class 2606 OID 36820)
-- Name: Pais_pais Pais_pais_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Pais_pais"
    ADD CONSTRAINT "Pais_pais_pkey" PRIMARY KEY (id);


--
-- TOC entry 2369 (class 2606 OID 37186)
-- Name: RA_ra RA_ra_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RA_ra"
    ADD CONSTRAINT "RA_ra_pkey" PRIMARY KEY (id);


--
-- TOC entry 2402 (class 2606 OID 44909)
-- Name: Rubrica_calificacion_aspecto Rubrica_calificacion_aspecto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_calificacion_aspecto"
    ADD CONSTRAINT "Rubrica_calificacion_aspecto_pkey" PRIMARY KEY (id);


--
-- TOC entry 2371 (class 2606 OID 37208)
-- Name: Rubrica_estado_rubrica Rubrica_estado_rubrica_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_estado_rubrica"
    ADD CONSTRAINT "Rubrica_estado_rubrica_pkey" PRIMARY KEY (id);


--
-- TOC entry 2396 (class 2606 OID 37371)
-- Name: Rubrica_puntaje Rubrica_puntaje_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_puntaje"
    ADD CONSTRAINT "Rubrica_puntaje_pkey" PRIMARY KEY (id);


--
-- TOC entry 2377 (class 2606 OID 37216)
-- Name: Rubrica_rubrica Rubrica_rubrica_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_rubrica"
    ADD CONSTRAINT "Rubrica_rubrica_pkey" PRIMARY KEY (id);


--
-- TOC entry 2400 (class 2606 OID 37477)
-- Name: Rubrica_tipo_rubrica Rubrica_tipo_rubrica_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_tipo_rubrica"
    ADD CONSTRAINT "Rubrica_tipo_rubrica_pkey" PRIMARY KEY (id);


--
-- TOC entry 2404 (class 2606 OID 44923)
-- Name: Rubrica_topico Rubrica_topico_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_topico"
    ADD CONSTRAINT "Rubrica_topico_pkey" PRIMARY KEY (id);


--
-- TOC entry 2380 (class 2606 OID 37224)
-- Name: Rubrica_topico_rubricas Rubrica_topico_rubricas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_topico_rubricas"
    ADD CONSTRAINT "Rubrica_topico_rubricas_pkey" PRIMARY KEY (id);


--
-- TOC entry 2271 (class 2606 OID 36828)
-- Name: Universidad_universidad Universidad_universidad_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Universidad_universidad"
    ADD CONSTRAINT "Universidad_universidad_pkey" PRIMARY KEY (id);


--
-- TOC entry 2320 (class 2606 OID 36995)
-- Name: Usuario_alumno Usuario_alumno_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Usuario_alumno"
    ADD CONSTRAINT "Usuario_alumno_pkey" PRIMARY KEY (rut);


--
-- TOC entry 2324 (class 2606 OID 37003)
-- Name: Usuario_persona Usuario_persona_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Usuario_persona"
    ADD CONSTRAINT "Usuario_persona_pkey" PRIMARY KEY (id);


--
-- TOC entry 2327 (class 2606 OID 37013)
-- Name: Usuario_persona Usuario_persona_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Usuario_persona"
    ADD CONSTRAINT "Usuario_persona_user_id_key" UNIQUE (user_id);


--
-- TOC entry 2329 (class 2606 OID 37011)
-- Name: Usuario_tipousuario Usuario_tipousuario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Usuario_tipousuario"
    ADD CONSTRAINT "Usuario_tipousuario_pkey" PRIMARY KEY (id);


--
-- TOC entry 2292 (class 2606 OID 36904)
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- TOC entry 2297 (class 2606 OID 36959)
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- TOC entry 2300 (class 2606 OID 36912)
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2294 (class 2606 OID 36902)
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- TOC entry 2287 (class 2606 OID 36945)
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- TOC entry 2289 (class 2606 OID 36894)
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 2308 (class 2606 OID 36930)
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 2311 (class 2606 OID 36974)
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- TOC entry 2302 (class 2606 OID 36920)
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- TOC entry 2314 (class 2606 OID 36938)
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2317 (class 2606 OID 36988)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- TOC entry 2305 (class 2606 OID 37280)
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- TOC entry 2386 (class 2606 OID 37266)
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- TOC entry 2282 (class 2606 OID 36886)
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- TOC entry 2284 (class 2606 OID 36884)
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- TOC entry 2261 (class 2606 OID 36790)
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 2390 (class 2606 OID 37292)
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- TOC entry 2264 (class 1259 OID 36807)
-- Name: Actividad_contenido_tipo_id_467aa68e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Actividad_contenido_tipo_id_467aa68e" ON public."Actividad_contenido" USING btree (tipo_id);


--
-- TOC entry 2277 (class 1259 OID 36875)
-- Name: Area_areas_carreras_area_id_daace21d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Area_areas_carreras_area_id_daace21d" ON public."Area_areas_carreras" USING btree (area_id);


--
-- TOC entry 2278 (class 1259 OID 36876)
-- Name: Area_areas_carreras_carrera_id_a910093c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Area_areas_carreras_carrera_id_a910093c" ON public."Area_areas_carreras" USING btree (carrera_id);


--
-- TOC entry 2274 (class 1259 OID 36848)
-- Name: Carrera_carrera_universidad_id_dc117c1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Carrera_carrera_universidad_id_dc117c1b" ON public."Carrera_carrera" USING btree (universidad_id);


--
-- TOC entry 2406 (class 1259 OID 45073)
-- Name: Curso_archivo_curso_id_cc14b0b8; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Curso_archivo_curso_id_cc14b0b8" ON public."Curso_archivo" USING btree (curso_id);


--
-- TOC entry 2334 (class 1259 OID 37107)
-- Name: Curso_asignatura_alumnos_alumno_id_c533789c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Curso_asignatura_alumnos_alumno_id_c533789c" ON public."Curso_asignatura_alumnos" USING btree (alumno_id);


--
-- TOC entry 2335 (class 1259 OID 37108)
-- Name: Curso_asignatura_alumnos_alumno_id_c533789c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Curso_asignatura_alumnos_alumno_id_c533789c_like" ON public."Curso_asignatura_alumnos" USING btree (alumno_id varchar_pattern_ops);


--
-- TOC entry 2336 (class 1259 OID 37167)
-- Name: Curso_asignatura_alumnos_asignatura_id_546df289; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Curso_asignatura_alumnos_asignatura_id_546df289" ON public."Curso_asignatura_alumnos" USING btree (curso_id);


--
-- TOC entry 2337 (class 1259 OID 37173)
-- Name: Curso_asignatura_alumnos_evaluacion_id_e58f4410; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Curso_asignatura_alumnos_evaluacion_id_e58f4410" ON public."Curso_asignatura_alumnos" USING btree (evaluacion_id);


--
-- TOC entry 2330 (class 1259 OID 37100)
-- Name: Curso_asignatura_autor_id_ddf592df; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Curso_asignatura_autor_id_ddf592df" ON public."Curso_asignatura" USING btree (autor_id);


--
-- TOC entry 2331 (class 1259 OID 37101)
-- Name: Curso_asignatura_carrera_id_66bedcf5; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Curso_asignatura_carrera_id_66bedcf5" ON public."Curso_asignatura" USING btree (carrera_id);


--
-- TOC entry 2340 (class 1259 OID 37119)
-- Name: Curso_curso_curso_id_48413663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Curso_curso_curso_id_48413663" ON public."Curso_curso" USING btree (asignatura_id);


--
-- TOC entry 2341 (class 1259 OID 37319)
-- Name: Curso_curso_paralelo_id_1e23e00d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Curso_curso_paralelo_id_1e23e00d" ON public."Curso_curso" USING btree (paralelo_id);


--
-- TOC entry 2344 (class 1259 OID 37120)
-- Name: Curso_curso_profesor_id_ee7ef740; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Curso_curso_profesor_id_ee7ef740" ON public."Curso_curso" USING btree (profesor_id);


--
-- TOC entry 2349 (class 1259 OID 37131)
-- Name: Curso_evaluacion_alumnos_alumno_id_353a7a7d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Curso_evaluacion_alumnos_alumno_id_353a7a7d" ON public."Curso_evaluacion_alumnos" USING btree (alumno_id);


--
-- TOC entry 2350 (class 1259 OID 37132)
-- Name: Curso_evaluacion_alumnos_alumno_id_353a7a7d_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Curso_evaluacion_alumnos_alumno_id_353a7a7d_like" ON public."Curso_evaluacion_alumnos" USING btree (alumno_id varchar_pattern_ops);


--
-- TOC entry 2351 (class 1259 OID 37133)
-- Name: Curso_evaluacion_alumnos_evaluacion_id_d0a088f5; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Curso_evaluacion_alumnos_evaluacion_id_d0a088f5" ON public."Curso_evaluacion_alumnos" USING btree (evaluacion_id);


--
-- TOC entry 2345 (class 1259 OID 37155)
-- Name: Curso_evaluacion_asignatura_id_a7f7eb5f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Curso_evaluacion_asignatura_id_a7f7eb5f" ON public."Curso_evaluacion" USING btree (curso_id);


--
-- TOC entry 2348 (class 1259 OID 37161)
-- Name: Curso_evaluacion_tipo_id_a747b375; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Curso_evaluacion_tipo_id_a747b375" ON public."Curso_evaluacion" USING btree (tipo_id);


--
-- TOC entry 2359 (class 1259 OID 37152)
-- Name: Curso_grupo_en_evaluacion__grupo_en_evaluacion_id_0b71836d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Curso_grupo_en_evaluacion__grupo_en_evaluacion_id_0b71836d" ON public."Curso_grupo_en_evaluacion_alumno" USING btree (grupo_en_evaluacion_id);


--
-- TOC entry 2360 (class 1259 OID 37153)
-- Name: Curso_grupo_en_evaluacion_alumno_alumno_id_dcb00e19; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Curso_grupo_en_evaluacion_alumno_alumno_id_dcb00e19" ON public."Curso_grupo_en_evaluacion_alumno" USING btree (alumno_id);


--
-- TOC entry 2361 (class 1259 OID 37154)
-- Name: Curso_grupo_en_evaluacion_alumno_alumno_id_dcb00e19_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Curso_grupo_en_evaluacion_alumno_alumno_id_dcb00e19_like" ON public."Curso_grupo_en_evaluacion_alumno" USING btree (alumno_id varchar_pattern_ops);


--
-- TOC entry 2354 (class 1259 OID 37139)
-- Name: Curso_grupo_en_evaluacion_evaluacion_id_ad2b5781; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Curso_grupo_en_evaluacion_evaluacion_id_ad2b5781" ON public."Curso_grupo_en_evaluacion" USING btree (evaluacion_id);


--
-- TOC entry 2366 (class 1259 OID 37192)
-- Name: RA_ra_asignatura_id_37358a40; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "RA_ra_asignatura_id_37358a40" ON public."RA_ra" USING btree (asignatura_id);


--
-- TOC entry 2367 (class 1259 OID 37337)
-- Name: RA_ra_autor_id_dc970c62; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "RA_ra_autor_id_dc970c62" ON public."RA_ra" USING btree (autor_id);


--
-- TOC entry 2394 (class 1259 OID 44910)
-- Name: Rubrica_puntaje_calificacion_id_a673a68d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Rubrica_puntaje_calificacion_id_a673a68d" ON public."Rubrica_puntaje" USING btree (calificacion_id);


--
-- TOC entry 2397 (class 1259 OID 37484)
-- Name: Rubrica_puntaje_rubrica_id_fbf76fcf; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Rubrica_puntaje_rubrica_id_fbf76fcf" ON public."Rubrica_puntaje" USING btree (rubrica_id);


--
-- TOC entry 2398 (class 1259 OID 44935)
-- Name: Rubrica_puntaje_topico_id_2f2cd3c9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Rubrica_puntaje_topico_id_2f2cd3c9" ON public."Rubrica_puntaje" USING btree (topico_id);


--
-- TOC entry 2372 (class 1259 OID 37240)
-- Name: Rubrica_rubrica_autor_id_b6b9af65; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Rubrica_rubrica_autor_id_b6b9af65" ON public."Rubrica_rubrica" USING btree (autor_id);


--
-- TOC entry 2373 (class 1259 OID 37348)
-- Name: Rubrica_rubrica_curso_id_342b15de; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Rubrica_rubrica_curso_id_342b15de" ON public."Rubrica_rubrica" USING btree (curso_id);


--
-- TOC entry 2374 (class 1259 OID 37241)
-- Name: Rubrica_rubrica_estado_id_b65c1ec3; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Rubrica_rubrica_estado_id_b65c1ec3" ON public."Rubrica_rubrica" USING btree (estado_id);


--
-- TOC entry 2375 (class 1259 OID 37242)
-- Name: Rubrica_rubrica_evaluacion_id_91a9acb9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Rubrica_rubrica_evaluacion_id_91a9acb9" ON public."Rubrica_rubrica" USING btree (evaluacion_id);


--
-- TOC entry 2378 (class 1259 OID 37478)
-- Name: Rubrica_rubrica_tipo_id_7f89075b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Rubrica_rubrica_tipo_id_7f89075b" ON public."Rubrica_rubrica" USING btree (tipo_id);


--
-- TOC entry 2405 (class 1259 OID 44929)
-- Name: Rubrica_topico_rubrica_id_5aa046f6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Rubrica_topico_rubrica_id_5aa046f6" ON public."Rubrica_topico" USING btree (rubrica_id);


--
-- TOC entry 2381 (class 1259 OID 37372)
-- Name: Rubrica_topico_rubricas_puntaje_id_eff0e091; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Rubrica_topico_rubricas_puntaje_id_eff0e091" ON public."Rubrica_topico_rubricas" USING btree (puntaje_id);


--
-- TOC entry 2382 (class 1259 OID 37253)
-- Name: Rubrica_topico_rubricas_rubrica_id_7365e5e6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Rubrica_topico_rubricas_rubrica_id_7365e5e6" ON public."Rubrica_topico_rubricas" USING btree (rubrica_id);


--
-- TOC entry 2383 (class 1259 OID 37254)
-- Name: Rubrica_topico_rubricas_topico_id_90005039; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Rubrica_topico_rubricas_topico_id_90005039" ON public."Rubrica_topico_rubricas" USING btree (topico_id);


--
-- TOC entry 2269 (class 1259 OID 36834)
-- Name: Universidad_universidad_pais_id_d7f99cc9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Universidad_universidad_pais_id_d7f99cc9" ON public."Universidad_universidad" USING btree (pais_id);


--
-- TOC entry 2318 (class 1259 OID 37331)
-- Name: Usuario_alumno_carrera_id_bee04d8c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Usuario_alumno_carrera_id_bee04d8c" ON public."Usuario_alumno" USING btree (carrera_id);


--
-- TOC entry 2321 (class 1259 OID 37014)
-- Name: Usuario_alumno_rut_82a32018_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Usuario_alumno_rut_82a32018_like" ON public."Usuario_alumno" USING btree (rut varchar_pattern_ops);


--
-- TOC entry 2322 (class 1259 OID 37325)
-- Name: Usuario_alumno_user_id_7a171d99; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Usuario_alumno_user_id_7a171d99" ON public."Usuario_alumno" USING btree (user_id);


--
-- TOC entry 2325 (class 1259 OID 37015)
-- Name: Usuario_persona_tipo_usuario_id_b01b5e5d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Usuario_persona_tipo_usuario_id_b01b5e5d" ON public."Usuario_persona" USING btree (tipo_usuario_id);


--
-- TOC entry 2290 (class 1259 OID 36947)
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- TOC entry 2295 (class 1259 OID 36960)
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- TOC entry 2298 (class 1259 OID 36961)
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- TOC entry 2285 (class 1259 OID 36946)
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- TOC entry 2306 (class 1259 OID 36976)
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- TOC entry 2309 (class 1259 OID 36975)
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- TOC entry 2312 (class 1259 OID 36990)
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- TOC entry 2315 (class 1259 OID 36989)
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- TOC entry 2303 (class 1259 OID 37281)
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- TOC entry 2384 (class 1259 OID 37277)
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- TOC entry 2387 (class 1259 OID 37278)
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- TOC entry 2388 (class 1259 OID 37294)
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- TOC entry 2391 (class 1259 OID 37293)
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- TOC entry 2409 (class 2606 OID 36808)
-- Name: Actividad_contenido Actividad_contenido_tipo_id_467aa68e_fk_Actividad; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Actividad_contenido"
    ADD CONSTRAINT "Actividad_contenido_tipo_id_467aa68e_fk_Actividad" FOREIGN KEY (tipo_id) REFERENCES public."Actividad_tipo_contenido"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2412 (class 2606 OID 36865)
-- Name: Area_areas_carreras Area_areas_carreras_area_id_daace21d_fk_Area_area_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Area_areas_carreras"
    ADD CONSTRAINT "Area_areas_carreras_area_id_daace21d_fk_Area_area_id" FOREIGN KEY (area_id) REFERENCES public."Area_area"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2413 (class 2606 OID 36870)
-- Name: Area_areas_carreras Area_areas_carreras_carrera_id_a910093c_fk_Carrera_carrera_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Area_areas_carreras"
    ADD CONSTRAINT "Area_areas_carreras_carrera_id_a910093c_fk_Carrera_carrera_id" FOREIGN KEY (carrera_id) REFERENCES public."Carrera_carrera"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2411 (class 2606 OID 36843)
-- Name: Carrera_carrera Carrera_carrera_universidad_id_dc117c1b_fk_Universid; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Carrera_carrera"
    ADD CONSTRAINT "Carrera_carrera_universidad_id_dc117c1b_fk_Universid" FOREIGN KEY (universidad_id) REFERENCES public."Universidad_universidad"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2456 (class 2606 OID 45068)
-- Name: Curso_archivo Curso_archivo_curso_id_cc14b0b8_fk_Curso_curso_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_archivo"
    ADD CONSTRAINT "Curso_archivo_curso_id_cc14b0b8_fk_Curso_curso_id" FOREIGN KEY (curso_id) REFERENCES public."Curso_curso"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2427 (class 2606 OID 37102)
-- Name: Curso_asignatura_alumnos Curso_asignatura_alu_alumno_id_c533789c_fk_Usuario_a; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_asignatura_alumnos"
    ADD CONSTRAINT "Curso_asignatura_alu_alumno_id_c533789c_fk_Usuario_a" FOREIGN KEY (alumno_id) REFERENCES public."Usuario_alumno"(rut) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2428 (class 2606 OID 37174)
-- Name: Curso_asignatura_alumnos Curso_asignatura_alu_evaluacion_id_e58f4410_fk_Curso_eva; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_asignatura_alumnos"
    ADD CONSTRAINT "Curso_asignatura_alu_evaluacion_id_e58f4410_fk_Curso_eva" FOREIGN KEY (evaluacion_id) REFERENCES public."Curso_evaluacion_alumnos"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2429 (class 2606 OID 37296)
-- Name: Curso_asignatura_alumnos Curso_asignatura_alumnos_curso_id_f1a4f97c_fk_Curso_curso_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_asignatura_alumnos"
    ADD CONSTRAINT "Curso_asignatura_alumnos_curso_id_f1a4f97c_fk_Curso_curso_id" FOREIGN KEY (curso_id) REFERENCES public."Curso_curso"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2425 (class 2606 OID 37090)
-- Name: Curso_asignatura Curso_asignatura_autor_id_ddf592df_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_asignatura"
    ADD CONSTRAINT "Curso_asignatura_autor_id_ddf592df_fk_auth_user_id" FOREIGN KEY (autor_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2426 (class 2606 OID 37095)
-- Name: Curso_asignatura Curso_asignatura_carrera_id_66bedcf5_fk_Carrera_carrera_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_asignatura"
    ADD CONSTRAINT "Curso_asignatura_carrera_id_66bedcf5_fk_Carrera_carrera_id" FOREIGN KEY (carrera_id) REFERENCES public."Carrera_carrera"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2431 (class 2606 OID 37301)
-- Name: Curso_curso Curso_curso_asignatura_id_f5da5aa0_fk_Curso_asignatura_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_curso"
    ADD CONSTRAINT "Curso_curso_asignatura_id_f5da5aa0_fk_Curso_asignatura_id" FOREIGN KEY (asignatura_id) REFERENCES public."Curso_asignatura"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2432 (class 2606 OID 37320)
-- Name: Curso_curso Curso_curso_paralelo_id_1e23e00d_fk_Curso_curso_paralelo_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_curso"
    ADD CONSTRAINT "Curso_curso_paralelo_id_1e23e00d_fk_Curso_curso_paralelo_id" FOREIGN KEY (paralelo_id) REFERENCES public."Curso_curso_paralelo"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2430 (class 2606 OID 37114)
-- Name: Curso_curso Curso_curso_profesor_id_ee7ef740_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_curso"
    ADD CONSTRAINT "Curso_curso_profesor_id_ee7ef740_fk_auth_user_id" FOREIGN KEY (profesor_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2435 (class 2606 OID 37121)
-- Name: Curso_evaluacion_alumnos Curso_evaluacion_alu_alumno_id_353a7a7d_fk_Usuario_a; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_evaluacion_alumnos"
    ADD CONSTRAINT "Curso_evaluacion_alu_alumno_id_353a7a7d_fk_Usuario_a" FOREIGN KEY (alumno_id) REFERENCES public."Usuario_alumno"(rut) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2436 (class 2606 OID 37126)
-- Name: Curso_evaluacion_alumnos Curso_evaluacion_alu_evaluacion_id_d0a088f5_fk_Curso_eva; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_evaluacion_alumnos"
    ADD CONSTRAINT "Curso_evaluacion_alu_evaluacion_id_d0a088f5_fk_Curso_eva" FOREIGN KEY (evaluacion_id) REFERENCES public."Curso_evaluacion"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2434 (class 2606 OID 37306)
-- Name: Curso_evaluacion Curso_evaluacion_curso_id_d6d354ff_fk_Curso_curso_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_evaluacion"
    ADD CONSTRAINT "Curso_evaluacion_curso_id_d6d354ff_fk_Curso_curso_id" FOREIGN KEY (curso_id) REFERENCES public."Curso_curso"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2433 (class 2606 OID 37162)
-- Name: Curso_evaluacion Curso_evaluacion_tipo_id_a747b375_fk_Curso_tipo_evaluacion_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_evaluacion"
    ADD CONSTRAINT "Curso_evaluacion_tipo_id_a747b375_fk_Curso_tipo_evaluacion_id" FOREIGN KEY (tipo_id) REFERENCES public."Curso_tipo_evaluacion"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2439 (class 2606 OID 37145)
-- Name: Curso_grupo_en_evaluacion_alumno Curso_grupo_en_evalu_alumno_id_dcb00e19_fk_Usuario_a; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_grupo_en_evaluacion_alumno"
    ADD CONSTRAINT "Curso_grupo_en_evalu_alumno_id_dcb00e19_fk_Usuario_a" FOREIGN KEY (alumno_id) REFERENCES public."Usuario_alumno"(rut) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2437 (class 2606 OID 37134)
-- Name: Curso_grupo_en_evaluacion Curso_grupo_en_evalu_evaluacion_id_ad2b5781_fk_Curso_eva; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_grupo_en_evaluacion"
    ADD CONSTRAINT "Curso_grupo_en_evalu_evaluacion_id_ad2b5781_fk_Curso_eva" FOREIGN KEY (evaluacion_id) REFERENCES public."Curso_evaluacion"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2438 (class 2606 OID 37140)
-- Name: Curso_grupo_en_evaluacion_alumno Curso_grupo_en_evalu_grupo_en_evaluacion__0b71836d_fk_Curso_gru; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_grupo_en_evaluacion_alumno"
    ADD CONSTRAINT "Curso_grupo_en_evalu_grupo_en_evaluacion__0b71836d_fk_Curso_gru" FOREIGN KEY (grupo_en_evaluacion_id) REFERENCES public."Curso_grupo_en_evaluacion"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2440 (class 2606 OID 37187)
-- Name: RA_ra RA_ra_asignatura_id_37358a40_fk_Curso_asignatura_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RA_ra"
    ADD CONSTRAINT "RA_ra_asignatura_id_37358a40_fk_Curso_asignatura_id" FOREIGN KEY (asignatura_id) REFERENCES public."Curso_asignatura"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2441 (class 2606 OID 37343)
-- Name: RA_ra RA_ra_autor_id_dc970c62_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RA_ra"
    ADD CONSTRAINT "RA_ra_autor_id_dc970c62_fk_auth_user_id" FOREIGN KEY (autor_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2453 (class 2606 OID 44911)
-- Name: Rubrica_puntaje Rubrica_puntaje_calificacion_id_a673a68d_fk_Rubrica_c; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_puntaje"
    ADD CONSTRAINT "Rubrica_puntaje_calificacion_id_a673a68d_fk_Rubrica_c" FOREIGN KEY (calificacion_id) REFERENCES public."Rubrica_calificacion_aspecto"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2452 (class 2606 OID 37485)
-- Name: Rubrica_puntaje Rubrica_puntaje_rubrica_id_fbf76fcf_fk_Rubrica_rubrica_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_puntaje"
    ADD CONSTRAINT "Rubrica_puntaje_rubrica_id_fbf76fcf_fk_Rubrica_rubrica_id" FOREIGN KEY (rubrica_id) REFERENCES public."Rubrica_rubrica"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2454 (class 2606 OID 44936)
-- Name: Rubrica_puntaje Rubrica_puntaje_topico_id_2f2cd3c9_fk_Rubrica_topico_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_puntaje"
    ADD CONSTRAINT "Rubrica_puntaje_topico_id_2f2cd3c9_fk_Rubrica_topico_id" FOREIGN KEY (topico_id) REFERENCES public."Rubrica_topico"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2444 (class 2606 OID 37354)
-- Name: Rubrica_rubrica Rubrica_rubrica_autor_id_b6b9af65_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_rubrica"
    ADD CONSTRAINT "Rubrica_rubrica_autor_id_b6b9af65_fk_auth_user_id" FOREIGN KEY (autor_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2443 (class 2606 OID 37349)
-- Name: Rubrica_rubrica Rubrica_rubrica_curso_id_342b15de_fk_Curso_curso_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_rubrica"
    ADD CONSTRAINT "Rubrica_rubrica_curso_id_342b15de_fk_Curso_curso_id" FOREIGN KEY (curso_id) REFERENCES public."Curso_curso"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2445 (class 2606 OID 37359)
-- Name: Rubrica_rubrica Rubrica_rubrica_estado_id_b65c1ec3_fk_Rubrica_estado_rubrica_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_rubrica"
    ADD CONSTRAINT "Rubrica_rubrica_estado_id_b65c1ec3_fk_Rubrica_estado_rubrica_id" FOREIGN KEY (estado_id) REFERENCES public."Rubrica_estado_rubrica"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2442 (class 2606 OID 37235)
-- Name: Rubrica_rubrica Rubrica_rubrica_evaluacion_id_91a9acb9_fk_Curso_evaluacion_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_rubrica"
    ADD CONSTRAINT "Rubrica_rubrica_evaluacion_id_91a9acb9_fk_Curso_evaluacion_id" FOREIGN KEY (evaluacion_id) REFERENCES public."Curso_evaluacion"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2446 (class 2606 OID 37479)
-- Name: Rubrica_rubrica Rubrica_rubrica_tipo_id_7f89075b_fk_Rubrica_tipo_rubrica_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_rubrica"
    ADD CONSTRAINT "Rubrica_rubrica_tipo_id_7f89075b_fk_Rubrica_tipo_rubrica_id" FOREIGN KEY (tipo_id) REFERENCES public."Rubrica_tipo_rubrica"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2448 (class 2606 OID 37373)
-- Name: Rubrica_topico_rubricas Rubrica_topico_rubri_puntaje_id_eff0e091_fk_Rubrica_p; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_topico_rubricas"
    ADD CONSTRAINT "Rubrica_topico_rubri_puntaje_id_eff0e091_fk_Rubrica_p" FOREIGN KEY (puntaje_id) REFERENCES public."Rubrica_puntaje"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2447 (class 2606 OID 37243)
-- Name: Rubrica_topico_rubricas Rubrica_topico_rubri_rubrica_id_7365e5e6_fk_Rubrica_r; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_topico_rubricas"
    ADD CONSTRAINT "Rubrica_topico_rubri_rubrica_id_7365e5e6_fk_Rubrica_r" FOREIGN KEY (rubrica_id) REFERENCES public."Rubrica_rubrica"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2455 (class 2606 OID 44930)
-- Name: Rubrica_topico Rubrica_topico_rubrica_id_5aa046f6_fk_Rubrica_rubrica_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_topico"
    ADD CONSTRAINT "Rubrica_topico_rubrica_id_5aa046f6_fk_Rubrica_rubrica_id" FOREIGN KEY (rubrica_id) REFERENCES public."Rubrica_rubrica"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2449 (class 2606 OID 44924)
-- Name: Rubrica_topico_rubricas Rubrica_topico_rubricas_topico_id_90005039_fk_Rubrica_topico_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_topico_rubricas"
    ADD CONSTRAINT "Rubrica_topico_rubricas_topico_id_90005039_fk_Rubrica_topico_id" FOREIGN KEY (topico_id) REFERENCES public."Rubrica_topico"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2410 (class 2606 OID 36829)
-- Name: Universidad_universidad Universidad_universidad_pais_id_d7f99cc9_fk_Pais_pais_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Universidad_universidad"
    ADD CONSTRAINT "Universidad_universidad_pais_id_d7f99cc9_fk_Pais_pais_id" FOREIGN KEY (pais_id) REFERENCES public."Pais_pais"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2422 (class 2606 OID 37332)
-- Name: Usuario_alumno Usuario_alumno_carrera_id_bee04d8c_fk_Carrera_carrera_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Usuario_alumno"
    ADD CONSTRAINT "Usuario_alumno_carrera_id_bee04d8c_fk_Carrera_carrera_id" FOREIGN KEY (carrera_id) REFERENCES public."Carrera_carrera"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2421 (class 2606 OID 37326)
-- Name: Usuario_alumno Usuario_alumno_user_id_7a171d99_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Usuario_alumno"
    ADD CONSTRAINT "Usuario_alumno_user_id_7a171d99_fk_auth_user_id" FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2423 (class 2606 OID 37016)
-- Name: Usuario_persona Usuario_persona_tipo_usuario_id_b01b5e5d_fk_Usuario_t; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Usuario_persona"
    ADD CONSTRAINT "Usuario_persona_tipo_usuario_id_b01b5e5d_fk_Usuario_t" FOREIGN KEY (tipo_usuario_id) REFERENCES public."Usuario_tipousuario"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2424 (class 2606 OID 37021)
-- Name: Usuario_persona Usuario_persona_user_id_37530681_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Usuario_persona"
    ADD CONSTRAINT "Usuario_persona_user_id_37530681_fk_auth_user_id" FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2416 (class 2606 OID 36953)
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2415 (class 2606 OID 36948)
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2414 (class 2606 OID 36939)
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2418 (class 2606 OID 36968)
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2417 (class 2606 OID 36963)
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2420 (class 2606 OID 36982)
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2419 (class 2606 OID 36977)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2450 (class 2606 OID 37267)
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2451 (class 2606 OID 37272)
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


-- Completed on 2021-09-12 12:21:54

--
-- PostgreSQL database dump complete
--


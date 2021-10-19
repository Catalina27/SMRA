--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.21
-- Dumped by pg_dump version 9.6.21

-- Started on 2021-10-19 10:26:48

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
-- TOC entry 2845 (class 0 OID 0)
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
-- TOC entry 2846 (class 0 OID 0)
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
-- TOC entry 2847 (class 0 OID 0)
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
-- TOC entry 2848 (class 0 OID 0)
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
-- TOC entry 2849 (class 0 OID 0)
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
-- TOC entry 2850 (class 0 OID 0)
-- Dependencies: 195
-- Name: Carrera_carrera_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Carrera_carrera_id_seq" OWNED BY public."Carrera_carrera".id;


--
-- TOC entry 254 (class 1259 OID 45062)
-- Name: Curso_archivo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Curso_archivo" (
    id integer NOT NULL,
    doc character varying(100),
    curso_id integer
);


ALTER TABLE public."Curso_archivo" OWNER TO postgres;

--
-- TOC entry 253 (class 1259 OID 45060)
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
-- TOC entry 2851 (class 0 OID 0)
-- Dependencies: 253
-- Name: Curso_archivo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Curso_archivo_id_seq" OWNED BY public."Curso_archivo".id;


--
-- TOC entry 258 (class 1259 OID 46168)
-- Name: Curso_archivo_notas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Curso_archivo_notas" (
    id integer NOT NULL,
    doc character varying(100),
    curso_id integer,
    evaluacion_id integer
);


ALTER TABLE public."Curso_archivo_notas" OWNER TO postgres;

--
-- TOC entry 257 (class 1259 OID 46166)
-- Name: Curso_archivo_notas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Curso_archivo_notas_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Curso_archivo_notas_id_seq" OWNER TO postgres;

--
-- TOC entry 2852 (class 0 OID 0)
-- Dependencies: 257
-- Name: Curso_archivo_notas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Curso_archivo_notas_id_seq" OWNED BY public."Curso_archivo_notas".id;


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
    evaluacion_id integer,
    flag boolean NOT NULL
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
-- TOC entry 2853 (class 0 OID 0)
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
-- TOC entry 2854 (class 0 OID 0)
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
-- TOC entry 2855 (class 0 OID 0)
-- Dependencies: 224
-- Name: Curso_curso_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Curso_curso_id_seq" OWNED BY public."Curso_curso".id;


--
-- TOC entry 244 (class 1259 OID 37313)
-- Name: Curso_curso_paralelo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Curso_curso_paralelo" (
    id integer NOT NULL,
    nombre character varying(1) NOT NULL
);


ALTER TABLE public."Curso_curso_paralelo" OWNER TO postgres;

--
-- TOC entry 243 (class 1259 OID 37311)
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
-- TOC entry 2856 (class 0 OID 0)
-- Dependencies: 243
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
    evaluacion_id integer,
    curso_id integer
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
-- TOC entry 2857 (class 0 OID 0)
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
-- TOC entry 2858 (class 0 OID 0)
-- Dependencies: 226
-- Name: Curso_evaluacion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Curso_evaluacion_id_seq" OWNED BY public."Curso_evaluacion".id;


--
-- TOC entry 256 (class 1259 OID 46135)
-- Name: Curso_grupos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Curso_grupos" (
    id integer NOT NULL,
    nombre character varying(50),
    carrera_id integer,
    curso_id integer,
    asignatura_id integer,
    flag boolean NOT NULL
);


ALTER TABLE public."Curso_grupos" OWNER TO postgres;

--
-- TOC entry 260 (class 1259 OID 46194)
-- Name: Curso_grupos_alumnos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Curso_grupos_alumnos" (
    id integer NOT NULL,
    alumno_id character varying(13),
    asignatura_id integer,
    curso_id integer,
    grupo_id integer,
    flag boolean NOT NULL
);


ALTER TABLE public."Curso_grupos_alumnos" OWNER TO postgres;

--
-- TOC entry 259 (class 1259 OID 46192)
-- Name: Curso_grupos_alumnos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Curso_grupos_alumnos_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Curso_grupos_alumnos_id_seq" OWNER TO postgres;

--
-- TOC entry 2859 (class 0 OID 0)
-- Dependencies: 259
-- Name: Curso_grupos_alumnos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Curso_grupos_alumnos_id_seq" OWNED BY public."Curso_grupos_alumnos".id;


--
-- TOC entry 255 (class 1259 OID 46133)
-- Name: Curso_grupos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Curso_grupos_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Curso_grupos_id_seq" OWNER TO postgres;

--
-- TOC entry 2860 (class 0 OID 0)
-- Dependencies: 255
-- Name: Curso_grupos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Curso_grupos_id_seq" OWNED BY public."Curso_grupos".id;


--
-- TOC entry 231 (class 1259 OID 37084)
-- Name: Curso_tipo_evaluacion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Curso_tipo_evaluacion" (
    id integer NOT NULL,
    nombre character varying(20)
);


ALTER TABLE public."Curso_tipo_evaluacion" OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 37082)
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
-- TOC entry 2861 (class 0 OID 0)
-- Dependencies: 230
-- Name: Curso_tipo_evaluacion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Curso_tipo_evaluacion_id_seq" OWNED BY public."Curso_tipo_evaluacion".id;


--
-- TOC entry 276 (class 1259 OID 46512)
-- Name: Curso_validacion_alumno; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Curso_validacion_alumno" (
    id integer NOT NULL,
    flag boolean NOT NULL,
    alumno_id character varying(13),
    evaluacion_id integer
);


ALTER TABLE public."Curso_validacion_alumno" OWNER TO postgres;

--
-- TOC entry 275 (class 1259 OID 46510)
-- Name: Curso_validacion_alumno_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Curso_validacion_alumno_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Curso_validacion_alumno_id_seq" OWNER TO postgres;

--
-- TOC entry 2862 (class 0 OID 0)
-- Dependencies: 275
-- Name: Curso_validacion_alumno_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Curso_validacion_alumno_id_seq" OWNED BY public."Curso_validacion_alumno".id;


--
-- TOC entry 280 (class 1259 OID 46553)
-- Name: Curso_validacion_coevaluacion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Curso_validacion_coevaluacion" (
    id integer NOT NULL,
    flag boolean NOT NULL,
    alumno_id character varying(13),
    evaluacion_id integer,
    user_id integer
);


ALTER TABLE public."Curso_validacion_coevaluacion" OWNER TO postgres;

--
-- TOC entry 279 (class 1259 OID 46551)
-- Name: Curso_validacion_coevaluacion_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Curso_validacion_coevaluacion_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Curso_validacion_coevaluacion_id_seq" OWNER TO postgres;

--
-- TOC entry 2863 (class 0 OID 0)
-- Dependencies: 279
-- Name: Curso_validacion_coevaluacion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Curso_validacion_coevaluacion_id_seq" OWNED BY public."Curso_validacion_coevaluacion".id;


--
-- TOC entry 278 (class 1259 OID 46520)
-- Name: Curso_validacion_grupo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Curso_validacion_grupo" (
    id integer NOT NULL,
    flag boolean NOT NULL,
    evaluacion_id integer,
    grupo_id integer
);


ALTER TABLE public."Curso_validacion_grupo" OWNER TO postgres;

--
-- TOC entry 277 (class 1259 OID 46518)
-- Name: Curso_validacion_grupo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Curso_validacion_grupo_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Curso_validacion_grupo_id_seq" OWNER TO postgres;

--
-- TOC entry 2864 (class 0 OID 0)
-- Dependencies: 277
-- Name: Curso_validacion_grupo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Curso_validacion_grupo_id_seq" OWNED BY public."Curso_validacion_grupo".id;


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
-- TOC entry 2865 (class 0 OID 0)
-- Dependencies: 191
-- Name: Pais_pais_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Pais_pais_id_seq" OWNED BY public."Pais_pais".id;


--
-- TOC entry 233 (class 1259 OID 37181)
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
-- TOC entry 232 (class 1259 OID 37179)
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
-- TOC entry 2866 (class 0 OID 0)
-- Dependencies: 232
-- Name: RA_ra_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."RA_ra_id_seq" OWNED BY public."RA_ra".id;


--
-- TOC entry 272 (class 1259 OID 46386)
-- Name: Rubrica_aplicar_rubrica; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Rubrica_aplicar_rubrica" (
    id integer NOT NULL,
    alumno_id character varying(13),
    aspecto_id integer,
    calificacion_id integer,
    evaluacion_id integer,
    rubrica_id integer,
    flag boolean NOT NULL,
    grupo_id integer
);


ALTER TABLE public."Rubrica_aplicar_rubrica" OWNER TO postgres;

--
-- TOC entry 271 (class 1259 OID 46384)
-- Name: Rubrica_aplicar_rubrica_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Rubrica_aplicar_rubrica_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Rubrica_aplicar_rubrica_id_seq" OWNER TO postgres;

--
-- TOC entry 2867 (class 0 OID 0)
-- Dependencies: 271
-- Name: Rubrica_aplicar_rubrica_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Rubrica_aplicar_rubrica_id_seq" OWNED BY public."Rubrica_aplicar_rubrica".id;


--
-- TOC entry 274 (class 1259 OID 46474)
-- Name: Rubrica_aplicar_rubricagrupo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Rubrica_aplicar_rubricagrupo" (
    id integer NOT NULL,
    flag boolean NOT NULL,
    aspecto_id integer,
    calificacion_id integer,
    evaluacion_id integer,
    grupo_id integer,
    rubrica_id integer
);


ALTER TABLE public."Rubrica_aplicar_rubricagrupo" OWNER TO postgres;

--
-- TOC entry 273 (class 1259 OID 46472)
-- Name: Rubrica_aplicar_rubricagrupo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Rubrica_aplicar_rubricagrupo_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Rubrica_aplicar_rubricagrupo_id_seq" OWNER TO postgres;

--
-- TOC entry 2868 (class 0 OID 0)
-- Dependencies: 273
-- Name: Rubrica_aplicar_rubricagrupo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Rubrica_aplicar_rubricagrupo_id_seq" OWNED BY public."Rubrica_aplicar_rubricagrupo".id;


--
-- TOC entry 262 (class 1259 OID 46240)
-- Name: Rubrica_aspectos_coevaluacion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Rubrica_aspectos_coevaluacion" (
    id integer NOT NULL,
    nombre character varying(100),
    codigo character varying(2)
);


ALTER TABLE public."Rubrica_aspectos_coevaluacion" OWNER TO postgres;

--
-- TOC entry 261 (class 1259 OID 46238)
-- Name: Rubrica_aspectos_coevaluacion_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Rubrica_aspectos_coevaluacion_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Rubrica_aspectos_coevaluacion_id_seq" OWNER TO postgres;

--
-- TOC entry 2869 (class 0 OID 0)
-- Dependencies: 261
-- Name: Rubrica_aspectos_coevaluacion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Rubrica_aspectos_coevaluacion_id_seq" OWNED BY public."Rubrica_aspectos_coevaluacion".id;


--
-- TOC entry 270 (class 1259 OID 46351)
-- Name: Rubrica_califica; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Rubrica_califica" (
    id integer NOT NULL,
    nombre character varying(1),
    ponderacion character varying(20)
);


ALTER TABLE public."Rubrica_califica" OWNER TO postgres;

--
-- TOC entry 269 (class 1259 OID 46349)
-- Name: Rubrica_califica_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Rubrica_califica_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Rubrica_califica_id_seq" OWNER TO postgres;

--
-- TOC entry 2870 (class 0 OID 0)
-- Dependencies: 269
-- Name: Rubrica_califica_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Rubrica_califica_id_seq" OWNED BY public."Rubrica_califica".id;


--
-- TOC entry 250 (class 1259 OID 44904)
-- Name: Rubrica_calificacion_aspecto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Rubrica_calificacion_aspecto" (
    id integer NOT NULL,
    nombre character varying(15),
    flag boolean NOT NULL,
    rubrica_id integer,
    valor integer
);


ALTER TABLE public."Rubrica_calificacion_aspecto" OWNER TO postgres;

--
-- TOC entry 249 (class 1259 OID 44902)
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
-- TOC entry 2871 (class 0 OID 0)
-- Dependencies: 249
-- Name: Rubrica_calificacion_aspecto_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Rubrica_calificacion_aspecto_id_seq" OWNED BY public."Rubrica_calificacion_aspecto".id;


--
-- TOC entry 268 (class 1259 OID 46292)
-- Name: Rubrica_calificacion_coevaluacion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Rubrica_calificacion_coevaluacion" (
    id integer NOT NULL,
    nombre character varying(30),
    flag boolean NOT NULL,
    valor integer
);


ALTER TABLE public."Rubrica_calificacion_coevaluacion" OWNER TO postgres;

--
-- TOC entry 267 (class 1259 OID 46290)
-- Name: Rubrica_calificacion_coevaluacion_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Rubrica_calificacion_coevaluacion_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Rubrica_calificacion_coevaluacion_id_seq" OWNER TO postgres;

--
-- TOC entry 2872 (class 0 OID 0)
-- Dependencies: 267
-- Name: Rubrica_calificacion_coevaluacion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Rubrica_calificacion_coevaluacion_id_seq" OWNED BY public."Rubrica_calificacion_coevaluacion".id;


--
-- TOC entry 264 (class 1259 OID 46248)
-- Name: Rubrica_descripcion_aspectos_coevaluacion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Rubrica_descripcion_aspectos_coevaluacion" (
    id integer NOT NULL,
    nombre character varying(1000),
    aspecto_id integer,
    calificacion_id integer
);


ALTER TABLE public."Rubrica_descripcion_aspectos_coevaluacion" OWNER TO postgres;

--
-- TOC entry 263 (class 1259 OID 46246)
-- Name: Rubrica_descripcion_aspectos_coevaluacion_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Rubrica_descripcion_aspectos_coevaluacion_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Rubrica_descripcion_aspectos_coevaluacion_id_seq" OWNER TO postgres;

--
-- TOC entry 2873 (class 0 OID 0)
-- Dependencies: 263
-- Name: Rubrica_descripcion_aspectos_coevaluacion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Rubrica_descripcion_aspectos_coevaluacion_id_seq" OWNED BY public."Rubrica_descripcion_aspectos_coevaluacion".id;


--
-- TOC entry 235 (class 1259 OID 37203)
-- Name: Rubrica_estado_rubrica; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Rubrica_estado_rubrica" (
    id integer NOT NULL,
    nombre character varying(50)
);


ALTER TABLE public."Rubrica_estado_rubrica" OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 37201)
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
-- TOC entry 2874 (class 0 OID 0)
-- Dependencies: 234
-- Name: Rubrica_estado_rubrica_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Rubrica_estado_rubrica_id_seq" OWNED BY public."Rubrica_estado_rubrica".id;


--
-- TOC entry 266 (class 1259 OID 46256)
-- Name: Rubrica_evaluar_alumnos_coevaluacion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Rubrica_evaluar_alumnos_coevaluacion" (
    id integer NOT NULL,
    alumno_id character varying(13),
    user_id integer,
    grupo_id integer,
    evaluacion_id integer,
    opinion_id integer,
    aspecto_id integer
);


ALTER TABLE public."Rubrica_evaluar_alumnos_coevaluacion" OWNER TO postgres;

--
-- TOC entry 265 (class 1259 OID 46254)
-- Name: Rubrica_evaluar_alumnos_coevaluacion_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Rubrica_evaluar_alumnos_coevaluacion_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Rubrica_evaluar_alumnos_coevaluacion_id_seq" OWNER TO postgres;

--
-- TOC entry 2875 (class 0 OID 0)
-- Dependencies: 265
-- Name: Rubrica_evaluar_alumnos_coevaluacion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Rubrica_evaluar_alumnos_coevaluacion_id_seq" OWNED BY public."Rubrica_evaluar_alumnos_coevaluacion".id;


--
-- TOC entry 246 (class 1259 OID 37366)
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
-- TOC entry 245 (class 1259 OID 37364)
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
-- TOC entry 2876 (class 0 OID 0)
-- Dependencies: 245
-- Name: Rubrica_puntaje_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Rubrica_puntaje_id_seq" OWNED BY public."Rubrica_puntaje".id;


--
-- TOC entry 237 (class 1259 OID 37211)
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
-- TOC entry 236 (class 1259 OID 37209)
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
-- TOC entry 2877 (class 0 OID 0)
-- Dependencies: 236
-- Name: Rubrica_rubrica_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Rubrica_rubrica_id_seq" OWNED BY public."Rubrica_rubrica".id;


--
-- TOC entry 248 (class 1259 OID 37472)
-- Name: Rubrica_tipo_rubrica; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Rubrica_tipo_rubrica" (
    id integer NOT NULL,
    nombre character varying(100)
);


ALTER TABLE public."Rubrica_tipo_rubrica" OWNER TO postgres;

--
-- TOC entry 247 (class 1259 OID 37470)
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
-- TOC entry 2878 (class 0 OID 0)
-- Dependencies: 247
-- Name: Rubrica_tipo_rubrica_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Rubrica_tipo_rubrica_id_seq" OWNED BY public."Rubrica_tipo_rubrica".id;


--
-- TOC entry 252 (class 1259 OID 44918)
-- Name: Rubrica_topico; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Rubrica_topico" (
    id integer NOT NULL,
    nombre character varying(400),
    estado character varying(20) NOT NULL,
    user_id integer
);


ALTER TABLE public."Rubrica_topico" OWNER TO postgres;

--
-- TOC entry 251 (class 1259 OID 44916)
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
-- TOC entry 2879 (class 0 OID 0)
-- Dependencies: 251
-- Name: Rubrica_topico_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Rubrica_topico_id_seq" OWNED BY public."Rubrica_topico".id;


--
-- TOC entry 239 (class 1259 OID 37219)
-- Name: Rubrica_topico_rubricas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Rubrica_topico_rubricas" (
    id integer NOT NULL,
    rubrica_id integer,
    topico_id integer,
    ponderacion integer
);


ALTER TABLE public."Rubrica_topico_rubricas" OWNER TO postgres;

--
-- TOC entry 238 (class 1259 OID 37217)
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
-- TOC entry 2880 (class 0 OID 0)
-- Dependencies: 238
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
-- TOC entry 2881 (class 0 OID 0)
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
-- TOC entry 2882 (class 0 OID 0)
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
-- TOC entry 2883 (class 0 OID 0)
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
-- TOC entry 2884 (class 0 OID 0)
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
-- TOC entry 2885 (class 0 OID 0)
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
-- TOC entry 2886 (class 0 OID 0)
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
-- TOC entry 2887 (class 0 OID 0)
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
-- TOC entry 2888 (class 0 OID 0)
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
-- TOC entry 2889 (class 0 OID 0)
-- Dependencies: 213
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- TOC entry 241 (class 1259 OID 37257)
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
-- TOC entry 240 (class 1259 OID 37255)
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
-- TOC entry 2890 (class 0 OID 0)
-- Dependencies: 240
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
-- TOC entry 2891 (class 0 OID 0)
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
-- TOC entry 2892 (class 0 OID 0)
-- Dependencies: 185
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- TOC entry 242 (class 1259 OID 37285)
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- TOC entry 2291 (class 2604 OID 36796)
-- Name: Actividad_contenido id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Actividad_contenido" ALTER COLUMN id SET DEFAULT nextval('public."Actividad_contenido_id_seq"'::regclass);


--
-- TOC entry 2292 (class 2604 OID 36804)
-- Name: Actividad_tipo_contenido id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Actividad_tipo_contenido" ALTER COLUMN id SET DEFAULT nextval('public."Actividad_tipo_contenido_id_seq"'::regclass);


--
-- TOC entry 2296 (class 2604 OID 36854)
-- Name: Area_area id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Area_area" ALTER COLUMN id SET DEFAULT nextval('public."Area_area_id_seq"'::regclass);


--
-- TOC entry 2297 (class 2604 OID 36862)
-- Name: Area_areas_carreras id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Area_areas_carreras" ALTER COLUMN id SET DEFAULT nextval('public."Area_areas_carreras_id_seq"'::regclass);


--
-- TOC entry 2295 (class 2604 OID 36840)
-- Name: Carrera_carrera id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Carrera_carrera" ALTER COLUMN id SET DEFAULT nextval('public."Carrera_carrera_id_seq"'::regclass);


--
-- TOC entry 2324 (class 2604 OID 45065)
-- Name: Curso_archivo id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_archivo" ALTER COLUMN id SET DEFAULT nextval('public."Curso_archivo_id_seq"'::regclass);


--
-- TOC entry 2326 (class 2604 OID 46171)
-- Name: Curso_archivo_notas id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_archivo_notas" ALTER COLUMN id SET DEFAULT nextval('public."Curso_archivo_notas_id_seq"'::regclass);


--
-- TOC entry 2307 (class 2604 OID 37031)
-- Name: Curso_asignatura id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_asignatura" ALTER COLUMN id SET DEFAULT nextval('public."Curso_asignatura_id_seq"'::regclass);


--
-- TOC entry 2308 (class 2604 OID 37039)
-- Name: Curso_asignatura_alumnos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_asignatura_alumnos" ALTER COLUMN id SET DEFAULT nextval('public."Curso_asignatura_alumnos_id_seq"'::regclass);


--
-- TOC entry 2309 (class 2604 OID 37047)
-- Name: Curso_curso id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_curso" ALTER COLUMN id SET DEFAULT nextval('public."Curso_curso_id_seq"'::regclass);


--
-- TOC entry 2319 (class 2604 OID 37316)
-- Name: Curso_curso_paralelo id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_curso_paralelo" ALTER COLUMN id SET DEFAULT nextval('public."Curso_curso_paralelo_id_seq"'::regclass);


--
-- TOC entry 2310 (class 2604 OID 37055)
-- Name: Curso_evaluacion id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_evaluacion" ALTER COLUMN id SET DEFAULT nextval('public."Curso_evaluacion_id_seq"'::regclass);


--
-- TOC entry 2311 (class 2604 OID 37063)
-- Name: Curso_evaluacion_alumnos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_evaluacion_alumnos" ALTER COLUMN id SET DEFAULT nextval('public."Curso_evaluacion_alumnos_id_seq"'::regclass);


--
-- TOC entry 2325 (class 2604 OID 46138)
-- Name: Curso_grupos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_grupos" ALTER COLUMN id SET DEFAULT nextval('public."Curso_grupos_id_seq"'::regclass);


--
-- TOC entry 2327 (class 2604 OID 46197)
-- Name: Curso_grupos_alumnos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_grupos_alumnos" ALTER COLUMN id SET DEFAULT nextval('public."Curso_grupos_alumnos_id_seq"'::regclass);


--
-- TOC entry 2312 (class 2604 OID 37087)
-- Name: Curso_tipo_evaluacion id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_tipo_evaluacion" ALTER COLUMN id SET DEFAULT nextval('public."Curso_tipo_evaluacion_id_seq"'::regclass);


--
-- TOC entry 2335 (class 2604 OID 46515)
-- Name: Curso_validacion_alumno id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_validacion_alumno" ALTER COLUMN id SET DEFAULT nextval('public."Curso_validacion_alumno_id_seq"'::regclass);


--
-- TOC entry 2337 (class 2604 OID 46556)
-- Name: Curso_validacion_coevaluacion id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_validacion_coevaluacion" ALTER COLUMN id SET DEFAULT nextval('public."Curso_validacion_coevaluacion_id_seq"'::regclass);


--
-- TOC entry 2336 (class 2604 OID 46523)
-- Name: Curso_validacion_grupo id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_validacion_grupo" ALTER COLUMN id SET DEFAULT nextval('public."Curso_validacion_grupo_id_seq"'::regclass);


--
-- TOC entry 2293 (class 2604 OID 36818)
-- Name: Pais_pais id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Pais_pais" ALTER COLUMN id SET DEFAULT nextval('public."Pais_pais_id_seq"'::regclass);


--
-- TOC entry 2313 (class 2604 OID 37184)
-- Name: RA_ra id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RA_ra" ALTER COLUMN id SET DEFAULT nextval('public."RA_ra_id_seq"'::regclass);


--
-- TOC entry 2333 (class 2604 OID 46389)
-- Name: Rubrica_aplicar_rubrica id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_aplicar_rubrica" ALTER COLUMN id SET DEFAULT nextval('public."Rubrica_aplicar_rubrica_id_seq"'::regclass);


--
-- TOC entry 2334 (class 2604 OID 46477)
-- Name: Rubrica_aplicar_rubricagrupo id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_aplicar_rubricagrupo" ALTER COLUMN id SET DEFAULT nextval('public."Rubrica_aplicar_rubricagrupo_id_seq"'::regclass);


--
-- TOC entry 2328 (class 2604 OID 46243)
-- Name: Rubrica_aspectos_coevaluacion id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_aspectos_coevaluacion" ALTER COLUMN id SET DEFAULT nextval('public."Rubrica_aspectos_coevaluacion_id_seq"'::regclass);


--
-- TOC entry 2332 (class 2604 OID 46354)
-- Name: Rubrica_califica id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_califica" ALTER COLUMN id SET DEFAULT nextval('public."Rubrica_califica_id_seq"'::regclass);


--
-- TOC entry 2322 (class 2604 OID 44907)
-- Name: Rubrica_calificacion_aspecto id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_calificacion_aspecto" ALTER COLUMN id SET DEFAULT nextval('public."Rubrica_calificacion_aspecto_id_seq"'::regclass);


--
-- TOC entry 2331 (class 2604 OID 46295)
-- Name: Rubrica_calificacion_coevaluacion id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_calificacion_coevaluacion" ALTER COLUMN id SET DEFAULT nextval('public."Rubrica_calificacion_coevaluacion_id_seq"'::regclass);


--
-- TOC entry 2329 (class 2604 OID 46251)
-- Name: Rubrica_descripcion_aspectos_coevaluacion id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_descripcion_aspectos_coevaluacion" ALTER COLUMN id SET DEFAULT nextval('public."Rubrica_descripcion_aspectos_coevaluacion_id_seq"'::regclass);


--
-- TOC entry 2314 (class 2604 OID 37206)
-- Name: Rubrica_estado_rubrica id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_estado_rubrica" ALTER COLUMN id SET DEFAULT nextval('public."Rubrica_estado_rubrica_id_seq"'::regclass);


--
-- TOC entry 2330 (class 2604 OID 46259)
-- Name: Rubrica_evaluar_alumnos_coevaluacion id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_evaluar_alumnos_coevaluacion" ALTER COLUMN id SET DEFAULT nextval('public."Rubrica_evaluar_alumnos_coevaluacion_id_seq"'::regclass);


--
-- TOC entry 2320 (class 2604 OID 37369)
-- Name: Rubrica_puntaje id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_puntaje" ALTER COLUMN id SET DEFAULT nextval('public."Rubrica_puntaje_id_seq"'::regclass);


--
-- TOC entry 2315 (class 2604 OID 37214)
-- Name: Rubrica_rubrica id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_rubrica" ALTER COLUMN id SET DEFAULT nextval('public."Rubrica_rubrica_id_seq"'::regclass);


--
-- TOC entry 2321 (class 2604 OID 37475)
-- Name: Rubrica_tipo_rubrica id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_tipo_rubrica" ALTER COLUMN id SET DEFAULT nextval('public."Rubrica_tipo_rubrica_id_seq"'::regclass);


--
-- TOC entry 2323 (class 2604 OID 44921)
-- Name: Rubrica_topico id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_topico" ALTER COLUMN id SET DEFAULT nextval('public."Rubrica_topico_id_seq"'::regclass);


--
-- TOC entry 2316 (class 2604 OID 37222)
-- Name: Rubrica_topico_rubricas id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_topico_rubricas" ALTER COLUMN id SET DEFAULT nextval('public."Rubrica_topico_rubricas_id_seq"'::regclass);


--
-- TOC entry 2294 (class 2604 OID 36826)
-- Name: Universidad_universidad id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Universidad_universidad" ALTER COLUMN id SET DEFAULT nextval('public."Universidad_universidad_id_seq"'::regclass);


--
-- TOC entry 2305 (class 2604 OID 37001)
-- Name: Usuario_persona id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Usuario_persona" ALTER COLUMN id SET DEFAULT nextval('public."Usuario_persona_id_seq"'::regclass);


--
-- TOC entry 2306 (class 2604 OID 37009)
-- Name: Usuario_tipousuario id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Usuario_tipousuario" ALTER COLUMN id SET DEFAULT nextval('public."Usuario_tipousuario_id_seq"'::regclass);


--
-- TOC entry 2300 (class 2604 OID 36900)
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- TOC entry 2301 (class 2604 OID 36910)
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- TOC entry 2299 (class 2604 OID 36892)
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- TOC entry 2302 (class 2604 OID 36918)
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- TOC entry 2303 (class 2604 OID 36928)
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- TOC entry 2304 (class 2604 OID 36936)
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- TOC entry 2317 (class 2604 OID 37260)
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- TOC entry 2298 (class 2604 OID 36882)
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- TOC entry 2290 (class 2604 OID 36785)
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- TOC entry 2745 (class 0 OID 36793)
-- Dependencies: 188
-- Data for Name: Actividad_contenido; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Actividad_contenido" (id, nombre, tipo_id) FROM stdin;
\.


--
-- TOC entry 2893 (class 0 OID 0)
-- Dependencies: 187
-- Name: Actividad_contenido_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Actividad_contenido_id_seq"', 1, false);


--
-- TOC entry 2747 (class 0 OID 36801)
-- Dependencies: 190
-- Data for Name: Actividad_tipo_contenido; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Actividad_tipo_contenido" (id, nombre) FROM stdin;
\.


--
-- TOC entry 2894 (class 0 OID 0)
-- Dependencies: 189
-- Name: Actividad_tipo_contenido_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Actividad_tipo_contenido_id_seq"', 1, false);


--
-- TOC entry 2755 (class 0 OID 36851)
-- Dependencies: 198
-- Data for Name: Area_area; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Area_area" (id, nombre) FROM stdin;
\.


--
-- TOC entry 2895 (class 0 OID 0)
-- Dependencies: 197
-- Name: Area_area_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Area_area_id_seq"', 1, false);


--
-- TOC entry 2757 (class 0 OID 36859)
-- Dependencies: 200
-- Data for Name: Area_areas_carreras; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Area_areas_carreras" (id, area_id, carrera_id) FROM stdin;
\.


--
-- TOC entry 2896 (class 0 OID 0)
-- Dependencies: 199
-- Name: Area_areas_carreras_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Area_areas_carreras_id_seq"', 1, false);


--
-- TOC entry 2753 (class 0 OID 36837)
-- Dependencies: 196
-- Data for Name: Carrera_carrera; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Carrera_carrera" (id, nombre, universidad_id) FROM stdin;
1	Ingeniería de Ejecución en Informática	1
2	Ingeniería Civil Informática	1
3	Ingeniería Civil en Ciencia de Datos	1
4	Ingeniería de Transporte	1
\.


--
-- TOC entry 2897 (class 0 OID 0)
-- Dependencies: 195
-- Name: Carrera_carrera_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Carrera_carrera_id_seq"', 1, false);


--
-- TOC entry 2811 (class 0 OID 45062)
-- Dependencies: 254
-- Data for Name: Curso_archivo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Curso_archivo" (id, doc, curso_id) FROM stdin;
13	plantillas/2021/10/05/plantilla-subir-listado-alumnos2874144417855.xlsx	1
16	plantillas/2021/10/15/plantilla-subir-listado-alumnos9549784696893_WVJSeAi.xlsx	2
\.


--
-- TOC entry 2898 (class 0 OID 0)
-- Dependencies: 253
-- Name: Curso_archivo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Curso_archivo_id_seq"', 16, true);


--
-- TOC entry 2815 (class 0 OID 46168)
-- Dependencies: 258
-- Data for Name: Curso_archivo_notas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Curso_archivo_notas" (id, doc, curso_id, evaluacion_id) FROM stdin;
5	notas_alumnos/2021/10/05/plantilla-subir-notas-grupos6652884800248.xlsx	1	25
\.


--
-- TOC entry 2899 (class 0 OID 0)
-- Dependencies: 257
-- Name: Curso_archivo_notas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Curso_archivo_notas_id_seq"', 5, true);


--
-- TOC entry 2778 (class 0 OID 37028)
-- Dependencies: 221
-- Data for Name: Curso_asignatura; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Curso_asignatura" (id, nombre, sigla, autor_id, carrera_id) FROM stdin;
1	Taller de Ingeniería en Software	INF 4550	1	1
2	Taller de Ingeniería de Software	ICI 4540	1	2
\.


--
-- TOC entry 2780 (class 0 OID 37036)
-- Dependencies: 223
-- Data for Name: Curso_asignatura_alumnos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Curso_asignatura_alumnos" (id, alumno_id, curso_id, evaluacion_id, flag) FROM stdin;
43	17876618-K	1	\N	f
44	18396551-4	1	\N	f
45	18618471-8	1	\N	f
46	18703465-5	1	\N	f
47	19129738-5	1	\N	f
48	19170720-6	1	\N	f
49	19296237-4	1	\N	f
50	19379257-K	1	\N	f
51	19489428-7	1	\N	f
52	19618190-3	1	\N	f
53	19620321-4	1	\N	f
54	19639662-4	1	\N	f
55	19664987-5	1	\N	f
56	19740399-3	1	\N	f
57	19744280-8	1	\N	f
58	19776509-7	1	\N	f
59	19864174-K	1	\N	f
60	19893799-1	1	\N	f
61	19925203-8	1	\N	f
62	20026704-4	1	\N	f
63	20068333-1	1	\N	f
64	20084043-7	1	\N	f
65	20168573-7	1	\N	f
66	20168574-5	1	\N	f
67	20182785-K	1	\N	f
68	20185581-0	1	\N	f
69	20200061-4	1	\N	f
70	20319707-1	1	\N	f
71	20330968-6	1	\N	f
72	20358967-0	1	\N	f
73	20360953-1	1	\N	f
74	19047039-3	2	\N	f
75	19488062-6	2	\N	f
76	19135592-K	2	\N	f
77	19604430-2	2	\N	f
78	19527109-7	2	\N	f
79	19581364-7	2	\N	f
80	20483589-6	2	\N	f
81	19800459-6	2	\N	f
82	19976706-2	2	\N	f
83	19939761-3	2	\N	f
84	19919145-4	2	\N	f
85	19946019-6	2	\N	f
86	19329961-K	2	\N	f
87	19924656-9	2	\N	f
88	19903732-3	2	\N	f
89	20123526-K	2	\N	f
90	20038932-8	2	\N	f
91	19640199-7	2	\N	f
92	20043750-0	2	\N	f
93	19776968-8	2	\N	f
94	19615044-7	2	\N	f
95	19981584-9	2	\N	f
96	17619315-8	2	\N	f
97	20009066-7	2	\N	f
98	18063790-7	2	\N	f
99	20319876-0	2	\N	f
100	19375239-K	2	\N	f
101	20271328-9	2	\N	f
102	20302296-4	2	\N	f
103	20133394-6	2	\N	f
104	19274945-K	2	\N	f
105	20038406-7	2	\N	f
106	20183331-0	2	\N	f
107	20360262-6	2	\N	f
108	19941645-6	2	\N	f
109	19488487-7	2	\N	f
110	19403620-5	2	\N	f
111	19776416-3	2	\N	f
112	20325618-3	2	\N	f
113	20468825-7	2	\N	f
114	20358945-K	2	\N	f
115	20244786-4	2	\N	f
116	20181998-9	2	\N	f
117	20004006-6	2	\N	f
118	20010736-5	2	\N	f
119	20063873-5	2	\N	f
120	20184001-5	2	\N	f
121	20395223-6	2	\N	f
122	19788180-1	2	\N	f
123	20257516-1	2	\N	f
124	20172278-0	2	\N	f
125	20319456-0	2	\N	f
126	19757707-K	2	\N	f
127	20308953-8	2	\N	f
128	20249999-6	2	\N	f
129	19618445-7	2	\N	f
130	20481689-1	2	\N	f
131	20181518-5	2	\N	f
132	19939720-6	2	\N	f
133	18635606-3	2	\N	f
134	20501973-1	2	\N	f
135	19831791-8	2	\N	f
136	19669698-9	2	\N	f
137	19617157-6	2	\N	f
138	19329311-5	2	\N	f
139	19829733-K	2	\N	f
140	20185019-3	2	\N	f
141	20166453-5	2	\N	f
142	19667854-9	2	\N	f
143	19575089-0	2	\N	f
144	19490543-2	2	\N	f
145	19255980-4	2	\N	f
146	21432852-6	2	\N	f
\.


--
-- TOC entry 2900 (class 0 OID 0)
-- Dependencies: 222
-- Name: Curso_asignatura_alumnos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Curso_asignatura_alumnos_id_seq"', 146, true);


--
-- TOC entry 2901 (class 0 OID 0)
-- Dependencies: 220
-- Name: Curso_asignatura_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Curso_asignatura_id_seq"', 5, true);


--
-- TOC entry 2782 (class 0 OID 37044)
-- Dependencies: 225
-- Data for Name: Curso_curso; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Curso_curso" (id, semestre, anio, asignatura_id, profesor_id, paralelo_id) FROM stdin;
1	2	2021	1	108	1
2	2	2021	2	108	1
\.


--
-- TOC entry 2902 (class 0 OID 0)
-- Dependencies: 224
-- Name: Curso_curso_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Curso_curso_id_seq"', 5, true);


--
-- TOC entry 2801 (class 0 OID 37313)
-- Dependencies: 244
-- Data for Name: Curso_curso_paralelo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Curso_curso_paralelo" (id, nombre) FROM stdin;
1	1
2	2
3	3
\.


--
-- TOC entry 2903 (class 0 OID 0)
-- Dependencies: 243
-- Name: Curso_curso_paralelo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Curso_curso_paralelo_id_seq"', 1, false);


--
-- TOC entry 2784 (class 0 OID 37052)
-- Dependencies: 227
-- Data for Name: Curso_evaluacion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Curso_evaluacion" (id, nombre, ponderacion, is_grupal, curso_id, tipo_id) FROM stdin;
25	Evaluación 1	10	t	1	6
26	Evaluación Prueba	10	t	2	4
\.


--
-- TOC entry 2786 (class 0 OID 37060)
-- Dependencies: 229
-- Data for Name: Curso_evaluacion_alumnos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Curso_evaluacion_alumnos" (id, nota, alumno_id, evaluacion_id, curso_id) FROM stdin;
40	30	18396551-4	25	1
41	30	20200061-4	25	1
42	30	20360953-1	25	1
43	30	19744280-8	25	1
44	30	17876618-K	25	1
45	30	18618471-8	25	1
46	30	19620321-4	25	1
47	30	19379257-K	25	1
48	30	20026704-4	25	1
49	30	19489428-7	25	1
50	30	19639662-4	25	1
51	30	20084043-7	25	1
52	30	19740399-3	25	1
53	30	20068333-1	25	1
54	30	19618190-3	25	1
55	50	20319707-1	25	1
56	50	19296237-4	25	1
57	50	19925203-8	25	1
58	50	20185581-0	25	1
59	50	19864174-K	25	1
60	50	20358967-0	25	1
61	50	19664987-5	25	1
62	50	19776509-7	25	1
63	50	20182785-K	25	1
64	50	19170720-6	25	1
65	50	18703465-5	25	1
66	50	19129738-5	25	1
67	50	19893799-1	25	1
68	50	20168573-7	25	1
69	50	20168574-5	25	1
70	50	20330968-6	25	1
\.


--
-- TOC entry 2904 (class 0 OID 0)
-- Dependencies: 228
-- Name: Curso_evaluacion_alumnos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Curso_evaluacion_alumnos_id_seq"', 70, true);


--
-- TOC entry 2905 (class 0 OID 0)
-- Dependencies: 226
-- Name: Curso_evaluacion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Curso_evaluacion_id_seq"', 26, true);


--
-- TOC entry 2813 (class 0 OID 46135)
-- Dependencies: 256
-- Data for Name: Curso_grupos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Curso_grupos" (id, nombre, carrera_id, curso_id, asignatura_id, flag) FROM stdin;
2	Grupo 2	1	1	1	f
3	Grupo 3	1	1	1	f
4	Grupo 4	1	1	1	f
5	Grupo 5	1	1	1	f
6	Grupo 6	1	1	1	f
7	Grupo 7	1	1	1	f
1	Grupo 1	1	1	1	f
8	Grupo 1	2	2	2	f
9	Grupo 2	2	2	2	f
10	Grupo 3	2	2	2	f
11	Grupo 4	2	2	2	f
12	Grupo 5	2	2	2	f
13	Grupo 6	2	2	2	f
14	Grupo 7	2	2	2	f
15	Grupo 8	2	2	2	f
16	Grupo 9	2	2	2	f
17	Grupo 10	2	2	2	f
18	Grupo 11	2	2	2	f
19	Grupo 12	2	2	2	f
20	Grupo 13	2	2	2	f
21	Grupo 14	2	2	2	f
\.


--
-- TOC entry 2817 (class 0 OID 46194)
-- Dependencies: 260
-- Data for Name: Curso_grupos_alumnos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Curso_grupos_alumnos" (id, alumno_id, asignatura_id, curso_id, grupo_id, flag) FROM stdin;
36	20319876-0	2	2	1	f
37	20009066-7	2	2	1	f
38	19274945-K	2	2	1	f
39	19776416-3	2	2	1	f
5	18396551-4	1	1	1	f
7	20200061-4	1	1	1	f
8	20360953-1	1	1	1	f
10	20026704-4	1	1	2	f
11	18618471-8	1	1	2	f
12	19620321-4	1	1	2	f
13	19379257-K	1	1	2	f
14	19740399-3	1	1	3	f
15	19489428-7	1	1	3	f
16	19639662-4	1	1	3	f
17	20084043-7	1	1	3	f
18	19925203-8	1	1	4	f
19	20068333-1	1	1	4	f
20	19618190-3	1	1	4	f
21	20319707-1	1	1	4	f
22	19296237-4	1	1	4	f
23	19776509-7	1	1	5	f
24	20185581-0	1	1	5	f
25	19864174-K	1	1	5	f
26	20358967-0	1	1	5	f
27	19664987-5	1	1	5	f
28	19129738-5	1	1	6	f
29	20182785-K	1	1	6	f
32	20168573-7	1	1	7	f
33	20168574-5	1	1	7	f
34	20330968-6	1	1	7	f
35	19893799-1	1	1	7	f
40	20360262-6	2	2	1	f
41	20183331-0	2	2	2	f
42	20181998-9	2	2	2	f
43	20249999-6	2	2	2	f
44	19788180-1	2	2	2	f
45	19329961-K	2	2	2	f
46	19903732-3	2	2	3	f
47	20038932-8	2	2	3	f
48	19615044-7	2	2	3	f
49	19640199-7	2	2	3	f
50	19924656-9	2	2	3	f
51	19946019-6	2	2	3	f
52	19981584-9	2	2	4	f
53	19135592-K	2	2	4	f
54	20325618-3	2	2	4	f
55	20358945-K	2	2	4	f
56	19939761-3	2	2	4	f
57	20123526-K	2	2	5	f
58	19976706-2	2	2	5	f
59	19581364-7	2	2	5	f
60	20302296-4	2	2	5	f
61	21432852-6	2	2	5	f
62	19488487-7	2	2	6	f
63	20133394-6	2	2	6	f
64	19403620-5	2	2	6	f
65	20468825-7	2	2	6	f
66	20004006-6	2	2	6	f
67	19618445-7	2	2	7	f
68	20184001-5	2	2	7	f
31	19170720-6	1	1	6	f
69	20395223-6	2	2	7	f
70	19329311-5	2	2	7	f
71	19939720-6	2	2	7	f
72	20172278-0	2	2	8	f
73	19490543-2	2	2	8	f
74	19667854-9	2	2	8	f
75	20244786-4	2	2	8	f
76	19047039-3	2	2	8	f
30	18703465-5	1	1	6	t
77	20038406-7	2	2	9	f
78	20043750-0	2	2	9	f
79	19776968-8	2	2	9	f
80	20257516-1	2	2	9	f
81	19919145-4	2	2	10	f
82	19757707-K	2	2	10	f
83	19575089-0	2	2	10	f
84	19831791-8	2	2	10	f
85	20483589-6	2	2	10	f
86	19488062-6	2	2	11	f
87	20319456-0	2	2	11	f
88	20166453-5	2	2	11	f
89	20481689-1	2	2	11	f
90	20308953-8	2	2	11	f
91	20063873-5	2	2	11	f
92	18063790-7	2	2	12	f
93	19604430-2	2	2	12	f
6	17876618-K	1	1	1	t
94	19800459-6	2	2	12	f
95	20501973-1	2	2	12	f
96	19527109-7	2	2	12	f
97	19255980-4	2	2	12	f
98	17619315-8	2	2	13	f
99	20010736-5	2	2	13	f
100	20181518-5	2	2	13	f
101	19375239-K	2	2	13	f
9	19744280-8	1	1	1	t
102	20271328-9	2	2	13	f
103	19617157-6	2	2	14	f
104	20185019-3	2	2	14	f
105	18635606-3	2	2	14	f
106	19669698-9	2	2	14	f
107	19829733-K	2	2	14	f
108	19941645-6	2	2	14	f
\.


--
-- TOC entry 2906 (class 0 OID 0)
-- Dependencies: 259
-- Name: Curso_grupos_alumnos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Curso_grupos_alumnos_id_seq"', 1, true);


--
-- TOC entry 2907 (class 0 OID 0)
-- Dependencies: 255
-- Name: Curso_grupos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Curso_grupos_id_seq"', 1, false);


--
-- TOC entry 2788 (class 0 OID 37084)
-- Dependencies: 231
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
-- TOC entry 2908 (class 0 OID 0)
-- Dependencies: 230
-- Name: Curso_tipo_evaluacion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Curso_tipo_evaluacion_id_seq"', 1, false);


--
-- TOC entry 2833 (class 0 OID 46512)
-- Dependencies: 276
-- Data for Name: Curso_validacion_alumno; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Curso_validacion_alumno" (id, flag, alumno_id, evaluacion_id) FROM stdin;
\.


--
-- TOC entry 2909 (class 0 OID 0)
-- Dependencies: 275
-- Name: Curso_validacion_alumno_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Curso_validacion_alumno_id_seq"', 1, false);


--
-- TOC entry 2837 (class 0 OID 46553)
-- Dependencies: 280
-- Data for Name: Curso_validacion_coevaluacion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Curso_validacion_coevaluacion" (id, flag, alumno_id, evaluacion_id, user_id) FROM stdin;
\.


--
-- TOC entry 2910 (class 0 OID 0)
-- Dependencies: 279
-- Name: Curso_validacion_coevaluacion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Curso_validacion_coevaluacion_id_seq"', 37, true);


--
-- TOC entry 2835 (class 0 OID 46520)
-- Dependencies: 278
-- Data for Name: Curso_validacion_grupo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Curso_validacion_grupo" (id, flag, evaluacion_id, grupo_id) FROM stdin;
\.


--
-- TOC entry 2911 (class 0 OID 0)
-- Dependencies: 277
-- Name: Curso_validacion_grupo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Curso_validacion_grupo_id_seq"', 25, true);


--
-- TOC entry 2749 (class 0 OID 36815)
-- Dependencies: 192
-- Data for Name: Pais_pais; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Pais_pais" (id, nombre) FROM stdin;
1	Chile
\.


--
-- TOC entry 2912 (class 0 OID 0)
-- Dependencies: 191
-- Name: Pais_pais_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Pais_pais_id_seq"', 1, false);


--
-- TOC entry 2790 (class 0 OID 37181)
-- Dependencies: 233
-- Data for Name: RA_ra; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."RA_ra" (id, nombre, codigo, asignatura_id, autor_id) FROM stdin;
\.


--
-- TOC entry 2913 (class 0 OID 0)
-- Dependencies: 232
-- Name: RA_ra_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."RA_ra_id_seq"', 5, true);


--
-- TOC entry 2829 (class 0 OID 46386)
-- Dependencies: 272
-- Data for Name: Rubrica_aplicar_rubrica; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Rubrica_aplicar_rubrica" (id, alumno_id, aspecto_id, calificacion_id, evaluacion_id, rubrica_id, flag, grupo_id) FROM stdin;
\.


--
-- TOC entry 2914 (class 0 OID 0)
-- Dependencies: 271
-- Name: Rubrica_aplicar_rubrica_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Rubrica_aplicar_rubrica_id_seq"', 39, true);


--
-- TOC entry 2831 (class 0 OID 46474)
-- Dependencies: 274
-- Data for Name: Rubrica_aplicar_rubricagrupo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Rubrica_aplicar_rubricagrupo" (id, flag, aspecto_id, calificacion_id, evaluacion_id, grupo_id, rubrica_id) FROM stdin;
32	t	33	4	25	5	15
33	t	33	2	25	1	15
34	t	33	2	25	2	15
35	t	33	2	25	3	15
36	t	33	2	25	2	15
37	t	33	2	25	5	15
38	t	33	2	25	6	15
39	t	33	2	25	1	15
22	t	33	2	25	1	15
23	t	33	2	25	2	15
24	t	33	2	25	3	15
25	t	33	1	25	7	15
26	t	33	1	25	1	15
27	t	33	1	25	2	15
28	t	33	4	25	3	15
29	t	33	4	25	4	15
30	t	33	1	25	7	15
31	t	33	4	25	6	15
\.


--
-- TOC entry 2915 (class 0 OID 0)
-- Dependencies: 273
-- Name: Rubrica_aplicar_rubricagrupo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Rubrica_aplicar_rubricagrupo_id_seq"', 39, true);


--
-- TOC entry 2819 (class 0 OID 46240)
-- Dependencies: 262
-- Data for Name: Rubrica_aspectos_coevaluacion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Rubrica_aspectos_coevaluacion" (id, nombre, codigo) FROM stdin;
1	Cumplimiento de tareas asignadas	A1
2	Participación activa	A2
3	Organización y distribución de tareas del equipo	A3
4	Toma en cuenta los puntos de vista de los demás y retroalimenta de forma constructiva	A4
5	Contribución Participación	A5
6	Actitud	A6
7	Responsabilidad	A7
8	Asistencia y puntualidad	A8
9	Resolución de conflictos	A9
\.


--
-- TOC entry 2916 (class 0 OID 0)
-- Dependencies: 261
-- Name: Rubrica_aspectos_coevaluacion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Rubrica_aspectos_coevaluacion_id_seq"', 1, false);


--
-- TOC entry 2827 (class 0 OID 46351)
-- Dependencies: 270
-- Data for Name: Rubrica_califica; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Rubrica_califica" (id, nombre, ponderacion) FROM stdin;
1	1	INSUFICIENTE
2	2	SUFICIENTE
3	3	BUENO
4	4	EXCELENTE
\.


--
-- TOC entry 2917 (class 0 OID 0)
-- Dependencies: 269
-- Name: Rubrica_califica_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Rubrica_califica_id_seq"', 1, false);


--
-- TOC entry 2807 (class 0 OID 44904)
-- Dependencies: 250
-- Data for Name: Rubrica_calificacion_aspecto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Rubrica_calificacion_aspecto" (id, nombre, flag, rubrica_id, valor) FROM stdin;
2	SUFICIENTE	t	\N	3
3	BUENO	t	\N	1
4	EXCELENTE	t	\N	12
1	INSUFICIENTE	t	\N	1
\.


--
-- TOC entry 2918 (class 0 OID 0)
-- Dependencies: 249
-- Name: Rubrica_calificacion_aspecto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Rubrica_calificacion_aspecto_id_seq"', 1, false);


--
-- TOC entry 2825 (class 0 OID 46292)
-- Dependencies: 268
-- Data for Name: Rubrica_calificacion_coevaluacion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Rubrica_calificacion_coevaluacion" (id, nombre, flag, valor) FROM stdin;
1	INSUFICIENTE	t	\N
2	SUFICIENTE	t	\N
3	BUENO	t	\N
4	EXCELENTE	t	\N
\.


--
-- TOC entry 2919 (class 0 OID 0)
-- Dependencies: 267
-- Name: Rubrica_calificacion_coevaluacion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Rubrica_calificacion_coevaluacion_id_seq"', 1, false);


--
-- TOC entry 2821 (class 0 OID 46248)
-- Dependencies: 264
-- Data for Name: Rubrica_descripcion_aspectos_coevaluacion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Rubrica_descripcion_aspectos_coevaluacion" (id, nombre, aspecto_id, calificacion_id) FROM stdin;
1	Cumple las tareas asignadas en los plazos requeridos. La calidad de la tarea supone un notable aporte al equipo. Su trabajo orienta y facilita el del resto de los miembros del equipo.	1	4
2	Cumple las tareas asignadas en los plazos requeridos. La calidad de la tarea supone un aporte al equipo.	1	3
3	Cumple parcialmente las tareas asignadas y en los plazos requeridos.	1	2
4	No cumple las tareas asignadas o no cumple con los plazos requeridos.	1	1
5	Se muestra activo y participativo en los encuentros de grupo. Con sus intervenciones fomenta la participación y mejora la calidad de los resultados del equipo. Sus contribuciones son fundamentales tanto para el proceso grupal como para la calidad del resultado.	2	4
6	Se muestra activo y participativo en los encuentros de grupo. Con sus intervenciones fomenta la participación y mejora la calidad de los resultados del equipo.	2	3
7	Interviene poco en el debate, principalmente a requerimientos de los demás.	2	2
8	Se ausenta con frecuencia y su participación es mínima.	2	1
9	Participa en la planificación, organización y distribución del trabajo en equipo. Es organizado y distribuye las tareas con eficacia. Fomenta una organización del trabajo aprovechando los recursos de los miembros del equipo.	3	4
10	Participa en la planificación, organización y distribución del trabajo en equipo. Es organizado y distribuye las tareas con eficacia.	3	3
11	Se limita a aceptar la organización del trabajo propuesta por otros miembros del equipo.	3	2
12	Manifiesta resistencias ante la organización del trabajo en el equipo.	3	1
13	Acepta las opiniones de los otros y sabe dar su punto de vista en forma constructiva. Fomenta el diálogo constructivo e inspira la participación de calidad de los otros miembros del grupo. Integra las opiniones de los otros en una perspectiva superior, manteniendo un clima de colaboración y apoyo.	4	4
14	Acepta las opiniones de los otros y sabe dar su punto de vista en forma constructiva. Fomenta el diálogo constructivo e inspira la participación de calidad de los otros miembros del grupo. 	4	3
15	Escucha poco, no pregunta, no se preocupa por la opinión de los otros. Sus intervenciones son redundantes y poco sugerentes.	4	2
16	No escucha las intervenciones de sus compañeros y las descalifica sistemáticamente. Quiere imponer sus opiniones.	4	1
17	Siempre ofrece ideas para realizar el trabajo y propone sugerencias para su mejora. Se esfuerza para alcanzar los objetivos del grupo.	5	4
18	Ofrece ideas para realizar el trabajo, aunque pocas veces propone sugerencias para su mejora. Se esfuerza para alcanzar los objetivos del grupo.	5	3
19	Algunas veces ofrece ideas para realizar el trabajo. Pero nunca propone sugerencias para su mejora. Acepta las propuestas de otros para alcanzar los objetivos del grupo.	5	2
20	Nunca ofrece ideas para realizar el trabajo, ni propone sugerencias para su mejora.  En ocasiones dificulta las propuestas de otros para alcanzar los objetivos del grupo.	5	1
21	Siempre escucha y comparte las ideas de sus compañeros e intenta integrarlas.  Busca cómo mantener la unión en el grupo.	6	4
22	Suele escuchar y compartir las ideas de sus compañeros, pero no ofrece cómo integrarlas. Colabora en mantener la unión en el grupo	6	3
23	A veces escucha las ideas de sus compañeros, y acepta integrarlas. No le preocupa la unión en el grupo.	6	2
24	Muy pocas veces escucha y comparte las ideas de sus compañeros. No ayuda a mantener la unión en el grupo.	6	1
25	Siempre entrega su trabajo a tiempo y el grupo no tiene que modificar sus fechas o plazos.	7	4
26	En ocasiones se retrasa en la entrega de su trabajo, aunque el grupo no tiene que modificar sus fechas o plazos.	7	3
27	Muchas veces se retrasa en la entrega de su trabajo, y el grupo tiene que modificar a veces sus fechas o plazos.	7	2
28	Nunca entrega su trabajo a tiempo y el grupo debe modificar sus fechas o plazos.	7	1
29	Asistió siempre a las reuniones del grupo y fue puntual.	8	4
30	Asistió de un 75% a 90% de las reuniones y siempre fue puntual.	8	3
31	Asistió de un 61% a 74% de las reuniones y no siempre fue puntual.	8	2
32	Asistió como máximo al 60% de las reuniones  y siempre llegó tarde.	8	1
33	En situaciones de desacuerdo o conflicto, siempre escucha otras opiniones y acepta sugerencias. Siempre propone alternativas para el consenso o la solución.	9	4
34	En situaciones de desacuerdo o conflicto, casi siempre escucha otras opiniones y acepta sugerencias. A veces propone alternativas para el consenso o solución.	9	3
35	En situaciones de desacuerdo o conflicto, pocas veces escucha otras opiniones o acepta sugerencias.  No propone alternativas para el consenso, pero los acepta.	9	2
36	En situaciones de desacuerdo o conflicto, no escucha otras opiniones o acepta sugerencias. No propone alternativas y le cuesta aceptar el consenso o la solución.	9	1
\.


--
-- TOC entry 2920 (class 0 OID 0)
-- Dependencies: 263
-- Name: Rubrica_descripcion_aspectos_coevaluacion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Rubrica_descripcion_aspectos_coevaluacion_id_seq"', 1, false);


--
-- TOC entry 2792 (class 0 OID 37203)
-- Dependencies: 235
-- Data for Name: Rubrica_estado_rubrica; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Rubrica_estado_rubrica" (id, nombre) FROM stdin;
1	No Iniciada
3	Finalizada
4	Activa
2	En Proceso
5	Aplicada
\.


--
-- TOC entry 2921 (class 0 OID 0)
-- Dependencies: 234
-- Name: Rubrica_estado_rubrica_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Rubrica_estado_rubrica_id_seq"', 1, false);


--
-- TOC entry 2823 (class 0 OID 46256)
-- Dependencies: 266
-- Data for Name: Rubrica_evaluar_alumnos_coevaluacion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Rubrica_evaluar_alumnos_coevaluacion" (id, alumno_id, user_id, grupo_id, evaluacion_id, opinion_id, aspecto_id) FROM stdin;
\.


--
-- TOC entry 2922 (class 0 OID 0)
-- Dependencies: 265
-- Name: Rubrica_evaluar_alumnos_coevaluacion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Rubrica_evaluar_alumnos_coevaluacion_id_seq"', 863, true);


--
-- TOC entry 2803 (class 0 OID 37366)
-- Dependencies: 246
-- Data for Name: Rubrica_puntaje; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Rubrica_puntaje" (id, descripcion, rubrica_id, calificacion_id, topico_id) FROM stdin;
63	suficiente	\N	2	33
64	bueno	\N	3	33
65	excelente	\N	4	33
66	insuficiente	\N	1	33
\.


--
-- TOC entry 2923 (class 0 OID 0)
-- Dependencies: 245
-- Name: Rubrica_puntaje_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Rubrica_puntaje_id_seq"', 66, true);


--
-- TOC entry 2794 (class 0 OID 37211)
-- Dependencies: 237
-- Data for Name: Rubrica_rubrica; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Rubrica_rubrica" (id, nombre, is_private, fecha_creacion, autor_id, estado_id, evaluacion_id, curso_id, tipo_id) FROM stdin;
15	Rúbrica 1	f	2021-10-05	108	3	25	1	1
16	Rúbrica prueba	t	2021-10-19	108	3	26	2	4
\.


--
-- TOC entry 2924 (class 0 OID 0)
-- Dependencies: 236
-- Name: Rubrica_rubrica_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Rubrica_rubrica_id_seq"', 16, true);


--
-- TOC entry 2805 (class 0 OID 37472)
-- Dependencies: 248
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
-- TOC entry 2925 (class 0 OID 0)
-- Dependencies: 247
-- Name: Rubrica_tipo_rubrica_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Rubrica_tipo_rubrica_id_seq"', 1, false);


--
-- TOC entry 2809 (class 0 OID 44918)
-- Dependencies: 252
-- Data for Name: Rubrica_topico; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Rubrica_topico" (id, nombre, estado, user_id) FROM stdin;
31	prueba1	Definido	108
32	prueba2	Sin Definir	108
33	Redaccion	Definido	108
\.


--
-- TOC entry 2926 (class 0 OID 0)
-- Dependencies: 251
-- Name: Rubrica_topico_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Rubrica_topico_id_seq"', 33, true);


--
-- TOC entry 2796 (class 0 OID 37219)
-- Dependencies: 239
-- Data for Name: Rubrica_topico_rubricas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Rubrica_topico_rubricas" (id, rubrica_id, topico_id, ponderacion) FROM stdin;
10	15	33	100
11	16	31	60
12	16	32	40
\.


--
-- TOC entry 2927 (class 0 OID 0)
-- Dependencies: 238
-- Name: Rubrica_topico_rubricas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Rubrica_topico_rubricas_id_seq"', 12, true);


--
-- TOC entry 2751 (class 0 OID 36823)
-- Dependencies: 194
-- Data for Name: Universidad_universidad; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Universidad_universidad" (id, nombre, pais_id) FROM stdin;
1	Pontificia Universidad Católica de Valparaíso	1
\.


--
-- TOC entry 2928 (class 0 OID 0)
-- Dependencies: 193
-- Name: Universidad_universidad_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Universidad_universidad_id_seq"', 1, false);


--
-- TOC entry 2772 (class 0 OID 36991)
-- Dependencies: 215
-- Data for Name: Usuario_alumno; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Usuario_alumno" (rut, nombre, apellido_pat, apellido_mat, mail, telefono, user_id, carrera_id) FROM stdin;
19939761-3	JAVIER FERNANDO	SOUZA	VIDAL	javier.souza.v@mail.pucv.cl	\N	108	2
18396551-4	PEDRO PABLO	GALLI	SOLANO	pedro.galli93@gmail.com	\N	108	1
19129738-5	PATRICIO ANDRES	IBARRA	CASANOVA	patricio.ibarra.c@mail.pucv.cl	\N	108	1
19489428-7	BRANDON ALEXANDER	GARRIDO	PEREIRA	brandon_97_03@hotmail.com	\N	108	1
19296237-4	ESTEBAN MAURICIO	PALLANTE	OLIVARES	pallante2108@gmail.com	\N	108	1
19620321-4	NICOLAS IGNACIO	REYMAR	SANTIBAÑEZ	nicolasreymars@hotmail.com	\N	108	1
19170720-6	BELINDA AMALIA	ROMO	GONZALEZ	belinda.romo.g@mail.pucv.cl	\N	108	1
19618190-3	NICHOLAS ALEXANDER	MOLINA	TORRES	nicholas.molina.t@mail.pucv.cl	\N	108	1
19664987-5	DANIEL ALEXIS	SALGADO	BORQUEZ	daniel.salgado.b@mail.pucv.cl	\N	108	1
19776509-7	DIEGO JAVIER	ALVARADO	BECERRA	diego.alvarado.b@mail.pucv.cl	\N	108	1
20084043-7	JONATHAN AARON	REYES	VASQUEZ	jonathan.reyes.v@mail.pucv.cl	\N	108	1
20026704-4	NICOLAS ALEJANDRO	GONZALEZ	MARIN	nicolas.gonzalez.m01@mail.pucv.cl	\N	108	1
19744280-8	FRANCO ENZO	VERA	PARRA	franco.vera.p@mail.pucv.cl	\N	108	1
19740399-3	DANIEL IGNACIO	GALVEZ	DIAZ	daniel.galvez.d@mail.pucv.cl	\N	108	1
19379257-K	CRISTIAN IGNACIO	TAPIA	SALAS	cristian.tapia.s@mail.pucv.cl	\N	108	1
19864174-K	IGNACIO ESTEBAN	CORTES	RUZ	ignacio.cortes.r@mail.pucv.cl	\N	108	1
19925203-8	MATIAS EDUARDO	ALVARADO	ARAYA	matias.alvarado.a@mail.pucv.cl	\N	108	1
19639662-4	JAVIER IGNACIO	IBAÑEZ	ACEVEDO	javier.ibanez.a@mail.pucv.cl	\N	108	1
20182785-K	JAVIERA IGNACIA	ITURRA	CASTILLO	javiera.iturra.c@mail.pucv.cl	\N	108	1
18618471-8	VALENTINA ALEJANDRA	MADARIAGA	ESCOBAR	valentina.madariaga.e@mai.pucv.cl	\N	108	1
20358967-0	TOMAS BENJAMIN	JIMENEZ	ARCAYA	tomas.jimenez.a@mail.pucv.cl	\N	108	1
20319707-1	GIANLUCA CRISTOBAL	OLIVARES	GALLARDO	gianluca.olivares.g@mail.pucv.cl	\N	108	1
20068333-1	JASON GIOVANNI	DAVECCHI	OYANEDER	Jasongdo17@gmail.com	\N	108	1
20185581-0	CAROLINA IGNACIA	CASTILLO	PORRAS	carolina.castillo.p01@mail.pucv.cl	\N	108	1
17876618-K	CECILIA ALEXIA	PICHICONA	MILLALEN	cecilia.pichicona.m@mail.pucv.cl	\N	108	1
20168574-5	FRANCISCA DANIELA	DIAZ	FUENZALIDA	francisca.diaz.f@mail.pucv.cl	\N	108	1
20168573-7	DIEGO MATIAS	DIAZ	FUENZALIDA	diego.diaz.f@mail.pucv.cl	\N	108	1
19893799-1	CRISTIAN AGUSTIN	SAAVEDRA	CONTRERAS	cristian.saavedra.c@mail.pucv.cl	\N	108	1
20200061-4	JOSE BASTIAN	SILVA	ARANEDA	jose.silva.a@mail.pucv.cl	\N	108	1
20330968-6	FRANCO IGNACIO	GUZMAN	ZAVALA	franco.guzman.z@mail.pucv.cl	\N	108	1
18703465-5	SEBASTIAN AXEL	MORALES	PINCHEIRA	sebastian.morales.p01@mail.pucv.cl	\N	108	1
20360953-1	JOSE IGNACIO	TORO	CARCAMO	jose.toro.c01@mail.pucv.cl	\N	108	1
19047039-3	FELIPE ANTONIO	SOTO	GUERRERO	felipe.a.soto.g@gmail.com	\N	108	2
19488062-6	PABLO ANDRES	ACUÑA	RAMIREZ	pablo.acuna.r@mail.pucv.cl	\N	108	2
19135592-K	GONZALO ESTEBAN	ESCOBAR	LEON	g.leonesteban@gmail.com	\N	108	2
19604430-2	JESUS IGNACIO	CADIZ	FERNANDEZ	cadiz_jesus@yahoo.com	\N	108	2
19527109-7	MATIAS ALEJANDRO	MARTINEZ	OLEA	mati.dh.energy@gmail.com	\N	108	2
19581364-7	JEAN LUKA	CHARNAY	PARRA	jeanlchp@gmail.com	\N	108	2
20483589-6	NICOLAS IGNACIO	VARGAS	TAPIA	vargastapianicolas@gmail.com	\N	108	2
19800459-6	PATRICIO MATIAS	MARDONES	GALVEZ	pmardonesg@hotmail.com	\N	108	2
19976706-2	KEVIN LUIS	ALARCON	BALTAZAR	kevin.alarcon.b@mail.pucv.cl	\N	108	2
19919145-4	NICOLAS HANNS	ESPINOZA	WALTEMATH	nicolas.espinoza.w@mail.pucv.cl	\N	108	2
19946019-6	JORGE IVAN	VERSCHAE	CACERES	jorge.verschae.c@mail.pucv.cl	\N	108	2
19329961-K	GABRIEL ALONSO	TORO	GUZMAN	gabriel.toro.g@mail.pucv.cl	\N	108	2
19924656-9	VICENTE TOMAS DE JESUS	SALGADO	JADUE	vicente.salgado.j@mail.pucv.cl	\N	108	2
19903732-3	ROBERTO ALONSO	CONCHA	VERGARA	roberto.concha.v@mail.pucv.cl	\N	108	2
20123526-K	ANGIE FRANCISCA	AGUILAR	MIRANDA	angie.aguilar.m@mail.pucv.cl	\N	108	2
20038932-8	BENJAMIN AARON	FRENKEL	SILVA	benjamin.frenkel.s@mail.pucv.cl	\N	108	2
19640199-7	MATIAS ARTURO	MORALES	MENDEZ	matias.morales.m@mail.pucv.cl	\N	108	2
20043750-0	RODRIGO JOAQUIN IGNACIO	ORDENES	ARCE	rodrigo.ordenes.a@mail.pucv.cl	\N	108	2
19776968-8	ARIEL FRANCISCO	PIÑA	CATALAN	ariel.pina.c@mail.pucv.cl	\N	108	2
19615044-7	BENJAMIN PATRICIO	LOPEZ	CORTES	benjamin.lopez.c@mail.pucv.cl	\N	108	2
19981584-9	CRISTIAN FELIPE	BERNAL	SALINAS	bernal.tatann@gmail.com	\N	108	2
17619315-8	ETIENNE STEPHANIE	BELLENGER	HERRERA	etienne.bellenger@gmail.com	\N	108	2
20009066-7	CESAR EDUARDO	GORDON	MUENA	cesar.gordon.m@mail.pucv.cl	\N	108	2
18063790-7	ALBERTO ESTEBAN	AGUILERA	LUENGO	albert16692a@gmail.com	\N	108	2
20319876-0	DIEGO FRANCISCO	ARAYA	VALENCIA	diegofaraya1@hotmail.com	\N	108	2
19375239-K	ALEJANDRO ESTEBAN	LOBOS	ARENAS	alejandro.lobos.a@mail.pucv.cl	\N	108	2
20271328-9	MICHAEL DAVID HUMBERTO	VILCHES	CORTES	michael.vilches.c@mail.pucv.cl	\N	108	2
20302296-4	FRANCISCO MARTIN	FLORES	FERNANDEZ	francisco.flores.f@mail.pucv.cl	\N	108	2
20133394-6	JORGE NICOLAS	GUZMAN	CURA	jorge.guzman.c@mail.pucv.cl	\N	108	2
19274945-K	PATRICIO ALEJANDRO	LABRA	VERDUGO	patricio.labra827@gmail.com	\N	108	2
20038406-7	DIEGO NICOLAS	BAEZA	GARCIA	DBaezaG09@hotmail.com	\N	108	2
20183331-0	PATRICIO ANTONIO	BARRA	REYES	patricio.barra.r@mail.pucv.cl	\N	108	2
20360262-6	IVAN DAN	SANTOS	VILA	ivan.santos.v@mail.pucv.cl	\N	108	2
19941645-6	IGNACIO ANDRES	VALDEBENITO	CACERES	ignacio.valdebenito.c@mail.pucv.cl	\N	108	2
19488487-7	MARIA GABRIELA	CASTRO	ALMENDRA	maria.castro.a@mail.pucv.cl	\N	108	2
19403620-5	BASTIAN RAMIRO	JERIA	VERGARA	bastian.jeria.v@mail.pucv.cl	\N	108	2
19776416-3	BENJAMIN FELIPE	MORALES	ORTIZ	benjamin.morales.o@mail.pucv.cl	\N	108	2
20325618-3	FRANCISCA EDULIA	JEREZ	CERDA	francisca.jerez.c@mail.pucv.cl	\N	108	2
20468825-7	KARINA NOEMI	MATAMALA	PALTA	karina.matamala.p@mail.pucv.cl	\N	108	2
20358945-K	CRISTOBAL BENJAMIN	SOTO	PIZARRO	cristobal.soto.p@mail.pucv.cl	\N	108	2
20244786-4	LEANDRO ADAN	MAUREIRA	LOPEZ	leandro.maureira.l@mail.pucv.cl	\N	108	2
20181998-9	JOSEFINA DANIELA	CASTELLON	BOBILLIER	josefina.castellon.b@mail.pucv.cl	\N	108	2
20004006-6	KARINA ANDREA	ROZAS	ROMO	karina.rozas.r@mail.pucv.cl	\N	108	2
20010736-5	MATIAS MARIO ANDRES	DIAZ	CONCHA	matiasdiaz85@gmail.com	\N	108	2
20063873-5	BENJAMIN IGNACIO	VIAL	HERMANN	benjamin.vial.h@mail.pucv.cl	\N	108	2
20184001-5	ROBERTO CRISTOBAL	ISLA	HENRIQUEZ	roberto.isla.h@mail.pucv.cl	\N	108	2
20395223-6	RAFAEL ALEJANDRO	LEMA	VEGA	rafael.lema.v@mail.pucv.cl	\N	108	2
19788180-1	MATIAS NICOLAS LEANDRO	SALINAS	BRITO	matias.salinas.b@mail.pucv.cl	\N	108	2
20257516-1	NICOLAS FERNANDO	POBLETE	ALVIAL	nicolaspobletealvial@gmail.com	\N	108	2
20172278-0	PEDRO IGNACIO	BASUALTO	LEON	pedro.basualto.l@mail.pucv.cl	\N	108	2
20319456-0	SEBASTIAN ANDRES	CATALDO	SMITH	sebastian.cataldo.s@mail.pucv.cl	\N	108	2
19757707-K	LUIS FELIPE	GONZALEZ	RIQUELME	luis.gonzalez.r01@mail.pucv.cl	\N	108	2
20308953-8	SERGIO FELIPE	TAPIA	ORTIZ	sergio.tapia.o@mail.pucv.cl	\N	108	2
20249999-6	EDUARDO ANDRES	GUTIERREZ	CERPA	eduardo.gutierrez.c@mail.pucv.cl	\N	108	2
19618445-7	JORGE CARLOS	CONTRERAS	JARA	jorge.contreras.j@mail.pucv.cl	\N	108	2
20481689-1	BENJAMIN ALEJANDRO	RAMOS	TAPIA	benjamin.ramos.t@mail.pucv.cl	\N	108	2
20181518-5	FELIPE GABRIEL	INOSTROZA	ORDENES	felipe.inostroza.o01@mail.pucv.cl	\N	108	2
19939720-6	PABLO ALBERTO ARTURO	OSSES	BRUNO	pablo.osses2@gmail.com	\N	108	2
18635606-3	MANUEL FERNANDO	ENCINA	MUÑOZ	ocich93@gmail.com	\N	108	2
20501973-1	JOSEFA OLGA	MARTINEZ	ALVAREZ	josefa.martinez.a@mail.pucv.cl	\N	108	2
19831791-8	IGNACIO ALBERTO	MONTENEGRO	GUERRA	ignacio.montenegro.g@mail.pucv.cl	\N	108	2
19669698-9	SEBASTIAN ALEJANDRO	LILLO	ACOSTA	sebastian.lillo.a@mail.pucv.cl	\N	108	2
19617157-6	FELIPE ANTONIO	BARJA	CARCAMO	felipe.barja.c@mail.pucv.cl	\N	108	2
19329311-5	DIANA PAOLA	MORAGA	PRADO	diana.moraga.p@mail.pucv.cl	\N	108	2
19829733-K	DIEGO TOMAS	MUÑOZ	MUÑOZ	diego.munoz.m02@mail.pucv.cl	\N	108	2
20185019-3	DIEGO ANTONIO	CATALAN	MARCHESE	diego.catalan.m@mail.pucv.cl	\N	108	2
20166453-5	ANDRES IGNACIO	MATAMALA	SCHAFER	andres.matamala12@gmail.com	\N	108	2
19667854-9	FRANCISCO JAVIER	BRICEÑO	ALFARO	francisco.briceno.a@mail.pucv.cl	\N	108	2
19575089-0	CARLOS ALBERTO	MENDEZ	GUZMAN	carlos.mendez.g01@mail.pucv.cl	\N	108	2
19490543-2	OSCAR IGNACIO	BELDA	COLLADO	oscar.belda.c@mail.pucv.cl	\N	108	2
19255980-4	FLAVIO RENATO	OLAVARRIA	LEARRASCA	reno.olavarria@gmail.com	\N	108	2
21432852-6	TOMAS ESTEBAN	ROJAS	LA LUZ	tomas.rojas.l01@mail.pucv.cl	\N	108	2
\.


--
-- TOC entry 2774 (class 0 OID 36998)
-- Dependencies: 217
-- Data for Name: Usuario_persona; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Usuario_persona" (id, rut, telefono, foto, tipo_usuario_id, user_id) FROM stdin;
1	\N	\N	\N	1	1
4	\N	\N	\N	3	76
5	\N	\N	\N	3	77
6	\N	\N	\N	3	78
7	\N	\N	\N	3	79
8	\N	\N	\N	3	80
9	\N	\N	\N	3	81
10	\N	\N	\N	3	82
11	\N	\N	\N	3	83
12	\N	\N	\N	3	84
13	\N	\N	\N	3	85
14	\N	\N	\N	3	86
15	\N	\N	\N	3	87
16	\N	\N	\N	3	88
17	\N	\N	\N	3	89
18	\N	\N	\N	3	90
19	\N	\N	\N	3	91
20	\N	\N	\N	3	92
21	\N	\N	\N	3	93
22	\N	\N	\N	3	94
23	\N	\N	\N	3	95
24	\N	\N	\N	3	96
25	\N	\N	\N	3	97
26	\N	\N	\N	3	98
27	\N	\N	\N	3	99
28	\N	\N	\N	3	100
29	\N	\N	\N	3	101
30	\N	\N	\N	3	102
31	\N	\N	\N	3	103
32	\N	\N	\N	3	104
33	\N	\N	\N	3	105
2	\N	\N	\N	1	107
34	\N	\N	\N	3	106
3	\N	\N	\N	2	108
35	\N	\N	\N	3	2
36	\N	\N	\N	3	3
37	\N	\N	\N	3	4
38	\N	\N	\N	3	5
39	\N	\N	\N	3	6
40	\N	\N	\N	3	7
41	\N	\N	\N	3	8
42	\N	\N	\N	3	9
43	\N	\N	\N	3	10
44	\N	\N	\N	3	11
45	\N	\N	\N	3	12
46	\N	\N	\N	3	13
47	\N	\N	\N	3	14
48	\N	\N	\N	3	15
49	\N	\N	\N	3	16
50	\N	\N	\N	3	17
51	\N	\N	\N	3	18
52	\N	\N	\N	3	19
53	\N	\N	\N	3	20
54	\N	\N	\N	3	21
55	\N	\N	\N	3	22
56	\N	\N	\N	3	23
57	\N	\N	\N	3	24
58	\N	\N	\N	3	25
59	\N	\N	\N	3	26
60	\N	\N	\N	3	27
61	\N	\N	\N	3	28
62	\N	\N	\N	3	29
63	\N	\N	\N	3	30
64	\N	\N	\N	3	31
65	\N	\N	\N	3	32
66	\N	\N	\N	3	34
67	\N	\N	\N	3	35
68	\N	\N	\N	3	36
69	\N	\N	\N	3	37
70	\N	\N	\N	3	38
71	\N	\N	\N	3	39
72	\N	\N	\N	3	40
73	\N	\N	\N	3	41
74	\N	\N	\N	3	42
75	\N	\N	\N	3	43
76	\N	\N	\N	3	44
77	\N	\N	\N	3	45
78	\N	\N	\N	3	46
79	\N	\N	\N	3	47
80	\N	\N	\N	3	48
81	\N	\N	\N	3	49
82	\N	\N	\N	3	50
83	\N	\N	\N	3	51
84	\N	\N	\N	3	52
85	\N	\N	\N	3	53
86	\N	\N	\N	3	54
87	\N	\N	\N	3	55
88	\N	\N	\N	3	56
89	\N	\N	\N	3	57
90	\N	\N	\N	3	58
91	\N	\N	\N	3	59
92	\N	\N	\N	3	60
93	\N	\N	\N	3	61
94	\N	\N	\N	3	62
95	\N	\N	\N	3	63
96	\N	\N	\N	3	64
97	\N	\N	\N	3	65
98	\N	\N	\N	3	66
99	\N	\N	\N	3	67
100	\N	\N	\N	3	68
101	\N	\N	\N	3	69
102	\N	\N	\N	3	70
103	\N	\N	\N	3	71
104	\N	\N	\N	3	72
105	\N	\N	\N	3	73
106	\N	\N	\N	3	74
107	\N	\N	\N	3	75
\.


--
-- TOC entry 2929 (class 0 OID 0)
-- Dependencies: 216
-- Name: Usuario_persona_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Usuario_persona_id_seq"', 1, false);


--
-- TOC entry 2776 (class 0 OID 37006)
-- Dependencies: 219
-- Data for Name: Usuario_tipousuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Usuario_tipousuario" (id, nombre) FROM stdin;
1	Administrador
2	Docente
3	Alumno
4	Usuario General
\.


--
-- TOC entry 2930 (class 0 OID 0)
-- Dependencies: 218
-- Name: Usuario_tipousuario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Usuario_tipousuario_id_seq"', 1, false);


--
-- TOC entry 2763 (class 0 OID 36897)
-- Dependencies: 206
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- TOC entry 2931 (class 0 OID 0)
-- Dependencies: 205
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- TOC entry 2765 (class 0 OID 36907)
-- Dependencies: 208
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- TOC entry 2932 (class 0 OID 0)
-- Dependencies: 207
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- TOC entry 2761 (class 0 OID 36889)
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
141	Can add grupos	36	add_grupos
142	Can change grupos	36	change_grupos
143	Can delete grupos	36	delete_grupos
144	Can view grupos	36	view_grupos
145	Can add archivo_notas	37	add_archivo_notas
146	Can change archivo_notas	37	change_archivo_notas
147	Can delete archivo_notas	37	delete_archivo_notas
148	Can view archivo_notas	37	view_archivo_notas
149	Can add grupos_ alumnos	38	add_grupos_alumnos
150	Can change grupos_ alumnos	38	change_grupos_alumnos
151	Can delete grupos_ alumnos	38	delete_grupos_alumnos
152	Can view grupos_ alumnos	38	view_grupos_alumnos
153	Can add evaluar_ alumnos_ coevaluacion	39	add_evaluar_alumnos_coevaluacion
154	Can change evaluar_ alumnos_ coevaluacion	39	change_evaluar_alumnos_coevaluacion
155	Can delete evaluar_ alumnos_ coevaluacion	39	delete_evaluar_alumnos_coevaluacion
156	Can view evaluar_ alumnos_ coevaluacion	39	view_evaluar_alumnos_coevaluacion
157	Can add descripcion_ aspectos_ coevaluacion	40	add_descripcion_aspectos_coevaluacion
158	Can change descripcion_ aspectos_ coevaluacion	40	change_descripcion_aspectos_coevaluacion
159	Can delete descripcion_ aspectos_ coevaluacion	40	delete_descripcion_aspectos_coevaluacion
160	Can view descripcion_ aspectos_ coevaluacion	40	view_descripcion_aspectos_coevaluacion
161	Can add aspectos_ coevaluacion	41	add_aspectos_coevaluacion
162	Can change aspectos_ coevaluacion	41	change_aspectos_coevaluacion
163	Can delete aspectos_ coevaluacion	41	delete_aspectos_coevaluacion
164	Can view aspectos_ coevaluacion	41	view_aspectos_coevaluacion
165	Can add calificacion_ coevaluacion	42	add_calificacion_coevaluacion
166	Can change calificacion_ coevaluacion	42	change_calificacion_coevaluacion
167	Can delete calificacion_ coevaluacion	42	delete_calificacion_coevaluacion
168	Can view calificacion_ coevaluacion	42	view_calificacion_coevaluacion
169	Can add califica	43	add_califica
170	Can change califica	43	change_califica
171	Can delete califica	43	delete_califica
172	Can view califica	43	view_califica
173	Can add aplicar_ rubrica	44	add_aplicar_rubrica
174	Can change aplicar_ rubrica	44	change_aplicar_rubrica
175	Can delete aplicar_ rubrica	44	delete_aplicar_rubrica
176	Can view aplicar_ rubrica	44	view_aplicar_rubrica
177	Can add aplicar_ rubrica grupo	45	add_aplicar_rubricagrupo
178	Can change aplicar_ rubrica grupo	45	change_aplicar_rubricagrupo
179	Can delete aplicar_ rubrica grupo	45	delete_aplicar_rubricagrupo
180	Can view aplicar_ rubrica grupo	45	view_aplicar_rubricagrupo
181	Can add validacion_ grupo	46	add_validacion_grupo
182	Can change validacion_ grupo	46	change_validacion_grupo
183	Can delete validacion_ grupo	46	delete_validacion_grupo
184	Can view validacion_ grupo	46	view_validacion_grupo
185	Can add validacion_ alumno	47	add_validacion_alumno
186	Can change validacion_ alumno	47	change_validacion_alumno
187	Can delete validacion_ alumno	47	delete_validacion_alumno
188	Can view validacion_ alumno	47	view_validacion_alumno
189	Can add validacion_ coevaluacion	48	add_validacion_coevaluacion
190	Can change validacion_ coevaluacion	48	change_validacion_coevaluacion
191	Can delete validacion_ coevaluacion	48	delete_validacion_coevaluacion
192	Can view validacion_ coevaluacion	48	view_validacion_coevaluacion
\.


--
-- TOC entry 2933 (class 0 OID 0)
-- Dependencies: 203
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 192, true);


--
-- TOC entry 2767 (class 0 OID 36915)
-- Dependencies: 210
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
7	pbkdf2_sha256$120000$wUf4MZnK9LlJ$g3tKKbBXsn2FWHjD2B+eMhrasAHLPwjTTEVTVGVMWDU=	2021-10-15 16:50:56.836563-03	f	Jean Luka	Charnay	Parra	jeanlchp@gmail.com	f	t	2021-09-12 02:43:57-03
5	pbkdf2_sha256$120000$nQiBeKo0O4jR$pDrA2RkF29LTQSyysHh/+JZtzr4upDbnNzuFzx/oJ8w=	2021-10-15 16:50:15.226043-03	t	Jesus Ignacio	Cadiz	Fernandez	cadiz_jesus@yahoo.com	t	t	2021-09-12 02:37:30.388048-03
1	pbkdf2_sha256$120000$X4ZOBZHQH01c$9y6KS2MhtG8aeaCJjpBtT1DOP+Uaw4GXuWMFt546LqY=	2021-09-20 19:24:49.600447-03	t	Camilo			camilo.pizarro.a@mail.pucv.cl	t	t	2021-08-05 20:28:59.712089-04
6	pbkdf2_sha256$120000$xqGV3yRG9mTW$q/E0kPM6gXds0gJhvHQJOdgexENPcLJQo46Z42b9rHY=	2021-10-15 16:50:36.80455-03	t	Matias Alejandro	Martinez	Olea	mati.dh.energy@gmail.com	t	t	2021-09-12 02:38:02.775966-03
3	pbkdf2_sha256$120000$OXZFwSrPSCzu$zZNK2Qa1ZtXGR4XtLNTikOcyJu3HzjDBpnwUnZHbzgM=	2021-10-15 16:47:24.195923-03	t	Pablo Andres	Acuña	Ramirez	pablo.acuna.r@mail.pucv.cl	t	t	2021-09-12 02:36:00.135743-03
8	pbkdf2_sha256$120000$rCIQT85uPSIg$0CGrix3wp43ubazcP4WZe9H1yOoiUx+8xx6o5Hw0HGk=	2021-10-15 16:51:47.594427-03	t	Nicolas Ignacio	Vargas	Tapia	vargastapianicolas@gmail.com	t	t	2021-09-12 02:44:25.403235-03
9	pbkdf2_sha256$120000$ZDuGGArWcYtu$ZDDxn3GpAENL+qL0ix2S+7teNu0clrzoQ+pM4p/bHXo=	2021-10-15 16:54:47.641963-03	t	Patricio Matias	Mardones	Galvez	pmardonesg@hotmail.com	t	t	2021-09-12 02:44:55.756019-03
10	pbkdf2_sha256$120000$mXJseunZTCAX$fH7yZYdAVO93L7R5TZEXO0Ou6JMUbfSR87AfkX05e5Q=	2021-10-15 16:55:10.010995-03	t	Kevin Luis	Alarcon	Baltazar	kevin.alarcon.b@mail.pucv.cl	t	t	2021-09-12 02:45:26.350847-03
11	pbkdf2_sha256$120000$IR4pBgVVONvT$B6+o0EIulfqAr7kvZm4EQjKGWt7La1z5gA9Z09C6SMQ=	2021-10-15 17:00:08.633673-03	t	Javier Fernando	Souza	Vidal	javier.souza.v@mail.pucv.cl	t	t	2021-09-12 02:49:39.437352-03
12	pbkdf2_sha256$120000$gqW6PEgyKw7W$y6FGlKu8eXAsc+0NyDs3xvnBsPiWmH0PGuT12FCazpY=	2021-10-15 17:00:31.782364-03	t	Nicolas Hanns	Espinoza	Waltemath	nicolas.espinoza.w@mail.pucv.cl	t	t	2021-09-12 02:50:19.949043-03
20	pbkdf2_sha256$120000$ojfjLhuy07fw$PGFUWW+VQBf3qh0rMKWrZ4DfDxdAl4UcPzD25/0dvqc=	2021-10-15 17:01:02.022959-03	t	Rodrigo Joaquin Ignacio	Ordenes	Arce	rodrigo.ordenes.a@mail.pucv.cl	t	t	2021-09-12 02:54:31.381009-03
27	pbkdf2_sha256$120000$HGOigg69c5U2$LHY7dLT2XkmONXdCGSAglIsLG5LTyEeyJ/0DbeEGrtU=	2021-10-15 17:03:30.617669-03	t	Diego Francisco	Araya	Valencia	diegofaraya1@hotmail.com	t	t	2021-09-12 03:02:07.038825-03
13	pbkdf2_sha256$120000$J63Vf5lvp3Bw$Hxyy0CCA/vnhbaaBZjlBijeUOUHRgvLnsVkO8iVdygo=	\N	t	Jorge Ivan	Verschae	Caceres	jorge.verschae.c@mail.pucv.cl	t	t	2021-09-12 02:50:52.932368-03
14	pbkdf2_sha256$120000$DDpmA7r1Utzp$oOqODgYT6nzP9XLIQb7Tg3eD2UglNzjg7l9S7xiiskI=	\N	t	Gabriel Alonso	Toro	Guzman	gabriel.toro.g@mail.pucv.cl	t	t	2021-09-12 02:51:16.820017-03
15	pbkdf2_sha256$120000$QDG9XPd6aKng$Btpg2pm3G8irjGczkORY+XNoEioF+PFZcPLc9pXmOAE=	\N	t	Vicente Tomas de Jesus	Salgado	Jadue	vicente.salgado.j@mail.pucv.cl	t	t	2021-09-12 02:51:51.873894-03
16	pbkdf2_sha256$120000$eAWFVjP44nJC$06DqPUHD87NlI41F25iMQr9bWy/r9YhYgo43jsy5rI4=	\N	t	Roberto Alonso	Concha	Vergara	roberto.concha.v@mail.pucv.cl	t	t	2021-09-12 02:52:18.054098-03
17	pbkdf2_sha256$120000$NKH0V3Dd38r2$RcxSOmXRC4qdQb9XuNghkPfTtDopGHba1oP/qohfkzU=	\N	t	Angie Francisca	Aguilar	Miranda	angie.aguilar.m@mail.pucv.cl	t	t	2021-09-12 02:52:46.400169-03
18	pbkdf2_sha256$120000$E8quYRGeI0N0$67JVLHQsF3r9g9vME7FBQWl25oRk6UPpqAkszwPAb/8=	\N	t	Benjamin Aaron	Frenkel	Silva	benjamin.frenkel.s@mail.pucv.cl	t	t	2021-09-12 02:53:13.82589-03
19	pbkdf2_sha256$120000$hkN2kp9Dz21X$xr1U6zpyzVSqK/zaMQ1qqpTwQHWig5qd+78zyc0L5XQ=	\N	t	Matias Arturo	Morales	Mendez	matias.morales.m@mail.pucv.cl	t	t	2021-09-12 02:53:48.370677-03
21	pbkdf2_sha256$120000$fFxU2CALz8T5$VEM2+SP0gfOZmNcl104ELhcw8y4wtuNepSVHX2PsCtc=	\N	t	Ariel Francisco	Piña	Catalan	ariel.pina.c@mail.pucv.cl	t	t	2021-09-12 02:54:52.141161-03
22	pbkdf2_sha256$120000$dCxmJ6KZDOPd$iiRLCYwY+UQLYNYcZEi1+ZTfykwMLNv06pJeTQcm11w=	\N	t	Benjamin Patricio	Lopez	Cortes	benjamin.lopez.c@mail.pucv.cl	t	t	2021-09-12 02:59:32.604551-03
23	pbkdf2_sha256$120000$rt0t9kwnLzSB$dGF5+F2mMIhsaBFyNFyZ5QfJhRqRNxMYxLy/Dm5Wu5k=	\N	t	Cristian Felipe	Bernal	Salinas	bernal.tatann@gmail.com	t	t	2021-09-12 03:00:08.764575-03
24	pbkdf2_sha256$120000$QyEgYocy08BW$6NF9Q9+QJmWV9XlsGE3PfapfuxOmWhoOelVj5r5JrfU=	\N	t	Etienne Stephanie	Bellenger	Herrera	etienne.bellenger@gmail.com	t	t	2021-09-12 03:00:43.633947-03
25	pbkdf2_sha256$120000$xeVt8FFYC4I1$RwHSJgBOtX72pcr7X97MNOe/XICMR37t5nOlK+vEaks=	\N	t	Cesar Eduardo	Gordon	Muena	cesar.gordon.m@mail.pucv.cl	t	t	2021-09-12 03:01:07.441757-03
26	pbkdf2_sha256$120000$7Whk25vfhpdo$Mwv7Kk49uZ/sXO9dGOGkM26UveuiJD6JCBrUsblioMg=	\N	t	Alberto Esteban	Aguilera	Luengo	albert16692a@gmail.com	t	t	2021-09-12 03:01:39.258257-03
2	pbkdf2_sha256$120000$C57iI5mP0c7e$aK7+fCTMwQ6LW5bzEr/Cc6csWkKJ/4awg6Ti90RFOqA=	2021-10-15 17:13:30.422547-03	t	Felipe Antonio	Soto	Guerrero	felipe.a.soto.g@gmail.com	t	t	2021-09-12 02:35:35.599025-03
28	pbkdf2_sha256$120000$JCVL09Mtyg3h$UK36t2OKWtNBj3D3DnVGvht9RX9muab5wisl6iaX/hA=	\N	t	Alejandro Esteban	Lobos	Arenas	alejandro.lobos.a@mail.pucv.cl	t	t	2021-09-12 03:02:30.782685-03
29	pbkdf2_sha256$120000$p5UBu2jIBVy3$wmobl7/zumr3h+pRen49frXAWK3KvhANeXHRlEaFKDU=	\N	t	Michael David Humberto	Vilches	Cortes	michael.vilches.c@mail.pucv.cl	t	t	2021-09-12 03:02:58.602833-03
30	pbkdf2_sha256$120000$606NhXQ8mNjN$SUtD/OXCHRDEmkH+ZfTARnMiCS5MyLzuQHUnptsPNB0=	\N	t	Francisco Martin	Flores	Fernandez	francisco.flores.f@mail.pucv.cl	t	t	2021-09-12 03:03:28.35872-03
31	pbkdf2_sha256$120000$R8By59ww1DU5$OGQaDhAbiOnZn5k3mdCtQqZau4wA89BzJqyf1GkBLRA=	\N	t	Jorge Nicolas	Guzman	Cura	jorge.guzman.c@mail.pucv.cl	t	t	2021-09-12 03:03:56.569905-03
32	pbkdf2_sha256$120000$zozcvhOIuHxD$NXlWjb8em41jQWb8UMuisb66RRs9rEcb2U5VqdjTt/4=	\N	t	Patricio Alejandro	Labra	Verdugo	patricio.labra827@gmail.com	t	t	2021-09-12 03:04:31.692301-03
65	pbkdf2_sha256$120000$QHdHCM9T1yKg$nHyAYRnTzDWKupTDbe3g0EGzFrB/V8kjTIEb7pVQ3us=	\N	t	Sebastian Alejandro	Lillo	Acosta	sebastian.lillo.a@mail.pucv.cl	t	t	2021-09-12 12:13:04.589632-03
68	pbkdf2_sha256$120000$EYbyuokep0tw$vAFToceW/qET2vrqqqLPiCNhbH66ZlEH6LDvIrxgp6I=	\N	t	Diego Tomas	Muñoz	Muñoz	diego.munoz.m02@mail.pucv.cl	t	t	2021-09-12 12:14:38.525636-03
71	pbkdf2_sha256$120000$rIFr6ihkxssD$tvo1K6+imOMSCZJS4HMK2guUqEIOqU8F6Boum11Q2ZI=	\N	t	Francisco Javier	Briceño	Alfaro	francisco.briceno.a@mail.pucv.cl	t	t	2021-09-12 12:16:38.098616-03
74	pbkdf2_sha256$120000$j0loMDT4F9wA$KuBH36irEExa2fSuO/nDaN4K+bmhKgmxkRJbgF7hwRw=	\N	t	Flavio Renato	Olavarria	Learrasca	reno.olavarria@gmail.com	t	t	2021-09-12 12:18:20.844935-03
4	pbkdf2_sha256$120000$EFvtNj2Y4qXE$oTonaJAr1T/d4fd0bq+t4eDrdhCFnLcVKSJATje59s4=	2021-10-15 16:49:42.130971-03	t	Gonzalo Esteban	Escobar	Leon	g.leonesteban@gmail.com	t	t	2021-09-12 02:37:05.651065-03
80	pbkdf2_sha256$120000$JnI6o2cOsUgd$xdVnR0rpqkRwhAJVbsNnLTl2gQeL5k/Ka0i/L59hOdo=	\N	t	Nicolas Ignacio1	Reymar	Santibañez	nicolasreymars@hotmail.com	t	t	2021-09-12 21:49:00.789498-03
83	pbkdf2_sha256$120000$cwtnroaTwWfH$9nIaKXvqUsr7FCRh3aXZCIL3zqXfoloUy30bqIe43R0=	\N	t	Daniel Alexis	Salgado	Borquez	daniel.salgado.b@mail.pucv.cl	t	t	2021-09-12 21:50:19.441899-03
89	pbkdf2_sha256$120000$wewzXYgf0HuL$Wzs7cxq0Afc//3oo7PeL6H2U3R4vZEdimCFCtPbhc3c=	\N	t	Cristian Ignacio	Tapia	Salas	cristian.tapia.s@mail.pucv.cl	t	t	2021-09-12 21:55:23.105538-03
94	pbkdf2_sha256$120000$t8xd97WBMDu6$lyX5y2XFLteAjrTEz/InjHL+zdHtv5fMMurJxRzd1IY=	\N	t	Valentina Alejandra	Madariaga	Escobar	valentina.madariaga.e@mail.pucv.cl	t	t	2021-09-12 21:57:57.938609-03
96	pbkdf2_sha256$120000$VIO7F8nRZRbI$apfLS+aYUW2J/uVDTOgP239NEcJzNIq98z4IdmS3jNo=	\N	t	Gianluca Cristobal	Olivares	Gallardo	gianluca.olivares.g@mail.pucv.cl	t	t	2021-09-12 21:59:53.729168-03
98	pbkdf2_sha256$120000$KwyMw7IFCu90$DKzWDZoD45GB1KH2l0+BinsLK5LOW1wsqXVeCCU1aqE=	\N	t	Carolina Ignacia	Castillo	Porras	carolina.castillo.p01@mail.pucv.cl	t	t	2021-09-12 22:01:48.556025-03
34	pbkdf2_sha256$120000$nJ3x4tCGlT76$dee7AWZ9DmPF8BNynPCopmRxX8gA2/I22u9v/ds28Sk=	\N	t	Diego Nicolas	Baeza	Garcia	DBaezaG09@hotmail.com	t	t	2021-09-12 11:45:22.769074-03
35	pbkdf2_sha256$120000$YRunkXXd28lP$Juq4An1cL2y2OnZ+KHT2rM601RmIvMvkPz+4TRuKIQQ=	\N	t	Patricio Antonio	Barra	Reyes	patricio.barra.r@mail.pucv.cl	t	t	2021-09-12 11:46:30.753448-03
36	pbkdf2_sha256$120000$ysm3ZGlMaelb$IxVQDSzU4naLg+51jQuUn2Czs9FCxgLGvHNsOD2jVP8=	\N	t	Ivan Dan	Santos	Vila	ivan.santos.v@mail.pucv.cl	t	t	2021-09-12 11:47:03.353997-03
37	pbkdf2_sha256$120000$KsVjC1QkF7Gu$panyEyAiT/sUz0UeVyZ7TEHK1O+G8nz8En2Lsh/9Zy0=	\N	t	Ignacio Andres	Valdebenito	Caceres	ignacio.valdebenito.c@mail.pucv.cl	t	t	2021-09-12 11:47:40.396978-03
38	pbkdf2_sha256$120000$3onDtfJ04RpV$MtZU/heia5873Y1cZ1pN4eIpm20fXd8UjO7it3e4urM=	\N	t	Maria Gabriela	Castro	Almendra	maria.castro.a@mail.pucv.cl	t	t	2021-09-12 11:48:11.058401-03
39	pbkdf2_sha256$120000$0FebeYfss6LA$Hzmg1JKIX7fYb7KpK3Ez6CrjphDt0NyvnR9UJAWsuwY=	\N	t	Bastian Ramiro	Jeria	Vergara	bastian.jeria.v@mail.pucv.cl	t	t	2021-09-12 11:49:10.186979-03
40	pbkdf2_sha256$120000$4IdNXY7ZA4hv$ju2Hw8Wvl+M5nUX1f6Kj+PqOlQ81ZaCIkHqhp6cDoRw=	\N	t	Benjamin Felipe	Morales	Ortiz	benjamin.morales.o@mail.pucv.cl	t	t	2021-09-12 11:50:36.971312-03
41	pbkdf2_sha256$120000$GuCwmXYRx6lr$zuW7c4kGnXizBVHYcpDAXNPVpbOGJ71xi2fbeEOenLk=	\N	t	Francisca Edulia	Jerez	Cerda	francisca.jerez.c@mail.pucv.cl	t	t	2021-09-12 11:51:06.331262-03
42	pbkdf2_sha256$120000$HYrq4kG7bj0u$OdEILAaQfVVhlWvDNoyovfiOhGUyYteqfOigGQ8VNtw=	\N	t	Karina Noemi	Matamala	Palta	karina.matamala.p@mail.pucv.cl	t	t	2021-09-12 11:51:36.134107-03
43	pbkdf2_sha256$120000$Xe5xGDNIL7Ll$xaXmR93PHKOb/bURfEQ1b799OGcNkGeV/EsFO69lwGA=	\N	t	Cristobal Benjamin	Soto	Pizarro	cristobal.soto.p@mail.pucv.cl	t	t	2021-09-12 11:52:04.913362-03
44	pbkdf2_sha256$120000$qoTwGCNMQ01X$4PwpTqvLUODeaUrSwBjWNsUfRm48xREX9qX0+U0epEs=	\N	t	Leandro Adan	Maureira	Lopez	leandro.maureira.l@mail.pucv.cl	t	t	2021-09-12 11:52:45.449307-03
45	pbkdf2_sha256$120000$EmnEgVQwRP0s$P99qWK+tv9k7cclbSYb4I/Y88DUY7HhqHt+2MiiNBgc=	\N	t	Josefina Daniela	Castellon	Bobillier	josefina.castellon.b@mail.pucv.cl	t	t	2021-09-12 11:53:21.967535-03
46	pbkdf2_sha256$120000$90LM14PFJ8Vz$hKxPiv9aS5/I0gTNZ4qgBC9icIdO8QWzzyU/EBAeF/g=	\N	t	Karina Andre	Rozas	Romo	karina.rozas.r@mail.pucv.cl	t	t	2021-09-12 11:57:36.917746-03
47	pbkdf2_sha256$120000$VFRqOmPoR927$uv++qIJSw+z3wh3BtLU2NSd/KunjtHdUMa1BrlkBYsk=	\N	t	Matias Mario Andres	Diaz	Concha	matiasdiaz85@gmail.com	t	t	2021-09-12 11:58:03.3369-03
48	pbkdf2_sha256$120000$mAJORg2DPtlv$ThhX9Y3Mueju0lV7syCgOl/542RViN07eMKjPqNzkgw=	\N	t	Benjamin Ignacio	Vial	Hermann	benjamin.vial.h@mail.pucv.cl	t	t	2021-09-12 11:58:43.521407-03
49	pbkdf2_sha256$120000$OwVxyJhbpasL$E2unrAzSUCmIqSvRwIq5IIYR5JYE2HWmexscOKN/r7Q=	\N	t	Roberto Cristobal	Isla	Henriquez	roberto.isla.h@mail.pucv.cl	t	t	2021-09-12 11:59:05.024761-03
50	pbkdf2_sha256$120000$Gnr71Wcbc1Ev$9Ip/8Jdh4rEdL/qqD+xetvg+pdOLDk7GoJ5iYxPSb8Y=	\N	t	Rafael Alejandro	Lema	Vega	rafael.lema.v@mail.pucv.cl	t	t	2021-09-12 11:59:40.720189-03
51	pbkdf2_sha256$120000$K6SAAtbVCvDA$fBRpZKgr70IgQyauVbgTbqiM/ptlJ6hubyHGeUgnq8Q=	\N	t	Matias Nicolas Leandro	Salinas	Brito	matias.salinas.b@mail.pucv.cl	t	t	2021-09-12 12:00:27.280381-03
52	pbkdf2_sha256$120000$MW5gNmJwlMUS$v1nliVrcYV99FMYUkaDRwDZv2POLLHEkV1I6Pd5k84M=	\N	t	Nicolas Fernando	Poblete	Alvial	nicolaspobletealvial@gmail.com	t	t	2021-09-12 12:01:01.951447-03
53	pbkdf2_sha256$120000$jufzPV1AVMZ1$IzWdAKf98cHQdRGDxifDITIusL8Gdrqwer0wfaQjVzQ=	\N	t	Pedro Ignacio	Basualto	Leon	pedro.basualto.l@mail.pucv.cl	t	t	2021-09-12 12:01:39.649749-03
54	pbkdf2_sha256$120000$PNn6ejanmwyj$xwVv12Pk5gzxjuhM87MwICnQkIvRuKAo+rdHzL3lH2s=	\N	t	Sebastian Andres	Cataldo	Smith	sebastian.cataldo.s@mail.pucv.cl	t	t	2021-09-12 12:02:22.329796-03
55	pbkdf2_sha256$120000$PIweJ4TvTCS1$oHvvyN0xPPsXCSpnOuPjiGwjx9JNBb9nPX0uPmeVc54=	\N	t	Luis Felipe	Gonzalez	Riquelme	luis.gonzalez.r01@mail.pucv.cl	t	t	2021-09-12 12:03:24.00229-03
56	pbkdf2_sha256$120000$xg9yRZJDk9f5$dp2MA32jiFSe9GI4PIAeD9NL2apg2szj6g/KlTJdLXg=	\N	t	Sergio Felipe	Tapia	Ortiz	sergio.tapia.o@mail.pucv.cl	t	t	2021-09-12 12:03:57.030614-03
58	pbkdf2_sha256$120000$JikfMBiZl0i3$eM919hEuLQGv0SzznIFUxOJ/hzGmv3AX28w40WsLQDw=	\N	t	Jorge Carlos	Contreras	Jara	jorge.contreras.j@mail.pucv.cl	t	t	2021-09-12 12:04:50.447701-03
59	pbkdf2_sha256$120000$DjiAjJNxRZLL$K5U8sDL7b6pNNkOHSAkAR6VrGNukMvrSeoVVz8YECio=	\N	t	Benjamin Alejandro	Ramos	Tapia	benjamin.ramos.t@mail.pucv.cl	t	t	2021-09-12 12:05:59.685896-03
60	pbkdf2_sha256$120000$30jEBLp1tL1c$QaYq1pUYG5zCBEoxbysiLR22+RyxKWNLo8Sf81S6YJ8=	\N	t	Felipe Gabriel	Inostroza	Ordenes	felipe.inostroza.o01@mail.pucv.cl	t	t	2021-09-12 12:06:27.066054-03
66	pbkdf2_sha256$120000$6TlSN7lkODQe$Q3VrIdu0Ttcz/UupzobAoWxvo3sWDxB4bEJPZR83MXI=	\N	t	Felipe Antonio1	Barja	Carcamo	felipe.barja.c@mail.pucv.cl	t	t	2021-09-12 12:13:45.869208-03
69	pbkdf2_sha256$120000$punu2ywmV9Hx$XmATfsWumgrydsyGuMxWtlJ6jNqH+A4SRm5i/GE0T+8=	\N	t	Diego Antonio	Catalan	Marchese	diego.catalan.m@mail.pucv.cl	t	t	2021-09-12 12:15:36.178913-03
72	pbkdf2_sha256$120000$SHnOYuw3xPyT$kDJVfG6j84k9UtIAIF7EVKXHv2Gm84HfAZVlAV+oDGU=	\N	t	Carlos Alberto	Mendez	Guzman	carlos.mendez.g01@mail.pucv.cl	t	t	2021-09-12 12:17:11.523198-03
75	pbkdf2_sha256$120000$1d6pIkPIwDf8$JDNxDZm3DMShIMUkcVv4mXR34mNyxNWplfWrsI+SIN4=	\N	t	Tomas Esteban	Rojas	La luz	tomas.rojas.l01@mail.pucv.cl	t	t	2021-09-12 12:18:49.093086-03
57	pbkdf2_sha256$120000$ZB4VyFMobmi1$3Bg/gzOMQEHnMX6zVwc9QEnJS20BFGBl8Xns2HDBicQ=	2021-10-15 10:29:32.260941-03	t	Eduardo Andres	Gutierrez	Cerpa	eduardo.gutierrez.c@mail.pucv.cl	t	t	2021-09-12 12:04:26.06036-03
63	pbkdf2_sha256$120000$jIp7ph7r3V4N$ASNEVtbW9SIqDw03kH3Gz+OhaTDG6LsZxmHWrGn1beI=	\N	t	Josefa Olga	Martinez	Alvarez	josefa.martinez.a@mail.pucv.cl	t	t	2021-09-12 12:07:54.771584-03
87	pbkdf2_sha256$120000$NhVCaGT75hBY$DsL5DwaMapzckN4YXvE5myAP/jjKDLkcwvX3DUQUUi8=	2021-10-11 18:10:49.711035-03	t	Franco Enzo	Vera	Parra	franco.vera.p@mail.pucv.cl	t	t	2021-09-12 21:53:53.283936-03
108	pbkdf2_sha256$120000$DrEQ9Tl9GXrv$GrsIxWuNxvVmUPUCb1qBvX3SCxPAp3aVFzjfrW4lbg4=	2021-10-16 00:32:59.839069-03	t	Pamela	Hermosilla	Monckton	pamela.hermosilla@pucv.cl	t	t	2021-09-13 00:19:41.380644-03
78	pbkdf2_sha256$120000$66xcYYBirTU6$ITPi3+RoXV++NAE9cCE4ruD76y0YgVjMpGK2MIdtQNI=	\N	t	Brandon Alexander	Garrido	Pereira	brandon_97_03@hotmail.com	t	t	2021-09-12 21:48:06.624071-03
79	pbkdf2_sha256$120000$s1sSFyNuRyCo$4JZAVBTjJz0f5UG6rtVx+uBWBDn9VCmxmtnxuWF1i7c=	\N	t	Esteban Mauricio	Pallante	Olivares	pallante2108@gmail.com	t	t	2021-09-12 21:48:32.890283-03
107	pbkdf2_sha256$120000$Iu27qKqzhDaG$zrOeWo9w8Se96c1f/pQSX46ZgAYLaf18cOEXk1Q21qw=	2021-09-22 21:48:18.526538-03	t	admin			admin.admin@hotmail.com	t	t	2021-09-13 00:17:53.751835-03
81	pbkdf2_sha256$120000$rpQvicPLfpax$eKiwijKxXjM2EhS80DJWWIOI5NrSsjHpLDcW9AIR8HY=	\N	t	Belinda Amalia	Romo	Gonzalez	belinda.romo.g@mail.pucv.cl	t	t	2021-09-12 21:49:25.989372-03
82	pbkdf2_sha256$120000$zHoHHj0ACon5$ILODW2N6l7iTBDB/pLGZHMKzoTekepzEf1+igVa/DAM=	\N	t	Nicholas Alexander	Molina	Torres	nicholas.molina.t@mail.pucv.cl	t	t	2021-09-12 21:49:49.780041-03
61	pbkdf2_sha256$120000$sAQNtfgmVzBv$YwWcDoI60ifTMw6hpgj7zkv2ZCEUkpmY69gMzmV1cQk=	\N	t	Pablo Alberto Arturo	Osses	Bruno	pablo.osses2@gmail.com	t	t	2021-09-12 12:06:56.646297-03
85	pbkdf2_sha256$120000$IRra0UWOBrcb$IQldTZ1L5XokS4a+e8u0uDxouCvLVttKYLq5Xi4eHy8=	\N	t	Jonathan Aaron	Reyes	Vasquez	jonathan.reyes.v@mail.pucv.cl	t	t	2021-09-12 21:51:17.342809-03
86	pbkdf2_sha256$120000$FrrHe2X1zM6y$ZZaPFl/8iksOhxyGlC+ledApvePcEJvAzcIKQk3IJkk=	\N	t	Nicolas Alejandro	Gonzalez	Marin	nicolas.gonzalez.m01@mail.pucv.cl	t	t	2021-09-12 21:53:34.406553-03
88	pbkdf2_sha256$120000$jRrdjbOq8bVU$DemGdDkKFuWbVEvPv0mgOUe+bIn4r+UQf7guX9x4VEs=	\N	t	Daniel Ignacio	Galvez	Diaz	daniel.galvez.d@mail.pucv.cl	t	t	2021-09-12 21:54:55.994484-03
90	pbkdf2_sha256$120000$RU3YQGAOZ6vx$bskgU+jr+55eyOYoBXBLxArq8JFgl0fb9VKVdvFFI4Y=	\N	t	Ignacio Esteban	Cortes	Ruz	ignacio.cortes.r@mail.pucv.cl	t	t	2021-09-12 21:55:47.048632-03
91	pbkdf2_sha256$120000$O00SMsr3Ioki$BwPHwMQdYADkVS36djImFquE9YztanAXsTkOOPlqvAk=	\N	t	Matias Eduardo	Alvarado	Araya	matias.alvarado.a@mail.pucv.cl	t	t	2021-09-12 21:56:11.170197-03
92	pbkdf2_sha256$120000$fqoGzrkdgE9A$wywkf/i84RZZlgd8hPbkDjUGkQwl+U5kx1ZW6JlEIaM=	\N	t	Javier Ignacio	Ibañez	Acevedo	javier.ibanez.a@mail.pucv.cl	t	t	2021-09-12 21:56:56.350916-03
93	pbkdf2_sha256$120000$BHIUabsDftEH$buuD4mreoM05pSGpEOz1BHg04L9JyuxmJOLKIOBrle8=	\N	t	Javiera Ignacia	Iturra	Castillo	javiera.iturra.c@mail.pucv.cl	t	t	2021-09-12 21:57:25.764179-03
95	pbkdf2_sha256$120000$922NPszS5biW$SBTYTB2N9zgGpQE6+P0Ck+MH3JSja7TX124Fi83J9tU=	\N	t	Tomas Benjamin	Jimenez	Arcaya	tomas.jimenez.a@mail.pucv.cl	t	t	2021-09-12 21:58:30.284647-03
97	pbkdf2_sha256$120000$FxuuzLdx5nUU$r5+Fz3HfJqMo73Uk+DPSpYMgdJtJv5qtZQiIBeuShx0=	\N	t	Jason Giovanni	Davecchi	Oyaneder	jasongdo17@gmail.com	t	t	2021-09-12 22:01:18.642779-03
99	pbkdf2_sha256$120000$DSc475UnOOSD$JEIHSuP0DflU0ZXgVnYrgX1paOSazjyAwAmqGzbMub4=	\N	t	Francisca Daniela	Diaz	Fuenzalida	francisca.diaz.f@mail.pucv.cl	t	t	2021-09-12 22:02:37.764329-03
100	pbkdf2_sha256$120000$INpJ6e6ubsWy$G/F7dLM32yhk/Yc3NHyyPYeN2eoPJYxdVaQVec8ES5Q=	\N	t	Cecilia Alexia	Pichicona	Millalen	cecilia.pichicona.m@mail.pucv.cl	t	t	2021-09-12 22:03:07.975353-03
101	pbkdf2_sha256$120000$1tclsmut5Icj$4XruvoL6Q8tjb0+HvfcJiOfOyzSAM/OpV/K+x5SZf1o=	\N	t	Diego Matias	Diaz	Fuenzalida	diego.diaz.f@mail.pucv.cl	t	t	2021-09-12 22:04:27.707578-03
102	pbkdf2_sha256$120000$cjpWFYJRX2jZ$VSvp4qNPtjzMhWbhWqxSEjNYu73YY3m1R1lIsHJRkwE=	\N	t	Cristian Agustin	Saavedra	Contreras	cristian.saavedra.c@mail.pucv.cl	t	t	2021-09-12 22:05:21.677268-03
103	pbkdf2_sha256$120000$4MStnVtgTAKn$pigAuPGlzDwOwRnaTMzIWvQp49bp9NZmAwxtJZmfAto=	\N	t	Jose Bastian	Silva	Araneda	jose.silva.a@mail.pucv.cl	t	t	2021-09-12 22:05:42.789841-03
104	pbkdf2_sha256$120000$BWSqPbjgNhPW$8X8NG8PEHOGqu/3QvAftYsE8amFPLK+PmP3E2htecKs=	\N	t	Franco Bastian	Silva	Araneda	franco.guzman.z@mail.pucv.cl	t	t	2021-09-12 22:06:59.408189-03
105	pbkdf2_sha256$120000$V0wtxUMWg0Uf$7DKfonmwD0KKOqsCmx0TPMqOHJTU65q8xc3WF6cv38Y=	\N	t	Sebastian Axel	Morales	Pincheira	sebastian.morales.p01@mail.pucv.cl	t	t	2021-09-12 22:07:22.944706-03
77	pbkdf2_sha256$120000$a6Mju1sEx9dR$VS/dCJhgXp7p8BF120ek+mveHF5G48Nsi6Qky3HW16g=	2021-10-01 11:28:30.617139-03	t	Patricio Andres	Ibarra	Casanova	patricio.ibarra.c@mail.pucv.cl	t	t	2021-09-12 21:47:33.229261-03
106	pbkdf2_sha256$120000$Hmrd03e6Er7k$x07HNzjcJm6Fl9dWlev/+m9dni2IAKHk3rBrzcANfus=	2021-09-27 15:43:26.287692-03	t	Jose Ignacio	Toro	Carcamo	jose.toro.c01@mail.pucv.cl	t	t	2021-09-12 22:08:32.838097-03
64	pbkdf2_sha256$120000$jB5brS7usaxB$dCMInQpWe/w6OEI9IAXs9hlSdq/1VLFd3fBRBf4ELRc=	\N	t	Ignacio Alberto	Montenegro	Guerra	ignacio.montentegro.g@mail.pucv.cl	t	t	2021-09-12 12:08:20.762593-03
84	pbkdf2_sha256$120000$euzU1egM8HK2$DFPTXPkxZpWLsb0nrXTpY7a0fqPM35f4zNzgteJJjEE=	2021-09-28 08:36:36.624022-03	t	Diego Javier	Alvarado	Becerra	diego.alvarado.b@mail.pucv.cl	t	t	2021-09-12 21:50:46.731676-03
62	pbkdf2_sha256$120000$qesO6LmMx1D4$DrPbrx985lUWsr9C2/QijcUgufxD2eyew0B4Zd2U/xI=	\N	t	Manuel Fernando	Encina	Muñoz	ocich93@gmail.com	t	t	2021-09-12 12:07:24.786727-03
67	pbkdf2_sha256$120000$7QKG3v9AVBh3$gLFr0wJuZxMEKagiRlTs2RuPP5dYpn0Xb7XRH+ghjQ8=	\N	t	Diana Paola	Moraga	Prado	diana.moraga.p@mail.pucv.cl	t	t	2021-09-12 12:14:05.783856-03
70	pbkdf2_sha256$120000$wXf6BsbVrnkA$7YwNESvWjKN5hVJFWEkbnTUF4cwK6SAo4VC9UmPgDXc=	\N	t	Andres Ignacio	Matamala	Schafer	andres.matamala12@gmail.com	t	t	2021-09-12 12:16:10.382931-03
73	pbkdf2_sha256$120000$CEZkA3AVFkql$boCCXlsp9xPYi2T5dGB8H+a6IfHxXTC++KBLATPbE3M=	\N	t	Oscar Ignacio	Belda	Collado	oscar.belda.c@mail.pucv.cl	t	t	2021-09-12 12:17:36.578574-03
76	pbkdf2_sha256$120000$iFS4bccmUpx3$KO8SRDx1lbKIkcIt13J6EWKOkVP3jH93i4P2/j7aMZE=	2021-10-15 13:00:55.548911-03	t	Pedro Pablo	Galli	Solano	pedro.galli93@gmail.com	t	t	2021-09-12 21:47:02.471901-03
\.


--
-- TOC entry 2769 (class 0 OID 36925)
-- Dependencies: 212
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- TOC entry 2934 (class 0 OID 0)
-- Dependencies: 211
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- TOC entry 2935 (class 0 OID 0)
-- Dependencies: 209
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 108, true);


--
-- TOC entry 2771 (class 0 OID 36933)
-- Dependencies: 214
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- TOC entry 2936 (class 0 OID 0)
-- Dependencies: 213
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 2798 (class 0 OID 37257)
-- Dependencies: 241
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2021-08-16 21:28:22.437079-04	3	plantillas/2021/08/16/plantilla-subir-listado-alumnos5585309494324.xlsx	1	[{"added": {}}]	34	1
2	2021-08-16 21:30:03.975663-04	3	plantillas/2021/08/16/plantilla-subir-listado-alumnos5585309494324.xlsx	3		34	1
3	2021-08-16 21:30:03.980674-04	2		3		34	1
4	2021-09-12 02:47:40.497729-03	7	Jean	2	[{"changed": {"fields": ["first_name", "last_name", "is_staff", "is_superuser"]}}]	26	1
5	2021-09-27 15:30:05.826851-03	76	Pedro Pablo	2	[{"changed": {"fields": ["password"]}}]	26	108
6	2021-09-27 15:34:35.970671-03	77	Patricio Andres	2	[{"changed": {"fields": ["password"]}}]	26	76
7	2021-09-27 15:34:55.966064-03	78	Brandon Alexander	2	[{"changed": {"fields": ["password"]}}]	26	76
8	2021-09-27 15:35:17.069041-03	79	Esteban Mauricio	2	[{"changed": {"fields": ["password"]}}]	26	76
9	2021-09-27 15:35:34.351281-03	80	Nicolas Ignacio1	2	[{"changed": {"fields": ["password"]}}]	26	76
10	2021-09-27 15:35:49.93507-03	81	Belinda Amalia	2	[{"changed": {"fields": ["password"]}}]	26	76
11	2021-09-27 15:36:11.867477-03	82	Nicholas Alexander	2	[{"changed": {"fields": ["password"]}}]	26	76
12	2021-09-27 15:36:27.348675-03	83	Daniel Alexis	2	[{"changed": {"fields": ["password"]}}]	26	76
13	2021-09-27 15:36:42.924137-03	84	Diego Javier	2	[{"changed": {"fields": ["password"]}}]	26	76
14	2021-09-27 15:36:58.875023-03	85	Jonathan Aaron	2	[{"changed": {"fields": ["password"]}}]	26	76
15	2021-09-27 15:37:26.040542-03	86	Nicolas Alejandro	2	[{"changed": {"fields": ["password"]}}]	26	76
16	2021-09-27 15:37:40.480695-03	87	Franco Enzo	2	[{"changed": {"fields": ["password"]}}]	26	76
17	2021-09-27 15:37:55.286989-03	88	Daniel Ignacio	2	[{"changed": {"fields": ["password"]}}]	26	76
18	2021-09-27 15:38:09.14481-03	89	Cristian Ignacio	2	[{"changed": {"fields": ["password"]}}]	26	76
19	2021-09-27 15:38:26.598242-03	90	Ignacio Esteban	2	[{"changed": {"fields": ["password"]}}]	26	76
20	2021-09-27 15:38:45.720792-03	91	Matias Eduardo	2	[{"changed": {"fields": ["password"]}}]	26	76
21	2021-09-27 15:39:06.193964-03	92	Javier Ignacio	2	[{"changed": {"fields": ["password"]}}]	26	76
22	2021-09-27 15:39:21.636313-03	93	Javiera Ignacia	2	[{"changed": {"fields": ["password"]}}]	26	76
23	2021-09-27 15:39:41.589492-03	94	Valentina Alejandra	2	[{"changed": {"fields": ["password"]}}]	26	76
24	2021-09-27 15:40:07.360799-03	95	Tomas Benjamin	2	[{"changed": {"fields": ["password"]}}]	26	76
25	2021-09-27 15:40:26.619289-03	96	Gianluca Cristobal	2	[{"changed": {"fields": ["password"]}}]	26	76
26	2021-09-27 15:40:41.087697-03	97	Jason Giovanni	2	[{"changed": {"fields": ["password"]}}]	26	76
27	2021-09-27 15:40:57.398354-03	98	Carolina Ignacia	2	[{"changed": {"fields": ["password"]}}]	26	76
28	2021-09-27 15:41:11.777772-03	99	Francisca Daniela	2	[{"changed": {"fields": ["password"]}}]	26	76
29	2021-09-27 15:41:28.527305-03	100	Cecilia Alexia	2	[{"changed": {"fields": ["password"]}}]	26	76
30	2021-09-27 15:41:45.5648-03	101	Diego Matias	2	[{"changed": {"fields": ["password"]}}]	26	76
31	2021-09-27 15:41:59.20165-03	102	Cristian Agustin	2	[{"changed": {"fields": ["password"]}}]	26	76
32	2021-09-27 15:42:17.114205-03	103	Jose Bastian	2	[{"changed": {"fields": ["password"]}}]	26	76
33	2021-09-27 15:42:31.339287-03	104	Franco Bastian	2	[{"changed": {"fields": ["password"]}}]	26	76
34	2021-09-27 15:42:49.432438-03	105	Sebastian Axel	2	[{"changed": {"fields": ["password"]}}]	26	76
35	2021-09-27 15:43:05.587359-03	106	Jose Ignacio	2	[{"changed": {"fields": ["password"]}}]	26	76
36	2021-10-01 14:02:09.415423-03	5	Base de DatosINF 4000	3		6	108
37	2021-10-01 14:02:09.427782-03	4	Taller de Ingeniería en SoftwareINF4540	3		6	108
38	2021-10-01 14:02:09.427782-03	3	Taller de Ingeniería en SoftwareICCD 4540	3		6	108
39	2021-10-01 14:02:09.427782-03	2	Taller de Ingeniería en SoftwareICI 4540	3		6	108
40	2021-10-01 14:05:44.351962-03	5	Base de Datos	3		4	108
41	2021-10-01 14:05:51.549908-03	4	Taller de Ingeniería en Software	3		4	108
42	2021-10-01 14:05:56.539023-03	3	Taller de Ingeniería en Software	3		4	108
43	2021-10-01 14:06:05.147045-03	2	Taller de Ingeniería en Software	3		4	108
44	2021-10-15 10:06:51.393349-03	2	Felipe Antonio	2	[{"changed": {"fields": ["password"]}}]	26	76
45	2021-10-15 10:07:25.249293-03	3	Pablo Andres	2	[{"changed": {"fields": ["password"]}}]	26	76
46	2021-10-15 10:07:39.904615-03	4	Gonzalo Esteban	2	[{"changed": {"fields": ["password"]}}]	26	76
47	2021-10-15 10:07:56.658923-03	5	Jesus Ignacio	2	[{"changed": {"fields": ["password"]}}]	26	76
48	2021-10-15 10:08:18.696114-03	6	Matias Alejandro	2	[{"changed": {"fields": ["password"]}}]	26	76
49	2021-10-15 10:08:33.285973-03	7	Jean Luka	2	[{"changed": {"fields": ["password"]}}]	26	76
50	2021-10-15 10:08:50.999283-03	8	Nicolas Ignacio	2	[{"changed": {"fields": ["password"]}}]	26	76
51	2021-10-15 10:09:48.089026-03	9	Patricio Matias	2	[{"changed": {"fields": ["password"]}}]	26	76
52	2021-10-15 10:10:03.513477-03	10	Kevin Luis	2	[{"changed": {"fields": ["password"]}}]	26	76
53	2021-10-15 10:10:18.8975-03	11	Javier Fernando	2	[{"changed": {"fields": ["password"]}}]	26	76
54	2021-10-15 10:10:34.509184-03	12	Nicolas Hanns	2	[{"changed": {"fields": ["password"]}}]	26	76
55	2021-10-15 10:10:47.668167-03	13	Jorge Ivan	2	[{"changed": {"fields": ["password"]}}]	26	76
56	2021-10-15 10:11:01.114768-03	14	Gabriel Alonso	2	[{"changed": {"fields": ["password"]}}]	26	76
57	2021-10-15 10:11:15.776007-03	15	Vicente Tomas de Jesus	2	[{"changed": {"fields": ["password"]}}]	26	76
58	2021-10-15 10:11:37.260249-03	16	Roberto Alonso	2	[{"changed": {"fields": ["password"]}}]	26	76
59	2021-10-15 10:11:49.982347-03	17	Angie Francisca	2	[{"changed": {"fields": ["password"]}}]	26	76
60	2021-10-15 10:12:01.69168-03	18	Benjamin Aaron	2	[{"changed": {"fields": ["password"]}}]	26	76
61	2021-10-15 10:12:15.17959-03	19	Matias Arturo	2	[{"changed": {"fields": ["password"]}}]	26	76
62	2021-10-15 10:12:31.281967-03	20	Rodrigo Joaquin Ignacio	2	[{"changed": {"fields": ["password"]}}]	26	76
63	2021-10-15 10:12:42.271409-03	21	Ariel Francisco	2	[{"changed": {"fields": ["password"]}}]	26	76
64	2021-10-15 10:12:54.883296-03	22	Benjamin Patricio	2	[{"changed": {"fields": ["password"]}}]	26	76
65	2021-10-15 10:13:07.769252-03	23	Cristian Felipe	2	[{"changed": {"fields": ["password"]}}]	26	76
66	2021-10-15 10:13:20.562351-03	24	Etienne Stephanie	2	[{"changed": {"fields": ["password"]}}]	26	76
67	2021-10-15 10:13:36.817942-03	25	Cesar Eduardo	2	[{"changed": {"fields": ["password"]}}]	26	76
68	2021-10-15 10:13:45.564668-03	26	Alberto Esteban	2	[{"changed": {"fields": ["password"]}}]	26	76
69	2021-10-15 10:14:00.444029-03	27	Diego Francisco	2	[{"changed": {"fields": ["password"]}}]	26	76
70	2021-10-15 10:14:11.18025-03	28	Alejandro Esteban	2	[{"changed": {"fields": ["password"]}}]	26	76
71	2021-10-15 10:14:26.226504-03	29	Michael David Humberto	2	[{"changed": {"fields": ["password"]}}]	26	76
72	2021-10-15 10:14:43.782764-03	30	Francisco Martin	2	[{"changed": {"fields": ["password"]}}]	26	76
73	2021-10-15 10:14:59.574699-03	31	Jorge Nicolas	2	[{"changed": {"fields": ["password"]}}]	26	76
74	2021-10-15 10:15:11.664089-03	32	Patricio Alejandro	2	[{"changed": {"fields": ["password"]}}]	26	76
75	2021-10-15 10:15:24.500909-03	34	Diego Nicolas	2	[{"changed": {"fields": ["password"]}}]	26	76
76	2021-10-15 10:16:05.779562-03	35	Patricio Antonio	2	[{"changed": {"fields": ["password"]}}]	26	76
77	2021-10-15 10:16:20.388751-03	36	Ivan Dan	2	[{"changed": {"fields": ["password"]}}]	26	76
78	2021-10-15 10:16:33.844488-03	37	Ignacio Andres	2	[{"changed": {"fields": ["password"]}}]	26	76
79	2021-10-15 10:16:48.650957-03	38	Maria Gabriela	2	[{"changed": {"fields": ["password"]}}]	26	76
80	2021-10-15 10:16:58.829707-03	39	Bastian Ramiro	2	[{"changed": {"fields": ["password"]}}]	26	76
81	2021-10-15 10:17:11.873476-03	40	Benjamin Felipe	2	[{"changed": {"fields": ["password"]}}]	26	76
82	2021-10-15 10:17:24.462732-03	41	Francisca Edulia	2	[{"changed": {"fields": ["password"]}}]	26	76
83	2021-10-15 10:17:42.006819-03	42	Karina Noemi	2	[{"changed": {"fields": ["password"]}}]	26	76
84	2021-10-15 10:17:55.228776-03	43	Cristobal Benjamin	2	[{"changed": {"fields": ["password"]}}]	26	76
85	2021-10-15 10:18:11.705392-03	44	Leandro Adan	2	[{"changed": {"fields": ["password"]}}]	26	76
86	2021-10-15 10:18:28.004287-03	45	Josefina Daniela	2	[{"changed": {"fields": ["password"]}}]	26	76
87	2021-10-15 10:18:40.086679-03	46	Karina Andre	2	[{"changed": {"fields": ["password"]}}]	26	76
88	2021-10-15 10:18:58.646357-03	47	Matias Mario Andres	2	[{"changed": {"fields": ["password"]}}]	26	76
89	2021-10-15 10:19:14.319749-03	48	Benjamin Ignacio	2	[{"changed": {"fields": ["password"]}}]	26	76
90	2021-10-15 10:19:27.243803-03	49	Roberto Cristobal	2	[{"changed": {"fields": ["password"]}}]	26	76
91	2021-10-15 10:19:40.987787-03	50	Rafael Alejandro	2	[{"changed": {"fields": ["password"]}}]	26	76
92	2021-10-15 10:22:04.121094-03	51	Matias Nicolas Leandro	2	[{"changed": {"fields": ["password"]}}]	26	76
93	2021-10-15 10:22:18.187215-03	52	Nicolas Fernando	2	[{"changed": {"fields": ["password"]}}]	26	76
94	2021-10-15 10:22:31.860969-03	53	Pedro Ignacio	2	[{"changed": {"fields": ["password"]}}]	26	76
95	2021-10-15 10:22:51.349783-03	54	Sebastian Andres	2	[{"changed": {"fields": ["password"]}}]	26	76
96	2021-10-15 10:23:05.246529-03	55	Luis Felipe	2	[{"changed": {"fields": ["password"]}}]	26	76
97	2021-10-15 10:23:20.115735-03	56	Sergio Felipe	2	[{"changed": {"fields": ["password"]}}]	26	76
98	2021-10-15 10:23:41.132324-03	57	Eduardo Andres	2	[{"changed": {"fields": ["password"]}}]	26	76
99	2021-10-15 10:23:55.572653-03	58	Jorge Carlos	2	[{"changed": {"fields": ["password"]}}]	26	76
100	2021-10-15 10:24:09.500292-03	59	Benjamin Alejandro	2	[{"changed": {"fields": ["password"]}}]	26	76
101	2021-10-15 10:24:25.670698-03	60	Felipe Gabriel	2	[{"changed": {"fields": ["password"]}}]	26	76
102	2021-10-15 10:24:38.518303-03	61	Pablo Alberto Arturo	2	[{"changed": {"fields": ["password"]}}]	26	76
103	2021-10-15 10:24:53.050159-03	62	Manuel Fernando	2	[{"changed": {"fields": ["password"]}}]	26	76
104	2021-10-15 10:25:08.334731-03	63	Josefa Olga	2	[{"changed": {"fields": ["password"]}}]	26	76
105	2021-10-15 10:25:22.065937-03	64	Ignacio Alberto	2	[{"changed": {"fields": ["password"]}}]	26	76
106	2021-10-15 10:25:37.204952-03	65	Sebastian Alejandro	2	[{"changed": {"fields": ["password"]}}]	26	76
107	2021-10-15 10:25:51.113164-03	66	Felipe Antonio1	2	[{"changed": {"fields": ["password"]}}]	26	76
108	2021-10-15 10:26:05.499645-03	67	Diana Paola	2	[{"changed": {"fields": ["password"]}}]	26	76
109	2021-10-15 10:26:21.74141-03	68	Diego Tomas	2	[{"changed": {"fields": ["password"]}}]	26	76
110	2021-10-15 10:26:41.168508-03	69	Diego Antonio	2	[{"changed": {"fields": ["password"]}}]	26	76
111	2021-10-15 10:27:21.196868-03	70	Andres Ignacio	2	[{"changed": {"fields": ["password"]}}]	26	76
112	2021-10-15 10:27:32.885342-03	71	Francisco Javier	2	[{"changed": {"fields": ["password"]}}]	26	76
113	2021-10-15 10:27:51.19386-03	72	Carlos Alberto	2	[{"changed": {"fields": ["password"]}}]	26	76
114	2021-10-15 10:28:04.496453-03	73	Oscar Ignacio	2	[{"changed": {"fields": ["password"]}}]	26	76
115	2021-10-15 10:28:19.786113-03	74	Flavio Renato	2	[{"changed": {"fields": ["password"]}}]	26	76
116	2021-10-15 10:28:38.546733-03	75	Tomas Esteban	2	[{"changed": {"fields": ["password"]}}]	26	76
\.


--
-- TOC entry 2937 (class 0 OID 0)
-- Dependencies: 240
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 116, true);


--
-- TOC entry 2759 (class 0 OID 36879)
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
36	Curso	grupos
37	Curso	archivo_notas
38	Curso	grupos_alumnos
39	Rubrica	evaluar_alumnos_coevaluacion
40	Rubrica	descripcion_aspectos_coevaluacion
41	Rubrica	aspectos_coevaluacion
42	Rubrica	calificacion_coevaluacion
43	Rubrica	califica
44	Rubrica	aplicar_rubrica
45	Rubrica	aplicar_rubricagrupo
46	Curso	validacion_grupo
47	Curso	validacion_alumno
48	Curso	validacion_coevaluacion
\.


--
-- TOC entry 2938 (class 0 OID 0)
-- Dependencies: 201
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 48, true);


--
-- TOC entry 2743 (class 0 OID 36782)
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
52	Curso	0006_auto_20210914_0912	2021-09-14 09:12:37.515226-03
53	Curso	0007_auto_20210914_1241	2021-09-14 12:41:22.916924-03
54	Curso	0008_archivo_notas	2021-09-14 16:47:27.737173-03
55	Curso	0009_auto_20210920_2023	2021-09-20 20:23:15.695731-03
56	Curso	0010_auto_20210920_2113	2021-09-20 21:13:23.055964-03
57	Rubrica	0017_aspectos_coevaluacion_descripcion_aspectos_coevaluacion_evaluar_alumnos_coevaluacion	2021-09-22 12:40:33.367588-03
58	Rubrica	0018_auto_20210922_1311	2021-09-22 13:11:33.184458-03
59	Rubrica	0019_auto_20210922_1312	2021-09-22 13:12:39.208057-03
60	Rubrica	0020_auto_20210922_1315	2021-09-22 13:15:43.002553-03
61	Rubrica	0021_auto_20210922_1455	2021-09-22 14:55:16.795644-03
62	Rubrica	0022_evaluar_alumnos_coevaluacion_evaluacion	2021-09-22 15:33:39.479229-03
63	Rubrica	0023_calificacion_coevaluacion_flag	2021-09-22 18:09:28.360084-03
64	Rubrica	0024_evaluar_alumnos_coevaluacion_calificacion	2021-09-22 18:44:02.335132-03
65	Rubrica	0025_evaluar_alumnos_coevaluacion_aspectos	2021-09-22 18:52:27.367876-03
66	Rubrica	0026_auto_20210922_1900	2021-09-22 19:00:38.820161-03
67	Rubrica	0027_aspectos_coevaluacion_codigo	2021-09-22 19:15:22.273303-03
68	Rubrica	0028_auto_20210922_1926	2021-09-22 19:26:32.650958-03
69	Rubrica	0029_auto_20210922_2119	2021-09-22 21:20:03.919097-03
70	Rubrica	0030_auto_20210923_1544	2021-09-23 15:44:13.051857-03
71	Rubrica	0031_calificacion_coevaluacion_valor	2021-09-28 08:40:20.179304-03
72	Rubrica	0032_aplicar_rubrica	2021-09-28 19:02:28.326021-03
73	Rubrica	0033_aplicar_rubrica_flag	2021-09-28 22:21:54.760329-03
74	Curso	0011_asignatura_alumnos_flag	2021-09-28 22:27:33.50499-03
75	Curso	0012_grupos_alumnos_flag	2021-09-30 01:11:44.125931-03
76	Curso	0013_grupos_flag	2021-09-30 12:26:38.218636-03
77	Rubrica	0034_aplicar_rubrica_grupo	2021-09-30 13:08:12.392784-03
78	Rubrica	0035_auto_20210930_1444	2021-09-30 14:44:14.259647-03
79	Rubrica	0036_aplicar_rubricagrupo	2021-09-30 15:04:20.751712-03
80	Curso	0014_validacion_alumno_validacion_grupo	2021-09-30 16:46:06.106296-03
81	Curso	0015_validacion_coevaluacion	2021-10-01 11:39:29.986257-03
82	Rubrica	0037_evaluar_alumnos_coevaluacion_aspecto	2021-10-06 18:07:39.428777-03
83	Rubrica	0038_califica_ponderacion	2021-10-07 15:50:41.602004-03
\.


--
-- TOC entry 2939 (class 0 OID 0)
-- Dependencies: 185
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 83, true);


--
-- TOC entry 2799 (class 0 OID 37285)
-- Dependencies: 242
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
qu14cfbs4rf130b2j3pc02t801uajyyx	M2I5MWUyZmM4ZjBkMjVjNDA1ZTdmMTIzYjU3NGFkNDkyYzUzYWI0Zjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjQwYmNkM2ZhMTRmNGU1MTA1Y2Q3YjI5MjVmNDc2YThkZjBlMjI2In0=	2021-08-19 20:31:31.311306-04
ebha9hjwgff9far3ny2mmz466af0xsib	M2I5MWUyZmM4ZjBkMjVjNDA1ZTdmMTIzYjU3NGFkNDkyYzUzYWI0Zjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjQwYmNkM2ZhMTRmNGU1MTA1Y2Q3YjI5MjVmNDc2YThkZjBlMjI2In0=	2021-08-28 22:15:17.484762-04
7xhgex9z6wd8vk07q9gv3zohm9dyhrrv	M2I5MWUyZmM4ZjBkMjVjNDA1ZTdmMTIzYjU3NGFkNDkyYzUzYWI0Zjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjQwYmNkM2ZhMTRmNGU1MTA1Y2Q3YjI5MjVmNDc2YThkZjBlMjI2In0=	2021-09-13 19:26:48.28895-03
ulk5nebdq0sgtp4wbebhbppunen7yucl	M2I5MWUyZmM4ZjBkMjVjNDA1ZTdmMTIzYjU3NGFkNDkyYzUzYWI0Zjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjQwYmNkM2ZhMTRmNGU1MTA1Y2Q3YjI5MjVmNDc2YThkZjBlMjI2In0=	2021-09-17 22:27:35.313957-03
ta2bsfuknbvk6bics25g30b2yjch145a	M2I5MWUyZmM4ZjBkMjVjNDA1ZTdmMTIzYjU3NGFkNDkyYzUzYWI0Zjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5YjQwYmNkM2ZhMTRmNGU1MTA1Y2Q3YjI5MjVmNDc2YThkZjBlMjI2In0=	2021-09-23 16:44:54.323829-03
3qkwn49cx4g0ynaisgdedylbtlkvmqqq	MTNmMDg1MmU5ZGEwOGFlYWFhZThlOWZiNmM3ZDY2NjQyMjRhNDRmZTp7Il9hdXRoX3VzZXJfaWQiOiIxMDgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImJhMjRmOTJlYjExYmI5NDQxZTA3MGI3YzFjOTBhMzJlMTRmODQ5YTEifQ==	2021-09-27 00:20:46.750389-03
19o81lq5ffvml7mt8mqspcmzfvif6ov9	MTNmMDg1MmU5ZGEwOGFlYWFhZThlOWZiNmM3ZDY2NjQyMjRhNDRmZTp7Il9hdXRoX3VzZXJfaWQiOiIxMDgiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImJhMjRmOTJlYjExYmI5NDQxZTA3MGI3YzFjOTBhMzJlMTRmODQ5YTEifQ==	2021-10-30 00:32:59.843845-03
\.


--
-- TOC entry 2341 (class 2606 OID 36798)
-- Name: Actividad_contenido Actividad_contenido_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Actividad_contenido"
    ADD CONSTRAINT "Actividad_contenido_pkey" PRIMARY KEY (id);


--
-- TOC entry 2344 (class 2606 OID 36806)
-- Name: Actividad_tipo_contenido Actividad_tipo_contenido_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Actividad_tipo_contenido"
    ADD CONSTRAINT "Actividad_tipo_contenido_pkey" PRIMARY KEY (id);


--
-- TOC entry 2354 (class 2606 OID 36856)
-- Name: Area_area Area_area_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Area_area"
    ADD CONSTRAINT "Area_area_pkey" PRIMARY KEY (id);


--
-- TOC entry 2358 (class 2606 OID 36864)
-- Name: Area_areas_carreras Area_areas_carreras_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Area_areas_carreras"
    ADD CONSTRAINT "Area_areas_carreras_pkey" PRIMARY KEY (id);


--
-- TOC entry 2351 (class 2606 OID 36842)
-- Name: Carrera_carrera Carrera_carrera_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Carrera_carrera"
    ADD CONSTRAINT "Carrera_carrera_pkey" PRIMARY KEY (id);


--
-- TOC entry 2486 (class 2606 OID 46173)
-- Name: Curso_archivo_notas Curso_archivo_notas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_archivo_notas"
    ADD CONSTRAINT "Curso_archivo_notas_pkey" PRIMARY KEY (id);


--
-- TOC entry 2477 (class 2606 OID 45067)
-- Name: Curso_archivo Curso_archivo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_archivo"
    ADD CONSTRAINT "Curso_archivo_pkey" PRIMARY KEY (id);


--
-- TOC entry 2417 (class 2606 OID 37041)
-- Name: Curso_asignatura_alumnos Curso_asignatura_alumnos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_asignatura_alumnos"
    ADD CONSTRAINT "Curso_asignatura_alumnos_pkey" PRIMARY KEY (id);


--
-- TOC entry 2411 (class 2606 OID 37033)
-- Name: Curso_asignatura Curso_asignatura_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_asignatura"
    ADD CONSTRAINT "Curso_asignatura_pkey" PRIMARY KEY (id);


--
-- TOC entry 2461 (class 2606 OID 37318)
-- Name: Curso_curso_paralelo Curso_curso_paralelo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_curso_paralelo"
    ADD CONSTRAINT "Curso_curso_paralelo_pkey" PRIMARY KEY (id);


--
-- TOC entry 2421 (class 2606 OID 37049)
-- Name: Curso_curso Curso_curso_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_curso"
    ADD CONSTRAINT "Curso_curso_pkey" PRIMARY KEY (id);


--
-- TOC entry 2432 (class 2606 OID 37065)
-- Name: Curso_evaluacion_alumnos Curso_evaluacion_alumnos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_evaluacion_alumnos"
    ADD CONSTRAINT "Curso_evaluacion_alumnos_pkey" PRIMARY KEY (id);


--
-- TOC entry 2425 (class 2606 OID 37057)
-- Name: Curso_evaluacion Curso_evaluacion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_evaluacion"
    ADD CONSTRAINT "Curso_evaluacion_pkey" PRIMARY KEY (id);


--
-- TOC entry 2493 (class 2606 OID 46199)
-- Name: Curso_grupos_alumnos Curso_grupos_alumnos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_grupos_alumnos"
    ADD CONSTRAINT "Curso_grupos_alumnos_pkey" PRIMARY KEY (id);


--
-- TOC entry 2482 (class 2606 OID 46140)
-- Name: Curso_grupos Curso_grupos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_grupos"
    ADD CONSTRAINT "Curso_grupos_pkey" PRIMARY KEY (id);


--
-- TOC entry 2434 (class 2606 OID 37089)
-- Name: Curso_tipo_evaluacion Curso_tipo_evaluacion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_tipo_evaluacion"
    ADD CONSTRAINT "Curso_tipo_evaluacion_pkey" PRIMARY KEY (id);


--
-- TOC entry 2533 (class 2606 OID 46517)
-- Name: Curso_validacion_alumno Curso_validacion_alumno_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_validacion_alumno"
    ADD CONSTRAINT "Curso_validacion_alumno_pkey" PRIMARY KEY (id);


--
-- TOC entry 2542 (class 2606 OID 46558)
-- Name: Curso_validacion_coevaluacion Curso_validacion_coevaluacion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_validacion_coevaluacion"
    ADD CONSTRAINT "Curso_validacion_coevaluacion_pkey" PRIMARY KEY (id);


--
-- TOC entry 2537 (class 2606 OID 46525)
-- Name: Curso_validacion_grupo Curso_validacion_grupo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_validacion_grupo"
    ADD CONSTRAINT "Curso_validacion_grupo_pkey" PRIMARY KEY (id);


--
-- TOC entry 2346 (class 2606 OID 36820)
-- Name: Pais_pais Pais_pais_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Pais_pais"
    ADD CONSTRAINT "Pais_pais_pkey" PRIMARY KEY (id);


--
-- TOC entry 2438 (class 2606 OID 37186)
-- Name: RA_ra RA_ra_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RA_ra"
    ADD CONSTRAINT "RA_ra_pkey" PRIMARY KEY (id);


--
-- TOC entry 2520 (class 2606 OID 46391)
-- Name: Rubrica_aplicar_rubrica Rubrica_aplicar_rubrica_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_aplicar_rubrica"
    ADD CONSTRAINT "Rubrica_aplicar_rubrica_pkey" PRIMARY KEY (id);


--
-- TOC entry 2527 (class 2606 OID 46479)
-- Name: Rubrica_aplicar_rubricagrupo Rubrica_aplicar_rubricagrupo_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_aplicar_rubricagrupo"
    ADD CONSTRAINT "Rubrica_aplicar_rubricagrupo_pkey" PRIMARY KEY (id);


--
-- TOC entry 2495 (class 2606 OID 46245)
-- Name: Rubrica_aspectos_coevaluacion Rubrica_aspectos_coevaluacion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_aspectos_coevaluacion"
    ADD CONSTRAINT "Rubrica_aspectos_coevaluacion_pkey" PRIMARY KEY (id);


--
-- TOC entry 2512 (class 2606 OID 46356)
-- Name: Rubrica_califica Rubrica_califica_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_califica"
    ADD CONSTRAINT "Rubrica_califica_pkey" PRIMARY KEY (id);


--
-- TOC entry 2470 (class 2606 OID 44909)
-- Name: Rubrica_calificacion_aspecto Rubrica_calificacion_aspecto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_calificacion_aspecto"
    ADD CONSTRAINT "Rubrica_calificacion_aspecto_pkey" PRIMARY KEY (id);


--
-- TOC entry 2510 (class 2606 OID 46297)
-- Name: Rubrica_calificacion_coevaluacion Rubrica_calificacion_coevaluacion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_calificacion_coevaluacion"
    ADD CONSTRAINT "Rubrica_calificacion_coevaluacion_pkey" PRIMARY KEY (id);


--
-- TOC entry 2499 (class 2606 OID 46253)
-- Name: Rubrica_descripcion_aspectos_coevaluacion Rubrica_descripcion_aspectos_coevaluacion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_descripcion_aspectos_coevaluacion"
    ADD CONSTRAINT "Rubrica_descripcion_aspectos_coevaluacion_pkey" PRIMARY KEY (id);


--
-- TOC entry 2440 (class 2606 OID 37208)
-- Name: Rubrica_estado_rubrica Rubrica_estado_rubrica_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_estado_rubrica"
    ADD CONSTRAINT "Rubrica_estado_rubrica_pkey" PRIMARY KEY (id);


--
-- TOC entry 2507 (class 2606 OID 46261)
-- Name: Rubrica_evaluar_alumnos_coevaluacion Rubrica_evaluar_alumnos_coevaluacion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_evaluar_alumnos_coevaluacion"
    ADD CONSTRAINT "Rubrica_evaluar_alumnos_coevaluacion_pkey" PRIMARY KEY (id);


--
-- TOC entry 2464 (class 2606 OID 37371)
-- Name: Rubrica_puntaje Rubrica_puntaje_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_puntaje"
    ADD CONSTRAINT "Rubrica_puntaje_pkey" PRIMARY KEY (id);


--
-- TOC entry 2446 (class 2606 OID 37216)
-- Name: Rubrica_rubrica Rubrica_rubrica_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_rubrica"
    ADD CONSTRAINT "Rubrica_rubrica_pkey" PRIMARY KEY (id);


--
-- TOC entry 2468 (class 2606 OID 37477)
-- Name: Rubrica_tipo_rubrica Rubrica_tipo_rubrica_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_tipo_rubrica"
    ADD CONSTRAINT "Rubrica_tipo_rubrica_pkey" PRIMARY KEY (id);


--
-- TOC entry 2473 (class 2606 OID 44923)
-- Name: Rubrica_topico Rubrica_topico_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_topico"
    ADD CONSTRAINT "Rubrica_topico_pkey" PRIMARY KEY (id);


--
-- TOC entry 2449 (class 2606 OID 37224)
-- Name: Rubrica_topico_rubricas Rubrica_topico_rubricas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_topico_rubricas"
    ADD CONSTRAINT "Rubrica_topico_rubricas_pkey" PRIMARY KEY (id);


--
-- TOC entry 2349 (class 2606 OID 36828)
-- Name: Universidad_universidad Universidad_universidad_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Universidad_universidad"
    ADD CONSTRAINT "Universidad_universidad_pkey" PRIMARY KEY (id);


--
-- TOC entry 2398 (class 2606 OID 36995)
-- Name: Usuario_alumno Usuario_alumno_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Usuario_alumno"
    ADD CONSTRAINT "Usuario_alumno_pkey" PRIMARY KEY (rut);


--
-- TOC entry 2402 (class 2606 OID 37003)
-- Name: Usuario_persona Usuario_persona_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Usuario_persona"
    ADD CONSTRAINT "Usuario_persona_pkey" PRIMARY KEY (id);


--
-- TOC entry 2405 (class 2606 OID 37013)
-- Name: Usuario_persona Usuario_persona_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Usuario_persona"
    ADD CONSTRAINT "Usuario_persona_user_id_key" UNIQUE (user_id);


--
-- TOC entry 2407 (class 2606 OID 37011)
-- Name: Usuario_tipousuario Usuario_tipousuario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Usuario_tipousuario"
    ADD CONSTRAINT "Usuario_tipousuario_pkey" PRIMARY KEY (id);


--
-- TOC entry 2370 (class 2606 OID 36904)
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- TOC entry 2375 (class 2606 OID 36959)
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- TOC entry 2378 (class 2606 OID 36912)
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2372 (class 2606 OID 36902)
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- TOC entry 2365 (class 2606 OID 36945)
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- TOC entry 2367 (class 2606 OID 36894)
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 2386 (class 2606 OID 36930)
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 2389 (class 2606 OID 36974)
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- TOC entry 2380 (class 2606 OID 36920)
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- TOC entry 2392 (class 2606 OID 36938)
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2395 (class 2606 OID 36988)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- TOC entry 2383 (class 2606 OID 37280)
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- TOC entry 2454 (class 2606 OID 37266)
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- TOC entry 2360 (class 2606 OID 36886)
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- TOC entry 2362 (class 2606 OID 36884)
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- TOC entry 2339 (class 2606 OID 36790)
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 2458 (class 2606 OID 37292)
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- TOC entry 2342 (class 1259 OID 36807)
-- Name: Actividad_contenido_tipo_id_467aa68e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Actividad_contenido_tipo_id_467aa68e" ON public."Actividad_contenido" USING btree (tipo_id);


--
-- TOC entry 2355 (class 1259 OID 36875)
-- Name: Area_areas_carreras_area_id_daace21d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Area_areas_carreras_area_id_daace21d" ON public."Area_areas_carreras" USING btree (area_id);


--
-- TOC entry 2356 (class 1259 OID 36876)
-- Name: Area_areas_carreras_carrera_id_a910093c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Area_areas_carreras_carrera_id_a910093c" ON public."Area_areas_carreras" USING btree (carrera_id);


--
-- TOC entry 2352 (class 1259 OID 36848)
-- Name: Carrera_carrera_universidad_id_dc117c1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Carrera_carrera_universidad_id_dc117c1b" ON public."Carrera_carrera" USING btree (universidad_id);


--
-- TOC entry 2475 (class 1259 OID 45073)
-- Name: Curso_archivo_curso_id_cc14b0b8; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Curso_archivo_curso_id_cc14b0b8" ON public."Curso_archivo" USING btree (curso_id);


--
-- TOC entry 2483 (class 1259 OID 46184)
-- Name: Curso_archivo_notas_curso_id_62bc4197; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Curso_archivo_notas_curso_id_62bc4197" ON public."Curso_archivo_notas" USING btree (curso_id);


--
-- TOC entry 2484 (class 1259 OID 46185)
-- Name: Curso_archivo_notas_evaluacion_id_8012f742; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Curso_archivo_notas_evaluacion_id_8012f742" ON public."Curso_archivo_notas" USING btree (evaluacion_id);


--
-- TOC entry 2412 (class 1259 OID 37107)
-- Name: Curso_asignatura_alumnos_alumno_id_c533789c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Curso_asignatura_alumnos_alumno_id_c533789c" ON public."Curso_asignatura_alumnos" USING btree (alumno_id);


--
-- TOC entry 2413 (class 1259 OID 37108)
-- Name: Curso_asignatura_alumnos_alumno_id_c533789c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Curso_asignatura_alumnos_alumno_id_c533789c_like" ON public."Curso_asignatura_alumnos" USING btree (alumno_id varchar_pattern_ops);


--
-- TOC entry 2414 (class 1259 OID 37167)
-- Name: Curso_asignatura_alumnos_asignatura_id_546df289; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Curso_asignatura_alumnos_asignatura_id_546df289" ON public."Curso_asignatura_alumnos" USING btree (curso_id);


--
-- TOC entry 2415 (class 1259 OID 37173)
-- Name: Curso_asignatura_alumnos_evaluacion_id_e58f4410; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Curso_asignatura_alumnos_evaluacion_id_e58f4410" ON public."Curso_asignatura_alumnos" USING btree (evaluacion_id);


--
-- TOC entry 2408 (class 1259 OID 37100)
-- Name: Curso_asignatura_autor_id_ddf592df; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Curso_asignatura_autor_id_ddf592df" ON public."Curso_asignatura" USING btree (autor_id);


--
-- TOC entry 2409 (class 1259 OID 37101)
-- Name: Curso_asignatura_carrera_id_66bedcf5; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Curso_asignatura_carrera_id_66bedcf5" ON public."Curso_asignatura" USING btree (carrera_id);


--
-- TOC entry 2418 (class 1259 OID 37119)
-- Name: Curso_curso_curso_id_48413663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Curso_curso_curso_id_48413663" ON public."Curso_curso" USING btree (asignatura_id);


--
-- TOC entry 2419 (class 1259 OID 37319)
-- Name: Curso_curso_paralelo_id_1e23e00d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Curso_curso_paralelo_id_1e23e00d" ON public."Curso_curso" USING btree (paralelo_id);


--
-- TOC entry 2422 (class 1259 OID 37120)
-- Name: Curso_curso_profesor_id_ee7ef740; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Curso_curso_profesor_id_ee7ef740" ON public."Curso_curso" USING btree (profesor_id);


--
-- TOC entry 2427 (class 1259 OID 37131)
-- Name: Curso_evaluacion_alumnos_alumno_id_353a7a7d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Curso_evaluacion_alumnos_alumno_id_353a7a7d" ON public."Curso_evaluacion_alumnos" USING btree (alumno_id);


--
-- TOC entry 2428 (class 1259 OID 37132)
-- Name: Curso_evaluacion_alumnos_alumno_id_353a7a7d_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Curso_evaluacion_alumnos_alumno_id_353a7a7d_like" ON public."Curso_evaluacion_alumnos" USING btree (alumno_id varchar_pattern_ops);


--
-- TOC entry 2429 (class 1259 OID 46231)
-- Name: Curso_evaluacion_alumnos_curso_id_facf83b4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Curso_evaluacion_alumnos_curso_id_facf83b4" ON public."Curso_evaluacion_alumnos" USING btree (curso_id);


--
-- TOC entry 2430 (class 1259 OID 37133)
-- Name: Curso_evaluacion_alumnos_evaluacion_id_d0a088f5; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Curso_evaluacion_alumnos_evaluacion_id_d0a088f5" ON public."Curso_evaluacion_alumnos" USING btree (evaluacion_id);


--
-- TOC entry 2423 (class 1259 OID 37155)
-- Name: Curso_evaluacion_asignatura_id_a7f7eb5f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Curso_evaluacion_asignatura_id_a7f7eb5f" ON public."Curso_evaluacion" USING btree (curso_id);


--
-- TOC entry 2426 (class 1259 OID 37161)
-- Name: Curso_evaluacion_tipo_id_a747b375; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Curso_evaluacion_tipo_id_a747b375" ON public."Curso_evaluacion" USING btree (tipo_id);


--
-- TOC entry 2487 (class 1259 OID 46215)
-- Name: Curso_grupos_alumnos_alumno_id_32385a3f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Curso_grupos_alumnos_alumno_id_32385a3f" ON public."Curso_grupos_alumnos" USING btree (alumno_id);


--
-- TOC entry 2488 (class 1259 OID 46216)
-- Name: Curso_grupos_alumnos_alumno_id_32385a3f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Curso_grupos_alumnos_alumno_id_32385a3f_like" ON public."Curso_grupos_alumnos" USING btree (alumno_id varchar_pattern_ops);


--
-- TOC entry 2489 (class 1259 OID 46217)
-- Name: Curso_grupos_alumnos_asignatura_id_a9c70674; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Curso_grupos_alumnos_asignatura_id_a9c70674" ON public."Curso_grupos_alumnos" USING btree (asignatura_id);


--
-- TOC entry 2490 (class 1259 OID 46218)
-- Name: Curso_grupos_alumnos_curso_id_f23ae367; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Curso_grupos_alumnos_curso_id_f23ae367" ON public."Curso_grupos_alumnos" USING btree (curso_id);


--
-- TOC entry 2491 (class 1259 OID 46225)
-- Name: Curso_grupos_alumnos_grupo_id_b2cd5a58; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Curso_grupos_alumnos_grupo_id_b2cd5a58" ON public."Curso_grupos_alumnos" USING btree (grupo_id);


--
-- TOC entry 2478 (class 1259 OID 46219)
-- Name: Curso_grupos_asignatura_id_6bfa931f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Curso_grupos_asignatura_id_6bfa931f" ON public."Curso_grupos" USING btree (asignatura_id);


--
-- TOC entry 2479 (class 1259 OID 46154)
-- Name: Curso_grupos_carrera_id_7294e084; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Curso_grupos_carrera_id_7294e084" ON public."Curso_grupos" USING btree (carrera_id);


--
-- TOC entry 2480 (class 1259 OID 46160)
-- Name: Curso_grupos_curso_id_e2740fb1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Curso_grupos_curso_id_e2740fb1" ON public."Curso_grupos" USING btree (curso_id);


--
-- TOC entry 2529 (class 1259 OID 46536)
-- Name: Curso_validacion_alumno_alumno_id_14d36153; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Curso_validacion_alumno_alumno_id_14d36153" ON public."Curso_validacion_alumno" USING btree (alumno_id);


--
-- TOC entry 2530 (class 1259 OID 46537)
-- Name: Curso_validacion_alumno_alumno_id_14d36153_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Curso_validacion_alumno_alumno_id_14d36153_like" ON public."Curso_validacion_alumno" USING btree (alumno_id varchar_pattern_ops);


--
-- TOC entry 2531 (class 1259 OID 46538)
-- Name: Curso_validacion_alumno_evaluacion_id_c5abdd64; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Curso_validacion_alumno_evaluacion_id_c5abdd64" ON public."Curso_validacion_alumno" USING btree (evaluacion_id);


--
-- TOC entry 2538 (class 1259 OID 46574)
-- Name: Curso_validacion_coevaluacion_alumno_id_d5c8246d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Curso_validacion_coevaluacion_alumno_id_d5c8246d" ON public."Curso_validacion_coevaluacion" USING btree (alumno_id);


--
-- TOC entry 2539 (class 1259 OID 46575)
-- Name: Curso_validacion_coevaluacion_alumno_id_d5c8246d_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Curso_validacion_coevaluacion_alumno_id_d5c8246d_like" ON public."Curso_validacion_coevaluacion" USING btree (alumno_id varchar_pattern_ops);


--
-- TOC entry 2540 (class 1259 OID 46576)
-- Name: Curso_validacion_coevaluacion_evaluacion_id_e23cea7a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Curso_validacion_coevaluacion_evaluacion_id_e23cea7a" ON public."Curso_validacion_coevaluacion" USING btree (evaluacion_id);


--
-- TOC entry 2543 (class 1259 OID 46577)
-- Name: Curso_validacion_coevaluacion_user_id_495c6645; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Curso_validacion_coevaluacion_user_id_495c6645" ON public."Curso_validacion_coevaluacion" USING btree (user_id);


--
-- TOC entry 2534 (class 1259 OID 46549)
-- Name: Curso_validacion_grupo_evaluacion_id_8f6be398; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Curso_validacion_grupo_evaluacion_id_8f6be398" ON public."Curso_validacion_grupo" USING btree (evaluacion_id);


--
-- TOC entry 2535 (class 1259 OID 46550)
-- Name: Curso_validacion_grupo_grupo_id_402481c1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Curso_validacion_grupo_grupo_id_402481c1" ON public."Curso_validacion_grupo" USING btree (grupo_id);


--
-- TOC entry 2435 (class 1259 OID 37192)
-- Name: RA_ra_asignatura_id_37358a40; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "RA_ra_asignatura_id_37358a40" ON public."RA_ra" USING btree (asignatura_id);


--
-- TOC entry 2436 (class 1259 OID 37337)
-- Name: RA_ra_autor_id_dc970c62; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "RA_ra_autor_id_dc970c62" ON public."RA_ra" USING btree (autor_id);


--
-- TOC entry 2513 (class 1259 OID 46417)
-- Name: Rubrica_aplicar_rubrica_alumno_id_6e12ff21; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Rubrica_aplicar_rubrica_alumno_id_6e12ff21" ON public."Rubrica_aplicar_rubrica" USING btree (alumno_id);


--
-- TOC entry 2514 (class 1259 OID 46418)
-- Name: Rubrica_aplicar_rubrica_alumno_id_6e12ff21_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Rubrica_aplicar_rubrica_alumno_id_6e12ff21_like" ON public."Rubrica_aplicar_rubrica" USING btree (alumno_id varchar_pattern_ops);


--
-- TOC entry 2515 (class 1259 OID 46419)
-- Name: Rubrica_aplicar_rubrica_aspecto_id_01d881c0; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Rubrica_aplicar_rubrica_aspecto_id_01d881c0" ON public."Rubrica_aplicar_rubrica" USING btree (aspecto_id);


--
-- TOC entry 2516 (class 1259 OID 46420)
-- Name: Rubrica_aplicar_rubrica_calificacion_id_0501aac0; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Rubrica_aplicar_rubrica_calificacion_id_0501aac0" ON public."Rubrica_aplicar_rubrica" USING btree (calificacion_id);


--
-- TOC entry 2517 (class 1259 OID 46421)
-- Name: Rubrica_aplicar_rubrica_evaluacion_id_a914fe3f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Rubrica_aplicar_rubrica_evaluacion_id_a914fe3f" ON public."Rubrica_aplicar_rubrica" USING btree (evaluacion_id);


--
-- TOC entry 2518 (class 1259 OID 46461)
-- Name: Rubrica_aplicar_rubrica_grupo_id_0a0cbbfb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Rubrica_aplicar_rubrica_grupo_id_0a0cbbfb" ON public."Rubrica_aplicar_rubrica" USING btree (grupo_id);


--
-- TOC entry 2521 (class 1259 OID 46422)
-- Name: Rubrica_aplicar_rubrica_rubrica_id_5e03bca7; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Rubrica_aplicar_rubrica_rubrica_id_5e03bca7" ON public."Rubrica_aplicar_rubrica" USING btree (rubrica_id);


--
-- TOC entry 2522 (class 1259 OID 46505)
-- Name: Rubrica_aplicar_rubricagrupo_aspecto_id_e7d40b00; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Rubrica_aplicar_rubricagrupo_aspecto_id_e7d40b00" ON public."Rubrica_aplicar_rubricagrupo" USING btree (aspecto_id);


--
-- TOC entry 2523 (class 1259 OID 46506)
-- Name: Rubrica_aplicar_rubricagrupo_calificacion_id_c9f1e3fc; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Rubrica_aplicar_rubricagrupo_calificacion_id_c9f1e3fc" ON public."Rubrica_aplicar_rubricagrupo" USING btree (calificacion_id);


--
-- TOC entry 2524 (class 1259 OID 46507)
-- Name: Rubrica_aplicar_rubricagrupo_evaluacion_id_8c5c5d54; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Rubrica_aplicar_rubricagrupo_evaluacion_id_8c5c5d54" ON public."Rubrica_aplicar_rubricagrupo" USING btree (evaluacion_id);


--
-- TOC entry 2525 (class 1259 OID 46508)
-- Name: Rubrica_aplicar_rubricagrupo_grupo_id_27d06f70; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Rubrica_aplicar_rubricagrupo_grupo_id_27d06f70" ON public."Rubrica_aplicar_rubricagrupo" USING btree (grupo_id);


--
-- TOC entry 2528 (class 1259 OID 46509)
-- Name: Rubrica_aplicar_rubricagrupo_rubrica_id_b0a8160a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Rubrica_aplicar_rubricagrupo_rubrica_id_b0a8160a" ON public."Rubrica_aplicar_rubricagrupo" USING btree (rubrica_id);


--
-- TOC entry 2471 (class 1259 OID 46372)
-- Name: Rubrica_calificacion_aspecto_rubrica_id_16422889; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Rubrica_calificacion_aspecto_rubrica_id_16422889" ON public."Rubrica_calificacion_aspecto" USING btree (rubrica_id);


--
-- TOC entry 2496 (class 1259 OID 46298)
-- Name: Rubrica_descripcion_aspect_calificacion_id_96405bdc; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Rubrica_descripcion_aspect_calificacion_id_96405bdc" ON public."Rubrica_descripcion_aspectos_coevaluacion" USING btree (calificacion_id);


--
-- TOC entry 2497 (class 1259 OID 46267)
-- Name: Rubrica_descripcion_aspectos_coevaluacion_aspecto_id_b13e3b84; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Rubrica_descripcion_aspectos_coevaluacion_aspecto_id_b13e3b84" ON public."Rubrica_descripcion_aspectos_coevaluacion" USING btree (aspecto_id);


--
-- TOC entry 2500 (class 1259 OID 46283)
-- Name: Rubrica_evaluar_alumnos_coevaluacion_alumno_id_451860d7; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Rubrica_evaluar_alumnos_coevaluacion_alumno_id_451860d7" ON public."Rubrica_evaluar_alumnos_coevaluacion" USING btree (alumno_id);


--
-- TOC entry 2501 (class 1259 OID 46284)
-- Name: Rubrica_evaluar_alumnos_coevaluacion_alumno_id_451860d7_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Rubrica_evaluar_alumnos_coevaluacion_alumno_id_451860d7_like" ON public."Rubrica_evaluar_alumnos_coevaluacion" USING btree (alumno_id varchar_pattern_ops);


--
-- TOC entry 2502 (class 1259 OID 46578)
-- Name: Rubrica_evaluar_alumnos_coevaluacion_aspecto_id_58a632e8; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Rubrica_evaluar_alumnos_coevaluacion_aspecto_id_58a632e8" ON public."Rubrica_evaluar_alumnos_coevaluacion" USING btree (aspecto_id);


--
-- TOC entry 2503 (class 1259 OID 46315)
-- Name: Rubrica_evaluar_alumnos_coevaluacion_evaluacion_id_bf56994f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Rubrica_evaluar_alumnos_coevaluacion_evaluacion_id_bf56994f" ON public."Rubrica_evaluar_alumnos_coevaluacion" USING btree (evaluacion_id);


--
-- TOC entry 2504 (class 1259 OID 46309)
-- Name: Rubrica_evaluar_alumnos_coevaluacion_grupo_id_72374aee; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Rubrica_evaluar_alumnos_coevaluacion_grupo_id_72374aee" ON public."Rubrica_evaluar_alumnos_coevaluacion" USING btree (grupo_id);


--
-- TOC entry 2505 (class 1259 OID 46366)
-- Name: Rubrica_evaluar_alumnos_coevaluacion_opinion_id_1263d6aa; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Rubrica_evaluar_alumnos_coevaluacion_opinion_id_1263d6aa" ON public."Rubrica_evaluar_alumnos_coevaluacion" USING btree (opinion_id);


--
-- TOC entry 2508 (class 1259 OID 46286)
-- Name: Rubrica_evaluar_alumnos_coevaluacion_user_id_1c00d5e8; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Rubrica_evaluar_alumnos_coevaluacion_user_id_1c00d5e8" ON public."Rubrica_evaluar_alumnos_coevaluacion" USING btree (user_id);


--
-- TOC entry 2462 (class 1259 OID 44910)
-- Name: Rubrica_puntaje_calificacion_id_a673a68d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Rubrica_puntaje_calificacion_id_a673a68d" ON public."Rubrica_puntaje" USING btree (calificacion_id);


--
-- TOC entry 2465 (class 1259 OID 37484)
-- Name: Rubrica_puntaje_rubrica_id_fbf76fcf; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Rubrica_puntaje_rubrica_id_fbf76fcf" ON public."Rubrica_puntaje" USING btree (rubrica_id);


--
-- TOC entry 2466 (class 1259 OID 44935)
-- Name: Rubrica_puntaje_topico_id_2f2cd3c9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Rubrica_puntaje_topico_id_2f2cd3c9" ON public."Rubrica_puntaje" USING btree (topico_id);


--
-- TOC entry 2441 (class 1259 OID 37240)
-- Name: Rubrica_rubrica_autor_id_b6b9af65; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Rubrica_rubrica_autor_id_b6b9af65" ON public."Rubrica_rubrica" USING btree (autor_id);


--
-- TOC entry 2442 (class 1259 OID 37348)
-- Name: Rubrica_rubrica_curso_id_342b15de; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Rubrica_rubrica_curso_id_342b15de" ON public."Rubrica_rubrica" USING btree (curso_id);


--
-- TOC entry 2443 (class 1259 OID 37241)
-- Name: Rubrica_rubrica_estado_id_b65c1ec3; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Rubrica_rubrica_estado_id_b65c1ec3" ON public."Rubrica_rubrica" USING btree (estado_id);


--
-- TOC entry 2444 (class 1259 OID 37242)
-- Name: Rubrica_rubrica_evaluacion_id_91a9acb9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Rubrica_rubrica_evaluacion_id_91a9acb9" ON public."Rubrica_rubrica" USING btree (evaluacion_id);


--
-- TOC entry 2447 (class 1259 OID 37478)
-- Name: Rubrica_rubrica_tipo_id_7f89075b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Rubrica_rubrica_tipo_id_7f89075b" ON public."Rubrica_rubrica" USING btree (tipo_id);


--
-- TOC entry 2450 (class 1259 OID 37253)
-- Name: Rubrica_topico_rubricas_rubrica_id_7365e5e6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Rubrica_topico_rubricas_rubrica_id_7365e5e6" ON public."Rubrica_topico_rubricas" USING btree (rubrica_id);


--
-- TOC entry 2451 (class 1259 OID 37254)
-- Name: Rubrica_topico_rubricas_topico_id_90005039; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Rubrica_topico_rubricas_topico_id_90005039" ON public."Rubrica_topico_rubricas" USING btree (topico_id);


--
-- TOC entry 2474 (class 1259 OID 46378)
-- Name: Rubrica_topico_user_id_772f03dc; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Rubrica_topico_user_id_772f03dc" ON public."Rubrica_topico" USING btree (user_id);


--
-- TOC entry 2347 (class 1259 OID 36834)
-- Name: Universidad_universidad_pais_id_d7f99cc9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Universidad_universidad_pais_id_d7f99cc9" ON public."Universidad_universidad" USING btree (pais_id);


--
-- TOC entry 2396 (class 1259 OID 37331)
-- Name: Usuario_alumno_carrera_id_bee04d8c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Usuario_alumno_carrera_id_bee04d8c" ON public."Usuario_alumno" USING btree (carrera_id);


--
-- TOC entry 2399 (class 1259 OID 37014)
-- Name: Usuario_alumno_rut_82a32018_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Usuario_alumno_rut_82a32018_like" ON public."Usuario_alumno" USING btree (rut varchar_pattern_ops);


--
-- TOC entry 2400 (class 1259 OID 37325)
-- Name: Usuario_alumno_user_id_7a171d99; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Usuario_alumno_user_id_7a171d99" ON public."Usuario_alumno" USING btree (user_id);


--
-- TOC entry 2403 (class 1259 OID 37015)
-- Name: Usuario_persona_tipo_usuario_id_b01b5e5d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Usuario_persona_tipo_usuario_id_b01b5e5d" ON public."Usuario_persona" USING btree (tipo_usuario_id);


--
-- TOC entry 2368 (class 1259 OID 36947)
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- TOC entry 2373 (class 1259 OID 36960)
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- TOC entry 2376 (class 1259 OID 36961)
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- TOC entry 2363 (class 1259 OID 36946)
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- TOC entry 2384 (class 1259 OID 36976)
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- TOC entry 2387 (class 1259 OID 36975)
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- TOC entry 2390 (class 1259 OID 36990)
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- TOC entry 2393 (class 1259 OID 36989)
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- TOC entry 2381 (class 1259 OID 37281)
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- TOC entry 2452 (class 1259 OID 37277)
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- TOC entry 2455 (class 1259 OID 37278)
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- TOC entry 2456 (class 1259 OID 37294)
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- TOC entry 2459 (class 1259 OID 37293)
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- TOC entry 2544 (class 2606 OID 36808)
-- Name: Actividad_contenido Actividad_contenido_tipo_id_467aa68e_fk_Actividad; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Actividad_contenido"
    ADD CONSTRAINT "Actividad_contenido_tipo_id_467aa68e_fk_Actividad" FOREIGN KEY (tipo_id) REFERENCES public."Actividad_tipo_contenido"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2547 (class 2606 OID 36865)
-- Name: Area_areas_carreras Area_areas_carreras_area_id_daace21d_fk_Area_area_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Area_areas_carreras"
    ADD CONSTRAINT "Area_areas_carreras_area_id_daace21d_fk_Area_area_id" FOREIGN KEY (area_id) REFERENCES public."Area_area"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2548 (class 2606 OID 36870)
-- Name: Area_areas_carreras Area_areas_carreras_carrera_id_a910093c_fk_Carrera_carrera_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Area_areas_carreras"
    ADD CONSTRAINT "Area_areas_carreras_carrera_id_a910093c_fk_Carrera_carrera_id" FOREIGN KEY (carrera_id) REFERENCES public."Carrera_carrera"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2546 (class 2606 OID 36843)
-- Name: Carrera_carrera Carrera_carrera_universidad_id_dc117c1b_fk_Universid; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Carrera_carrera"
    ADD CONSTRAINT "Carrera_carrera_universidad_id_dc117c1b_fk_Universid" FOREIGN KEY (universidad_id) REFERENCES public."Universidad_universidad"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2589 (class 2606 OID 45068)
-- Name: Curso_archivo Curso_archivo_curso_id_cc14b0b8_fk_Curso_curso_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_archivo"
    ADD CONSTRAINT "Curso_archivo_curso_id_cc14b0b8_fk_Curso_curso_id" FOREIGN KEY (curso_id) REFERENCES public."Curso_curso"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2593 (class 2606 OID 46174)
-- Name: Curso_archivo_notas Curso_archivo_notas_curso_id_62bc4197_fk_Curso_curso_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_archivo_notas"
    ADD CONSTRAINT "Curso_archivo_notas_curso_id_62bc4197_fk_Curso_curso_id" FOREIGN KEY (curso_id) REFERENCES public."Curso_curso"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2594 (class 2606 OID 46179)
-- Name: Curso_archivo_notas Curso_archivo_notas_evaluacion_id_8012f742_fk_Curso_eva; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_archivo_notas"
    ADD CONSTRAINT "Curso_archivo_notas_evaluacion_id_8012f742_fk_Curso_eva" FOREIGN KEY (evaluacion_id) REFERENCES public."Curso_evaluacion"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2562 (class 2606 OID 37102)
-- Name: Curso_asignatura_alumnos Curso_asignatura_alu_alumno_id_c533789c_fk_Usuario_a; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_asignatura_alumnos"
    ADD CONSTRAINT "Curso_asignatura_alu_alumno_id_c533789c_fk_Usuario_a" FOREIGN KEY (alumno_id) REFERENCES public."Usuario_alumno"(rut) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2563 (class 2606 OID 37174)
-- Name: Curso_asignatura_alumnos Curso_asignatura_alu_evaluacion_id_e58f4410_fk_Curso_eva; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_asignatura_alumnos"
    ADD CONSTRAINT "Curso_asignatura_alu_evaluacion_id_e58f4410_fk_Curso_eva" FOREIGN KEY (evaluacion_id) REFERENCES public."Curso_evaluacion_alumnos"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2564 (class 2606 OID 37296)
-- Name: Curso_asignatura_alumnos Curso_asignatura_alumnos_curso_id_f1a4f97c_fk_Curso_curso_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_asignatura_alumnos"
    ADD CONSTRAINT "Curso_asignatura_alumnos_curso_id_f1a4f97c_fk_Curso_curso_id" FOREIGN KEY (curso_id) REFERENCES public."Curso_curso"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2560 (class 2606 OID 37090)
-- Name: Curso_asignatura Curso_asignatura_autor_id_ddf592df_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_asignatura"
    ADD CONSTRAINT "Curso_asignatura_autor_id_ddf592df_fk_auth_user_id" FOREIGN KEY (autor_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2561 (class 2606 OID 37095)
-- Name: Curso_asignatura Curso_asignatura_carrera_id_66bedcf5_fk_Carrera_carrera_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_asignatura"
    ADD CONSTRAINT "Curso_asignatura_carrera_id_66bedcf5_fk_Carrera_carrera_id" FOREIGN KEY (carrera_id) REFERENCES public."Carrera_carrera"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2566 (class 2606 OID 37301)
-- Name: Curso_curso Curso_curso_asignatura_id_f5da5aa0_fk_Curso_asignatura_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_curso"
    ADD CONSTRAINT "Curso_curso_asignatura_id_f5da5aa0_fk_Curso_asignatura_id" FOREIGN KEY (asignatura_id) REFERENCES public."Curso_asignatura"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2567 (class 2606 OID 37320)
-- Name: Curso_curso Curso_curso_paralelo_id_1e23e00d_fk_Curso_curso_paralelo_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_curso"
    ADD CONSTRAINT "Curso_curso_paralelo_id_1e23e00d_fk_Curso_curso_paralelo_id" FOREIGN KEY (paralelo_id) REFERENCES public."Curso_curso_paralelo"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2565 (class 2606 OID 37114)
-- Name: Curso_curso Curso_curso_profesor_id_ee7ef740_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_curso"
    ADD CONSTRAINT "Curso_curso_profesor_id_ee7ef740_fk_auth_user_id" FOREIGN KEY (profesor_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2570 (class 2606 OID 37121)
-- Name: Curso_evaluacion_alumnos Curso_evaluacion_alu_alumno_id_353a7a7d_fk_Usuario_a; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_evaluacion_alumnos"
    ADD CONSTRAINT "Curso_evaluacion_alu_alumno_id_353a7a7d_fk_Usuario_a" FOREIGN KEY (alumno_id) REFERENCES public."Usuario_alumno"(rut) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2571 (class 2606 OID 37126)
-- Name: Curso_evaluacion_alumnos Curso_evaluacion_alu_evaluacion_id_d0a088f5_fk_Curso_eva; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_evaluacion_alumnos"
    ADD CONSTRAINT "Curso_evaluacion_alu_evaluacion_id_d0a088f5_fk_Curso_eva" FOREIGN KEY (evaluacion_id) REFERENCES public."Curso_evaluacion"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2572 (class 2606 OID 46232)
-- Name: Curso_evaluacion_alumnos Curso_evaluacion_alumnos_curso_id_facf83b4_fk_Curso_curso_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_evaluacion_alumnos"
    ADD CONSTRAINT "Curso_evaluacion_alumnos_curso_id_facf83b4_fk_Curso_curso_id" FOREIGN KEY (curso_id) REFERENCES public."Curso_curso"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2569 (class 2606 OID 37306)
-- Name: Curso_evaluacion Curso_evaluacion_curso_id_d6d354ff_fk_Curso_curso_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_evaluacion"
    ADD CONSTRAINT "Curso_evaluacion_curso_id_d6d354ff_fk_Curso_curso_id" FOREIGN KEY (curso_id) REFERENCES public."Curso_curso"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2568 (class 2606 OID 37162)
-- Name: Curso_evaluacion Curso_evaluacion_tipo_id_a747b375_fk_Curso_tipo_evaluacion_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_evaluacion"
    ADD CONSTRAINT "Curso_evaluacion_tipo_id_a747b375_fk_Curso_tipo_evaluacion_id" FOREIGN KEY (tipo_id) REFERENCES public."Curso_tipo_evaluacion"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2595 (class 2606 OID 46200)
-- Name: Curso_grupos_alumnos Curso_grupos_alumnos_alumno_id_32385a3f_fk_Usuario_alumno_rut; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_grupos_alumnos"
    ADD CONSTRAINT "Curso_grupos_alumnos_alumno_id_32385a3f_fk_Usuario_alumno_rut" FOREIGN KEY (alumno_id) REFERENCES public."Usuario_alumno"(rut) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2596 (class 2606 OID 46205)
-- Name: Curso_grupos_alumnos Curso_grupos_alumnos_asignatura_id_a9c70674_fk_Curso_asi; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_grupos_alumnos"
    ADD CONSTRAINT "Curso_grupos_alumnos_asignatura_id_a9c70674_fk_Curso_asi" FOREIGN KEY (asignatura_id) REFERENCES public."Curso_asignatura"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2597 (class 2606 OID 46210)
-- Name: Curso_grupos_alumnos Curso_grupos_alumnos_curso_id_f23ae367_fk_Curso_curso_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_grupos_alumnos"
    ADD CONSTRAINT "Curso_grupos_alumnos_curso_id_f23ae367_fk_Curso_curso_id" FOREIGN KEY (curso_id) REFERENCES public."Curso_curso"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2598 (class 2606 OID 46226)
-- Name: Curso_grupos_alumnos Curso_grupos_alumnos_grupo_id_b2cd5a58_fk_Curso_grupos_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_grupos_alumnos"
    ADD CONSTRAINT "Curso_grupos_alumnos_grupo_id_b2cd5a58_fk_Curso_grupos_id" FOREIGN KEY (grupo_id) REFERENCES public."Curso_grupos"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2592 (class 2606 OID 46220)
-- Name: Curso_grupos Curso_grupos_asignatura_id_6bfa931f_fk_Curso_asignatura_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_grupos"
    ADD CONSTRAINT "Curso_grupos_asignatura_id_6bfa931f_fk_Curso_asignatura_id" FOREIGN KEY (asignatura_id) REFERENCES public."Curso_asignatura"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2590 (class 2606 OID 46155)
-- Name: Curso_grupos Curso_grupos_carrera_id_7294e084_fk_Carrera_carrera_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_grupos"
    ADD CONSTRAINT "Curso_grupos_carrera_id_7294e084_fk_Carrera_carrera_id" FOREIGN KEY (carrera_id) REFERENCES public."Carrera_carrera"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2591 (class 2606 OID 46161)
-- Name: Curso_grupos Curso_grupos_curso_id_e2740fb1_fk_Curso_curso_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_grupos"
    ADD CONSTRAINT "Curso_grupos_curso_id_e2740fb1_fk_Curso_curso_id" FOREIGN KEY (curso_id) REFERENCES public."Curso_curso"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2618 (class 2606 OID 46526)
-- Name: Curso_validacion_alumno Curso_validacion_alu_alumno_id_14d36153_fk_Usuario_a; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_validacion_alumno"
    ADD CONSTRAINT "Curso_validacion_alu_alumno_id_14d36153_fk_Usuario_a" FOREIGN KEY (alumno_id) REFERENCES public."Usuario_alumno"(rut) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2619 (class 2606 OID 46531)
-- Name: Curso_validacion_alumno Curso_validacion_alu_evaluacion_id_c5abdd64_fk_Curso_eva; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_validacion_alumno"
    ADD CONSTRAINT "Curso_validacion_alu_evaluacion_id_c5abdd64_fk_Curso_eva" FOREIGN KEY (evaluacion_id) REFERENCES public."Curso_evaluacion"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2622 (class 2606 OID 46559)
-- Name: Curso_validacion_coevaluacion Curso_validacion_coe_alumno_id_d5c8246d_fk_Usuario_a; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_validacion_coevaluacion"
    ADD CONSTRAINT "Curso_validacion_coe_alumno_id_d5c8246d_fk_Usuario_a" FOREIGN KEY (alumno_id) REFERENCES public."Usuario_alumno"(rut) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2623 (class 2606 OID 46564)
-- Name: Curso_validacion_coevaluacion Curso_validacion_coe_evaluacion_id_e23cea7a_fk_Curso_eva; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_validacion_coevaluacion"
    ADD CONSTRAINT "Curso_validacion_coe_evaluacion_id_e23cea7a_fk_Curso_eva" FOREIGN KEY (evaluacion_id) REFERENCES public."Curso_evaluacion"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2624 (class 2606 OID 46569)
-- Name: Curso_validacion_coevaluacion Curso_validacion_coevaluacion_user_id_495c6645_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_validacion_coevaluacion"
    ADD CONSTRAINT "Curso_validacion_coevaluacion_user_id_495c6645_fk_auth_user_id" FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2620 (class 2606 OID 46539)
-- Name: Curso_validacion_grupo Curso_validacion_gru_evaluacion_id_8f6be398_fk_Curso_eva; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_validacion_grupo"
    ADD CONSTRAINT "Curso_validacion_gru_evaluacion_id_8f6be398_fk_Curso_eva" FOREIGN KEY (evaluacion_id) REFERENCES public."Curso_evaluacion"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2621 (class 2606 OID 46544)
-- Name: Curso_validacion_grupo Curso_validacion_grupo_grupo_id_402481c1_fk_Curso_grupos_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_validacion_grupo"
    ADD CONSTRAINT "Curso_validacion_grupo_grupo_id_402481c1_fk_Curso_grupos_id" FOREIGN KEY (grupo_id) REFERENCES public."Curso_grupos"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2573 (class 2606 OID 37187)
-- Name: RA_ra RA_ra_asignatura_id_37358a40_fk_Curso_asignatura_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RA_ra"
    ADD CONSTRAINT "RA_ra_asignatura_id_37358a40_fk_Curso_asignatura_id" FOREIGN KEY (asignatura_id) REFERENCES public."Curso_asignatura"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2574 (class 2606 OID 37343)
-- Name: RA_ra RA_ra_autor_id_dc970c62_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RA_ra"
    ADD CONSTRAINT "RA_ra_autor_id_dc970c62_fk_auth_user_id" FOREIGN KEY (autor_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2607 (class 2606 OID 46392)
-- Name: Rubrica_aplicar_rubrica Rubrica_aplicar_rubr_alumno_id_6e12ff21_fk_Usuario_a; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_aplicar_rubrica"
    ADD CONSTRAINT "Rubrica_aplicar_rubr_alumno_id_6e12ff21_fk_Usuario_a" FOREIGN KEY (alumno_id) REFERENCES public."Usuario_alumno"(rut) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2608 (class 2606 OID 46397)
-- Name: Rubrica_aplicar_rubrica Rubrica_aplicar_rubr_aspecto_id_01d881c0_fk_Rubrica_t; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_aplicar_rubrica"
    ADD CONSTRAINT "Rubrica_aplicar_rubr_aspecto_id_01d881c0_fk_Rubrica_t" FOREIGN KEY (aspecto_id) REFERENCES public."Rubrica_topico"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2613 (class 2606 OID 46480)
-- Name: Rubrica_aplicar_rubricagrupo Rubrica_aplicar_rubr_aspecto_id_e7d40b00_fk_Rubrica_t; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_aplicar_rubricagrupo"
    ADD CONSTRAINT "Rubrica_aplicar_rubr_aspecto_id_e7d40b00_fk_Rubrica_t" FOREIGN KEY (aspecto_id) REFERENCES public."Rubrica_topico"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2609 (class 2606 OID 46402)
-- Name: Rubrica_aplicar_rubrica Rubrica_aplicar_rubr_calificacion_id_0501aac0_fk_Rubrica_c; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_aplicar_rubrica"
    ADD CONSTRAINT "Rubrica_aplicar_rubr_calificacion_id_0501aac0_fk_Rubrica_c" FOREIGN KEY (calificacion_id) REFERENCES public."Rubrica_calificacion_aspecto"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2614 (class 2606 OID 46485)
-- Name: Rubrica_aplicar_rubricagrupo Rubrica_aplicar_rubr_calificacion_id_c9f1e3fc_fk_Rubrica_c; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_aplicar_rubricagrupo"
    ADD CONSTRAINT "Rubrica_aplicar_rubr_calificacion_id_c9f1e3fc_fk_Rubrica_c" FOREIGN KEY (calificacion_id) REFERENCES public."Rubrica_calificacion_aspecto"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2615 (class 2606 OID 46490)
-- Name: Rubrica_aplicar_rubricagrupo Rubrica_aplicar_rubr_evaluacion_id_8c5c5d54_fk_Curso_eva; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_aplicar_rubricagrupo"
    ADD CONSTRAINT "Rubrica_aplicar_rubr_evaluacion_id_8c5c5d54_fk_Curso_eva" FOREIGN KEY (evaluacion_id) REFERENCES public."Curso_evaluacion"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2610 (class 2606 OID 46407)
-- Name: Rubrica_aplicar_rubrica Rubrica_aplicar_rubr_evaluacion_id_a914fe3f_fk_Curso_eva; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_aplicar_rubrica"
    ADD CONSTRAINT "Rubrica_aplicar_rubr_evaluacion_id_a914fe3f_fk_Curso_eva" FOREIGN KEY (evaluacion_id) REFERENCES public."Curso_evaluacion"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2616 (class 2606 OID 46495)
-- Name: Rubrica_aplicar_rubricagrupo Rubrica_aplicar_rubr_grupo_id_27d06f70_fk_Curso_gru; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_aplicar_rubricagrupo"
    ADD CONSTRAINT "Rubrica_aplicar_rubr_grupo_id_27d06f70_fk_Curso_gru" FOREIGN KEY (grupo_id) REFERENCES public."Curso_grupos"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2611 (class 2606 OID 46412)
-- Name: Rubrica_aplicar_rubrica Rubrica_aplicar_rubr_rubrica_id_5e03bca7_fk_Rubrica_r; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_aplicar_rubrica"
    ADD CONSTRAINT "Rubrica_aplicar_rubr_rubrica_id_5e03bca7_fk_Rubrica_r" FOREIGN KEY (rubrica_id) REFERENCES public."Rubrica_rubrica"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2617 (class 2606 OID 46500)
-- Name: Rubrica_aplicar_rubricagrupo Rubrica_aplicar_rubr_rubrica_id_b0a8160a_fk_Rubrica_r; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_aplicar_rubricagrupo"
    ADD CONSTRAINT "Rubrica_aplicar_rubr_rubrica_id_b0a8160a_fk_Rubrica_r" FOREIGN KEY (rubrica_id) REFERENCES public."Rubrica_rubrica"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2612 (class 2606 OID 46467)
-- Name: Rubrica_aplicar_rubrica Rubrica_aplicar_rubrica_grupo_id_0a0cbbfb_fk_Curso_grupos_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_aplicar_rubrica"
    ADD CONSTRAINT "Rubrica_aplicar_rubrica_grupo_id_0a0cbbfb_fk_Curso_grupos_id" FOREIGN KEY (grupo_id) REFERENCES public."Curso_grupos"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2587 (class 2606 OID 46373)
-- Name: Rubrica_calificacion_aspecto Rubrica_calificacion_rubrica_id_16422889_fk_Rubrica_r; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_calificacion_aspecto"
    ADD CONSTRAINT "Rubrica_calificacion_rubrica_id_16422889_fk_Rubrica_r" FOREIGN KEY (rubrica_id) REFERENCES public."Rubrica_rubrica"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2599 (class 2606 OID 46262)
-- Name: Rubrica_descripcion_aspectos_coevaluacion Rubrica_descripcion__aspecto_id_b13e3b84_fk_Rubrica_a; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_descripcion_aspectos_coevaluacion"
    ADD CONSTRAINT "Rubrica_descripcion__aspecto_id_b13e3b84_fk_Rubrica_a" FOREIGN KEY (aspecto_id) REFERENCES public."Rubrica_aspectos_coevaluacion"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2600 (class 2606 OID 46299)
-- Name: Rubrica_descripcion_aspectos_coevaluacion Rubrica_descripcion__calificacion_id_96405bdc_fk_Rubrica_c; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_descripcion_aspectos_coevaluacion"
    ADD CONSTRAINT "Rubrica_descripcion__calificacion_id_96405bdc_fk_Rubrica_c" FOREIGN KEY (calificacion_id) REFERENCES public."Rubrica_calificacion_coevaluacion"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2601 (class 2606 OID 46268)
-- Name: Rubrica_evaluar_alumnos_coevaluacion Rubrica_evaluar_alum_alumno_id_451860d7_fk_Usuario_a; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_evaluar_alumnos_coevaluacion"
    ADD CONSTRAINT "Rubrica_evaluar_alum_alumno_id_451860d7_fk_Usuario_a" FOREIGN KEY (alumno_id) REFERENCES public."Usuario_alumno"(rut) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2606 (class 2606 OID 46579)
-- Name: Rubrica_evaluar_alumnos_coevaluacion Rubrica_evaluar_alum_aspecto_id_58a632e8_fk_Rubrica_a; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_evaluar_alumnos_coevaluacion"
    ADD CONSTRAINT "Rubrica_evaluar_alum_aspecto_id_58a632e8_fk_Rubrica_a" FOREIGN KEY (aspecto_id) REFERENCES public."Rubrica_aspectos_coevaluacion"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2604 (class 2606 OID 46316)
-- Name: Rubrica_evaluar_alumnos_coevaluacion Rubrica_evaluar_alum_evaluacion_id_bf56994f_fk_Curso_eva; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_evaluar_alumnos_coevaluacion"
    ADD CONSTRAINT "Rubrica_evaluar_alum_evaluacion_id_bf56994f_fk_Curso_eva" FOREIGN KEY (evaluacion_id) REFERENCES public."Curso_evaluacion"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2603 (class 2606 OID 46310)
-- Name: Rubrica_evaluar_alumnos_coevaluacion Rubrica_evaluar_alum_grupo_id_72374aee_fk_Curso_gru; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_evaluar_alumnos_coevaluacion"
    ADD CONSTRAINT "Rubrica_evaluar_alum_grupo_id_72374aee_fk_Curso_gru" FOREIGN KEY (grupo_id) REFERENCES public."Curso_grupos_alumnos"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2605 (class 2606 OID 46367)
-- Name: Rubrica_evaluar_alumnos_coevaluacion Rubrica_evaluar_alum_opinion_id_1263d6aa_fk_Rubrica_c; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_evaluar_alumnos_coevaluacion"
    ADD CONSTRAINT "Rubrica_evaluar_alum_opinion_id_1263d6aa_fk_Rubrica_c" FOREIGN KEY (opinion_id) REFERENCES public."Rubrica_califica"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2602 (class 2606 OID 46278)
-- Name: Rubrica_evaluar_alumnos_coevaluacion Rubrica_evaluar_alum_user_id_1c00d5e8_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_evaluar_alumnos_coevaluacion"
    ADD CONSTRAINT "Rubrica_evaluar_alum_user_id_1c00d5e8_fk_auth_user" FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2585 (class 2606 OID 44911)
-- Name: Rubrica_puntaje Rubrica_puntaje_calificacion_id_a673a68d_fk_Rubrica_c; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_puntaje"
    ADD CONSTRAINT "Rubrica_puntaje_calificacion_id_a673a68d_fk_Rubrica_c" FOREIGN KEY (calificacion_id) REFERENCES public."Rubrica_calificacion_aspecto"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2584 (class 2606 OID 37485)
-- Name: Rubrica_puntaje Rubrica_puntaje_rubrica_id_fbf76fcf_fk_Rubrica_rubrica_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_puntaje"
    ADD CONSTRAINT "Rubrica_puntaje_rubrica_id_fbf76fcf_fk_Rubrica_rubrica_id" FOREIGN KEY (rubrica_id) REFERENCES public."Rubrica_rubrica"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2586 (class 2606 OID 44936)
-- Name: Rubrica_puntaje Rubrica_puntaje_topico_id_2f2cd3c9_fk_Rubrica_topico_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_puntaje"
    ADD CONSTRAINT "Rubrica_puntaje_topico_id_2f2cd3c9_fk_Rubrica_topico_id" FOREIGN KEY (topico_id) REFERENCES public."Rubrica_topico"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2577 (class 2606 OID 37354)
-- Name: Rubrica_rubrica Rubrica_rubrica_autor_id_b6b9af65_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_rubrica"
    ADD CONSTRAINT "Rubrica_rubrica_autor_id_b6b9af65_fk_auth_user_id" FOREIGN KEY (autor_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2576 (class 2606 OID 37349)
-- Name: Rubrica_rubrica Rubrica_rubrica_curso_id_342b15de_fk_Curso_curso_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_rubrica"
    ADD CONSTRAINT "Rubrica_rubrica_curso_id_342b15de_fk_Curso_curso_id" FOREIGN KEY (curso_id) REFERENCES public."Curso_curso"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2578 (class 2606 OID 37359)
-- Name: Rubrica_rubrica Rubrica_rubrica_estado_id_b65c1ec3_fk_Rubrica_estado_rubrica_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_rubrica"
    ADD CONSTRAINT "Rubrica_rubrica_estado_id_b65c1ec3_fk_Rubrica_estado_rubrica_id" FOREIGN KEY (estado_id) REFERENCES public."Rubrica_estado_rubrica"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2575 (class 2606 OID 37235)
-- Name: Rubrica_rubrica Rubrica_rubrica_evaluacion_id_91a9acb9_fk_Curso_evaluacion_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_rubrica"
    ADD CONSTRAINT "Rubrica_rubrica_evaluacion_id_91a9acb9_fk_Curso_evaluacion_id" FOREIGN KEY (evaluacion_id) REFERENCES public."Curso_evaluacion"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2579 (class 2606 OID 37479)
-- Name: Rubrica_rubrica Rubrica_rubrica_tipo_id_7f89075b_fk_Rubrica_tipo_rubrica_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_rubrica"
    ADD CONSTRAINT "Rubrica_rubrica_tipo_id_7f89075b_fk_Rubrica_tipo_rubrica_id" FOREIGN KEY (tipo_id) REFERENCES public."Rubrica_tipo_rubrica"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2580 (class 2606 OID 37243)
-- Name: Rubrica_topico_rubricas Rubrica_topico_rubri_rubrica_id_7365e5e6_fk_Rubrica_r; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_topico_rubricas"
    ADD CONSTRAINT "Rubrica_topico_rubri_rubrica_id_7365e5e6_fk_Rubrica_r" FOREIGN KEY (rubrica_id) REFERENCES public."Rubrica_rubrica"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2581 (class 2606 OID 44924)
-- Name: Rubrica_topico_rubricas Rubrica_topico_rubricas_topico_id_90005039_fk_Rubrica_topico_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_topico_rubricas"
    ADD CONSTRAINT "Rubrica_topico_rubricas_topico_id_90005039_fk_Rubrica_topico_id" FOREIGN KEY (topico_id) REFERENCES public."Rubrica_topico"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2588 (class 2606 OID 46379)
-- Name: Rubrica_topico Rubrica_topico_user_id_772f03dc_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_topico"
    ADD CONSTRAINT "Rubrica_topico_user_id_772f03dc_fk_auth_user_id" FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2545 (class 2606 OID 36829)
-- Name: Universidad_universidad Universidad_universidad_pais_id_d7f99cc9_fk_Pais_pais_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Universidad_universidad"
    ADD CONSTRAINT "Universidad_universidad_pais_id_d7f99cc9_fk_Pais_pais_id" FOREIGN KEY (pais_id) REFERENCES public."Pais_pais"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2557 (class 2606 OID 37332)
-- Name: Usuario_alumno Usuario_alumno_carrera_id_bee04d8c_fk_Carrera_carrera_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Usuario_alumno"
    ADD CONSTRAINT "Usuario_alumno_carrera_id_bee04d8c_fk_Carrera_carrera_id" FOREIGN KEY (carrera_id) REFERENCES public."Carrera_carrera"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2556 (class 2606 OID 37326)
-- Name: Usuario_alumno Usuario_alumno_user_id_7a171d99_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Usuario_alumno"
    ADD CONSTRAINT "Usuario_alumno_user_id_7a171d99_fk_auth_user_id" FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2558 (class 2606 OID 37016)
-- Name: Usuario_persona Usuario_persona_tipo_usuario_id_b01b5e5d_fk_Usuario_t; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Usuario_persona"
    ADD CONSTRAINT "Usuario_persona_tipo_usuario_id_b01b5e5d_fk_Usuario_t" FOREIGN KEY (tipo_usuario_id) REFERENCES public."Usuario_tipousuario"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2559 (class 2606 OID 37021)
-- Name: Usuario_persona Usuario_persona_user_id_37530681_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Usuario_persona"
    ADD CONSTRAINT "Usuario_persona_user_id_37530681_fk_auth_user_id" FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2551 (class 2606 OID 36953)
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2550 (class 2606 OID 36948)
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2549 (class 2606 OID 36939)
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2553 (class 2606 OID 36968)
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2552 (class 2606 OID 36963)
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2555 (class 2606 OID 36982)
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2554 (class 2606 OID 36977)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2582 (class 2606 OID 37267)
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2583 (class 2606 OID 37272)
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


-- Completed on 2021-10-19 10:26:49

--
-- PostgreSQL database dump complete
--


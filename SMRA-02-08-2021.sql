--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.21
-- Dumped by pg_dump version 9.6.21

-- Started on 2021-08-02 19:03:57

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
-- TOC entry 2543 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 188 (class 1259 OID 36240)
-- Name: Actividad_contenido; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Actividad_contenido" (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    tipo_id integer
);


ALTER TABLE public."Actividad_contenido" OWNER TO postgres;

--
-- TOC entry 187 (class 1259 OID 36238)
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
-- TOC entry 2544 (class 0 OID 0)
-- Dependencies: 187
-- Name: Actividad_contenido_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Actividad_contenido_id_seq" OWNED BY public."Actividad_contenido".id;


--
-- TOC entry 190 (class 1259 OID 36248)
-- Name: Actividad_tipo_contenido; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Actividad_tipo_contenido" (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL
);


ALTER TABLE public."Actividad_tipo_contenido" OWNER TO postgres;

--
-- TOC entry 189 (class 1259 OID 36246)
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
-- TOC entry 2545 (class 0 OID 0)
-- Dependencies: 189
-- Name: Actividad_tipo_contenido_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Actividad_tipo_contenido_id_seq" OWNED BY public."Actividad_tipo_contenido".id;


--
-- TOC entry 198 (class 1259 OID 36298)
-- Name: Area_area; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Area_area" (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL
);


ALTER TABLE public."Area_area" OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 36296)
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
-- TOC entry 2546 (class 0 OID 0)
-- Dependencies: 197
-- Name: Area_area_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Area_area_id_seq" OWNED BY public."Area_area".id;


--
-- TOC entry 200 (class 1259 OID 36306)
-- Name: Area_areas_carreras; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Area_areas_carreras" (
    id integer NOT NULL,
    area_id integer,
    carrera_id integer
);


ALTER TABLE public."Area_areas_carreras" OWNER TO postgres;

--
-- TOC entry 199 (class 1259 OID 36304)
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
-- TOC entry 2547 (class 0 OID 0)
-- Dependencies: 199
-- Name: Area_areas_carreras_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Area_areas_carreras_id_seq" OWNED BY public."Area_areas_carreras".id;


--
-- TOC entry 196 (class 1259 OID 36284)
-- Name: Carrera_carrera; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Carrera_carrera" (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    universidad_id integer
);


ALTER TABLE public."Carrera_carrera" OWNER TO postgres;

--
-- TOC entry 195 (class 1259 OID 36282)
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
-- TOC entry 2548 (class 0 OID 0)
-- Dependencies: 195
-- Name: Carrera_carrera_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Carrera_carrera_id_seq" OWNED BY public."Carrera_carrera".id;


--
-- TOC entry 229 (class 1259 OID 36531)
-- Name: Curso_asignatura; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Curso_asignatura" (
    id integer NOT NULL,
    semestre character varying(2),
    anio character varying(4),
    curso_id integer
);


ALTER TABLE public."Curso_asignatura" OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 36539)
-- Name: Curso_asignatura_alumnos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Curso_asignatura_alumnos" (
    id integer NOT NULL,
    alumno_id character varying(13),
    asignatura_id integer,
    evaluacion_id integer
);


ALTER TABLE public."Curso_asignatura_alumnos" OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 36537)
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
-- TOC entry 2549 (class 0 OID 0)
-- Dependencies: 230
-- Name: Curso_asignatura_alumnos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Curso_asignatura_alumnos_id_seq" OWNED BY public."Curso_asignatura_alumnos".id;


--
-- TOC entry 228 (class 1259 OID 36529)
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
-- TOC entry 2550 (class 0 OID 0)
-- Dependencies: 228
-- Name: Curso_asignatura_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Curso_asignatura_id_seq" OWNED BY public."Curso_asignatura".id;


--
-- TOC entry 233 (class 1259 OID 36547)
-- Name: Curso_curso; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Curso_curso" (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    sigla character varying(10),
    carrera_id integer,
    autor_id integer
);


ALTER TABLE public."Curso_curso" OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 36545)
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
-- TOC entry 2551 (class 0 OID 0)
-- Dependencies: 232
-- Name: Curso_curso_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Curso_curso_id_seq" OWNED BY public."Curso_curso".id;


--
-- TOC entry 235 (class 1259 OID 36555)
-- Name: Curso_evaluacion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Curso_evaluacion" (
    id integer NOT NULL,
    nombre character varying(50),
    ponderacion integer,
    asignatura_id integer,
    rubrica_id integer,
    tipo_id integer
);


ALTER TABLE public."Curso_evaluacion" OWNER TO postgres;

--
-- TOC entry 237 (class 1259 OID 36563)
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
-- TOC entry 236 (class 1259 OID 36561)
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
-- TOC entry 2552 (class 0 OID 0)
-- Dependencies: 236
-- Name: Curso_evaluacion_alumnos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Curso_evaluacion_alumnos_id_seq" OWNED BY public."Curso_evaluacion_alumnos".id;


--
-- TOC entry 234 (class 1259 OID 36553)
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
-- TOC entry 2553 (class 0 OID 0)
-- Dependencies: 234
-- Name: Curso_evaluacion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Curso_evaluacion_id_seq" OWNED BY public."Curso_evaluacion".id;


--
-- TOC entry 239 (class 1259 OID 36571)
-- Name: Curso_tipo_evaluacion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Curso_tipo_evaluacion" (
    id integer NOT NULL,
    nombre character varying(10)
);


ALTER TABLE public."Curso_tipo_evaluacion" OWNER TO postgres;

--
-- TOC entry 238 (class 1259 OID 36569)
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
-- TOC entry 2554 (class 0 OID 0)
-- Dependencies: 238
-- Name: Curso_tipo_evaluacion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Curso_tipo_evaluacion_id_seq" OWNED BY public."Curso_tipo_evaluacion".id;


--
-- TOC entry 192 (class 1259 OID 36262)
-- Name: Pais_pais; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Pais_pais" (
    id integer NOT NULL,
    nombre character varying(50) NOT NULL
);


ALTER TABLE public."Pais_pais" OWNER TO postgres;

--
-- TOC entry 191 (class 1259 OID 36260)
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
-- TOC entry 2555 (class 0 OID 0)
-- Dependencies: 191
-- Name: Pais_pais_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Pais_pais_id_seq" OWNED BY public."Pais_pais".id;


--
-- TOC entry 241 (class 1259 OID 36641)
-- Name: RA_ra; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."RA_ra" (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    codigo character varying(10),
    curso_id integer
);


ALTER TABLE public."RA_ra" OWNER TO postgres;

--
-- TOC entry 240 (class 1259 OID 36639)
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
-- TOC entry 2556 (class 0 OID 0)
-- Dependencies: 240
-- Name: RA_ra_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."RA_ra_id_seq" OWNED BY public."RA_ra".id;


--
-- TOC entry 223 (class 1259 OID 36483)
-- Name: Rubrica_estado_rubrica; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Rubrica_estado_rubrica" (
    id integer NOT NULL,
    nombre character varying(50)
);


ALTER TABLE public."Rubrica_estado_rubrica" OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 36481)
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
-- TOC entry 2557 (class 0 OID 0)
-- Dependencies: 222
-- Name: Rubrica_estado_rubrica_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Rubrica_estado_rubrica_id_seq" OWNED BY public."Rubrica_estado_rubrica".id;


--
-- TOC entry 225 (class 1259 OID 36491)
-- Name: Rubrica_rubrica; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Rubrica_rubrica" (
    id integer NOT NULL,
    nombre character varying(100),
    is_private boolean,
    autor_id integer,
    estado_id integer
);


ALTER TABLE public."Rubrica_rubrica" OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 36489)
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
-- TOC entry 2558 (class 0 OID 0)
-- Dependencies: 224
-- Name: Rubrica_rubrica_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Rubrica_rubrica_id_seq" OWNED BY public."Rubrica_rubrica".id;


--
-- TOC entry 227 (class 1259 OID 36499)
-- Name: Rubrica_topico_rubricas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Rubrica_topico_rubricas" (
    id integer NOT NULL,
    puntaje integer,
    rubrica_id integer,
    topico_id integer
);


ALTER TABLE public."Rubrica_topico_rubricas" OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 36497)
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
-- TOC entry 2559 (class 0 OID 0)
-- Dependencies: 226
-- Name: Rubrica_topico_rubricas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Rubrica_topico_rubricas_id_seq" OWNED BY public."Rubrica_topico_rubricas".id;


--
-- TOC entry 221 (class 1259 OID 36475)
-- Name: Tema_topico; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Tema_topico" (
    id integer NOT NULL,
    nombre character varying(400)
);


ALTER TABLE public."Tema_topico" OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 36473)
-- Name: Tema_topico_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Tema_topico_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Tema_topico_id_seq" OWNER TO postgres;

--
-- TOC entry 2560 (class 0 OID 0)
-- Dependencies: 220
-- Name: Tema_topico_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Tema_topico_id_seq" OWNED BY public."Tema_topico".id;


--
-- TOC entry 194 (class 1259 OID 36270)
-- Name: Universidad_universidad; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Universidad_universidad" (
    id integer NOT NULL,
    nombre character varying(100) NOT NULL,
    pais_id integer
);


ALTER TABLE public."Universidad_universidad" OWNER TO postgres;

--
-- TOC entry 193 (class 1259 OID 36268)
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
-- TOC entry 2561 (class 0 OID 0)
-- Dependencies: 193
-- Name: Universidad_universidad_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Universidad_universidad_id_seq" OWNED BY public."Universidad_universidad".id;


--
-- TOC entry 215 (class 1259 OID 36438)
-- Name: Usuario_alumno; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Usuario_alumno" (
    rut character varying(13) NOT NULL,
    nombre character varying(100) NOT NULL,
    apellido_pat character varying(50) NOT NULL,
    apellido_mat character varying(50) NOT NULL,
    mail character varying(254) NOT NULL,
    telefono integer
);


ALTER TABLE public."Usuario_alumno" OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 36445)
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
-- TOC entry 216 (class 1259 OID 36443)
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
-- TOC entry 2562 (class 0 OID 0)
-- Dependencies: 216
-- Name: Usuario_persona_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Usuario_persona_id_seq" OWNED BY public."Usuario_persona".id;


--
-- TOC entry 219 (class 1259 OID 36453)
-- Name: Usuario_tipousuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Usuario_tipousuario" (
    id integer NOT NULL,
    nombre character varying(20)
);


ALTER TABLE public."Usuario_tipousuario" OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 36451)
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
-- TOC entry 2563 (class 0 OID 0)
-- Dependencies: 218
-- Name: Usuario_tipousuario_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Usuario_tipousuario_id_seq" OWNED BY public."Usuario_tipousuario".id;


--
-- TOC entry 206 (class 1259 OID 36344)
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 36342)
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
-- TOC entry 2564 (class 0 OID 0)
-- Dependencies: 205
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- TOC entry 208 (class 1259 OID 36354)
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 36352)
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
-- TOC entry 2565 (class 0 OID 0)
-- Dependencies: 207
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- TOC entry 204 (class 1259 OID 36336)
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
-- TOC entry 203 (class 1259 OID 36334)
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
-- TOC entry 2566 (class 0 OID 0)
-- Dependencies: 203
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- TOC entry 210 (class 1259 OID 36362)
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
-- TOC entry 212 (class 1259 OID 36372)
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 36370)
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
-- TOC entry 2567 (class 0 OID 0)
-- Dependencies: 211
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- TOC entry 209 (class 1259 OID 36360)
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
-- TOC entry 2568 (class 0 OID 0)
-- Dependencies: 209
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- TOC entry 214 (class 1259 OID 36380)
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 36378)
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
-- TOC entry 2569 (class 0 OID 0)
-- Dependencies: 213
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- TOC entry 243 (class 1259 OID 36655)
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
-- TOC entry 242 (class 1259 OID 36653)
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
-- TOC entry 2570 (class 0 OID 0)
-- Dependencies: 242
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- TOC entry 202 (class 1259 OID 36326)
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 36324)
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
-- TOC entry 2571 (class 0 OID 0)
-- Dependencies: 201
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- TOC entry 186 (class 1259 OID 36229)
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
-- TOC entry 185 (class 1259 OID 36227)
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
-- TOC entry 2572 (class 0 OID 0)
-- Dependencies: 185
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- TOC entry 244 (class 1259 OID 36683)
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- TOC entry 2182 (class 2604 OID 36243)
-- Name: Actividad_contenido id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Actividad_contenido" ALTER COLUMN id SET DEFAULT nextval('public."Actividad_contenido_id_seq"'::regclass);


--
-- TOC entry 2183 (class 2604 OID 36251)
-- Name: Actividad_tipo_contenido id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Actividad_tipo_contenido" ALTER COLUMN id SET DEFAULT nextval('public."Actividad_tipo_contenido_id_seq"'::regclass);


--
-- TOC entry 2187 (class 2604 OID 36301)
-- Name: Area_area id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Area_area" ALTER COLUMN id SET DEFAULT nextval('public."Area_area_id_seq"'::regclass);


--
-- TOC entry 2188 (class 2604 OID 36309)
-- Name: Area_areas_carreras id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Area_areas_carreras" ALTER COLUMN id SET DEFAULT nextval('public."Area_areas_carreras_id_seq"'::regclass);


--
-- TOC entry 2186 (class 2604 OID 36287)
-- Name: Carrera_carrera id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Carrera_carrera" ALTER COLUMN id SET DEFAULT nextval('public."Carrera_carrera_id_seq"'::regclass);


--
-- TOC entry 2202 (class 2604 OID 36534)
-- Name: Curso_asignatura id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_asignatura" ALTER COLUMN id SET DEFAULT nextval('public."Curso_asignatura_id_seq"'::regclass);


--
-- TOC entry 2203 (class 2604 OID 36542)
-- Name: Curso_asignatura_alumnos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_asignatura_alumnos" ALTER COLUMN id SET DEFAULT nextval('public."Curso_asignatura_alumnos_id_seq"'::regclass);


--
-- TOC entry 2204 (class 2604 OID 36550)
-- Name: Curso_curso id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_curso" ALTER COLUMN id SET DEFAULT nextval('public."Curso_curso_id_seq"'::regclass);


--
-- TOC entry 2205 (class 2604 OID 36558)
-- Name: Curso_evaluacion id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_evaluacion" ALTER COLUMN id SET DEFAULT nextval('public."Curso_evaluacion_id_seq"'::regclass);


--
-- TOC entry 2206 (class 2604 OID 36566)
-- Name: Curso_evaluacion_alumnos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_evaluacion_alumnos" ALTER COLUMN id SET DEFAULT nextval('public."Curso_evaluacion_alumnos_id_seq"'::regclass);


--
-- TOC entry 2207 (class 2604 OID 36574)
-- Name: Curso_tipo_evaluacion id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_tipo_evaluacion" ALTER COLUMN id SET DEFAULT nextval('public."Curso_tipo_evaluacion_id_seq"'::regclass);


--
-- TOC entry 2184 (class 2604 OID 36265)
-- Name: Pais_pais id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Pais_pais" ALTER COLUMN id SET DEFAULT nextval('public."Pais_pais_id_seq"'::regclass);


--
-- TOC entry 2208 (class 2604 OID 36644)
-- Name: RA_ra id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RA_ra" ALTER COLUMN id SET DEFAULT nextval('public."RA_ra_id_seq"'::regclass);


--
-- TOC entry 2199 (class 2604 OID 36486)
-- Name: Rubrica_estado_rubrica id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_estado_rubrica" ALTER COLUMN id SET DEFAULT nextval('public."Rubrica_estado_rubrica_id_seq"'::regclass);


--
-- TOC entry 2200 (class 2604 OID 36494)
-- Name: Rubrica_rubrica id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_rubrica" ALTER COLUMN id SET DEFAULT nextval('public."Rubrica_rubrica_id_seq"'::regclass);


--
-- TOC entry 2201 (class 2604 OID 36502)
-- Name: Rubrica_topico_rubricas id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_topico_rubricas" ALTER COLUMN id SET DEFAULT nextval('public."Rubrica_topico_rubricas_id_seq"'::regclass);


--
-- TOC entry 2198 (class 2604 OID 36478)
-- Name: Tema_topico id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Tema_topico" ALTER COLUMN id SET DEFAULT nextval('public."Tema_topico_id_seq"'::regclass);


--
-- TOC entry 2185 (class 2604 OID 36273)
-- Name: Universidad_universidad id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Universidad_universidad" ALTER COLUMN id SET DEFAULT nextval('public."Universidad_universidad_id_seq"'::regclass);


--
-- TOC entry 2196 (class 2604 OID 36448)
-- Name: Usuario_persona id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Usuario_persona" ALTER COLUMN id SET DEFAULT nextval('public."Usuario_persona_id_seq"'::regclass);


--
-- TOC entry 2197 (class 2604 OID 36456)
-- Name: Usuario_tipousuario id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Usuario_tipousuario" ALTER COLUMN id SET DEFAULT nextval('public."Usuario_tipousuario_id_seq"'::regclass);


--
-- TOC entry 2191 (class 2604 OID 36347)
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- TOC entry 2192 (class 2604 OID 36357)
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- TOC entry 2190 (class 2604 OID 36339)
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- TOC entry 2193 (class 2604 OID 36365)
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- TOC entry 2194 (class 2604 OID 36375)
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- TOC entry 2195 (class 2604 OID 36383)
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- TOC entry 2209 (class 2604 OID 36658)
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- TOC entry 2189 (class 2604 OID 36329)
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- TOC entry 2181 (class 2604 OID 36232)
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- TOC entry 2479 (class 0 OID 36240)
-- Dependencies: 188
-- Data for Name: Actividad_contenido; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Actividad_contenido" (id, nombre, tipo_id) FROM stdin;
\.


--
-- TOC entry 2573 (class 0 OID 0)
-- Dependencies: 187
-- Name: Actividad_contenido_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Actividad_contenido_id_seq"', 1, false);


--
-- TOC entry 2481 (class 0 OID 36248)
-- Dependencies: 190
-- Data for Name: Actividad_tipo_contenido; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Actividad_tipo_contenido" (id, nombre) FROM stdin;
\.


--
-- TOC entry 2574 (class 0 OID 0)
-- Dependencies: 189
-- Name: Actividad_tipo_contenido_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Actividad_tipo_contenido_id_seq"', 1, false);


--
-- TOC entry 2489 (class 0 OID 36298)
-- Dependencies: 198
-- Data for Name: Area_area; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Area_area" (id, nombre) FROM stdin;
\.


--
-- TOC entry 2575 (class 0 OID 0)
-- Dependencies: 197
-- Name: Area_area_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Area_area_id_seq"', 1, false);


--
-- TOC entry 2491 (class 0 OID 36306)
-- Dependencies: 200
-- Data for Name: Area_areas_carreras; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Area_areas_carreras" (id, area_id, carrera_id) FROM stdin;
\.


--
-- TOC entry 2576 (class 0 OID 0)
-- Dependencies: 199
-- Name: Area_areas_carreras_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Area_areas_carreras_id_seq"', 1, false);


--
-- TOC entry 2487 (class 0 OID 36284)
-- Dependencies: 196
-- Data for Name: Carrera_carrera; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Carrera_carrera" (id, nombre, universidad_id) FROM stdin;
1	Ingeniería de Ejecución en Informática	1
2	Ingeniería Civil Informática	1
3	Ingeniería Civil en Ciencia de Datos	1
4	Ingeniería Informática	1
\.


--
-- TOC entry 2577 (class 0 OID 0)
-- Dependencies: 195
-- Name: Carrera_carrera_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Carrera_carrera_id_seq"', 1, false);


--
-- TOC entry 2520 (class 0 OID 36531)
-- Dependencies: 229
-- Data for Name: Curso_asignatura; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Curso_asignatura" (id, semestre, anio, curso_id) FROM stdin;
1	1	2021	3
\.


--
-- TOC entry 2522 (class 0 OID 36539)
-- Dependencies: 231
-- Data for Name: Curso_asignatura_alumnos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Curso_asignatura_alumnos" (id, alumno_id, asignatura_id, evaluacion_id) FROM stdin;
\.


--
-- TOC entry 2578 (class 0 OID 0)
-- Dependencies: 230
-- Name: Curso_asignatura_alumnos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Curso_asignatura_alumnos_id_seq"', 1, false);


--
-- TOC entry 2579 (class 0 OID 0)
-- Dependencies: 228
-- Name: Curso_asignatura_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Curso_asignatura_id_seq"', 1, true);


--
-- TOC entry 2524 (class 0 OID 36547)
-- Dependencies: 233
-- Data for Name: Curso_curso; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Curso_curso" (id, nombre, sigla, carrera_id, autor_id) FROM stdin;
3	Taller de Ingeniería en Software	INF4550	1	\N
\.


--
-- TOC entry 2580 (class 0 OID 0)
-- Dependencies: 232
-- Name: Curso_curso_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Curso_curso_id_seq"', 3, true);


--
-- TOC entry 2526 (class 0 OID 36555)
-- Dependencies: 235
-- Data for Name: Curso_evaluacion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Curso_evaluacion" (id, nombre, ponderacion, asignatura_id, rubrica_id, tipo_id) FROM stdin;
\.


--
-- TOC entry 2528 (class 0 OID 36563)
-- Dependencies: 237
-- Data for Name: Curso_evaluacion_alumnos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Curso_evaluacion_alumnos" (id, nota, alumno_id, evaluacion_id) FROM stdin;
\.


--
-- TOC entry 2581 (class 0 OID 0)
-- Dependencies: 236
-- Name: Curso_evaluacion_alumnos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Curso_evaluacion_alumnos_id_seq"', 1, false);


--
-- TOC entry 2582 (class 0 OID 0)
-- Dependencies: 234
-- Name: Curso_evaluacion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Curso_evaluacion_id_seq"', 1, false);


--
-- TOC entry 2530 (class 0 OID 36571)
-- Dependencies: 239
-- Data for Name: Curso_tipo_evaluacion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Curso_tipo_evaluacion" (id, nombre) FROM stdin;
\.


--
-- TOC entry 2583 (class 0 OID 0)
-- Dependencies: 238
-- Name: Curso_tipo_evaluacion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Curso_tipo_evaluacion_id_seq"', 1, false);


--
-- TOC entry 2483 (class 0 OID 36262)
-- Dependencies: 192
-- Data for Name: Pais_pais; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Pais_pais" (id, nombre) FROM stdin;
1	Chile
\.


--
-- TOC entry 2584 (class 0 OID 0)
-- Dependencies: 191
-- Name: Pais_pais_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Pais_pais_id_seq"', 1, false);


--
-- TOC entry 2532 (class 0 OID 36641)
-- Dependencies: 241
-- Data for Name: RA_ra; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."RA_ra" (id, nombre, codigo, curso_id) FROM stdin;
\.


--
-- TOC entry 2585 (class 0 OID 0)
-- Dependencies: 240
-- Name: RA_ra_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."RA_ra_id_seq"', 1, false);


--
-- TOC entry 2514 (class 0 OID 36483)
-- Dependencies: 223
-- Data for Name: Rubrica_estado_rubrica; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Rubrica_estado_rubrica" (id, nombre) FROM stdin;
\.


--
-- TOC entry 2586 (class 0 OID 0)
-- Dependencies: 222
-- Name: Rubrica_estado_rubrica_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Rubrica_estado_rubrica_id_seq"', 1, false);


--
-- TOC entry 2516 (class 0 OID 36491)
-- Dependencies: 225
-- Data for Name: Rubrica_rubrica; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Rubrica_rubrica" (id, nombre, is_private, autor_id, estado_id) FROM stdin;
\.


--
-- TOC entry 2587 (class 0 OID 0)
-- Dependencies: 224
-- Name: Rubrica_rubrica_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Rubrica_rubrica_id_seq"', 1, false);


--
-- TOC entry 2518 (class 0 OID 36499)
-- Dependencies: 227
-- Data for Name: Rubrica_topico_rubricas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Rubrica_topico_rubricas" (id, puntaje, rubrica_id, topico_id) FROM stdin;
\.


--
-- TOC entry 2588 (class 0 OID 0)
-- Dependencies: 226
-- Name: Rubrica_topico_rubricas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Rubrica_topico_rubricas_id_seq"', 1, false);


--
-- TOC entry 2512 (class 0 OID 36475)
-- Dependencies: 221
-- Data for Name: Tema_topico; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Tema_topico" (id, nombre) FROM stdin;
\.


--
-- TOC entry 2589 (class 0 OID 0)
-- Dependencies: 220
-- Name: Tema_topico_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Tema_topico_id_seq"', 1, false);


--
-- TOC entry 2485 (class 0 OID 36270)
-- Dependencies: 194
-- Data for Name: Universidad_universidad; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Universidad_universidad" (id, nombre, pais_id) FROM stdin;
1	Pontificia Universidad Católica de Valparaíso	1
\.


--
-- TOC entry 2590 (class 0 OID 0)
-- Dependencies: 193
-- Name: Universidad_universidad_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Universidad_universidad_id_seq"', 1, false);


--
-- TOC entry 2506 (class 0 OID 36438)
-- Dependencies: 215
-- Data for Name: Usuario_alumno; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Usuario_alumno" (rut, nombre, apellido_pat, apellido_mat, mail, telefono) FROM stdin;
19271880-5	Catalina	Pizarro	Aguilera	catalina.pizarro.a@mail.pucv.cl	933111098
\.


--
-- TOC entry 2508 (class 0 OID 36445)
-- Dependencies: 217
-- Data for Name: Usuario_persona; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Usuario_persona" (id, rut, telefono, foto, tipo_usuario_id, user_id) FROM stdin;
1	\N	\N		2	2
\.


--
-- TOC entry 2591 (class 0 OID 0)
-- Dependencies: 216
-- Name: Usuario_persona_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Usuario_persona_id_seq"', 1, true);


--
-- TOC entry 2510 (class 0 OID 36453)
-- Dependencies: 219
-- Data for Name: Usuario_tipousuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."Usuario_tipousuario" (id, nombre) FROM stdin;
1	Administrador
2	Docente
3	Usuario
\.


--
-- TOC entry 2592 (class 0 OID 0)
-- Dependencies: 218
-- Name: Usuario_tipousuario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Usuario_tipousuario_id_seq"', 1, false);


--
-- TOC entry 2497 (class 0 OID 36344)
-- Dependencies: 206
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- TOC entry 2593 (class 0 OID 0)
-- Dependencies: 205
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- TOC entry 2499 (class 0 OID 36354)
-- Dependencies: 208
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- TOC entry 2594 (class 0 OID 0)
-- Dependencies: 207
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- TOC entry 2495 (class 0 OID 36336)
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
33	Can add tipo_evaluacion	9	add_tipo_evaluacion
34	Can change tipo_evaluacion	9	change_tipo_evaluacion
35	Can delete tipo_evaluacion	9	delete_tipo_evaluacion
36	Can view tipo_evaluacion	9	view_tipo_evaluacion
37	Can add alumno	10	add_alumno
38	Can change alumno	10	change_alumno
39	Can delete alumno	10	delete_alumno
40	Can view alumno	10	view_alumno
41	Can add persona	11	add_persona
42	Can change persona	11	change_persona
43	Can delete persona	11	delete_persona
44	Can view persona	11	view_persona
45	Can add tipo usuario	12	add_tipousuario
46	Can change tipo usuario	12	change_tipousuario
47	Can delete tipo usuario	12	delete_tipousuario
48	Can view tipo usuario	12	view_tipousuario
49	Can add topico	13	add_topico
50	Can change topico	13	change_topico
51	Can delete topico	13	delete_topico
52	Can view topico	13	view_topico
53	Can add universidad	14	add_universidad
54	Can change universidad	14	change_universidad
55	Can delete universidad	14	delete_universidad
56	Can view universidad	14	view_universidad
57	Can add contenido	15	add_contenido
58	Can change contenido	15	change_contenido
59	Can delete contenido	15	delete_contenido
60	Can view contenido	15	view_contenido
61	Can add tipo_contenido	16	add_tipo_contenido
62	Can change tipo_contenido	16	change_tipo_contenido
63	Can delete tipo_contenido	16	delete_tipo_contenido
64	Can view tipo_contenido	16	view_tipo_contenido
65	Can add pais	17	add_pais
66	Can change pais	17	change_pais
67	Can delete pais	17	delete_pais
68	Can view pais	17	view_pais
69	Can add ra	18	add_ra
70	Can change ra	18	change_ra
71	Can delete ra	18	delete_ra
72	Can view ra	18	view_ra
73	Can add estado_rubrica	19	add_estado_rubrica
74	Can change estado_rubrica	19	change_estado_rubrica
75	Can delete estado_rubrica	19	delete_estado_rubrica
76	Can view estado_rubrica	19	view_estado_rubrica
77	Can add rubrica	20	add_rubrica
78	Can change rubrica	20	change_rubrica
79	Can delete rubrica	20	delete_rubrica
80	Can view rubrica	20	view_rubrica
81	Can add topico_rubricas	21	add_topico_rubricas
82	Can change topico_rubricas	21	change_topico_rubricas
83	Can delete topico_rubricas	21	delete_topico_rubricas
84	Can view topico_rubricas	21	view_topico_rubricas
85	Can add log entry	22	add_logentry
86	Can change log entry	22	change_logentry
87	Can delete log entry	22	delete_logentry
88	Can view log entry	22	view_logentry
89	Can add permission	23	add_permission
90	Can change permission	23	change_permission
91	Can delete permission	23	delete_permission
92	Can view permission	23	view_permission
93	Can add group	24	add_group
94	Can change group	24	change_group
95	Can delete group	24	delete_group
96	Can view group	24	view_group
97	Can add user	25	add_user
98	Can change user	25	change_user
99	Can delete user	25	delete_user
100	Can view user	25	view_user
101	Can add content type	26	add_contenttype
102	Can change content type	26	change_contenttype
103	Can delete content type	26	delete_contenttype
104	Can view content type	26	view_contenttype
105	Can add session	27	add_session
106	Can change session	27	change_session
107	Can delete session	27	delete_session
108	Can view session	27	view_session
\.


--
-- TOC entry 2595 (class 0 OID 0)
-- Dependencies: 203
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 108, true);


--
-- TOC entry 2501 (class 0 OID 36362)
-- Dependencies: 210
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$120000$Qqzh8QIio94j$vuSudvcFxO83E1b3nFj4Nlrq5Q5v4WhTXlDf2nkml8k=	2021-07-14 23:44:23.882894-04	t	Catalina			kathuwhatsap@hotmail.com	t	t	2021-07-08 21:46:42.759182-04
2	pbkdf2_sha256$120000$d34hmwcfiINI$3msOurrjIT1zCEenxnFdVDTUp7xEGFs//lIuoSkMGo0=	2021-07-25 01:45:18.501974-04	f	Camilo	Camilo	Pizarro	Camilo	f	t	2021-07-25 01:45:18.091836-04
\.


--
-- TOC entry 2503 (class 0 OID 36372)
-- Dependencies: 212
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- TOC entry 2596 (class 0 OID 0)
-- Dependencies: 211
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- TOC entry 2597 (class 0 OID 0)
-- Dependencies: 209
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 2, true);


--
-- TOC entry 2505 (class 0 OID 36380)
-- Dependencies: 214
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- TOC entry 2598 (class 0 OID 0)
-- Dependencies: 213
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 2534 (class 0 OID 36655)
-- Dependencies: 243
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- TOC entry 2599 (class 0 OID 0)
-- Dependencies: 242
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- TOC entry 2493 (class 0 OID 36326)
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
9	Curso	tipo_evaluacion
10	Usuario	alumno
11	Usuario	persona
12	Usuario	tipousuario
13	Tema	topico
14	Universidad	universidad
15	Actividad	contenido
16	Actividad	tipo_contenido
17	Pais	pais
18	RA	ra
19	Rubrica	estado_rubrica
20	Rubrica	rubrica
21	Rubrica	topico_rubricas
22	admin	logentry
23	auth	permission
24	auth	group
25	auth	user
26	contenttypes	contenttype
27	sessions	session
\.


--
-- TOC entry 2600 (class 0 OID 0)
-- Dependencies: 201
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 27, true);


--
-- TOC entry 2477 (class 0 OID 36229)
-- Dependencies: 186
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	Actividad	0001_initial	2021-07-08 21:46:00.877224-04
2	Pais	0001_initial	2021-07-08 21:46:00.892854-04
3	Universidad	0001_initial	2021-07-08 21:46:00.908483-04
4	Carrera	0001_initial	2021-07-08 21:46:00.924114-04
5	Area	0001_initial	2021-07-08 21:46:00.955373-04
6	contenttypes	0001_initial	2021-07-08 21:46:00.971002-04
7	auth	0001_initial	2021-07-08 21:46:01.06478-04
8	Usuario	0001_initial	2021-07-08 21:46:01.1273-04
9	Tema	0001_initial	2021-07-08 21:46:01.1273-04
10	Rubrica	0001_initial	2021-07-08 21:46:01.205448-04
11	Curso	0001_initial	2021-07-08 21:46:01.377395-04
12	RA	0001_initial	2021-07-08 21:46:01.424284-04
13	admin	0001_initial	2021-07-08 21:46:01.455542-04
14	admin	0002_logentry_remove_auto_add	2021-07-08 21:46:01.471177-04
15	admin	0003_logentry_add_action_flag_choices	2021-07-08 21:46:01.486807-04
16	contenttypes	0002_remove_content_type_name	2021-07-08 21:46:01.518061-04
17	auth	0002_alter_permission_name_max_length	2021-07-08 21:46:01.533673-04
18	auth	0003_alter_user_email_max_length	2021-07-08 21:46:01.533673-04
19	auth	0004_alter_user_username_opts	2021-07-08 21:46:01.549322-04
20	auth	0005_alter_user_last_login_null	2021-07-08 21:46:01.564953-04
21	auth	0006_require_contenttypes_0002	2021-07-08 21:46:01.564953-04
22	auth	0007_alter_validators_add_error_messages	2021-07-08 21:46:01.580584-04
23	auth	0008_alter_user_username_max_length	2021-07-08 21:46:01.596216-04
24	auth	0009_alter_user_last_name_max_length	2021-07-08 21:46:01.611845-04
25	sessions	0001_initial	2021-07-08 21:46:01.627453-04
26	Area	0002_auto_20210714_2336	2021-07-14 23:36:52.794042-04
27	Curso	0002_curso_autor	2021-07-25 03:33:09.938005-04
28	Curso	0003_auto_20210726_2239	2021-07-26 22:40:00.165616-04
\.


--
-- TOC entry 2601 (class 0 OID 0)
-- Dependencies: 185
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 28, true);


--
-- TOC entry 2535 (class 0 OID 36683)
-- Dependencies: 244
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
iusk2nbvekfodkr9e2t1h4u1g3aki6nq	ZWM2N2JmOTQyMDI3YjZmNjc3NTQ1Nzk1Y2ZmOTk3YTY0ZDk2MDc0Mzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjNzA5YmQ5MTMzNjI1ZjBiNDM4OGYzOTFhYzg1NzZlZDY3NzVkOTc1In0=	2021-08-08 01:45:18.501974-04
\.


--
-- TOC entry 2214 (class 2606 OID 36245)
-- Name: Actividad_contenido Actividad_contenido_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Actividad_contenido"
    ADD CONSTRAINT "Actividad_contenido_pkey" PRIMARY KEY (id);


--
-- TOC entry 2217 (class 2606 OID 36253)
-- Name: Actividad_tipo_contenido Actividad_tipo_contenido_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Actividad_tipo_contenido"
    ADD CONSTRAINT "Actividad_tipo_contenido_pkey" PRIMARY KEY (id);


--
-- TOC entry 2227 (class 2606 OID 36303)
-- Name: Area_area Area_area_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Area_area"
    ADD CONSTRAINT "Area_area_pkey" PRIMARY KEY (id);


--
-- TOC entry 2231 (class 2606 OID 36311)
-- Name: Area_areas_carreras Area_areas_carreras_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Area_areas_carreras"
    ADD CONSTRAINT "Area_areas_carreras_pkey" PRIMARY KEY (id);


--
-- TOC entry 2224 (class 2606 OID 36289)
-- Name: Carrera_carrera Carrera_carrera_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Carrera_carrera"
    ADD CONSTRAINT "Carrera_carrera_pkey" PRIMARY KEY (id);


--
-- TOC entry 2299 (class 2606 OID 36544)
-- Name: Curso_asignatura_alumnos Curso_asignatura_alumnos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_asignatura_alumnos"
    ADD CONSTRAINT "Curso_asignatura_alumnos_pkey" PRIMARY KEY (id);


--
-- TOC entry 2293 (class 2606 OID 36536)
-- Name: Curso_asignatura Curso_asignatura_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_asignatura"
    ADD CONSTRAINT "Curso_asignatura_pkey" PRIMARY KEY (id);


--
-- TOC entry 2303 (class 2606 OID 36552)
-- Name: Curso_curso Curso_curso_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_curso"
    ADD CONSTRAINT "Curso_curso_pkey" PRIMARY KEY (id);


--
-- TOC entry 2313 (class 2606 OID 36568)
-- Name: Curso_evaluacion_alumnos Curso_evaluacion_alumnos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_evaluacion_alumnos"
    ADD CONSTRAINT "Curso_evaluacion_alumnos_pkey" PRIMARY KEY (id);


--
-- TOC entry 2306 (class 2606 OID 36560)
-- Name: Curso_evaluacion Curso_evaluacion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_evaluacion"
    ADD CONSTRAINT "Curso_evaluacion_pkey" PRIMARY KEY (id);


--
-- TOC entry 2315 (class 2606 OID 36576)
-- Name: Curso_tipo_evaluacion Curso_tipo_evaluacion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_tipo_evaluacion"
    ADD CONSTRAINT "Curso_tipo_evaluacion_pkey" PRIMARY KEY (id);


--
-- TOC entry 2219 (class 2606 OID 36267)
-- Name: Pais_pais Pais_pais_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Pais_pais"
    ADD CONSTRAINT "Pais_pais_pkey" PRIMARY KEY (id);


--
-- TOC entry 2318 (class 2606 OID 36646)
-- Name: RA_ra RA_ra_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RA_ra"
    ADD CONSTRAINT "RA_ra_pkey" PRIMARY KEY (id);


--
-- TOC entry 2282 (class 2606 OID 36488)
-- Name: Rubrica_estado_rubrica Rubrica_estado_rubrica_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_estado_rubrica"
    ADD CONSTRAINT "Rubrica_estado_rubrica_pkey" PRIMARY KEY (id);


--
-- TOC entry 2286 (class 2606 OID 36496)
-- Name: Rubrica_rubrica Rubrica_rubrica_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_rubrica"
    ADD CONSTRAINT "Rubrica_rubrica_pkey" PRIMARY KEY (id);


--
-- TOC entry 2288 (class 2606 OID 36504)
-- Name: Rubrica_topico_rubricas Rubrica_topico_rubricas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_topico_rubricas"
    ADD CONSTRAINT "Rubrica_topico_rubricas_pkey" PRIMARY KEY (id);


--
-- TOC entry 2280 (class 2606 OID 36480)
-- Name: Tema_topico Tema_topico_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Tema_topico"
    ADD CONSTRAINT "Tema_topico_pkey" PRIMARY KEY (id);


--
-- TOC entry 2222 (class 2606 OID 36275)
-- Name: Universidad_universidad Universidad_universidad_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Universidad_universidad"
    ADD CONSTRAINT "Universidad_universidad_pkey" PRIMARY KEY (id);


--
-- TOC entry 2270 (class 2606 OID 36442)
-- Name: Usuario_alumno Usuario_alumno_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Usuario_alumno"
    ADD CONSTRAINT "Usuario_alumno_pkey" PRIMARY KEY (rut);


--
-- TOC entry 2273 (class 2606 OID 36450)
-- Name: Usuario_persona Usuario_persona_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Usuario_persona"
    ADD CONSTRAINT "Usuario_persona_pkey" PRIMARY KEY (id);


--
-- TOC entry 2276 (class 2606 OID 36460)
-- Name: Usuario_persona Usuario_persona_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Usuario_persona"
    ADD CONSTRAINT "Usuario_persona_user_id_key" UNIQUE (user_id);


--
-- TOC entry 2278 (class 2606 OID 36458)
-- Name: Usuario_tipousuario Usuario_tipousuario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Usuario_tipousuario"
    ADD CONSTRAINT "Usuario_tipousuario_pkey" PRIMARY KEY (id);


--
-- TOC entry 2243 (class 2606 OID 36351)
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- TOC entry 2248 (class 2606 OID 36406)
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- TOC entry 2251 (class 2606 OID 36359)
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2245 (class 2606 OID 36349)
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- TOC entry 2238 (class 2606 OID 36392)
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- TOC entry 2240 (class 2606 OID 36341)
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 2259 (class 2606 OID 36377)
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 2262 (class 2606 OID 36421)
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- TOC entry 2253 (class 2606 OID 36367)
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- TOC entry 2265 (class 2606 OID 36385)
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2268 (class 2606 OID 36435)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- TOC entry 2256 (class 2606 OID 36678)
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- TOC entry 2321 (class 2606 OID 36664)
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- TOC entry 2233 (class 2606 OID 36333)
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- TOC entry 2235 (class 2606 OID 36331)
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- TOC entry 2212 (class 2606 OID 36237)
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 2325 (class 2606 OID 36690)
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- TOC entry 2215 (class 1259 OID 36254)
-- Name: Actividad_contenido_tipo_id_467aa68e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Actividad_contenido_tipo_id_467aa68e" ON public."Actividad_contenido" USING btree (tipo_id);


--
-- TOC entry 2228 (class 1259 OID 36322)
-- Name: Area_areas_carreras_area_id_daace21d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Area_areas_carreras_area_id_daace21d" ON public."Area_areas_carreras" USING btree (area_id);


--
-- TOC entry 2229 (class 1259 OID 36323)
-- Name: Area_areas_carreras_carrea_id_92978195; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Area_areas_carreras_carrea_id_92978195" ON public."Area_areas_carreras" USING btree (carrera_id);


--
-- TOC entry 2225 (class 1259 OID 36295)
-- Name: Carrera_carrera_universidad_id_dc117c1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Carrera_carrera_universidad_id_dc117c1b" ON public."Carrera_carrera" USING btree (universidad_id);


--
-- TOC entry 2294 (class 1259 OID 36587)
-- Name: Curso_asignatura_alumnos_alumno_id_c533789c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Curso_asignatura_alumnos_alumno_id_c533789c" ON public."Curso_asignatura_alumnos" USING btree (alumno_id);


--
-- TOC entry 2295 (class 1259 OID 36588)
-- Name: Curso_asignatura_alumnos_alumno_id_c533789c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Curso_asignatura_alumnos_alumno_id_c533789c_like" ON public."Curso_asignatura_alumnos" USING btree (alumno_id varchar_pattern_ops);


--
-- TOC entry 2296 (class 1259 OID 36589)
-- Name: Curso_asignatura_alumnos_asignatura_id_546df289; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Curso_asignatura_alumnos_asignatura_id_546df289" ON public."Curso_asignatura_alumnos" USING btree (asignatura_id);


--
-- TOC entry 2297 (class 1259 OID 36627)
-- Name: Curso_asignatura_alumnos_evaluacion_id_e58f4410; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Curso_asignatura_alumnos_evaluacion_id_e58f4410" ON public."Curso_asignatura_alumnos" USING btree (evaluacion_id);


--
-- TOC entry 2291 (class 1259 OID 36633)
-- Name: Curso_asignatura_curso_id_cb74c177; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Curso_asignatura_curso_id_cb74c177" ON public."Curso_asignatura" USING btree (curso_id);


--
-- TOC entry 2300 (class 1259 OID 36699)
-- Name: Curso_curso_autor_id_33181a2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Curso_curso_autor_id_33181a2c" ON public."Curso_curso" USING btree (autor_id);


--
-- TOC entry 2301 (class 1259 OID 36595)
-- Name: Curso_curso_carrera_id_a09dcb70; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Curso_curso_carrera_id_a09dcb70" ON public."Curso_curso" USING btree (carrera_id);


--
-- TOC entry 2309 (class 1259 OID 36606)
-- Name: Curso_evaluacion_alumnos_alumno_id_353a7a7d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Curso_evaluacion_alumnos_alumno_id_353a7a7d" ON public."Curso_evaluacion_alumnos" USING btree (alumno_id);


--
-- TOC entry 2310 (class 1259 OID 36607)
-- Name: Curso_evaluacion_alumnos_alumno_id_353a7a7d_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Curso_evaluacion_alumnos_alumno_id_353a7a7d_like" ON public."Curso_evaluacion_alumnos" USING btree (alumno_id varchar_pattern_ops);


--
-- TOC entry 2311 (class 1259 OID 36608)
-- Name: Curso_evaluacion_alumnos_evaluacion_id_d0a088f5; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Curso_evaluacion_alumnos_evaluacion_id_d0a088f5" ON public."Curso_evaluacion_alumnos" USING btree (evaluacion_id);


--
-- TOC entry 2304 (class 1259 OID 36609)
-- Name: Curso_evaluacion_asignatura_id_a7f7eb5f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Curso_evaluacion_asignatura_id_a7f7eb5f" ON public."Curso_evaluacion" USING btree (asignatura_id);


--
-- TOC entry 2307 (class 1259 OID 36615)
-- Name: Curso_evaluacion_rubrica_id_8d8a459a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Curso_evaluacion_rubrica_id_8d8a459a" ON public."Curso_evaluacion" USING btree (rubrica_id);


--
-- TOC entry 2308 (class 1259 OID 36621)
-- Name: Curso_evaluacion_tipo_id_a747b375; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Curso_evaluacion_tipo_id_a747b375" ON public."Curso_evaluacion" USING btree (tipo_id);


--
-- TOC entry 2316 (class 1259 OID 36652)
-- Name: RA_ra_curso_id_34f894ad; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "RA_ra_curso_id_34f894ad" ON public."RA_ra" USING btree (curso_id);


--
-- TOC entry 2283 (class 1259 OID 36515)
-- Name: Rubrica_rubrica_autor_id_b6b9af65; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Rubrica_rubrica_autor_id_b6b9af65" ON public."Rubrica_rubrica" USING btree (autor_id);


--
-- TOC entry 2284 (class 1259 OID 36516)
-- Name: Rubrica_rubrica_estado_id_b65c1ec3; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Rubrica_rubrica_estado_id_b65c1ec3" ON public."Rubrica_rubrica" USING btree (estado_id);


--
-- TOC entry 2289 (class 1259 OID 36527)
-- Name: Rubrica_topico_rubricas_rubrica_id_7365e5e6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Rubrica_topico_rubricas_rubrica_id_7365e5e6" ON public."Rubrica_topico_rubricas" USING btree (rubrica_id);


--
-- TOC entry 2290 (class 1259 OID 36528)
-- Name: Rubrica_topico_rubricas_topico_id_90005039; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Rubrica_topico_rubricas_topico_id_90005039" ON public."Rubrica_topico_rubricas" USING btree (topico_id);


--
-- TOC entry 2220 (class 1259 OID 36281)
-- Name: Universidad_universidad_pais_id_d7f99cc9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Universidad_universidad_pais_id_d7f99cc9" ON public."Universidad_universidad" USING btree (pais_id);


--
-- TOC entry 2271 (class 1259 OID 36461)
-- Name: Usuario_alumno_rut_82a32018_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Usuario_alumno_rut_82a32018_like" ON public."Usuario_alumno" USING btree (rut varchar_pattern_ops);


--
-- TOC entry 2274 (class 1259 OID 36462)
-- Name: Usuario_persona_tipo_usuario_id_b01b5e5d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "Usuario_persona_tipo_usuario_id_b01b5e5d" ON public."Usuario_persona" USING btree (tipo_usuario_id);


--
-- TOC entry 2241 (class 1259 OID 36394)
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- TOC entry 2246 (class 1259 OID 36407)
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- TOC entry 2249 (class 1259 OID 36408)
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- TOC entry 2236 (class 1259 OID 36393)
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- TOC entry 2257 (class 1259 OID 36423)
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- TOC entry 2260 (class 1259 OID 36422)
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- TOC entry 2263 (class 1259 OID 36437)
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- TOC entry 2266 (class 1259 OID 36436)
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- TOC entry 2254 (class 1259 OID 36679)
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- TOC entry 2319 (class 1259 OID 36675)
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- TOC entry 2322 (class 1259 OID 36676)
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- TOC entry 2323 (class 1259 OID 36692)
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- TOC entry 2326 (class 1259 OID 36691)
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- TOC entry 2327 (class 2606 OID 36255)
-- Name: Actividad_contenido Actividad_contenido_tipo_id_467aa68e_fk_Actividad; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Actividad_contenido"
    ADD CONSTRAINT "Actividad_contenido_tipo_id_467aa68e_fk_Actividad" FOREIGN KEY (tipo_id) REFERENCES public."Actividad_tipo_contenido"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2330 (class 2606 OID 36312)
-- Name: Area_areas_carreras Area_areas_carreras_area_id_daace21d_fk_Area_area_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Area_areas_carreras"
    ADD CONSTRAINT "Area_areas_carreras_area_id_daace21d_fk_Area_area_id" FOREIGN KEY (area_id) REFERENCES public."Area_area"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2331 (class 2606 OID 36694)
-- Name: Area_areas_carreras Area_areas_carreras_carrera_id_a910093c_fk_Carrera_carrera_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Area_areas_carreras"
    ADD CONSTRAINT "Area_areas_carreras_carrera_id_a910093c_fk_Carrera_carrera_id" FOREIGN KEY (carrera_id) REFERENCES public."Carrera_carrera"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2329 (class 2606 OID 36290)
-- Name: Carrera_carrera Carrera_carrera_universidad_id_dc117c1b_fk_Universid; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Carrera_carrera"
    ADD CONSTRAINT "Carrera_carrera_universidad_id_dc117c1b_fk_Universid" FOREIGN KEY (universidad_id) REFERENCES public."Universidad_universidad"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2346 (class 2606 OID 36577)
-- Name: Curso_asignatura_alumnos Curso_asignatura_alu_alumno_id_c533789c_fk_Usuario_a; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_asignatura_alumnos"
    ADD CONSTRAINT "Curso_asignatura_alu_alumno_id_c533789c_fk_Usuario_a" FOREIGN KEY (alumno_id) REFERENCES public."Usuario_alumno"(rut) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2347 (class 2606 OID 36582)
-- Name: Curso_asignatura_alumnos Curso_asignatura_alu_asignatura_id_546df289_fk_Curso_asi; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_asignatura_alumnos"
    ADD CONSTRAINT "Curso_asignatura_alu_asignatura_id_546df289_fk_Curso_asi" FOREIGN KEY (asignatura_id) REFERENCES public."Curso_asignatura"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2348 (class 2606 OID 36628)
-- Name: Curso_asignatura_alumnos Curso_asignatura_alu_evaluacion_id_e58f4410_fk_Curso_eva; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_asignatura_alumnos"
    ADD CONSTRAINT "Curso_asignatura_alu_evaluacion_id_e58f4410_fk_Curso_eva" FOREIGN KEY (evaluacion_id) REFERENCES public."Curso_evaluacion_alumnos"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2345 (class 2606 OID 36705)
-- Name: Curso_asignatura Curso_asignatura_curso_id_cb74c177_fk_Curso_curso_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_asignatura"
    ADD CONSTRAINT "Curso_asignatura_curso_id_cb74c177_fk_Curso_curso_id" FOREIGN KEY (curso_id) REFERENCES public."Curso_curso"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2350 (class 2606 OID 36700)
-- Name: Curso_curso Curso_curso_autor_id_33181a2c_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_curso"
    ADD CONSTRAINT "Curso_curso_autor_id_33181a2c_fk_auth_user_id" FOREIGN KEY (autor_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2349 (class 2606 OID 36590)
-- Name: Curso_curso Curso_curso_carrera_id_a09dcb70_fk_Carrera_carrera_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_curso"
    ADD CONSTRAINT "Curso_curso_carrera_id_a09dcb70_fk_Carrera_carrera_id" FOREIGN KEY (carrera_id) REFERENCES public."Carrera_carrera"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2354 (class 2606 OID 36596)
-- Name: Curso_evaluacion_alumnos Curso_evaluacion_alu_alumno_id_353a7a7d_fk_Usuario_a; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_evaluacion_alumnos"
    ADD CONSTRAINT "Curso_evaluacion_alu_alumno_id_353a7a7d_fk_Usuario_a" FOREIGN KEY (alumno_id) REFERENCES public."Usuario_alumno"(rut) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2355 (class 2606 OID 36601)
-- Name: Curso_evaluacion_alumnos Curso_evaluacion_alu_evaluacion_id_d0a088f5_fk_Curso_eva; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_evaluacion_alumnos"
    ADD CONSTRAINT "Curso_evaluacion_alu_evaluacion_id_d0a088f5_fk_Curso_eva" FOREIGN KEY (evaluacion_id) REFERENCES public."Curso_evaluacion"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2351 (class 2606 OID 36610)
-- Name: Curso_evaluacion Curso_evaluacion_asignatura_id_a7f7eb5f_fk_Curso_asignatura_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_evaluacion"
    ADD CONSTRAINT "Curso_evaluacion_asignatura_id_a7f7eb5f_fk_Curso_asignatura_id" FOREIGN KEY (asignatura_id) REFERENCES public."Curso_asignatura"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2352 (class 2606 OID 36616)
-- Name: Curso_evaluacion Curso_evaluacion_rubrica_id_8d8a459a_fk_Rubrica_rubrica_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_evaluacion"
    ADD CONSTRAINT "Curso_evaluacion_rubrica_id_8d8a459a_fk_Rubrica_rubrica_id" FOREIGN KEY (rubrica_id) REFERENCES public."Rubrica_rubrica"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2353 (class 2606 OID 36622)
-- Name: Curso_evaluacion Curso_evaluacion_tipo_id_a747b375_fk_Curso_tipo_evaluacion_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Curso_evaluacion"
    ADD CONSTRAINT "Curso_evaluacion_tipo_id_a747b375_fk_Curso_tipo_evaluacion_id" FOREIGN KEY (tipo_id) REFERENCES public."Curso_tipo_evaluacion"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2356 (class 2606 OID 36647)
-- Name: RA_ra RA_ra_curso_id_34f894ad_fk_Curso_curso_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."RA_ra"
    ADD CONSTRAINT "RA_ra_curso_id_34f894ad_fk_Curso_curso_id" FOREIGN KEY (curso_id) REFERENCES public."Curso_curso"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2341 (class 2606 OID 36505)
-- Name: Rubrica_rubrica Rubrica_rubrica_autor_id_b6b9af65_fk_Usuario_persona_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_rubrica"
    ADD CONSTRAINT "Rubrica_rubrica_autor_id_b6b9af65_fk_Usuario_persona_id" FOREIGN KEY (autor_id) REFERENCES public."Usuario_persona"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2342 (class 2606 OID 36510)
-- Name: Rubrica_rubrica Rubrica_rubrica_estado_id_b65c1ec3_fk_Rubrica_estado_rubrica_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_rubrica"
    ADD CONSTRAINT "Rubrica_rubrica_estado_id_b65c1ec3_fk_Rubrica_estado_rubrica_id" FOREIGN KEY (estado_id) REFERENCES public."Rubrica_estado_rubrica"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2343 (class 2606 OID 36517)
-- Name: Rubrica_topico_rubricas Rubrica_topico_rubri_rubrica_id_7365e5e6_fk_Rubrica_r; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_topico_rubricas"
    ADD CONSTRAINT "Rubrica_topico_rubri_rubrica_id_7365e5e6_fk_Rubrica_r" FOREIGN KEY (rubrica_id) REFERENCES public."Rubrica_rubrica"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2344 (class 2606 OID 36522)
-- Name: Rubrica_topico_rubricas Rubrica_topico_rubricas_topico_id_90005039_fk_Tema_topico_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rubrica_topico_rubricas"
    ADD CONSTRAINT "Rubrica_topico_rubricas_topico_id_90005039_fk_Tema_topico_id" FOREIGN KEY (topico_id) REFERENCES public."Tema_topico"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2328 (class 2606 OID 36276)
-- Name: Universidad_universidad Universidad_universidad_pais_id_d7f99cc9_fk_Pais_pais_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Universidad_universidad"
    ADD CONSTRAINT "Universidad_universidad_pais_id_d7f99cc9_fk_Pais_pais_id" FOREIGN KEY (pais_id) REFERENCES public."Pais_pais"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2339 (class 2606 OID 36463)
-- Name: Usuario_persona Usuario_persona_tipo_usuario_id_b01b5e5d_fk_Usuario_t; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Usuario_persona"
    ADD CONSTRAINT "Usuario_persona_tipo_usuario_id_b01b5e5d_fk_Usuario_t" FOREIGN KEY (tipo_usuario_id) REFERENCES public."Usuario_tipousuario"(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2340 (class 2606 OID 36468)
-- Name: Usuario_persona Usuario_persona_user_id_37530681_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Usuario_persona"
    ADD CONSTRAINT "Usuario_persona_user_id_37530681_fk_auth_user_id" FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2334 (class 2606 OID 36400)
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2333 (class 2606 OID 36395)
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2332 (class 2606 OID 36386)
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2336 (class 2606 OID 36415)
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2335 (class 2606 OID 36410)
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2338 (class 2606 OID 36429)
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2337 (class 2606 OID 36424)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2357 (class 2606 OID 36665)
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2358 (class 2606 OID 36670)
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


-- Completed on 2021-08-02 19:03:57

--
-- PostgreSQL database dump complete
--


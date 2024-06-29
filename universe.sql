--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    age_in_millions_of_years integer,
    columna_relleno character varying,
    columna_relleno2 character varying
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying NOT NULL,
    distance_from_earth numeric,
    is_spherical boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    age_in_millions_of_years integer,
    description text,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    distance_from_earth numeric,
    has_life boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: vacia; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.vacia (
    vacia_id integer NOT NULL,
    name character varying NOT NULL,
    is_util boolean,
    columna3relleno character varying
);


ALTER TABLE public.vacia OWNER TO freecodecamp;

--
-- Name: vacia_vacia_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.vacia_vacia_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.vacia_vacia_id_seq OWNER TO freecodecamp;

--
-- Name: vacia_vacia_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.vacia_vacia_id_seq OWNED BY public.vacia.vacia_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: vacia vacia_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.vacia ALTER COLUMN vacia_id SET DEFAULT nextval('public.vacia_vacia_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (4, 'andromeda', 20, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'pegaso', 30, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'otra_galaxia', 40, NULL, NULL);
INSERT INTO public.galaxy VALUES (7, 'galaxia4', 50, 'algo', 'algo2');
INSERT INTO public.galaxy VALUES (8, 'galaxy5', 7, 'algo', 'algo2');
INSERT INTO public.galaxy VALUES (9, 'galaxy6', 7, 'algo', 'algo2');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', 33, true, 3);
INSERT INTO public.moon VALUES (2, 'moon2', 66, true, 3);
INSERT INTO public.moon VALUES (3, 'moon3', 99, true, 3);
INSERT INTO public.moon VALUES (4, 'moon4', NULL, NULL, 3);
INSERT INTO public.moon VALUES (5, 'moon5', NULL, NULL, 3);
INSERT INTO public.moon VALUES (6, 'moon6', NULL, NULL, 3);
INSERT INTO public.moon VALUES (7, 'moon7', NULL, NULL, 3);
INSERT INTO public.moon VALUES (8, 'moon8', NULL, NULL, 3);
INSERT INTO public.moon VALUES (9, 'moon9', NULL, NULL, 3);
INSERT INTO public.moon VALUES (10, 'moon10', NULL, NULL, 3);
INSERT INTO public.moon VALUES (11, 'moon11', NULL, NULL, 3);
INSERT INTO public.moon VALUES (12, 'moon12', NULL, NULL, 3);
INSERT INTO public.moon VALUES (13, 'moon13', NULL, NULL, 3);
INSERT INTO public.moon VALUES (14, 'moon14', NULL, NULL, 3);
INSERT INTO public.moon VALUES (15, 'moon15', NULL, NULL, 3);
INSERT INTO public.moon VALUES (16, 'moon16', NULL, NULL, 3);
INSERT INTO public.moon VALUES (17, 'moon17', NULL, NULL, 3);
INSERT INTO public.moon VALUES (18, 'moon18', NULL, NULL, 3);
INSERT INTO public.moon VALUES (19, 'moon19', NULL, NULL, 3);
INSERT INTO public.moon VALUES (20, 'moon20', NULL, NULL, 3);
INSERT INTO public.moon VALUES (21, 'moon21', NULL, NULL, 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'marte', 3, 'Un planeta rojo', 2);
INSERT INTO public.planet VALUES (3, 'jupiter', 66, 'soy el de los anillitos', 2);
INSERT INTO public.planet VALUES (2, 'mercurio', 44, 'mercurito', 2);
INSERT INTO public.planet VALUES (4, 'planeta4', NULL, NULL, 2);
INSERT INTO public.planet VALUES (5, 'planeta5', NULL, NULL, 2);
INSERT INTO public.planet VALUES (6, 'planeta6', NULL, NULL, 2);
INSERT INTO public.planet VALUES (7, 'planeta7', NULL, NULL, 2);
INSERT INTO public.planet VALUES (8, 'planeta8', NULL, NULL, 2);
INSERT INTO public.planet VALUES (9, 'planeta9', NULL, NULL, 2);
INSERT INTO public.planet VALUES (10, 'planeta10', NULL, NULL, 2);
INSERT INTO public.planet VALUES (11, 'planeta11', NULL, NULL, 2);
INSERT INTO public.planet VALUES (12, 'planeta12', NULL, NULL, 2);
INSERT INTO public.planet VALUES (13, 'planeta13', NULL, NULL, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'estrellita', 55000, false, 4);
INSERT INTO public.star VALUES (3, 'estrellita2', 66000, false, 4);
INSERT INTO public.star VALUES (4, 'estrellita3', 77000, false, 4);
INSERT INTO public.star VALUES (5, 'estrellita4', 88000, false, 4);
INSERT INTO public.star VALUES (6, 'estrellita5', 88000, false, 4);
INSERT INTO public.star VALUES (7, 'estrellita6', 88000, false, 4);


--
-- Data for Name: vacia; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.vacia VALUES (1, 'vacio1', NULL, NULL);
INSERT INTO public.vacia VALUES (2, 'vacio2', NULL, NULL);
INSERT INTO public.vacia VALUES (3, 'vacio3', NULL, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 9, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: vacia_vacia_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.vacia_vacia_id_seq', 3, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: vacia vacia_columna3relleno_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.vacia
    ADD CONSTRAINT vacia_columna3relleno_key UNIQUE (columna3relleno);


--
-- Name: vacia vacia_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.vacia
    ADD CONSTRAINT vacia_pkey PRIMARY KEY (vacia_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--


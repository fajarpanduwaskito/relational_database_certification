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
    name character varying(50) NOT NULL,
    description text NOT NULL,
    length integer,
    width integer,
    distance_from_earth numeric,
    has_life boolean,
    has_explored boolean
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
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    length integer,
    width integer,
    distance_from_earth numeric,
    has_life boolean,
    has_explored boolean
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
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    length integer,
    width integer,
    distance_from_earth numeric,
    has_life boolean,
    has_explored boolean
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
-- Name: rocket; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.rocket (
    rocket_id integer NOT NULL,
    name character varying(50) NOT NULL,
    code character varying(12) NOT NULL,
    description text,
    length integer,
    width integer,
    weight numeric,
    has_launced boolean,
    has_landed boolean
);


ALTER TABLE public.rocket OWNER TO freecodecamp;

--
-- Name: rocket_rocket_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.rocket_rocket_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rocket_rocket_id_seq OWNER TO freecodecamp;

--
-- Name: rocket_rocket_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.rocket_rocket_id_seq OWNED BY public.rocket.rocket_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    length integer,
    width integer,
    distance_from_earth numeric,
    has_life boolean,
    has_explored boolean
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
-- Name: rocket rocket_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rocket ALTER COLUMN rocket_id SET DEFAULT nextval('public.rocket_rocket_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Galaxy 1', 'desc', 1, 1, 1, true, true);
INSERT INTO public.galaxy VALUES (2, 'Galaxy 2', 'desc', 1, 1, 1, true, true);
INSERT INTO public.galaxy VALUES (3, 'Galaxy 3', 'desc', 1, 1, 1, true, true);
INSERT INTO public.galaxy VALUES (4, 'Galaxy 4', 'desc', 1, 1, 1, true, true);
INSERT INTO public.galaxy VALUES (5, 'Galaxy 5', 'desc', 1, 1, 1, true, true);
INSERT INTO public.galaxy VALUES (6, 'Galaxy 6', 'desc', 1, 1, 1, true, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (21, 1, 'Moon 1', 'desc', 1, 1, 1, true, true);
INSERT INTO public.moon VALUES (22, 2, 'Moon 2', 'desc', 1, 1, 1, true, true);
INSERT INTO public.moon VALUES (23, 3, 'Moon 3', 'desc', 1, 1, 1, true, true);
INSERT INTO public.moon VALUES (24, 4, 'Moon 4', 'desc', 1, 1, 1, true, true);
INSERT INTO public.moon VALUES (25, 5, 'Moon 5', 'desc', 1, 1, 1, true, true);
INSERT INTO public.moon VALUES (26, 6, 'Moon 6', 'desc', 1, 1, 1, true, true);
INSERT INTO public.moon VALUES (27, 7, 'Moon 7', 'desc', 1, 1, 1, true, true);
INSERT INTO public.moon VALUES (28, 8, 'Moon 8', 'desc', 1, 1, 1, true, true);
INSERT INTO public.moon VALUES (29, 9, 'Moon 9', 'desc', 1, 1, 1, true, true);
INSERT INTO public.moon VALUES (30, 10, 'Moon 10', 'desc', 1, 1, 1, true, true);
INSERT INTO public.moon VALUES (31, 11, 'Moon 11', 'desc', 1, 1, 1, true, true);
INSERT INTO public.moon VALUES (32, 12, 'Moon 12', 'desc', 1, 1, 1, true, true);
INSERT INTO public.moon VALUES (33, 1, 'Moon 13', 'desc', 1, 1, 1, true, true);
INSERT INTO public.moon VALUES (34, 2, 'Moon 14', 'desc', 1, 1, 1, true, true);
INSERT INTO public.moon VALUES (35, 3, 'Moon 15', 'desc', 1, 1, 1, true, true);
INSERT INTO public.moon VALUES (36, 4, 'Moon 16', 'desc', 1, 1, 1, true, true);
INSERT INTO public.moon VALUES (37, 5, 'Moon 17', 'desc', 1, 1, 1, true, true);
INSERT INTO public.moon VALUES (38, 6, 'Moon 18', 'desc', 1, 1, 1, true, true);
INSERT INTO public.moon VALUES (39, 7, 'Moon 19', 'desc', 1, 1, 1, true, true);
INSERT INTO public.moon VALUES (40, 8, 'Moon 20', 'desc', 1, 1, 1, true, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, 'Planet 1', 'desc', 1, 1, 1, true, true);
INSERT INTO public.planet VALUES (2, 1, 'Planet 2', 'desc', 1, 1, 1, true, true);
INSERT INTO public.planet VALUES (3, 2, 'Planet 3', 'desc', 1, 1, 1, true, true);
INSERT INTO public.planet VALUES (4, 2, 'Planet 4', 'desc', 1, 1, 1, true, true);
INSERT INTO public.planet VALUES (5, 3, 'Planet 5', 'desc', 1, 1, 1, true, true);
INSERT INTO public.planet VALUES (6, 3, 'Planet 6', 'desc', 1, 1, 1, true, true);
INSERT INTO public.planet VALUES (7, 4, 'Planet 7', 'desc', 1, 1, 1, true, true);
INSERT INTO public.planet VALUES (8, 4, 'Planet 8', 'desc', 1, 1, 1, true, true);
INSERT INTO public.planet VALUES (9, 5, 'Planet 9', 'desc', 1, 1, 1, true, true);
INSERT INTO public.planet VALUES (10, 5, 'Planet 10', 'desc', 1, 1, 1, true, true);
INSERT INTO public.planet VALUES (11, 6, 'Planet 11', 'desc', 1, 1, 1, true, true);
INSERT INTO public.planet VALUES (12, 6, 'Planet 12', 'desc', 1, 1, 1, true, true);


--
-- Data for Name: rocket; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.rocket VALUES (1, 'Rocket 1', 'code 1', 'desc', 1, 1, 1, true, true);
INSERT INTO public.rocket VALUES (2, 'Rocket 2', 'code 2', 'desc', 1, 1, 1, true, true);
INSERT INTO public.rocket VALUES (3, 'Rocket 3', 'code 3', 'desc', 1, 1, 1, true, true);
INSERT INTO public.rocket VALUES (4, 'Rocket 4', 'code 4', 'desc', 1, 1, 1, true, true);
INSERT INTO public.rocket VALUES (5, 'Rocket 5', 'code 5', 'desc', 1, 1, 1, true, true);
INSERT INTO public.rocket VALUES (6, 'Rocket 6', 'code 6', 'desc', 1, 1, 1, true, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 'Star 1', 'desc', 1, 1, 1, true, true);
INSERT INTO public.star VALUES (2, 2, 'Star 2', 'desc', 1, 1, 1, true, true);
INSERT INTO public.star VALUES (3, 3, 'Star 3', 'desc', 1, 1, 1, true, true);
INSERT INTO public.star VALUES (4, 4, 'Star 4', 'desc', 1, 1, 1, true, true);
INSERT INTO public.star VALUES (5, 5, 'Star 5', 'desc', 1, 1, 1, true, true);
INSERT INTO public.star VALUES (6, 6, 'Star 6', 'desc', 1, 1, 1, true, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 40, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: rocket_rocket_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.rocket_rocket_id_seq', 6, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: rocket rocket_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rocket
    ADD CONSTRAINT rocket_code_key UNIQUE (code);


--
-- Name: rocket rocket_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rocket
    ADD CONSTRAINT rocket_name_key UNIQUE (name);


--
-- Name: rocket rocket_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rocket
    ADD CONSTRAINT rocket_pkey PRIMARY KEY (rocket_id);


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
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--


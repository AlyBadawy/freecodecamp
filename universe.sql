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
-- Name: fifth; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.fifth (
    fifth_id integer NOT NULL,
    name character varying(30),
    two integer NOT NULL,
    three integer NOT NULL
);


ALTER TABLE public.fifth OWNER TO freecodecamp;

--
-- Name: fifth_fifth_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.fifth_fifth_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fifth_fifth_id_seq OWNER TO freecodecamp;

--
-- Name: fifth_fifth_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.fifth_fifth_id_seq OWNED BY public.fifth.fifth_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    two integer NOT NULL,
    three integer NOT NULL,
    four integer,
    five integer
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
    name character varying(30),
    i1 integer,
    i2 integer,
    i3 numeric(4,1),
    details text,
    planet_id integer,
    three integer NOT NULL,
    two integer NOT NULL,
    four integer,
    five integer
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
    name character varying(30),
    star_id integer,
    two integer NOT NULL,
    three integer NOT NULL,
    four integer,
    five integer
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
    name character varying(30),
    b1 boolean,
    b2 boolean,
    galaxy_id integer NOT NULL,
    three integer NOT NULL,
    two integer NOT NULL,
    four integer,
    five integer
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
-- Name: fifth fifth_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth ALTER COLUMN fifth_id SET DEFAULT nextval('public.fifth_fifth_id_seq'::regclass);


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
-- Data for Name: fifth; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.fifth VALUES (1, 'one', 2, 3);
INSERT INTO public.fifth VALUES (2, 'two', 2, 3);
INSERT INTO public.fifth VALUES (3, 'three', 2, 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'main', 2, 3, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'one', 2, 3, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'two', 2, 3, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'three', 2, 3, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'four', 2, 3, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'five', 2, 3, NULL, NULL);
INSERT INTO public.galaxy VALUES (7, 'six', 2, 3, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'the moon', NULL, NULL, NULL, NULL, 1, 3, 2, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'one', NULL, NULL, NULL, NULL, 1, 3, 2, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'two', NULL, NULL, NULL, NULL, 2, 3, 2, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'three', NULL, NULL, NULL, NULL, 3, 3, 2, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'a1', NULL, NULL, NULL, NULL, 1, 3, 2, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'b1', NULL, NULL, NULL, NULL, 2, 3, 2, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'c1', NULL, NULL, NULL, NULL, 3, 3, 2, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'd1', NULL, NULL, NULL, NULL, 4, 3, 2, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'e1', NULL, NULL, NULL, NULL, 5, 3, 2, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'a2', NULL, NULL, NULL, NULL, 1, 3, 2, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'b2', NULL, NULL, NULL, NULL, 2, 3, 2, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'c2', NULL, NULL, NULL, NULL, 3, 3, 2, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'd2', NULL, NULL, NULL, NULL, 4, 3, 2, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'e2', NULL, NULL, NULL, NULL, 5, 3, 2, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'a3', NULL, NULL, NULL, NULL, 1, 3, 2, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'b3', NULL, NULL, NULL, NULL, 2, 3, 2, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'c3', NULL, NULL, NULL, NULL, 3, 3, 2, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'd3', NULL, NULL, NULL, NULL, 4, 3, 2, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'e3', NULL, NULL, NULL, NULL, 5, 3, 2, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'a4', NULL, NULL, NULL, NULL, 1, 3, 2, NULL, NULL);
INSERT INTO public.moon VALUES (21, 'b4', NULL, NULL, NULL, NULL, 2, 3, 2, NULL, NULL);
INSERT INTO public.moon VALUES (22, 'c4', NULL, NULL, NULL, NULL, 3, 3, 2, NULL, NULL);
INSERT INTO public.moon VALUES (23, 'd4', NULL, NULL, NULL, NULL, 4, 3, 2, NULL, NULL);
INSERT INTO public.moon VALUES (24, 'e4', NULL, NULL, NULL, NULL, 5, 3, 2, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'earth', 1, 2, 3, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'one', 1, 2, 3, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'two', 2, 2, 3, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'three', 3, 2, 3, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'a', 1, 2, 3, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'b', 2, 2, 3, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'c', 3, 2, 3, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'd', 4, 2, 3, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'e', 5, 2, 3, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'a1', 1, 2, 3, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'b1', 2, 2, 3, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'c1', 3, 2, 3, NULL, NULL);
INSERT INTO public.planet VALUES (13, 'd1', 4, 2, 3, NULL, NULL);
INSERT INTO public.planet VALUES (14, 'e1', 5, 2, 3, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sun', NULL, NULL, 1, 3, 2, NULL, NULL);
INSERT INTO public.star VALUES (2, 'one', NULL, NULL, 1, 3, 2, NULL, NULL);
INSERT INTO public.star VALUES (3, 'two', NULL, NULL, 2, 3, 2, NULL, NULL);
INSERT INTO public.star VALUES (4, 'three', NULL, NULL, 3, 3, 2, NULL, NULL);
INSERT INTO public.star VALUES (5, 'four', NULL, NULL, 1, 3, 2, NULL, NULL);
INSERT INTO public.star VALUES (6, 'five', NULL, NULL, 2, 3, 2, NULL, NULL);
INSERT INTO public.star VALUES (7, 'six', NULL, NULL, 3, 3, 2, NULL, NULL);


--
-- Name: fifth_fifth_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.fifth_fifth_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 24, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: fifth fifth_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth
    ADD CONSTRAINT fifth_name_key UNIQUE (name);


--
-- Name: fifth fifth_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth
    ADD CONSTRAINT fifth_pkey PRIMARY KEY (fifth_id);


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


-- camper: /project$ cat universe.sql
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
-- Name: asteroids; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroids (
    asteroids_id integer NOT NULL,
    name character varying,
    age integer NOT NULL,
    size integer NOT NULL,
    diameter numeric,
    "exists" boolean
);


ALTER TABLE public.asteroids OWNER TO freecodecamp;

--
-- Name: asteroids_asteroids_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroids_asteroids_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroids_asteroids_id_seq OWNER TO freecodecamp;

--
-- Name: asteroids_asteroids_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroids_asteroids_id_seq OWNED BY public.asteroids.asteroids_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    star_name text,
    galaxy_id integer NOT NULL,
    name character varying,
    age integer NOT NULL,
    size integer NOT NULL,
    diameter numeric,
    "exists" boolean
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
    moon_name text,
    moon_id integer NOT NULL,
    name character varying,
    size integer NOT NULL,
    age integer NOT NULL,
    diameter numeric,
    "exists" boolean
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
    planet_name text,
    moon_name text,
    planet_id integer NOT NULL,
    name character varying,
    age integer NOT NULL,
    size integer NOT NULL,
    diameter numeric,
    "exists" boolean
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
    star_name text,
    planet_name text,
    star_id integer NOT NULL,
    name character varying,
    size integer NOT NULL,
    age integer NOT NULL,
    diameter numeric,
    "exists" boolean
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
-- Name: asteroids asteroids_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroids ALTER COLUMN asteroids_id SET DEFAULT nextval('public.asteroids_asteroids_id_seq'::regclass);


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
-- Data for Name: asteroids; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroids VALUES (1, 'ast', 22, 23, NULL, NULL);
INSERT INTO public.asteroids VALUES (2, 'ast1', 22, 24, NULL, NULL);
INSERT INTO public.asteroids VALUES (3, 'ast1', 22, 25, NULL, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('str1', 1, NULL, 2, 1, NULL, NULL);
INSERT INTO public.galaxy VALUES ('str2', 2, NULL, 2, 1, NULL, NULL);
INSERT INTO public.galaxy VALUES ('str3', 3, NULL, 2, 1, NULL, NULL);
INSERT INTO public.galaxy VALUES ('str4', 4, NULL, 2, 1, NULL, NULL);
INSERT INTO public.galaxy VALUES ('str5', 5, NULL, 2, 1, NULL, NULL);
INSERT INTO public.galaxy VALUES ('str6', 6, NULL, 2, 1, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('m1', 1, NULL, 1, 1, NULL, NULL);
INSERT INTO public.moon VALUES ('m2', 2, NULL, 1, 1, NULL, NULL);
INSERT INTO public.moon VALUES ('m3', 3, NULL, 1, 1, NULL, NULL);
INSERT INTO public.moon VALUES ('m4', 4, NULL, 1, 1, NULL, NULL);
INSERT INTO public.moon VALUES ('m5', 5, NULL, 1, 1, NULL, NULL);
INSERT INTO public.moon VALUES ('m6', 6, NULL, 1, 1, NULL, NULL);
INSERT INTO public.moon VALUES ('m7', 7, NULL, 1, 1, NULL, NULL);
INSERT INTO public.moon VALUES ('m8', 8, NULL, 1, 1, NULL, NULL);
INSERT INTO public.moon VALUES ('m9', 9, NULL, 1, 1, NULL, NULL);
INSERT INTO public.moon VALUES ('m10', 10, NULL, 1, 1, NULL, NULL);
INSERT INTO public.moon VALUES ('m11', 11, NULL, 1, 1, NULL, NULL);
INSERT INTO public.moon VALUES ('m12', 12, NULL, 1, 1, NULL, NULL);
INSERT INTO public.moon VALUES ('m1', 15, NULL, 1, 1, NULL, NULL);
INSERT INTO public.moon VALUES ('m1', 16, NULL, 1, 1, NULL, NULL);
INSERT INTO public.moon VALUES ('m1', 17, NULL, 1, 1, NULL, NULL);
INSERT INTO public.moon VALUES ('m1', 18, NULL, 1, 1, NULL, NULL);
INSERT INTO public.moon VALUES ('m1', 19, NULL, 1, 1, NULL, NULL);
INSERT INTO public.moon VALUES ('m1', 20, NULL, 1, 1, NULL, NULL);
INSERT INTO public.moon VALUES ('m1', 21, NULL, 1, 1, NULL, NULL);
INSERT INTO public.moon VALUES ('m1', 22, NULL, 1, 1, NULL, NULL);
INSERT INTO public.moon VALUES ('m1', 14, NULL, 1, 1, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('plan1', 'm1', 1, NULL, 1, 1, NULL, NULL);
INSERT INTO public.planet VALUES ('plan2', 'm2', 2, NULL, 1, 1, NULL, NULL);
INSERT INTO public.planet VALUES ('plan3', 'm3', 3, NULL, 1, 1, NULL, NULL);
INSERT INTO public.planet VALUES ('plan4', 'm4', 4, NULL, 1, 1, NULL, NULL);
INSERT INTO public.planet VALUES ('plan5', 'm5', 5, NULL, 1, 1, NULL, NULL);
INSERT INTO public.planet VALUES ('plan6', 'm6', 6, NULL, 1, 1, NULL, NULL);
INSERT INTO public.planet VALUES ('plan6', 'm7', 7, NULL, 1, 1, NULL, NULL);
INSERT INTO public.planet VALUES ('plan1', 'm10', 12, NULL, 1, 1, NULL, NULL);
INSERT INTO public.planet VALUES ('plan1', 'm11', 13, NULL, 1, 1, NULL, NULL);
INSERT INTO public.planet VALUES ('plan1', 'm12', 14, NULL, 1, 1, NULL, NULL);
INSERT INTO public.planet VALUES ('plan1', 'm8', 10, NULL, 1, 1, NULL, NULL);
INSERT INTO public.planet VALUES ('plan1', 'm9', 11, NULL, 1, 1, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('str1', 'plan1', 1, NULL, 1, 1, NULL, NULL);
INSERT INTO public.star VALUES ('str2', 'plan2', 2, NULL, 1, 1, NULL, NULL);
INSERT INTO public.star VALUES ('str3', 'plan3', 3, NULL, 1, 1, NULL, NULL);
INSERT INTO public.star VALUES ('str4', 'plan4', 4, NULL, 1, 1, NULL, NULL);
INSERT INTO public.star VALUES ('str5', 'plan5', 5, NULL, 1, 1, NULL, NULL);
INSERT INTO public.star VALUES ('str6', 'plan6', 6, NULL, 1, 1, NULL, NULL);


--
-- Name: asteroids_asteroids_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroids_asteroids_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: asteroids asteroids_asteroids_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroids
    ADD CONSTRAINT asteroids_asteroids_id_key UNIQUE (asteroids_id);


--
-- Name: asteroids asteroids_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroids
    ADD CONSTRAINT asteroids_pkey PRIMARY KEY (asteroids_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_star_name_key UNIQUE (star_name);


--
-- Name: moon moon_diameter_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_diameter_key UNIQUE (diameter);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_moon_name_key UNIQUE (moon_name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_planet_name_key UNIQUE (planet_name);


--
-- Name: moon moon_moon_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_name_fkey FOREIGN KEY (moon_name) REFERENCES public.planet(moon_name);


--
-- Name: planet planet_planet_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_name_fkey FOREIGN KEY (planet_name) REFERENCES public.star(planet_name);


--
-- Name: star star_star_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_name_fkey FOREIGN KEY (star_name) REFERENCES public.galaxy(star_name);


--
-- PostgreSQL database dump complete
--

-- camper: /project$ 

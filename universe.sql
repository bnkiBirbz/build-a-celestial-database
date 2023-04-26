--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: extra; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.extra (
    extra_id integer NOT NULL,
    name character varying(30) NOT NULL,
    fun integer NOT NULL
);


ALTER TABLE public.extra OWNER TO freecodecamp;

--
-- Name: extra_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.extra_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.extra_id_seq OWNER TO freecodecamp;

--
-- Name: extra_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.extra_id_seq OWNED BY public.extra.extra_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255) NOT NULL,
    size integer,
    age integer,
    description text,
    has_supermassive_blackhole boolean
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
    name character varying(255) NOT NULL,
    diameter integer,
    mass numeric,
    is_tidal_locked boolean,
    is_in_habitable_zone boolean,
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
    name character varying(255) NOT NULL,
    radius integer,
    mass numeric,
    has_atmosphere boolean,
    has_water boolean,
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
    name character varying(255) NOT NULL,
    spectral_type character varying(255),
    temperature integer,
    mass numeric,
    is_main_sequence boolean,
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
-- Name: extra extra_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra ALTER COLUMN extra_id SET DEFAULT nextval('public.extra_id_seq'::regclass);


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
-- Data for Name: extra; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.extra VALUES (1, 'word', 1);
INSERT INTO public.extra VALUES (2, 'wierd', 2);
INSERT INTO public.extra VALUES (3, 'what', 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 100000, 13000, 'The Milky Way is a barred spiral galaxy...', true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 120000, 14000, 'The Andromeda Galaxy is a spiral galaxy...', true);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 40000, 10000, 'The Triangulum Galaxy is a spiral galaxy...', false);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 60000, 12000, 'The Whirlpool Galaxy is an interacting spiral galaxy...', true);
INSERT INTO public.galaxy VALUES (5, 'Cartwheel', 45000, 11000, 'The Cartwheel Galaxy is a lenticular galaxy...', false);
INSERT INTO public.galaxy VALUES (6, 'Sombrero', 35000, 9000, 'The Sombrero Galaxy is a spiral galaxy...', true);
INSERT INTO public.galaxy VALUES (7, 'Andromeda II', 25000, 10000, 'Andromeda II is a dwarf spheroidal galaxy...', false);
INSERT INTO public.galaxy VALUES (8, 'Pinwheel', 43000, 9000, 'The Pinwheel Galaxy is a face-on spiral galaxy...', true);
INSERT INTO public.galaxy VALUES (9, 'Cigar', 22000, 8000, 'The Cigar Galaxy is a starburst galaxy...', false);
INSERT INTO public.galaxy VALUES (10, 'Black Eye', 20000, 12000, 'The Black Eye Galaxy is a ring galaxy...', true);
INSERT INTO public.galaxy VALUES (11, 'Bode''s', 35000, 11000, 'Bode''s Galaxy is a barred spiral galaxy...', false);
INSERT INTO public.galaxy VALUES (12, 'Leo I', 23000, 10000, 'Leo I is a dwarf spheroidal galaxy...', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 3474, 73480000000000000000000, true, false, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 22, 10659000000000000, true, false, 2);
INSERT INTO public.moon VALUES (3, 'Deimos', 12, 1476200000000000, true, false, 2);
INSERT INTO public.moon VALUES (4, 'Ganymede', 5262, 148190000000000000000000, true, false, 3);
INSERT INTO public.moon VALUES (5, 'Europa', 3122, 48000000000000000000000, true, true, 3);
INSERT INTO public.moon VALUES (6, 'Callisto', 4821, 107590000000000000000000, true, false, 3);
INSERT INTO public.moon VALUES (7, 'Moon', 3474, 73480000000000000000000, true, false, 1);
INSERT INTO public.moon VALUES (8, 'Phobos', 22, 10659000000000000, true, false, 2);
INSERT INTO public.moon VALUES (9, 'Deimos', 12, 1476200000000000, true, false, 2);
INSERT INTO public.moon VALUES (10, 'Ganymede', 5262, 148190000000000000000000, true, false, 3);
INSERT INTO public.moon VALUES (11, 'Europa', 3122, 48000000000000000000000, true, true, 3);
INSERT INTO public.moon VALUES (12, 'Callisto', 4821, 107590000000000000000000, true, false, 3);
INSERT INTO public.moon VALUES (13, 'Titan', 5150, 134500000000000000000000, true, false, 4);
INSERT INTO public.moon VALUES (14, 'Enceladus', 504, 108000000000000000000, true, true, 4);
INSERT INTO public.moon VALUES (15, 'Ganymede II', 5262, 148190000000000000000000, true, false, 6);
INSERT INTO public.moon VALUES (16, 'Europa II', 3122, 48000000000000000000000, true, true, 6);
INSERT INTO public.moon VALUES (17, 'Callisto II', 4821, 107590000000000000000000, true, false, 6);
INSERT INTO public.moon VALUES (18, 'Triton', 2707, 21400000000000000000000, true, false, 7);
INSERT INTO public.moon VALUES (19, 'Tethys', 1066, 617000000000000000000, true, false, 4);
INSERT INTO public.moon VALUES (20, 'Luna', 3474, 73420000000000000000000, true, false, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 6371, 5972000000000000000000000, true, true, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 3389, 639000000000000000000000, true, false, 1);
INSERT INTO public.planet VALUES (3, 'Jupiter', 69911, 1898000000000000000000000000, true, false, 2);
INSERT INTO public.planet VALUES (4, 'Saturn', 58232, 568300000000000000000000000, true, false, 2);
INSERT INTO public.planet VALUES (5, 'Neptune', 24622, 102400000000000000000000000, true, false, 2);
INSERT INTO public.planet VALUES (6, 'Uranus', 25362, 86810000000000000000000000, true, false, 2);
INSERT INTO public.planet VALUES (7, 'Venus', 6051, 4867000000000000000000000, true, false, 1);
INSERT INTO public.planet VALUES (8, 'Mercury', 2439, 330110000000000000000000, false, false, 1);
INSERT INTO public.planet VALUES (9, 'Uranus II', 787, 1220000000000000000000, true, false, 6);
INSERT INTO public.planet VALUES (10, 'Saturn II', 248, 23000000000000000000, true, false, 4);
INSERT INTO public.planet VALUES (11, 'Jupiter II', 1613, 18990000000000000000000, true, false, 3);
INSERT INTO public.planet VALUES (12, 'Neptune II', 1990, 102400000000000000000000, true, false, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'G2V', 5778, 1989000000000000000000000000000, true, 1);
INSERT INTO public.star VALUES (2, 'Sirius', 'A1V', 9940, 2.02, true, 1);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 'M1-2Ia-Iab', 3600, 20, false, 1);
INSERT INTO public.star VALUES (4, 'Alpha Centauri A', 'G2V', 5790, 1.1, true, 1);
INSERT INTO public.star VALUES (5, 'Alpha Centauri B', 'K1V', 5260, 0.907, true, 1);
INSERT INTO public.star VALUES (6, 'Vega', 'A0Va', 9602, 2.135, true, 2);
INSERT INTO public.star VALUES (7, 'Proxima Centauri', 'M6Ve', 3042, 0.123, true, 2);
INSERT INTO public.star VALUES (8, 'Alpha Centauri C', 'M6Ve', 3042, 0.123, true, 2);
INSERT INTO public.star VALUES (9, 'Polaris', 'F7Ib', 6573, 5.4, true, 3);
INSERT INTO public.star VALUES (10, 'Antares', 'M1.5Iab-Ib', 3560, 12.4, false, 4);
INSERT INTO public.star VALUES (11, 'Betelgeuse', 'M1-2Ia-Iab', 3600, 20, false, 4);
INSERT INTO public.star VALUES (12, 'Rigel', 'B8Ia', 12100, 23, false, 5);


--
-- Name: extra_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.extra_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 12, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 12, true);


--
-- Name: extra extra_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra
    ADD CONSTRAINT extra_id_key UNIQUE (extra_id);


--
-- Name: extra extra_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra
    ADD CONSTRAINT extra_pkey PRIMARY KEY (extra_id);


--
-- Name: galaxy galaxy_id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id_unique UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id_unique UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id_unique UNIQUE (planet_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id_unique UNIQUE (star_id);


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


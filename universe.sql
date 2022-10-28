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
-- Name: aliens; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.aliens (
    aliens_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer
);


ALTER TABLE public.aliens OWNER TO freecodecamp;

--
-- Name: aliens_aliens_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.aliens_aliens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.aliens_aliens_id_seq OWNER TO freecodecamp;

--
-- Name: aliens_aliens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.aliens_aliens_id_seq OWNED BY public.aliens.aliens_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    distance_from_earth numeric(5,1),
    is_spherical boolean,
    my_serial integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_ga_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_ga_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_ga_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_ga_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_ga_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: galaxy_my_serial_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_my_serial_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_my_serial_seq OWNER TO freecodecamp;

--
-- Name: galaxy_my_serial_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_my_serial_seq OWNED BY public.galaxy.my_serial;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    my_serial integer,
    m_age integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_m_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_m_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_m_id_seq OWNER TO freecodecamp;

--
-- Name: moon_m_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_m_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_years integer,
    is_spherical boolean,
    my_serial integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_pl_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_pl_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_pl_id_seq OWNER TO freecodecamp;

--
-- Name: planet_pl_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_pl_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life integer,
    my_serial integer,
    s_age integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_st_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_st_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_st_id_seq OWNER TO freecodecamp;

--
-- Name: star_st_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_st_id_seq OWNED BY public.star.star_id;


--
-- Name: aliens aliens_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.aliens ALTER COLUMN aliens_id SET DEFAULT nextval('public.aliens_aliens_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_ga_id_seq'::regclass);


--
-- Name: galaxy my_serial; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN my_serial SET DEFAULT nextval('public.galaxy_my_serial_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_m_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_pl_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_st_id_seq'::regclass);


--
-- Data for Name: aliens; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.aliens VALUES (1, 'Four_arms', 23);
INSERT INTO public.aliens VALUES (2, 'HeatBlast', 12);
INSERT INTO public.aliens VALUES (3, 'Graymatter', 43);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milkyway', 5432.2, true, 1);
INSERT INTO public.galaxy VALUES (2, 'Whirlpool', 2353.8, false, 2);
INSERT INTO public.galaxy VALUES (3, 'PinWheel', 3324.2, true, 3);
INSERT INTO public.galaxy VALUES (4, 'Cornet', 1113.9, true, 4);
INSERT INTO public.galaxy VALUES (5, 'Wolfman', 4343.5, false, 5);
INSERT INTO public.galaxy VALUES (6, 'Warangal', NULL, NULL, 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'E_moon', 'It is in white color', 5, 1);
INSERT INTO public.moon VALUES (2, 'P_moon', 'Does not exit!', 1, 32);
INSERT INTO public.moon VALUES (3, 'M_moon', 'It has moon larger than planet', 4, 78);
INSERT INTO public.moon VALUES (4, 'J_moon', 'It has two moons', 3, 12);
INSERT INTO public.moon VALUES (5, 'S_moon', 'Its consists of 1million moons', 2, 89);
INSERT INTO public.moon VALUES (6, 'Yellow', 'Nice to see!', NULL, NULL);
INSERT INTO public.moon VALUES (7, 'PinkMoon', 'Iam new To this galaxy', NULL, NULL);
INSERT INTO public.moon VALUES (8, 'Dharani', 'I am the biggest Moon', NULL, 19);
INSERT INTO public.moon VALUES (9, 'Mahesh', 'I am the superstar', NULL, 8976);
INSERT INTO public.moon VALUES (10, 'Deekshith', 'I am the best', NULL, 789332);
INSERT INTO public.moon VALUES (11, 'Mac', 'Great moon', NULL, 89976);
INSERT INTO public.moon VALUES (12, 'Jessica', 'I am a foreigner', NULL, 98989);
INSERT INTO public.moon VALUES (16, 'Goldie', 'I am unbelieveable', NULL, 8987);
INSERT INTO public.moon VALUES (17, 'Speedy', 'I have a brother moon', NULL, 1909);
INSERT INTO public.moon VALUES (18, 'AroundMoon', 'Nothing like me', NULL, 834976);
INSERT INTO public.moon VALUES (19, 'pochamma', 'I move around the galaxy', NULL, 7892);
INSERT INTO public.moon VALUES (20, 'Sunny', 'I born with blue', NULL, 89256);
INSERT INTO public.moon VALUES (21, 'Alice', 'I born here!', NULL, 9878789);
INSERT INTO public.moon VALUES (22, 'Jashmith', 'Your are like a diamond', NULL, 898709);
INSERT INTO public.moon VALUES (23, 'SiddhuMoon', 'I am bestie of all', NULL, 193409);
INSERT INTO public.moon VALUES (24, 'WowMoon', 'I move like hell', NULL, 8765);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 48900, true, 5);
INSERT INTO public.planet VALUES (2, 'Mars', 43234, true, 4);
INSERT INTO public.planet VALUES (3, 'Jupitor', 6783, false, 3);
INSERT INTO public.planet VALUES (4, 'Saturn', 3495758, true, 2);
INSERT INTO public.planet VALUES (5, 'Pluto', 3443488, true, 1);
INSERT INTO public.planet VALUES (6, 'Mercury', 2345, true, NULL);
INSERT INTO public.planet VALUES (7, 'Venus', 33433, false, NULL);
INSERT INTO public.planet VALUES (8, 'Uranus', 343423, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'Neptune', 78784, false, NULL);
INSERT INTO public.planet VALUES (10, 'Rockster', 99999, true, NULL);
INSERT INTO public.planet VALUES (11, 'Pappa', 67576, false, NULL);
INSERT INTO public.planet VALUES (12, 'Chandana', 88888, false, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Alpha', 400, 1, NULL);
INSERT INTO public.star VALUES (2, 'Kappa', 343, 2, NULL);
INSERT INTO public.star VALUES (3, '51 pegasi', 56883, 3, NULL);
INSERT INTO public.star VALUES (4, 'Nanna', 7891, 4, NULL);
INSERT INTO public.star VALUES (5, 'Divija', 897, 5, NULL);
INSERT INTO public.star VALUES (7, 'laxmi_deepthi', NULL, NULL, NULL);


--
-- Name: aliens_aliens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.aliens_aliens_id_seq', 3, true);


--
-- Name: galaxy_ga_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_ga_id_seq', 6, true);


--
-- Name: galaxy_my_serial_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_my_serial_seq', 5, true);


--
-- Name: moon_m_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_m_id_seq', 24, true);


--
-- Name: planet_pl_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_pl_id_seq', 12, true);


--
-- Name: star_st_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_st_id_seq', 7, true);


--
-- Name: aliens aliens_aliens_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.aliens
    ADD CONSTRAINT aliens_aliens_id_key UNIQUE (aliens_id);


--
-- Name: aliens aliens_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.aliens
    ADD CONSTRAINT aliens_pkey PRIMARY KEY (aliens_id);


--
-- Name: galaxy galaxy_my_serial_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_my_serial_key UNIQUE (my_serial);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_my_serial_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_my_serial_key UNIQUE (my_serial);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_my_serial_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_my_serial_key UNIQUE (my_serial);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_my_serial_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_my_serial_key UNIQUE (my_serial);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_my_serial_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_my_serial_fkey FOREIGN KEY (my_serial) REFERENCES public.planet(my_serial);


--
-- Name: planet planet_my_serial_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_my_serial_fkey FOREIGN KEY (my_serial) REFERENCES public.star(my_serial);


--
-- Name: star star_my_serial_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_my_serial_fkey FOREIGN KEY (my_serial) REFERENCES public.galaxy(my_serial);


--
-- PostgreSQL database dump complete
--


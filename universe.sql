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
-- Name: astronomer; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.astronomer (
    astronomer_id integer NOT NULL,
    name character varying(50) NOT NULL,
    star_id integer,
    astronomer_nationality text,
    still_active boolean
);


ALTER TABLE public.astronomer OWNER TO freecodecamp;

--
-- Name: astronomer_id_astronomer_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.astronomer_id_astronomer_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.astronomer_id_astronomer_seq OWNER TO freecodecamp;

--
-- Name: astronomer_id_astronomer_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.astronomer_id_astronomer_seq OWNED BY public.astronomer.astronomer_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    distance_from_earth integer,
    constellation text,
    galaxy_color text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_galaxy_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_galaxy_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_galaxy_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_galaxy_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_galaxy_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    planet_id integer,
    confirmed_moon boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_moon_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_moon_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_moon_seq OWNER TO freecodecamp;

--
-- Name: moon_id_moon_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_moon_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    distance_from_earth integer,
    has_life boolean,
    can_support_life boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_planet_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_planet_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_planet_seq OWNER TO freecodecamp;

--
-- Name: planet_id_planet_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_planet_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    age_in_millions_of_years numeric,
    galaxy_id integer,
    constellation text
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_star_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_star_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_star_seq OWNER TO freecodecamp;

--
-- Name: star_id_star_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_star_seq OWNED BY public.star.star_id;


--
-- Name: astronomer astronomer_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomer ALTER COLUMN astronomer_id SET DEFAULT nextval('public.astronomer_id_astronomer_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_galaxy_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_moon_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_planet_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_star_seq'::regclass);


--
-- Data for Name: astronomer; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.astronomer VALUES (1, 'Simon Oliver', 2, 'England', true);
INSERT INTO public.astronomer VALUES (2, 'Garrett Hensley', 1, 'United States', false);
INSERT INTO public.astronomer VALUES (3, 'Jonhannes Kepler', 3, 'Germany', false);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', NULL, 'Sagittarius', 'White');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 3, 'Andromeda', 'Pink');
INSERT INTO public.galaxy VALUES (3, 'Tadpole', 400, 'Draco', 'White');
INSERT INTO public.galaxy VALUES (4, 'Cigar', 11, 'Ursa Major', 'White and red');
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 29, 'Virgo', 'White and pink');
INSERT INTO public.galaxy VALUES (6, 'Pinwheel', 20, 'Ursa Major', 'White and blue');
INSERT INTO public.galaxy VALUES (7, 'Amazon', 10000, 'Amazon Minor', 'Red and white');
INSERT INTO public.galaxy VALUES (8, 'Sparta', 500000, 'Spartan', 'White and silver');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (38, 'Luna (Moon)', 'Moon of Earth', 1, true);
INSERT INTO public.moon VALUES (39, 'Draco Alpha 4', 'Moon of Iota Draconis', 2, false);
INSERT INTO public.moon VALUES (40, 'Beta Andromedae', 'Moon of PA-99-N2', 3, false);
INSERT INTO public.moon VALUES (41, 'Lunar Proxima A', 'Moon of Proxima D', 4, false);
INSERT INTO public.moon VALUES (42, 'Lunar Proxima B', 'Moon of Proxima D', 4, false);
INSERT INTO public.moon VALUES (43, 'Minor Binium', 'Moon of Agebinium', 6, false);
INSERT INTO public.moon VALUES (44, 'Major Binium', 'Moon of Agebinium', 6, false);
INSERT INTO public.moon VALUES (45, 'Rhine', 'Moon of Derneuca', 7, false);
INSERT INTO public.moon VALUES (46, 'Rho', 'Moon of Derneuca', 7, false);
INSERT INTO public.moon VALUES (47, 'Salium', 'Moon of Derneuca', 7, false);
INSERT INTO public.moon VALUES (48, 'Treore', 'Moon of Tremar', 10, false);
INSERT INTO public.moon VALUES (49, 'Trion', 'Moon of Tremar', 10, false);
INSERT INTO public.moon VALUES (50, 'Lolus', 'Moon of Sybin', 9, false);
INSERT INTO public.moon VALUES (51, 'Rayn Lolus', 'Moon of Sybin', 9, false);
INSERT INTO public.moon VALUES (52, 'Mercle', 'Moon of Sybin', 9, false);
INSERT INTO public.moon VALUES (53, 'Iris', 'Moon of Edolus', 12, false);
INSERT INTO public.moon VALUES (54, 'Irons Far', 'Moon of Edolus', 12, false);
INSERT INTO public.moon VALUES (55, 'Nye', 'Moon of Altaaya', 11, false);
INSERT INTO public.moon VALUES (56, 'Niem', 'Moon of Altaaya', 11, false);
INSERT INTO public.moon VALUES (57, 'Niar', 'Moon of Altaaya', 11, false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', NULL, true, true, 3);
INSERT INTO public.planet VALUES (2, 'Iota Draconis', 101, false, false, 1);
INSERT INTO public.planet VALUES (3, 'PA-99-N2', 2000000, false, false, 2);
INSERT INTO public.planet VALUES (4, 'Proxima D', 4, false, NULL, 5);
INSERT INTO public.planet VALUES (5, 'Proxima B', 4, false, NULL, 5);
INSERT INTO public.planet VALUES (6, 'Agebinium', 70000, false, false, 6);
INSERT INTO public.planet VALUES (7, 'Derneuca', 80000, false, false, 6);
INSERT INTO public.planet VALUES (8, 'Sonedma', 75000, false, true, 6);
INSERT INTO public.planet VALUES (9, 'Sybin', 10000000, true, true, 6);
INSERT INTO public.planet VALUES (10, 'Tremar', 90000, false, false, 6);
INSERT INTO public.planet VALUES (11, 'Altaaya', 55000, false, false, 7);
INSERT INTO public.planet VALUES (12, 'Edolus', 60000, false, false, 7);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (3, 'Sol (Sun)', 6600, 1, NULL);
INSERT INTO public.star VALUES (1, 'Thera Draconis', 2, 3, 'Draco');
INSERT INTO public.star VALUES (2, 'Alpha Andromedae', 60, 2, 'Andromeda');
INSERT INTO public.star VALUES (4, 'UY Scuti', NULL, 1, 'Scutum');
INSERT INTO public.star VALUES (5, 'Proxima Centauri', 48000000, 1, 'Centarus');
INSERT INTO public.star VALUES (6, 'Ageko', 7000000, 8, 'Amazon Minor');
INSERT INTO public.star VALUES (7, 'Anitda', 45000, 8, 'Spartan');


--
-- Name: astronomer_id_astronomer_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.astronomer_id_astronomer_seq', 3, true);


--
-- Name: galaxy_id_galaxy_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_galaxy_seq', 8, true);


--
-- Name: moon_id_moon_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_moon_seq', 57, true);


--
-- Name: planet_id_planet_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_planet_seq', 13, true);


--
-- Name: star_id_star_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_star_seq', 10, true);


--
-- Name: astronomer astronomer_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomer
    ADD CONSTRAINT astronomer_pkey PRIMARY KEY (astronomer_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


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
-- Name: astronomer unique_id_astronomer; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomer
    ADD CONSTRAINT unique_id_astronomer UNIQUE (astronomer_id);


--
-- Name: galaxy unique_id_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_id_galaxy UNIQUE (galaxy_id);


--
-- Name: moon unique_id_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_id_moon UNIQUE (moon_id);


--
-- Name: planet unique_id_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_id_planet UNIQUE (planet_id);


--
-- Name: star unique_id_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_id_star UNIQUE (star_id);


--
-- Name: star fk_id_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_id_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_id_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_id_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_id_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_id_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: astronomer fk_id_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomer
    ADD CONSTRAINT fk_id_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--


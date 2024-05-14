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
    galaxy_type character varying(30) NOT NULL,
    galaxy_age_in_thmil numeric(3,1) NOT NULL,
    name character varying(30),
    is_active boolean
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
    gravity numeric(3,2),
    distance_in_km integer NOT NULL,
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
    name character varying(30),
    has_life boolean NOT NULL,
    "position" integer,
    star_id integer,
    description text
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
    star_type character varying(5) NOT NULL,
    has_planets integer,
    is_binary boolean NOT NULL,
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
-- Name: station; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.station (
    station_id integer NOT NULL,
    name character varying(30) NOT NULL,
    country character varying(30)
);


ALTER TABLE public.station OWNER TO freecodecamp;

--
-- Name: stations_station_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.stations_station_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.stations_station_id_seq OWNER TO freecodecamp;

--
-- Name: stations_station_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.stations_station_id_seq OWNED BY public.station.station_id;


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
-- Name: station station_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.station ALTER COLUMN station_id SET DEFAULT nextval('public.stations_station_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Espiral', 13.6, 'Via Lactea', false);
INSERT INTO public.galaxy VALUES (2, 'Espiral', 10.0, 'Andromeda', false);
INSERT INTO public.galaxy VALUES (3, 'Lenticular', 10.1, 'Centaurus A', true);
INSERT INTO public.galaxy VALUES (4, 'Eliptica', 13.2, 'Virgo A', true);
INSERT INTO public.galaxy VALUES (5, 'Espiral', 12.4, 'Galaxia del Triangulo', false);
INSERT INTO public.galaxy VALUES (6, 'Espiral', 11.8, 'Galaxia del Sombrero', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (20, 'Luna', 1.62, 384400, 1);
INSERT INTO public.moon VALUES (21, 'Fobos', 0.01, 9378, 6);
INSERT INTO public.moon VALUES (22, 'Deimos', 0.00, 23460, 6);
INSERT INTO public.moon VALUES (23, 'Europa', 1.32, 671034, 6);
INSERT INTO public.moon VALUES (24, 'Ío', 1.80, 421700, 6);
INSERT INTO public.moon VALUES (25, 'Ganímedes', 1.43, 1070412, 6);
INSERT INTO public.moon VALUES (26, 'Calisto', 1.24, 1882709, 6);
INSERT INTO public.moon VALUES (27, 'Mimas', 0.06, 185520, 6);
INSERT INTO public.moon VALUES (28, 'Titán', 1.35, 1221870, 6);
INSERT INTO public.moon VALUES (29, 'Encélado', 0.11, 237948, 6);
INSERT INTO public.moon VALUES (30, 'Rea', 0.26, 527108, 6);
INSERT INTO public.moon VALUES (31, 'Oberón', 0.35, 583520, 6);
INSERT INTO public.moon VALUES (32, 'Miranda', 0.08, 129390, 6);
INSERT INTO public.moon VALUES (33, 'Tritón', 0.78, 354760, 6);
INSERT INTO public.moon VALUES (34, 'Ariel', 0.27, 190900, 6);
INSERT INTO public.moon VALUES (35, 'Dione', 0.23, 377396, 6);
INSERT INTO public.moon VALUES (36, 'Tetis', 0.15, 294619, 6);
INSERT INTO public.moon VALUES (37, 'Larisa', 0.03, 73548, 6);
INSERT INTO public.moon VALUES (38, 'Oberiscal', 0.35, 583520, 6);
INSERT INTO public.moon VALUES (39, 'Titania', 0.38, 436300, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', true, 3, 1, 'Planeta rocoso, tercero desde el Sol, hogar de vida diversa.');
INSERT INTO public.planet VALUES (2, 'Mercurio', false, 1, 1, 'Pequeño planeta rocoso, cerca del Sol, sin atmósfera sustancial.');
INSERT INTO public.planet VALUES (3, 'Venus', false, 2, 1, 'Planeta brillante, atmósfera densa, superficie caliente, gemelo terrestre.');
INSERT INTO public.planet VALUES (4, 'Marte', false, 4, 1, 'Planeta rojo, desierto frío, con montañas y cañones prominentes.');
INSERT INTO public.planet VALUES (5, 'Jupiter', false, 5, 1, 'Gigante gaseoso, con enormes tormentas y un sistema de anillos.');
INSERT INTO public.planet VALUES (6, 'Saturno', false, 6, 1, 'Planeta gaseoso, con anillos deslumbrantes y múltiples lunas fascinantes.');
INSERT INTO public.planet VALUES (7, 'Urano', false, 7, 1, 'Planeta gaseoso, con un eje inclinado y un tono azul-verdoso.');
INSERT INTO public.planet VALUES (8, 'Neptuno', false, 8, 1, 'Planeta azul, gigante gaseoso, con rápidos vientos y tormentas.');
INSERT INTO public.planet VALUES (9, 'Centauri b', false, 2, 6, NULL);
INSERT INTO public.planet VALUES (10, 'Centauri c', false, 3, 6, NULL);
INSERT INTO public.planet VALUES (11, 'Centauri d', false, 4, 6, NULL);
INSERT INTO public.planet VALUES (12, 'Centauri ab', false, 1, 6, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'G2V', 8, false, 1);
INSERT INTO public.star VALUES (2, 'Sirio', 'A1V', NULL, true, 1);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 'M2I', NULL, false, 1);
INSERT INTO public.star VALUES (4, 'Rigil Kentaurus', 'G2V', 0, true, 1);
INSERT INTO public.star VALUES (5, 'Toliman', 'K1V', NULL, true, 1);
INSERT INTO public.star VALUES (6, 'Proxima Centauris', 'M5V', 3, true, 1);


--
-- Data for Name: station; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.station VALUES (1, 'EEI', 'International');
INSERT INTO public.station VALUES (2, 'EE Tiangong', 'China');
INSERT INTO public.station VALUES (3, 'EE Mir', 'Russia');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 39, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: stations_station_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.stations_station_id_seq', 3, true);


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
-- Name: station station_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.station
    ADD CONSTRAINT station_name_key UNIQUE (name);


--
-- Name: station stations_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.station
    ADD CONSTRAINT stations_pkey PRIMARY KEY (station_id);


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



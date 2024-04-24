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
-- Name: black_hole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_hole (
    name character varying(255) NOT NULL,
    description character varying(255) NOT NULL,
    black_hole_id integer NOT NULL,
    black_hole_type character varying(255),
    radius_in_astronomical_units numeric(10,10)
);


ALTER TABLE public.black_hole OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_hole_black_hole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_hole_black_hole_id_seq OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_hole_black_hole_id_seq OWNED BY public.black_hole.black_hole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    description text NOT NULL,
    has_life boolean,
    galaxy_type text,
    name character varying(255) NOT NULL,
    radius_in_light_years integer
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
    description text NOT NULL,
    name character varying(255) NOT NULL,
    radius_in_kilometers integer,
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
    description text NOT NULL,
    name character varying(255) NOT NULL,
    has_life boolean,
    radius_in_kilometer integer,
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
    description text NOT NULL,
    name character varying(255) NOT NULL,
    radius_in_kilometer integer,
    number_of_planets integer,
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
-- Name: black_hole black_hole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole ALTER COLUMN black_hole_id SET DEFAULT nextval('public.black_hole_black_hole_id_seq'::regclass);


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
-- Data for Name: black_hole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_hole VALUES ('Sagittarius A', 'A supermassive black hole located at the center of the Milky Way', 1, 'Supermassive', 0.0027000000);
INSERT INTO public.black_hole VALUES ('Cygnus X-1', 'A black hole in a binary system with a supergiant star', 2, 'Stellar-mass', 0.0000300000);
INSERT INTO public.black_hole VALUES ('M87', 'A supermassive black hole at the center of the Messier 87 galaxy', 3, 'Supermassive', 0.0060000000);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'The galaxy that includes the Solar System', true, 'Barred spiral galaxy', 'Milky Way', 43700);
INSERT INTO public.galaxy VALUES (2, 'The closest big galaxy to the Milky Way', NULL, 'Barred spiral galaxy', 'Andromeda', 76000);
INSERT INTO public.galaxy VALUES (3, 'A dark band of absorbing dust partially in front of its bright nucleus gave rise to its name', NULL, 'Spiral galaxy', 'Black Eye', 26900);
INSERT INTO public.galaxy VALUES (4, 'Because of its large size and relatively high brightness, Bodes Galaxy is a popular target for amateur astronomers', NULL, 'Grand design spiral galaxy', 'Bodes', 48000);
INSERT INTO public.galaxy VALUES (5, 'The dominant member of the Cartwheel Galaxy group, consisting of four physically associated spiral galaxies', NULL, 'Lenticular ring galaxy', 'Cartwheel', 72150);
INSERT INTO public.galaxy VALUES (6, 'It is about five times more luminous than the Milky Way and its central region is about one hundred times more luminous', NULL, 'Starburst', 'Cigar', 20400);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Earth''s only natural satellite', 'Moon(Luna)', 1737, 1);
INSERT INTO public.moon VALUES (2, 'One of the two moons of Mars', 'Phobos', 11, 4);
INSERT INTO public.moon VALUES (3, 'The smaller and outermost of the two moons of Mars', 'Deimos', 6, 4);
INSERT INTO public.moon VALUES (4, 'The largest moon of Jupiter and the largest in the Solar System', 'Ganymede', 2634, 5);
INSERT INTO public.moon VALUES (5, 'The smallest of the four Galilean moons of Jupiter', 'Europa', 1560, 5);
INSERT INTO public.moon VALUES (6, 'Known for its active volcanism', 'Io', 1821, 5);
INSERT INTO public.moon VALUES (7, 'Jupiter''s second largest moon', 'Callisto', 2410, 5);
INSERT INTO public.moon VALUES (8, 'The largest moon of Saturn', 'Titan', 2575, 6);
INSERT INTO public.moon VALUES (9, 'Known for its geysers of water vapor', 'Enceladus', 252, 6);
INSERT INTO public.moon VALUES (10, 'A small moon of Saturn with a crater named Herchel', 'Mimas', 198, 6);
INSERT INTO public.moon VALUES (11, 'The largest moon of Neptune', 'Triton', 1353, 8);
INSERT INTO public.moon VALUES (12, 'Second half of Pluto''s binary system', 'Charon', 606, 9);
INSERT INTO public.moon VALUES (13, 'Has an irregular shape and chaotic rotation', 'Hyperion', 135, 6);
INSERT INTO public.moon VALUES (14, 'Known for its two-toned appearance', 'Iapetus', 734, 6);
INSERT INTO public.moon VALUES (15, 'A small and icy moon of Uranus', 'Miranda', 235, 7);
INSERT INTO public.moon VALUES (16, 'The largest moon of Uranus', 'Titania', 788, 7);
INSERT INTO public.moon VALUES (17, 'Known for its dark surface and few impact craters', 'Umbriel', 584, 7);
INSERT INTO public.moon VALUES (18, 'Known for its young and active surface', 'Ariel', 578, 7);
INSERT INTO public.moon VALUES (19, 'A moon of Saturn with bright, wispy streaks on its surface', 'Dione', 561, 6);
INSERT INTO public.moon VALUES (20, 'Known for its heavily cratered surface and thin atmosphere', 'Rhea', 764, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'The smallest and innermost planet of the Solar System', 'Mercury', false, 2439, 1);
INSERT INTO public.planet VALUES (2, 'The second planet from the Sun, often called Earth''s "sister planet"', 'Venus', false, 6051, 1);
INSERT INTO public.planet VALUES (3, 'The third planet from the Sun and the only known planet to support life', 'Earth', true, 6371, 1);
INSERT INTO public.planet VALUES (5, 'The largest planet in the Solar System, known for its swirling storms', 'Jupiter', false, 69911, 1);
INSERT INTO public.planet VALUES (6, 'The sixth planet from the Sun, famous for its rings', 'Saturn', false, 58232, 1);
INSERT INTO public.planet VALUES (7, 'The seventh planet from the Sun, known for its unique sideways rotation', 'Uranus', false, 25362, 1);
INSERT INTO public.planet VALUES (8, 'The eighth and farthest planet from the Sun', 'Neptune', false, 24622, 1);
INSERT INTO public.planet VALUES (9, 'A dwarf planet in the Kuiper belt, formerly considered the ninth planet', 'Pluto', false, 1186, 1);
INSERT INTO public.planet VALUES (11, 'A dwarf planet in the Kuiper belt', 'Haumea', false, 1218, 1);
INSERT INTO public.planet VALUES (12, 'The most massive known dwarf planet in the Solar System', 'Eris', false, 1163, 1);
INSERT INTO public.planet VALUES (10, 'The largest object in the asteroid belt, classified as a dwarf planet', 'Ceres', false, 473, 1);
INSERT INTO public.planet VALUES (4, 'The fourth planet from the Sun, often referred to as the "Red Planet"', 'Mars', false, 3389, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'The star at the center of our solar system', 'Sun', 695700, 8, 1);
INSERT INTO public.star VALUES (2, 'The brightest star in the night sky, also known as the "Dog Star"', 'Sirius', 1711000, 0, 1);
INSERT INTO public.star VALUES (3, 'A red supergiant star located in the constellation Orion', 'Betelgeuse', 955200000, 0, 1);
INSERT INTO public.star VALUES (4, 'The primary component of the Alpha Centari star system', 'Alpha Centauri', 1224000, 0, 1);
INSERT INTO public.star VALUES (5, 'A red dwarf star and the closest known star to the Solar System', 'Proxima Centauri', 201000, 1, 1);
INSERT INTO public.star VALUES (6, 'The brightest star in the constellation Gemini', 'Pollux', 8800000, 0, 1);


--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_hole_black_hole_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


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

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: black_hole black_hole_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_description_key UNIQUE (description);


--
-- Name: black_hole black_hole_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_name_key UNIQUE (name);


--
-- Name: black_hole black_hole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_pkey PRIMARY KEY (black_hole_id);


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


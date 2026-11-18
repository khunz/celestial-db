--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
    age_in_millions_of_years numeric(10,1),
    has_life boolean,
    description text,
    galaxy_type_id integer
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
-- Name: galaxy_type; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_type (
    galaxy_type_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text
);


ALTER TABLE public.galaxy_type OWNER TO freecodecamp;

--
-- Name: galaxy_type_galaxy_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_type_galaxy_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_type_galaxy_type_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_type_galaxy_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_type_galaxy_type_id_seq OWNED BY public.galaxy_type.galaxy_type_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    age_in_millions_of_years numeric(10,1),
    description text,
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
    name character varying(50) NOT NULL,
    age_in_millions_of_years numeric(10,1),
    description text,
    star_id integer,
    has_life boolean NOT NULL,
    size_in_km integer,
    is_spherical boolean,
    population_in_billions integer
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
    name character varying(50) NOT NULL,
    age_in_millions_of_years numeric(10,1),
    description text,
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxy_type galaxy_type_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_type ALTER COLUMN galaxy_type_id SET DEFAULT nextval('public.galaxy_type_galaxy_type_id_seq'::regclass);


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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 13600.0, true, 'The Milky Way or Milky Way Galaxy,[d] or simply the Galaxy,[28] is the galaxy that includes the Solar System, with the name describing the galaxy''s appearance from Earth: a hazy band of light seen in the night sky formed by stars in other arms of the galaxy, which are so far away that they cannot be individually distinguished by the naked eye.', 1);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 3000.0, NULL, 'The Andromeda Galaxy is a barred spiral galaxy[c] and is the nearest major galaxy to the Milky Way. It was originally named the Andromeda Nebula and is cataloged as Messier 31, M31, and NGC 224. Andromeda has a D25 isophotal diameter of about 46.56 kiloparsecs (152,000 light-years)[9] and is approximately 752 kpc (2.5 million light-years)[3] from Earth. The galaxy''s name stems from the area of Earth''s sky in which it appears, the constellation of Andromeda, which itself is named after the princess who was the wife of Perseus in Greek mythology.[9]', 1);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 10000.0, NULL, 'The Triangulum Galaxy is a spiral galaxy 2.878 million light-years (ly) from Earth in the constellation Triangulum. It is catalogued as Messier 33 or NGC 598. With the D25 isophotal diameter of 18.74 kiloparsecs (61,120 light-years), the Triangulum Galaxy is the third-largest member of the Local Group of galaxies, behind the Andromeda Galaxy and the Milky Way. It may be a gravitationally bound companion of the Andromeda Galaxy and is home to an estimated 30 to 40 billion stars.', 2);
INSERT INTO public.galaxy VALUES (4, 'Pinwheel', 8000.0, NULL, 'The Pinwheel Galaxy, or Messier 101, is a face-on spiral galaxy about 21 million light-years away in the constellation Ursa Major. It is roughly twice the diameter of the Milky Way and has a lopsided shape, thought to be the result of gravitational interactions with its neighbours.', 3);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 400.0, NULL, 'The Whirlpool Galaxy, or Messier 51, is an interacting spiral galaxy about 23 million light-years away in the constellation Canes Venatici. Its well-defined spiral arms are shaped by a close encounter with a smaller companion galaxy, NGC 5195.', 4);
INSERT INTO public.galaxy VALUES (6, 'Sombrero', 9000.0, NULL, 'The Sombrero Galaxy, or Messier 104, is about 29 million light-years away in the constellation Virgo. It is named for its bright central bulge and a prominent dust lane that make it look like a wide-brimmed hat.', 5);


--
-- Data for Name: galaxy_type; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_type VALUES (1, 'Barred spiral', 'A spiral galaxy with a central bar-shaped structure of stars.');
INSERT INTO public.galaxy_type VALUES (2, 'Spiral', 'A flat, rotating disc of stars with arms winding out from the centre.');
INSERT INTO public.galaxy_type VALUES (3, 'Face-on spiral', 'A spiral galaxy viewed from above, so its arms are seen in full.');
INSERT INTO public.galaxy_type VALUES (4, 'Grand design spiral', 'A spiral galaxy with prominent, well-defined arms.');
INSERT INTO public.galaxy_type VALUES (5, 'Unbarred spiral', 'A spiral galaxy whose arms come straight from the central bulge, with no bar.');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'The moon', 5.0, 'The one and only', 3);
INSERT INTO public.moon VALUES (2, 'Moon1', 3.0, 'Not the one and only', 4);
INSERT INTO public.moon VALUES (3, 'Moon2', 3.0, 'Not the one and only', 2);
INSERT INTO public.moon VALUES (4, 'Moon3', 3.0, 'Not the one and only', 7);
INSERT INTO public.moon VALUES (5, 'Moon4', 3.0, 'Not the one and only', 5);
INSERT INTO public.moon VALUES (6, 'Moon5', 3.0, 'Not the one and only', 10);
INSERT INTO public.moon VALUES (7, 'Moon6', 3.0, 'Not the one and only', 2);
INSERT INTO public.moon VALUES (8, 'Moon7', 3.0, 'Not the one and only', 7);
INSERT INTO public.moon VALUES (9, 'Moon8', 3.0, 'Not the one and only', 9);
INSERT INTO public.moon VALUES (10, 'Moon9', 3.0, 'Not the one and only', 3);
INSERT INTO public.moon VALUES (11, 'Moon10', 3.0, 'Not the one and only', 4);
INSERT INTO public.moon VALUES (12, 'Moon11', 3.0, 'Not the one and only', 8);
INSERT INTO public.moon VALUES (13, 'Moon12', 3.0, 'Not the one and only', 4);
INSERT INTO public.moon VALUES (14, 'Moon13', 3.0, 'Not the one and only', 11);
INSERT INTO public.moon VALUES (15, 'Moon14', 3.0, 'Not the one and only', 12);
INSERT INTO public.moon VALUES (16, 'Moon15', 3.0, 'Not the one and only', 11);
INSERT INTO public.moon VALUES (17, 'Moon16', 3.0, 'Not the one and only', 7);
INSERT INTO public.moon VALUES (18, 'Moon17', 3.0, 'Not the one and only', 6);
INSERT INTO public.moon VALUES (19, 'Moon18', 3.0, 'Not the one and only', 5);
INSERT INTO public.moon VALUES (20, 'Moon19', 3.0, 'Not the one and only', 8);
INSERT INTO public.moon VALUES (21, 'Moon20', 3.0, 'Not the one and only', 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 12.0, 'Closest to the sun.', 1, false, 1000, true, 0);
INSERT INTO public.planet VALUES (2, 'Venus', 5.0, 'North star.', 1, false, 1000, true, 0);
INSERT INTO public.planet VALUES (4, 'Mars', 50.0, 'David Bowie said there is life here', 1, true, 1000, true, 0);
INSERT INTO public.planet VALUES (5, 'Jupiter', 49.0, 'Named after the famous synthesizer', 1, false, 1000, true, 0);
INSERT INTO public.planet VALUES (6, 'Saturn', 42.0, 'Ate his son', 1, false, 1000, true, 0);
INSERT INTO public.planet VALUES (7, 'Uranus', 69.0, 'Not funny.', 1, false, 1000, true, 0);
INSERT INTO public.planet VALUES (8, 'Neptune', 40.0, 'Very wet.', 1, false, 1000, true, 0);
INSERT INTO public.planet VALUES (9, 'Pluto', 5.0, '#PlutoIsAPlanet', 1, false, 1000, true, 0);
INSERT INTO public.planet VALUES (10, 'Roundboi', 400.0, 'Definitely exists', 3, false, 1000, true, 0);
INSERT INTO public.planet VALUES (11, '2Round2Furious', 200.0, 'This joke has been done already', 4, false, 1000, true, 0);
INSERT INTO public.planet VALUES (12, 'PlanetX', 50.0, 'Where Wolverine is from', 2, false, 1000, true, 0);
INSERT INTO public.planet VALUES (13, 'PlanetB', 20.0, 'I was told there was no planet B', 6, false, 1000, true, 0);
INSERT INTO public.planet VALUES (3, 'Earth', 8.0, 'Who lives here?', 1, true, 1000, true, 8);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 13000.5, 'The big yellow ball of fire', 1);
INSERT INTO public.star VALUES (2, 'Sun 2', 5000.3, '2 Sun 2 Furious', 2);
INSERT INTO public.star VALUES (3, 'The Third Sun', 12354.4, 'Very very far away', 5);
INSERT INTO public.star VALUES (4, 'Betelguese', 12352.2, 'Beetlejuice?', 3);
INSERT INTO public.star VALUES (5, 'Wil-sun', 21341.2, 'Useful on a deserted island.', 4);
INSERT INTO public.star VALUES (6, 'ASunOIAF', 12352.4, 'From the creators of A Game of Globes', 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: galaxy_type_galaxy_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_type_galaxy_type_id_seq', 5, true);


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
-- Name: galaxy_type galaxy_type_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_type
    ADD CONSTRAINT galaxy_type_name_key UNIQUE (name);


--
-- Name: galaxy_type galaxy_type_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_type
    ADD CONSTRAINT galaxy_type_pkey PRIMARY KEY (galaxy_type_id);


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
-- Name: galaxy galaxy_galaxy_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_type_id_fkey FOREIGN KEY (galaxy_type_id) REFERENCES public.galaxy_type(galaxy_type_id);


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


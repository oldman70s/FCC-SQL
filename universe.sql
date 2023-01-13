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
-- Name: description; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.description (
    description_txt text,
    description_id integer NOT NULL,
    name character varying(40) NOT NULL
);


ALTER TABLE public.description OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    quantity_of_planets integer,
    distance_milky_way integer,
    possible_life boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40) NOT NULL,
    moon_size integer,
    distance_planet integer,
    habitable boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40) NOT NULL,
    distance_from_earth numeric,
    quantity_of_moons integer,
    has_life boolean,
    colonizing_possibiliy boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40) NOT NULL,
    age integer,
    size numeric,
    constellation character varying(40),
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: description; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.description VALUES (NULL, 1, 'mercury_desc');
INSERT INTO public.description VALUES (NULL, 2, 'venus_desc');
INSERT INTO public.description VALUES (NULL, 3, 'earth_desc');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'canis_major', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'cygnus_a', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'maffei_I', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'magellanic_clouds', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'milky_way', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (7, 'planet7', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (8, 'planet8', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (9, 'planet9', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (10, 'planet10', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (11, 'planet11', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (12, 'planet12', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (13, 'planet13', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (14, 'planet14', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (15, 'planet15', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (16, 'planet16', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (17, 'planet17', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (18, 'planet18', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (19, 'planet19', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (20, 'planet20', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'moon2', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'moon3', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'moon4', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'moon5', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'moon6', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'moon7', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'moon8', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'moon9', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'moon10', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'moon11', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'moon12', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'moon13', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'moon14', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'moon15', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'moon16', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'moon17', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'moon18', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'moon19', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'moon20', NULL, NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'mercury', NULL, 0, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'venus', NULL, 0, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'earth', NULL, 0, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'mars', NULL, 0, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'jupiter', NULL, 0, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'saturn', NULL, 0, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'uranus', NULL, 0, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'neptune', NULL, 0, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'pluto', NULL, 0, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (10, '51pegasi', NULL, 0, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (11, '55cancri', NULL, 0, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'wasp33', NULL, 0, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (13, 'planet13', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (14, 'planet14', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (15, 'planet_15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (16, 'planet16', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (17, 'planet17', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (18, 'planet18', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (19, 'planet19', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (20, 'planet20', NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'micah', NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (2, 'sirius', NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (3, 'deneb', NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (4, 'ahab', NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (5, 'canopus', NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (6, 'masabi', NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (7, 'planet7', NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (8, 'planet8', NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (9, 'planet9', NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (10, 'planet10', NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (11, 'planet11', NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (12, 'planet12', NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (13, 'planet13', NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (14, 'planet14', NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (15, 'planet15', NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (16, 'planet16', NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (17, 'planet17', NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (18, 'planet18', NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (19, 'planet19', NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (20, 'planet20', NULL, NULL, NULL, NULL);


--
-- Name: description description_description_txt_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.description
    ADD CONSTRAINT description_description_txt_key UNIQUE (description_txt);


--
-- Name: description description_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.description
    ADD CONSTRAINT description_pkey PRIMARY KEY (description_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_quantity_of_planets_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_quantity_of_planets_key UNIQUE (quantity_of_planets);


--
-- Name: moon moon_moon_size_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_size_key UNIQUE (moon_size);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_has_life_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_has_life_key UNIQUE (has_life);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_constellation_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_constellation_key UNIQUE (constellation);


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


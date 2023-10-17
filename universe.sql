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
-- Name: continent; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.continent (
    continent_id integer NOT NULL,
    name character varying(20) NOT NULL,
    planet_id integer
);


ALTER TABLE public.continent OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    is_fun boolean,
    diameter integer,
    mass numeric(3,1)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    planet_id integer,
    diameter integer,
    mass numeric(3,1)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    star_id integer,
    roman boolean,
    greek boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    galaxy_id integer,
    colour text,
    favourite_num integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: continent; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.continent VALUES (1, 'Europe', 1);
INSERT INTO public.continent VALUES (2, 'Africa', 1);
INSERT INTO public.continent VALUES (3, 'Asia', 1);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', true, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', false, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'LMC', false, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Alpha', true, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Bravo', false, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Charlie', false, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'The Moon', 1, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'A', 2, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'B', 2, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'C', 2, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'D', 2, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'E', 2, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'F', 2, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'G', 2, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'H', 2, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'I', 3, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'J', 4, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'K', 4, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'L', 4, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'M', 4, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'N', 4, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'O', 4, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'P', 5, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'Q', 6, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'R', 6, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'S', 7, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'Venus', 1, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'Earth', 1, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'Mars', 1, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'Jupiter', 1, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'Saturn', 1, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'Uranus', 1, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'Neptune', 1, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'Bleep', 2, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'Blop', 2, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'Bloop', 2, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'Bling', 2, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'The Sun', 1, NULL, NULL);
INSERT INTO public.star VALUES (2, 'ABC', 1, NULL, NULL);
INSERT INTO public.star VALUES (3, 'DEF', 2, NULL, NULL);
INSERT INTO public.star VALUES (4, 'GHI', 3, NULL, NULL);
INSERT INTO public.star VALUES (5, 'JKL', 3, NULL, NULL);
INSERT INTO public.star VALUES (6, 'MNO', 4, NULL, NULL);


--
-- Name: continent continent_continent_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.continent
    ADD CONSTRAINT continent_continent_id_key UNIQUE (continent_id);


--
-- Name: continent continent_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.continent
    ADD CONSTRAINT continent_name_key UNIQUE (name);


--
-- Name: continent continent_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.continent
    ADD CONSTRAINT continent_pkey PRIMARY KEY (continent_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


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
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: continent continent_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.continent
    ADD CONSTRAINT continent_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: continent continent_planet_id_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.continent
    ADD CONSTRAINT continent_planet_id_fkey1 FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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
-- Name: star star_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--


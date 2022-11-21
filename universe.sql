--

-- PostgreSQL database dump

--

  

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

  

SET statement_timeout = 0;

SET lock_timeout = 0;

SET idle_in_transaction_session_timeout = 0;

SET client_encoding = 'UTF8';

SET standard_conforming_strings = on;

SELECT pg_catalog.set_config('search_path', '', false);

SET check_function_bodies = false;

SET xmloption = content;

SET client_min_messages = warning;

SET row_security = off;

  

DROP DATABASE universe;

--

-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp

--

  

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';

  
  

ALTER DATABASE universe OWNER TO freecodecamp;

  

\connect universe

  

SET statement_timeout = 0;

SET lock_timeout = 0;

SET idle_in_transaction_session_timeout = 0;

SET client_encoding = 'UTF8';

SET standard_conforming_strings = on;

SELECT pg_catalog.set_config('search_path', '', false);

SET check_function_bodies = false;

SET xmloption = content;

SET client_min_messages = warning;

SET row_security = off;

  

SET default_tablespace = '';

  

SET default_table_access_method = heap;

  

--

-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp

--

  

CREATE TABLE public.galaxy (

    galaxy_id integer NOT NULL,

    celestial_id integer NOT NULL,

    name character varying(30) NOT NULL,

    distance_in_au numeric,

    within_a_life boolean NOT NULL,

    has_life boolean NOT NULL,

    size_in_earths integer,

    color text,

    description integer,

    astro_id integer

);

  
  

ALTER TABLE public.galaxy OWNER TO freecodecamp;

  

--

-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp

--

  

CREATE TABLE public.moon (

    moon_id integer NOT NULL,

    celestial_id integer NOT NULL,

    name character varying(30) NOT NULL,

    distance_in_au numeric,

    within_a_life boolean NOT NULL,

    has_life boolean NOT NULL,

    size_in_earths integer,

    color text,

    description integer,

    astro_id integer

);

  
  

ALTER TABLE public.moon OWNER TO freecodecamp;

  

--

-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp

--

  

CREATE TABLE public.planet (

    planet_id integer NOT NULL,

    celestial_id integer NOT NULL,

    name character varying(30) NOT NULL,

    distance_in_au numeric,

    within_a_life boolean NOT NULL,

    has_life boolean NOT NULL,

    size_in_earths integer,

    color text,

    description integer,

    astro_id integer

);

  
  

ALTER TABLE public.planet OWNER TO freecodecamp;

  

--

-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp

--

  

CREATE TABLE public.star (

    star_id integer NOT NULL,

    celestial_id integer NOT NULL,

    name character varying(30) NOT NULL,

    distance_in_au numeric,

    within_a_life boolean NOT NULL,

    has_life boolean NOT NULL,

    size_in_earths integer,

    color text,

    description integer,

    temp_in_k numeric,

    astro_id integer

);

  
  

ALTER TABLE public.star OWNER TO freecodecamp;

  

--

-- Name: system; Type: TABLE; Schema: public; Owner: freecodecamp

--

  

CREATE TABLE public.system (

    system_id integer NOT NULL,

    celestial_id integer NOT NULL,

    name character varying(30) NOT NULL,

    distance_in_au numeric,

    within_a_life boolean NOT NULL,

    has_life boolean NOT NULL,

    size_in_earths integer,

    color text,

    description integer

);

  
  

ALTER TABLE public.system OWNER TO freecodecamp;

  

--

-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp

--

  

INSERT INTO public.galaxy VALUES (11357, 17533, 'The Milky Way', 0, true, true, NULL, NULL, 1, NULL);

INSERT INTO public.galaxy VALUES (18106, 22382, 'Canis Major', 8, false, true, NULL, NULL, NULL, NULL);

INSERT INTO public.galaxy VALUES (25597, 25432, 'Segue', 75000, false, true, NULL, NULL, NULL, NULL);

INSERT INTO public.galaxy VALUES (28562, 35831, 'Sagitarius', 50000, false, true, NULL, NULL, NULL, NULL);

INSERT INTO public.galaxy VALUES (37403, 38800, 'Ursa', 96000, false, true, NULL, NULL, NULL, NULL);

INSERT INTO public.galaxy VALUES (95748, 67815, 'Triangulum', 100, true, false, NULL, NULL, NULL, NULL);

  
  

--

-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp

--

  

INSERT INTO public.moon VALUES (66520, 66845, 'Luna', 0, true, false, 0, 'Grey', 1, NULL);

INSERT INTO public.moon VALUES (69392, 67751, 'Deimos', 0, true, false, 1, 'Rust', 2, NULL);

INSERT INTO public.moon VALUES (70360, 70520, 'Phobos', 0, true, false, 0, 'Rust', 3, NULL);

INSERT INTO public.moon VALUES (72541, 79214, 'IO', 1, true, false, 0, 'yellow', 4, NULL);

INSERT INTO public.moon VALUES (81948, 81108, 'Europa', 1, true, true, 1, 'Blue', 5, NULL);

INSERT INTO public.moon VALUES (85623, 88942, 'Ganymeade', 1, true, false, 0, 'Grey', 6, NULL);

INSERT INTO public.moon VALUES (89748, 91724, 'Callisto', 1, true, false, 1, 'Rainbow', 7, NULL);

INSERT INTO public.moon VALUES (91726, 94790, 'Dia', 1, true, false, 0, 'Purple', 8, NULL);

INSERT INTO public.moon VALUES (95745, 96487, 'Cyllene', 1, true, false, 0, 'green', 9, NULL);

INSERT INTO public.moon VALUES (98730, 99151, 'Thebe', 1, true, false, 1, 'Yellow', 10, NULL);

INSERT INTO public.moon VALUES (10823, 12728, 'Encleladus', 1, true, false, 0, 'Grey', 11, NULL);

INSERT INTO public.moon VALUES (16869, 21109, 'Titan', 1, true, false, 1, 'Yello', 12, NULL);

INSERT INTO public.moon VALUES (24004, 24045, 'Aegaeon', 1, true, false, 0, 'Grey', 13, NULL);

INSERT INTO public.moon VALUES (25054, 28704, 'Alvaldi', 1, true, false, 0, 'green', 14, NULL);

INSERT INTO public.moon VALUES (34874, 40904, 'Angrboda', 1, true, false, 1, 'Yellow', 15, NULL);

INSERT INTO public.moon VALUES (42171, 49751, 'Daphnis', 1, true, false, 0, 'Grey', 16, NULL);

INSERT INTO public.moon VALUES (55432, 59998, 'Atlas', 1, true, false, 1, 'Rainbow', 17, NULL);

INSERT INTO public.moon VALUES (66170, 62645, 'Iapetus', 1, true, false, 0, 'Purple', 18, NULL);

INSERT INTO public.moon VALUES (64879, 74825, 'Ariel', 1, true, false, 0, 'green', 19, NULL);

INSERT INTO public.moon VALUES (86753, 10999, 'Caliban', 1, true, false, 1, 'Yellow', 20, NULL);

  
  

--

-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp

--

  

INSERT INTO public.planet VALUES (35357, 38013, 'Mercury', 1, true, false, 0, 'grey', 1, NULL);

INSERT INTO public.planet VALUES (41021, 42644, 'Venus', 0, true, false, 0, 'yellow', 2, NULL);

INSERT INTO public.planet VALUES (44213, 46582, 'Earth', 0, true, true, 0, 'Blue', 3, NULL);

INSERT INTO public.planet VALUES (48347, 49030, 'Mars', 0, true, false, 0, 'Rust', 4, NULL);

INSERT INTO public.planet VALUES (52085, 52257, 'Jupiter', 0, true, false, 17, 'Orange', 5, NULL);

INSERT INTO public.planet VALUES (53473, 54607, 'Saturn', 1, true, true, 5, 'Orange', 6, NULL);

INSERT INTO public.planet VALUES (55182, 58031, 'Uranus', 1, true, false, 3, 'Blue', 7, NULL);

INSERT INTO public.planet VALUES (11398, 12378, 'Pluto', 3, true, false, 0, 'Blue', 8, NULL);

INSERT INTO public.planet VALUES (16172, 15406, 'Neptune', 4, true, false, 3, 'Green', 9, NULL);

INSERT INTO public.planet VALUES (19364, 16172, 'Ceres', 0, true, false, 0, 'Grey', 10, NULL);

INSERT INTO public.planet VALUES (20805, 22843, 'Eris', 12, false, false, 0, 'Grey', 11, NULL);

INSERT INTO public.planet VALUES (48766, 61344, 'Nibaru', 15, false, true, 1, 'Bloe', 12, NULL);

  
  

--

-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp

--

  

INSERT INTO public.star VALUES (11699, 12731, 'Proxima Centauri', 4, true, true, 33, 'red', 2, 3500000, NULL);

INSERT INTO public.star VALUES (18458, 15815, 'Barnards star', 6, true, true, 0, 'red', 3, 8477, NULL);

INSERT INTO public.star VALUES (57699, 87531, 'Wolf 359', 8, true, true, 1, 'red', 4, 1578, NULL);

INSERT INTO public.star VALUES (14684, 16248, 'Lalande', 8, true, true, 17, 'red', 5, 7542, NULL);

INSERT INTO public.star VALUES (17838, 18555, 'Epsilon', 11, true, true, 0, 'white', 6, 2748, NULL);

INSERT INTO public.star VALUES (20507, 24260, 'Lacaille', 11, true, true, 11, 'red', 7, 2748, NULL);

INSERT INTO public.star VALUES (29788, 31983, 'Ross', 11, true, true, 5, 'yellow', 8, 4205, NULL);

INSERT INTO public.star VALUES (32238, 34451, 'Struve 239', 11, true, true, 5, 'red', 9, 48, NULL);

  
  

--

-- Data for Name: system; Type: TABLE DATA; Schema: public; Owner: freecodecamp

--

  

INSERT INTO public.system VALUES (10985, 12147, 'hoe Sector', 1, true, true, 0, NULL, 11);

INSERT INTO public.system VALUES (16869, 21109, 'Cundus', 17, false, false, 1, NULL, 2);

INSERT INTO public.system VALUES (235468, 245648, 'Corpus', 25, false, true, 0, NULL, 3);

  
  

--

-- Name: galaxy galaxy_astro_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp

--

  

ALTER TABLE ONLY public.galaxy

    ADD CONSTRAINT galaxy_astro_id_key UNIQUE (astro_id);

  
  

--

-- Name: galaxy galaxy_celestial_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp

--

  

ALTER TABLE ONLY public.galaxy

    ADD CONSTRAINT galaxy_celestial_id_key UNIQUE (celestial_id);

  
  

--

-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp

--

  

ALTER TABLE ONLY public.galaxy

    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);

  
  

--

-- Name: moon moon_astro_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp

--

  

ALTER TABLE ONLY public.moon

    ADD CONSTRAINT moon_astro_id_key UNIQUE (astro_id);

  
  

--

-- Name: moon moon_celestial_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp

--

  

ALTER TABLE ONLY public.moon

    ADD CONSTRAINT moon_celestial_id_key UNIQUE (celestial_id);

  
  

--

-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp

--

  

ALTER TABLE ONLY public.moon

    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);

  
  

--

-- Name: planet planet_astro_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp

--

  

ALTER TABLE ONLY public.planet

    ADD CONSTRAINT planet_astro_id_key UNIQUE (astro_id);

  
  

--

-- Name: planet planet_celestial_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp

--

  

ALTER TABLE ONLY public.planet

    ADD CONSTRAINT planet_celestial_id_key UNIQUE (celestial_id);

  
  

--

-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp

--

  

ALTER TABLE ONLY public.planet

    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);

  
  

--

-- Name: star star_astro_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp

--

  

ALTER TABLE ONLY public.star

    ADD CONSTRAINT star_astro_id_key UNIQUE (astro_id);

  
  

--

-- Name: star star_celestial_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp

--

  

ALTER TABLE ONLY public.star

    ADD CONSTRAINT star_celestial_id_key UNIQUE (celestial_id);

  
  

--

-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp

--

  

ALTER TABLE ONLY public.star

    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);

  
  

--

-- Name: system system_celestial_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp

--

  

ALTER TABLE ONLY public.system

    ADD CONSTRAINT system_celestial_id_key UNIQUE (celestial_id);

  
  

--

-- Name: system system_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp

--

  

ALTER TABLE ONLY public.system

    ADD CONSTRAINT system_pkey PRIMARY KEY (system_id);

  
  

--

-- Name: planet planet_astro_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp

--

  

ALTER TABLE ONLY public.planet

    ADD CONSTRAINT planet_astro_id_fkey FOREIGN KEY (astro_id) REFERENCES public.moon(astro_id);

  
  

--

-- Name: planet planet_astro_id_fkey1; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp

--

  

ALTER TABLE ONLY public.planet

    ADD CONSTRAINT planet_astro_id_fkey1 FOREIGN KEY (astro_id) REFERENCES public.star(astro_id);

  
  

--

-- Name: star star_astro_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp

--

  

ALTER TABLE ONLY public.star

    ADD CONSTRAINT star_astro_id_fkey FOREIGN KEY (astro_id) REFERENCES public.galaxy(astro_id);

  
  

--

-- PostgreSQL database dump complete

--
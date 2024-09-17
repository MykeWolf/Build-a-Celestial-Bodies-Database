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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    age_millions_of_years integer,
    distance_from_earth integer NOT NULL,
    description text NOT NULL
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
    name character varying(50) NOT NULL,
    age_millions_of_years integer,
    distance_from_earth bigint NOT NULL,
    description text NOT NULL,
    is_spherical boolean NOT NULL,
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
    age_millions_of_years integer,
    distance_from_earth bigint,
    description text NOT NULL,
    is_spherical boolean NOT NULL,
    has_life boolean NOT NULL,
    number_of_moons numeric,
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
    name character varying(50) NOT NULL,
    age_millions_of_years integer,
    distance_from_earth integer NOT NULL,
    description text NOT NULL,
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
-- Name: types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.types (
    types_id integer NOT NULL,
    name character varying(50) NOT NULL,
    planet_type character varying(50),
    galaxy_type character varying(50)
);


ALTER TABLE public.types OWNER TO freecodecamp;

--
-- Name: types_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.types_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.types_type_id_seq OWNER TO freecodecamp;

--
-- Name: types_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.types_type_id_seq OWNED BY public.types.types_id;


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
-- Name: types types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.types ALTER COLUMN types_id SET DEFAULT nextval('public.types_type_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.galaxy (galaxy_id, name, age_millions_of_years, distance_from_earth, description) FROM stdin;
1	Milky Way	13600	0	The galaxy that contains our Solar System.
2	Andromeda	10000	2537000	The nearest major galaxy to the Milky Way.
3	Triangulum	12000	3000000	A spiral galaxy, part of the Local Group, located about 3 million light years away.
4	Large Magellanic Cloud	14000	163000	A satellite galaxy of the Milky Way, irregular in shape.
10	Messier 87	14000	53000000	A giant elliptical galaxy located in the Virgo Cluster.
11	Sombrero Galaxy	10000	28000000	A spiral galaxy known for its bright nucleus and dust lane.
12	Whirlpool Galaxy	11000	23000000	A spiral galaxy with prominent spiral arms, located in the constellation Canes Venatici.
13	Pinwheel Galaxy	12000	21000000	A spiral galaxy with a well-defined structure, located in the constellation Ursa Major.
14	Small Magellanic Cloud	12000	200000	An irregular galaxy that is a companion to the Large Magellanic Cloud.
\.


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.moon (moon_id, name, age_millions_of_years, distance_from_earth, description, is_spherical, planet_id) FROM stdin;
1	Moon	4500	384400	Only natural satellite to Earth.	t	1
2	Kepler-22b Moon 1	4500	600000000	A moon orbiting Kepler-22b, possibly harboring water ice.	t	1
3	Proxima b Moon 1	4800	4300000	A rocky moon orbiting Proxima b.	t	2
5	Luna	4500	384400000	Earth’s only natural satellite, known for its phases and surface craters.	t	1
6	Phobos	4500	9377000	The larger and closer of Mars’s two moons, characterized by its irregular shape and craters.	t	26
7	Deimos	4500	23460000	The smaller and more distant of Mars’s moons, known for its smooth surface and irregular shape.	t	26
8	Io	4500	421700000000	One of Jupiter’s moons, known for its volcanic activity and sulfuric surface.	t	27
9	Europa	4500	671100000000	A moon of Jupiter known for its smooth ice-covered surface and potential subsurface ocean.	t	27
10	Ganymede	4500	1070400000000	The largest moon in the Solar System, with a magnetic field and geological features.	t	27
11	Callisto	4500	1882700000000	A heavily cratered moon of Jupiter, known for its ancient surface and large impact basins.	t	27
12	Titan	4500	1221700000000	Saturn’s largest moon, with a thick atmosphere and liquid methane lakes on its surface.	t	28
13	Enceladus	4500	237950000000	A moon of Saturn, known for its icy surface and water-ice geysers.	t	28
14	Rhea	4500	527100000000	A large moon of Saturn, characterized by its heavily cratered surface and thin rings.	t	28
15	Triton	4500	3548000000000	Neptune’s largest moon, with geysers and a retrograde orbit.	t	32
16	Nereid	4500	5500000000000	A small and irregularly shaped moon of Neptune with a highly elliptical orbit.	t	32
17	Charon	4500	24000000	The largest moon of Pluto, known for its mutual tidal locking with Pluto.	t	33
18	Hydra	4500	6500000	A small moon of Pluto, discovered in 2005, with a highly irregular shape.	t	33
19	Nix	4500	4900000	Another small moon of Pluto, discovered in 2005, with a similar size and shape to Hydra.	t	33
20	Ariel	4500	1910000	A moon of Uranus with a bright surface and numerous canyons.	t	31
21	Miranda	4500	1290000	One of Uranus’s moons, known for its extreme geological features and diverse terrain.	t	31
22	Titania	4500	4360000	The largest moon of Uranus, featuring a varied surface of craters and canyons.	t	31
23	Oberon	4500	5835000	A large moon of Uranus, known for its heavily cratered surface and large impact basins.	t	31
24	Ganymede II	4500	1070400000000	The largest moon in the Solar System, with a magnetic field and geological features.	t	27
\.


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.planet (planet_id, name, age_millions_of_years, distance_from_earth, description, is_spherical, has_life, number_of_moons, star_id) FROM stdin;
1	Earth	4500	0	The third planet from the Sun and the only known planet to support life.	t	t	1	1
2	Kepler-22b	4500	600000000	An exoplanet in the habitable zone of the star Kepler-22.	t	f	0	1
3	Proxima b	4850	4300000	A terrestrial exoplanet orbiting within the habitable zone of Proxima Centauri.	t	f	0	2
26	Mars	4500	225000000	The fourth planet from the Sun, known for its reddish appearance and potential for past water.	t	f	2	1
27	Jupiter	4600	778000000	The largest planet in the Solar System, known for its Great Red Spot and numerous moons.	t	f	79	1
28	Saturn	4600	1427000000	Famous for its prominent ring system, Saturn is the second-largest planet in the Solar System.	t	f	83	1
29	Venus	4600	41000000	The second planet from the Sun, known for its extreme heat and thick, toxic atmosphere.	t	f	0	1
30	Mercury	4600	77000000	The closest planet to the Sun, known for its extreme temperature variations and small size.	t	f	0	1
31	Uranus	4600	2871000000	A gas giant with a distinctive blue-green color due to methane in its atmosphere.	t	f	27	1
32	Neptune	4600	4495000000	The farthest planet from the Sun, known for its strong winds and deep blue color.	t	f	14	1
33	TRAPPIST-1d	2	40700000	An exoplanet in the TRAPPIST-1 system, located in the habitable zone of its ultra-cool dwarf star.	t	f	1	3
34	HD 189733 b	500	63800000	An exoplanet known for its striking blue color and extreme weather conditions.	t	f	0	30
35	55 Cancri e	3000	41200000	An exoplanet with a surface covered in carbon, including graphite and diamond.	t	f	0	31
36	WASP-12b	2000	140000000	An exoplanet known for its very hot atmosphere and being one of the hottest known exoplanets.	t	f	0	32
\.


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.star (star_id, name, age_millions_of_years, distance_from_earth, description, galaxy_id) FROM stdin;
1	Sun	4600	0	The star at the center of the Solar System.	1
2	Alpha Centauri	5500	4240000	The closest star system to the Solar System.	2
3	Vega	450	25	A bright star in the Lyra constellation, relatively close to Earth.	1
4	Proxima Centauri	4800	4240000	The closest known star to the Sun, part of the Alpha Centauri system.	2
28	Sirius	120	8	The brightest star in Earth’s night sky, part of the constellation Canis Major.	1
29	Betelgeuse	800	640	A red supergiant star in the constellation Orion, known for its reddish color.	1
30	Epsilon Eridani	500	11	A nearby star in the constellation Eridanus, similar to the Sun in some respects.	1
31	Altair	200	17	A bright star in the constellation Aquila, known for its rapid rotation.	1
32	Aldebaran	650	65	An orange giant star in the constellation Taurus, known for its reddish hue.	1
\.


--
-- Data for Name: types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.types (types_id, name, planet_type, galaxy_type) FROM stdin;
1	Spiral Galaxy	\N	\N
2	Elliptical Galaxy	\N	\N
3	Irregular Galaxy	\N	\N
4	Type 1	Terrestrial	Spiral
5	Type 2	Gas Giant	Elliptical
6	Type 3	Ice Giant	Irregular
\.


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 14, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 24, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 36, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 32, true);


--
-- Name: types_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.types_type_id_seq', 6, true);


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
-- Name: types types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.types
    ADD CONSTRAINT types_pkey PRIMARY KEY (types_id);


--
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: galaxy unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


--
-- Name: types unique_type_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.types
    ADD CONSTRAINT unique_type_id UNIQUE (types_id);


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


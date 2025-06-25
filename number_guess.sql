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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    number_of_guesses integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(30) NOT NULL,
    games_played integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 10, 1);
INSERT INTO public.games VALUES (2, 8, 1);
INSERT INTO public.games VALUES (3, 14, 2);
INSERT INTO public.games VALUES (4, 9, 4);
INSERT INTO public.games VALUES (5, 9, 4);
INSERT INTO public.games VALUES (6, 599, 6);
INSERT INTO public.games VALUES (7, 489, 6);
INSERT INTO public.games VALUES (8, 36, 7);
INSERT INTO public.games VALUES (9, 631, 7);
INSERT INTO public.games VALUES (10, 456, 6);
INSERT INTO public.games VALUES (11, 777, 6);
INSERT INTO public.games VALUES (12, 695, 6);
INSERT INTO public.games VALUES (13, 396, 8);
INSERT INTO public.games VALUES (14, 997, 8);
INSERT INTO public.games VALUES (15, 505, 9);
INSERT INTO public.games VALUES (16, 63, 9);
INSERT INTO public.games VALUES (17, 803, 8);
INSERT INTO public.games VALUES (18, 324, 8);
INSERT INTO public.games VALUES (19, 309, 8);
INSERT INTO public.games VALUES (20, 337, 10);
INSERT INTO public.games VALUES (21, 333, 10);
INSERT INTO public.games VALUES (22, 865, 11);
INSERT INTO public.games VALUES (23, 696, 11);
INSERT INTO public.games VALUES (24, 877, 10);
INSERT INTO public.games VALUES (25, 186, 10);
INSERT INTO public.games VALUES (26, 205, 10);
INSERT INTO public.games VALUES (27, 427, 12);
INSERT INTO public.games VALUES (28, 806, 12);
INSERT INTO public.games VALUES (29, 91, 13);
INSERT INTO public.games VALUES (30, 715, 13);
INSERT INTO public.games VALUES (31, 823, 12);
INSERT INTO public.games VALUES (32, 764, 12);
INSERT INTO public.games VALUES (33, 319, 12);
INSERT INTO public.games VALUES (34, 14, 1);
INSERT INTO public.games VALUES (35, 726, 14);
INSERT INTO public.games VALUES (36, 716, 14);
INSERT INTO public.games VALUES (37, 117, 15);
INSERT INTO public.games VALUES (38, 814, 15);
INSERT INTO public.games VALUES (39, 179, 14);
INSERT INTO public.games VALUES (40, 526, 14);
INSERT INTO public.games VALUES (41, 178, 14);
INSERT INTO public.games VALUES (42, 980, 16);
INSERT INTO public.games VALUES (43, 161, 16);
INSERT INTO public.games VALUES (44, 406, 17);
INSERT INTO public.games VALUES (45, 574, 17);
INSERT INTO public.games VALUES (46, 247, 16);
INSERT INTO public.games VALUES (47, 579, 16);
INSERT INTO public.games VALUES (48, 710, 16);
INSERT INTO public.games VALUES (49, 12, 1);
INSERT INTO public.games VALUES (50, 2, 18);
INSERT INTO public.games VALUES (51, 724, 18);
INSERT INTO public.games VALUES (52, 11, 19);
INSERT INTO public.games VALUES (53, 538, 19);
INSERT INTO public.games VALUES (54, 56, 18);
INSERT INTO public.games VALUES (55, 963, 18);
INSERT INTO public.games VALUES (56, 647, 18);
INSERT INTO public.games VALUES (57, 331, 20);
INSERT INTO public.games VALUES (58, 682, 20);
INSERT INTO public.games VALUES (59, 798, 21);
INSERT INTO public.games VALUES (60, 402, 21);
INSERT INTO public.games VALUES (61, 398, 20);
INSERT INTO public.games VALUES (62, 522, 20);
INSERT INTO public.games VALUES (63, 953, 20);
INSERT INTO public.games VALUES (64, 148, 22);
INSERT INTO public.games VALUES (65, 658, 22);
INSERT INTO public.games VALUES (66, 542, 23);
INSERT INTO public.games VALUES (67, 401, 23);
INSERT INTO public.games VALUES (68, 927, 22);
INSERT INTO public.games VALUES (69, 109, 22);
INSERT INTO public.games VALUES (70, 861, 22);
INSERT INTO public.games VALUES (71, 539, 24);
INSERT INTO public.games VALUES (72, 711, 24);
INSERT INTO public.games VALUES (73, 952, 25);
INSERT INTO public.games VALUES (74, 322, 25);
INSERT INTO public.games VALUES (75, 290, 24);
INSERT INTO public.games VALUES (76, 554, 24);
INSERT INTO public.games VALUES (77, 421, 24);
INSERT INTO public.games VALUES (78, 697, 26);
INSERT INTO public.games VALUES (79, 291, 26);
INSERT INTO public.games VALUES (80, 712, 27);
INSERT INTO public.games VALUES (81, 839, 27);
INSERT INTO public.games VALUES (82, 735, 26);
INSERT INTO public.games VALUES (83, 97, 26);
INSERT INTO public.games VALUES (84, 335, 26);
INSERT INTO public.games VALUES (85, 13, 28);
INSERT INTO public.games VALUES (86, 799, 29);
INSERT INTO public.games VALUES (87, 924, 29);
INSERT INTO public.games VALUES (88, 980, 30);
INSERT INTO public.games VALUES (89, 609, 30);
INSERT INTO public.games VALUES (90, 147, 29);
INSERT INTO public.games VALUES (91, 746, 29);
INSERT INTO public.games VALUES (92, 869, 29);
INSERT INTO public.games VALUES (93, 10, 31);
INSERT INTO public.games VALUES (94, 295, 32);
INSERT INTO public.games VALUES (95, 33, 32);
INSERT INTO public.games VALUES (96, 43, 33);
INSERT INTO public.games VALUES (97, 436, 33);
INSERT INTO public.games VALUES (98, 974, 32);
INSERT INTO public.games VALUES (99, 930, 32);
INSERT INTO public.games VALUES (100, 458, 32);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (3, 'tincho', 1);
INSERT INTO public.users VALUES (2, 'rick', 2);
INSERT INTO public.users VALUES (5, 'lucky', 1);
INSERT INTO public.users VALUES (4, 'luky', 2);
INSERT INTO public.users VALUES (21, 'user_1750815012352', 2);
INSERT INTO public.users VALUES (7, 'user_1750813440336', 2);
INSERT INTO public.users VALUES (20, 'user_1750815012353', 5);
INSERT INTO public.users VALUES (6, 'user_1750813440337', 5);
INSERT INTO public.users VALUES (9, 'user_1750813603213', 2);
INSERT INTO public.users VALUES (23, 'user_1750815255405', 2);
INSERT INTO public.users VALUES (8, 'user_1750813603214', 5);
INSERT INTO public.users VALUES (22, 'user_1750815255406', 5);
INSERT INTO public.users VALUES (11, 'user_1750813651173', 2);
INSERT INTO public.users VALUES (10, 'user_1750813651174', 5);
INSERT INTO public.users VALUES (13, 'user_1750814007177', 2);
INSERT INTO public.users VALUES (25, 'user_1750815336785', 2);
INSERT INTO public.users VALUES (12, 'user_1750814007178', 5);
INSERT INTO public.users VALUES (24, 'user_1750815336786', 5);
INSERT INTO public.users VALUES (15, 'user_1750814266906', 2);
INSERT INTO public.users VALUES (14, 'user_1750814266907', 5);
INSERT INTO public.users VALUES (27, 'user_1750815431772', 2);
INSERT INTO public.users VALUES (17, 'user_1750814407457', 2);
INSERT INTO public.users VALUES (26, 'user_1750815431773', 5);
INSERT INTO public.users VALUES (16, 'user_1750814407458', 5);
INSERT INTO public.users VALUES (1, 'lolo', 5);
INSERT INTO public.users VALUES (28, 'luquita', 1);
INSERT INTO public.users VALUES (19, 'user_1750814904366', 2);
INSERT INTO public.users VALUES (18, 'user_1750814904367', 5);
INSERT INTO public.users VALUES (30, 'user_1750815680176', 2);
INSERT INTO public.users VALUES (29, 'user_1750815680177', 5);
INSERT INTO public.users VALUES (31, 'lomu', 1);
INSERT INTO public.users VALUES (33, 'user_1750815719779', 2);
INSERT INTO public.users VALUES (32, 'user_1750815719780', 5);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 100, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 33, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games fk_user_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_user_id FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--


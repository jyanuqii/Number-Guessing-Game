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
    user_id integer NOT NULL,
    number_of_guesses integer NOT NULL
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
    username character varying(22) NOT NULL
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

INSERT INTO public.games VALUES (1, 1, 14);
INSERT INTO public.games VALUES (2, 1, 10);
INSERT INTO public.games VALUES (3, 15, 668);
INSERT INTO public.games VALUES (4, 16, 756);
INSERT INTO public.games VALUES (5, 15, 749);
INSERT INTO public.games VALUES (6, 15, 511);
INSERT INTO public.games VALUES (7, 15, 41);
INSERT INTO public.games VALUES (8, 17, 195);
INSERT INTO public.games VALUES (9, 18, 796);
INSERT INTO public.games VALUES (10, 17, 119);
INSERT INTO public.games VALUES (11, 17, 311);
INSERT INTO public.games VALUES (12, 17, 508);
INSERT INTO public.games VALUES (13, 19, 679);
INSERT INTO public.games VALUES (14, 20, 530);
INSERT INTO public.games VALUES (15, 19, 204);
INSERT INTO public.games VALUES (16, 19, 404);
INSERT INTO public.games VALUES (17, 19, 713);
INSERT INTO public.games VALUES (18, 21, 971);
INSERT INTO public.games VALUES (19, 22, 242);
INSERT INTO public.games VALUES (20, 21, 490);
INSERT INTO public.games VALUES (21, 21, 622);
INSERT INTO public.games VALUES (22, 21, 963);
INSERT INTO public.games VALUES (23, 1, 15);
INSERT INTO public.games VALUES (24, 23, 346);
INSERT INTO public.games VALUES (25, 24, 509);
INSERT INTO public.games VALUES (26, 23, 336);
INSERT INTO public.games VALUES (27, 23, 143);
INSERT INTO public.games VALUES (28, 23, 141);
INSERT INTO public.games VALUES (29, 1, 8);
INSERT INTO public.games VALUES (30, 25, 172);
INSERT INTO public.games VALUES (31, 26, 857);
INSERT INTO public.games VALUES (32, 25, 766);
INSERT INTO public.games VALUES (33, 25, 731);
INSERT INTO public.games VALUES (34, 25, 214);
INSERT INTO public.games VALUES (35, 1, 13);
INSERT INTO public.games VALUES (36, 27, 247);
INSERT INTO public.games VALUES (37, 28, 620);
INSERT INTO public.games VALUES (38, 27, 999);
INSERT INTO public.games VALUES (39, 27, 691);
INSERT INTO public.games VALUES (40, 27, 117);
INSERT INTO public.games VALUES (41, 1, 6);
INSERT INTO public.games VALUES (42, 4, 11);
INSERT INTO public.games VALUES (43, 30, 435);
INSERT INTO public.games VALUES (44, 30, 201);
INSERT INTO public.games VALUES (45, 31, 353);
INSERT INTO public.games VALUES (46, 31, 985);
INSERT INTO public.games VALUES (47, 30, 88);
INSERT INTO public.games VALUES (48, 30, 311);
INSERT INTO public.games VALUES (49, 30, 391);
INSERT INTO public.games VALUES (50, 32, 485);
INSERT INTO public.games VALUES (51, 32, 470);
INSERT INTO public.games VALUES (52, 33, 154);
INSERT INTO public.games VALUES (53, 33, 886);
INSERT INTO public.games VALUES (54, 32, 199);
INSERT INTO public.games VALUES (55, 32, 516);
INSERT INTO public.games VALUES (56, 32, 311);
INSERT INTO public.games VALUES (57, 34, 431);
INSERT INTO public.games VALUES (58, 34, 505);
INSERT INTO public.games VALUES (59, 35, 755);
INSERT INTO public.games VALUES (60, 35, 399);
INSERT INTO public.games VALUES (61, 34, 925);
INSERT INTO public.games VALUES (62, 34, 514);
INSERT INTO public.games VALUES (63, 34, 505);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'Jyanuqii');
INSERT INTO public.users VALUES (2, 'user_1793812656271');
INSERT INTO public.users VALUES (3, 'user_1793812656270');
INSERT INTO public.users VALUES (4, 'Mina');
INSERT INTO public.users VALUES (5, 'user_1793812788290');
INSERT INTO public.users VALUES (6, 'user_1793812788289');
INSERT INTO public.users VALUES (7, 'user_1793812869567');
INSERT INTO public.users VALUES (8, 'user_1793812869566');
INSERT INTO public.users VALUES (9, 'user_1793813078258');
INSERT INTO public.users VALUES (10, 'user_1793813078257');
INSERT INTO public.users VALUES (11, 'user_1793813332603');
INSERT INTO public.users VALUES (12, 'user_1793813332602');
INSERT INTO public.users VALUES (13, 'user_1793813445839');
INSERT INTO public.users VALUES (14, 'user_1793813445838');
INSERT INTO public.users VALUES (15, 'user_1793813994643');
INSERT INTO public.users VALUES (16, 'user_1793813994642');
INSERT INTO public.users VALUES (17, 'user_1793814168368');
INSERT INTO public.users VALUES (18, 'user_1793814168367');
INSERT INTO public.users VALUES (19, 'user_1793814186463');
INSERT INTO public.users VALUES (20, 'user_1793814186462');
INSERT INTO public.users VALUES (21, 'user_1793814324388');
INSERT INTO public.users VALUES (22, 'user_1793814324387');
INSERT INTO public.users VALUES (23, 'user_1793814428913');
INSERT INTO public.users VALUES (24, 'user_1793814428912');
INSERT INTO public.users VALUES (25, 'user_1793814713265');
INSERT INTO public.users VALUES (26, 'user_1793814713264');
INSERT INTO public.users VALUES (27, 'user_1793814921004');
INSERT INTO public.users VALUES (28, 'user_1793814921003');
INSERT INTO public.users VALUES (29, 'Silver');
INSERT INTO public.users VALUES (30, 'user_1793815198269');
INSERT INTO public.users VALUES (31, 'user_1793815198268');
INSERT INTO public.users VALUES (32, 'user_1793815243459');
INSERT INTO public.users VALUES (33, 'user_1793815243458');
INSERT INTO public.users VALUES (34, 'user_1793815262672');
INSERT INTO public.users VALUES (35, 'user_1793815262671');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 63, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 35, true);


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
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--


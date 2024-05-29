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
    user_id integer,
    number_of_guesses integer,
    game_date date DEFAULT now()
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
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
    username character varying(22)
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

INSERT INTO public.games VALUES (1, 4, 11, '2024-05-29');
INSERT INTO public.games VALUES (2, 4, 7, '2024-05-29');
INSERT INTO public.games VALUES (3, 4, 14, '2024-05-29');
INSERT INTO public.games VALUES (4, 11, 309, '2024-05-29');
INSERT INTO public.games VALUES (5, 11, 357, '2024-05-29');
INSERT INTO public.games VALUES (6, 12, 843, '2024-05-29');
INSERT INTO public.games VALUES (7, 12, 364, '2024-05-29');
INSERT INTO public.games VALUES (8, 11, 209, '2024-05-29');
INSERT INTO public.games VALUES (9, 11, 991, '2024-05-29');
INSERT INTO public.games VALUES (10, 11, 491, '2024-05-29');
INSERT INTO public.games VALUES (11, 13, 659, '2024-05-29');
INSERT INTO public.games VALUES (12, 13, 551, '2024-05-29');
INSERT INTO public.games VALUES (13, 14, 561, '2024-05-29');
INSERT INTO public.games VALUES (14, 14, 774, '2024-05-29');
INSERT INTO public.games VALUES (15, 13, 336, '2024-05-29');
INSERT INTO public.games VALUES (16, 13, 171, '2024-05-29');
INSERT INTO public.games VALUES (17, 13, 479, '2024-05-29');
INSERT INTO public.games VALUES (18, 15, 170, '2024-05-29');
INSERT INTO public.games VALUES (19, 15, 169, '2024-05-29');
INSERT INTO public.games VALUES (20, 16, 312, '2024-05-29');
INSERT INTO public.games VALUES (21, 16, 470, '2024-05-29');
INSERT INTO public.games VALUES (22, 15, 10, '2024-05-29');
INSERT INTO public.games VALUES (23, 15, 438, '2024-05-29');
INSERT INTO public.games VALUES (24, 15, 711, '2024-05-29');
INSERT INTO public.games VALUES (25, 17, 619, '2024-05-29');
INSERT INTO public.games VALUES (26, 17, 71, '2024-05-29');
INSERT INTO public.games VALUES (27, 18, 787, '2024-05-29');
INSERT INTO public.games VALUES (28, 18, 498, '2024-05-29');
INSERT INTO public.games VALUES (29, 17, 754, '2024-05-29');
INSERT INTO public.games VALUES (30, 17, 909, '2024-05-29');
INSERT INTO public.games VALUES (31, 17, 50, '2024-05-29');
INSERT INTO public.games VALUES (32, 19, 588, '2024-05-29');
INSERT INTO public.games VALUES (33, 19, 237, '2024-05-29');
INSERT INTO public.games VALUES (34, 20, 882, '2024-05-29');
INSERT INTO public.games VALUES (35, 20, 188, '2024-05-29');
INSERT INTO public.games VALUES (36, 19, 467, '2024-05-29');
INSERT INTO public.games VALUES (37, 19, 660, '2024-05-29');
INSERT INTO public.games VALUES (38, 19, 162, '2024-05-29');
INSERT INTO public.games VALUES (39, 21, 479, '2024-05-29');
INSERT INTO public.games VALUES (40, 21, 406, '2024-05-29');
INSERT INTO public.games VALUES (41, 22, 487, '2024-05-29');
INSERT INTO public.games VALUES (42, 22, 229, '2024-05-29');
INSERT INTO public.games VALUES (43, 21, 198, '2024-05-29');
INSERT INTO public.games VALUES (44, 21, 15, '2024-05-29');
INSERT INTO public.games VALUES (45, 21, 241, '2024-05-29');
INSERT INTO public.games VALUES (46, 23, 867, '2024-05-29');
INSERT INTO public.games VALUES (47, 23, 175, '2024-05-29');
INSERT INTO public.games VALUES (48, 24, 653, '2024-05-29');
INSERT INTO public.games VALUES (49, 24, 300, '2024-05-29');
INSERT INTO public.games VALUES (50, 23, 853, '2024-05-29');
INSERT INTO public.games VALUES (51, 23, 999, '2024-05-29');
INSERT INTO public.games VALUES (52, 23, 881, '2024-05-29');
INSERT INTO public.games VALUES (53, 25, 72, '2024-05-29');
INSERT INTO public.games VALUES (54, 25, 363, '2024-05-29');
INSERT INTO public.games VALUES (55, 26, 76, '2024-05-29');
INSERT INTO public.games VALUES (56, 26, 45, '2024-05-29');
INSERT INTO public.games VALUES (57, 25, 662, '2024-05-29');
INSERT INTO public.games VALUES (58, 25, 184, '2024-05-29');
INSERT INTO public.games VALUES (59, 25, 158, '2024-05-29');
INSERT INTO public.games VALUES (60, 27, 653, '2024-05-29');
INSERT INTO public.games VALUES (61, 27, 473, '2024-05-29');
INSERT INTO public.games VALUES (62, 28, 582, '2024-05-29');
INSERT INTO public.games VALUES (63, 28, 631, '2024-05-29');
INSERT INTO public.games VALUES (64, 27, 525, '2024-05-29');
INSERT INTO public.games VALUES (65, 27, 296, '2024-05-29');
INSERT INTO public.games VALUES (66, 27, 263, '2024-05-29');
INSERT INTO public.games VALUES (67, 4, 12, '2024-05-29');
INSERT INTO public.games VALUES (68, 29, 100, '2024-05-29');
INSERT INTO public.games VALUES (69, 29, 659, '2024-05-29');
INSERT INTO public.games VALUES (70, 30, 366, '2024-05-29');
INSERT INTO public.games VALUES (71, 30, 450, '2024-05-29');
INSERT INTO public.games VALUES (72, 29, 467, '2024-05-29');
INSERT INTO public.games VALUES (73, 29, 802, '2024-05-29');
INSERT INTO public.games VALUES (74, 29, 855, '2024-05-29');
INSERT INTO public.games VALUES (75, 31, 658, '2024-05-29');
INSERT INTO public.games VALUES (76, 31, 347, '2024-05-29');
INSERT INTO public.games VALUES (77, 32, 919, '2024-05-29');
INSERT INTO public.games VALUES (78, 32, 592, '2024-05-29');
INSERT INTO public.games VALUES (79, 31, 113, '2024-05-29');
INSERT INTO public.games VALUES (80, 31, 869, '2024-05-29');
INSERT INTO public.games VALUES (81, 31, 625, '2024-05-29');
INSERT INTO public.games VALUES (82, 33, 351, '2024-05-29');
INSERT INTO public.games VALUES (83, 33, 623, '2024-05-29');
INSERT INTO public.games VALUES (84, 34, 431, '2024-05-29');
INSERT INTO public.games VALUES (85, 34, 881, '2024-05-29');
INSERT INTO public.games VALUES (86, 33, 188, '2024-05-29');
INSERT INTO public.games VALUES (87, 33, 307, '2024-05-29');
INSERT INTO public.games VALUES (88, 33, 6, '2024-05-29');
INSERT INTO public.games VALUES (89, 35, 144, '2024-05-29');
INSERT INTO public.games VALUES (90, 35, 708, '2024-05-29');
INSERT INTO public.games VALUES (91, 36, 617, '2024-05-29');
INSERT INTO public.games VALUES (92, 36, 197, '2024-05-29');
INSERT INTO public.games VALUES (93, 35, 191, '2024-05-29');
INSERT INTO public.games VALUES (94, 35, 304, '2024-05-29');
INSERT INTO public.games VALUES (95, 35, 647, '2024-05-29');
INSERT INTO public.games VALUES (96, 37, 130, '2024-05-29');
INSERT INTO public.games VALUES (97, 37, 955, '2024-05-29');
INSERT INTO public.games VALUES (98, 38, 130, '2024-05-29');
INSERT INTO public.games VALUES (99, 38, 175, '2024-05-29');
INSERT INTO public.games VALUES (100, 37, 715, '2024-05-29');
INSERT INTO public.games VALUES (101, 37, 52, '2024-05-29');
INSERT INTO public.games VALUES (102, 37, 592, '2024-05-29');
INSERT INTO public.games VALUES (103, 39, 185, '2024-05-29');
INSERT INTO public.games VALUES (104, 39, 495, '2024-05-29');
INSERT INTO public.games VALUES (105, 40, 758, '2024-05-29');
INSERT INTO public.games VALUES (106, 40, 329, '2024-05-29');
INSERT INTO public.games VALUES (107, 39, 483, '2024-05-29');
INSERT INTO public.games VALUES (108, 39, 658, '2024-05-29');
INSERT INTO public.games VALUES (109, 39, 781, '2024-05-29');
INSERT INTO public.games VALUES (110, 41, 421, '2024-05-29');
INSERT INTO public.games VALUES (111, 41, 153, '2024-05-29');
INSERT INTO public.games VALUES (112, 42, 181, '2024-05-29');
INSERT INTO public.games VALUES (113, 42, 949, '2024-05-29');
INSERT INTO public.games VALUES (114, 41, 16, '2024-05-29');
INSERT INTO public.games VALUES (115, 41, 219, '2024-05-29');
INSERT INTO public.games VALUES (116, 41, 227, '2024-05-29');
INSERT INTO public.games VALUES (117, 43, 169, '2024-05-29');
INSERT INTO public.games VALUES (118, 43, 697, '2024-05-29');
INSERT INTO public.games VALUES (119, 44, 977, '2024-05-29');
INSERT INTO public.games VALUES (120, 44, 48, '2024-05-29');
INSERT INTO public.games VALUES (121, 43, 338, '2024-05-29');
INSERT INTO public.games VALUES (122, 43, 661, '2024-05-29');
INSERT INTO public.games VALUES (123, 43, 365, '2024-05-29');
INSERT INTO public.games VALUES (124, 45, 110, '2024-05-29');
INSERT INTO public.games VALUES (125, 45, 560, '2024-05-29');
INSERT INTO public.games VALUES (126, 46, 257, '2024-05-29');
INSERT INTO public.games VALUES (127, 46, 811, '2024-05-29');
INSERT INTO public.games VALUES (128, 45, 936, '2024-05-29');
INSERT INTO public.games VALUES (129, 45, 183, '2024-05-29');
INSERT INTO public.games VALUES (130, 45, 955, '2024-05-29');


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (4, 'Todd');
INSERT INTO public.users VALUES (5, 'user_1717012887744');
INSERT INTO public.users VALUES (6, 'user_1717012887743');
INSERT INTO public.users VALUES (7, 'user_1717012911085');
INSERT INTO public.users VALUES (8, 'user_1717012911084');
INSERT INTO public.users VALUES (9, 'user_1717013039360');
INSERT INTO public.users VALUES (10, 'user_1717013039359');
INSERT INTO public.users VALUES (11, 'user_1717013136144');
INSERT INTO public.users VALUES (12, 'user_1717013136143');
INSERT INTO public.users VALUES (13, 'user_1717013273743');
INSERT INTO public.users VALUES (14, 'user_1717013273742');
INSERT INTO public.users VALUES (15, 'user_1717013310017');
INSERT INTO public.users VALUES (16, 'user_1717013310016');
INSERT INTO public.users VALUES (17, 'user_1717013332426');
INSERT INTO public.users VALUES (18, 'user_1717013332425');
INSERT INTO public.users VALUES (19, 'user_1717013434662');
INSERT INTO public.users VALUES (20, 'user_1717013434661');
INSERT INTO public.users VALUES (21, 'user_1717013451737');
INSERT INTO public.users VALUES (22, 'user_1717013451736');
INSERT INTO public.users VALUES (23, 'user_1717013457361');
INSERT INTO public.users VALUES (24, 'user_1717013457360');
INSERT INTO public.users VALUES (25, 'user_1717013561867');
INSERT INTO public.users VALUES (26, 'user_1717013561866');
INSERT INTO public.users VALUES (27, 'user_1717013624973');
INSERT INTO public.users VALUES (28, 'user_1717013624972');
INSERT INTO public.users VALUES (29, 'user_1717013757524');
INSERT INTO public.users VALUES (30, 'user_1717013757523');
INSERT INTO public.users VALUES (31, 'user_1717013776719');
INSERT INTO public.users VALUES (32, 'user_1717013776718');
INSERT INTO public.users VALUES (33, 'user_1717013795096');
INSERT INTO public.users VALUES (34, 'user_1717013795095');
INSERT INTO public.users VALUES (35, 'user_1717013819376');
INSERT INTO public.users VALUES (36, 'user_1717013819375');
INSERT INTO public.users VALUES (37, 'user_1717013917124');
INSERT INTO public.users VALUES (38, 'user_1717013917123');
INSERT INTO public.users VALUES (39, 'user_1717013952069');
INSERT INTO public.users VALUES (40, 'user_1717013952068');
INSERT INTO public.users VALUES (41, 'user_1717014031361');
INSERT INTO public.users VALUES (42, 'user_1717014031360');
INSERT INTO public.users VALUES (43, 'user_1717014339971');
INSERT INTO public.users VALUES (44, 'user_1717014339970');
INSERT INTO public.users VALUES (45, 'user_1717014409810');
INSERT INTO public.users VALUES (46, 'user_1717014409809');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 130, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 46, true);


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


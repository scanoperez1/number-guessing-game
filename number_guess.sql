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
    user_id integer,
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

INSERT INTO public.games VALUES (1, 1, 9);
INSERT INTO public.games VALUES (2, 2, 739);
INSERT INTO public.games VALUES (3, 2, 706);
INSERT INTO public.games VALUES (4, 3, 574);
INSERT INTO public.games VALUES (5, 3, 311);
INSERT INTO public.games VALUES (6, 2, 655);
INSERT INTO public.games VALUES (7, 2, 312);
INSERT INTO public.games VALUES (8, 2, 490);
INSERT INTO public.games VALUES (9, 4, 258);
INSERT INTO public.games VALUES (10, 4, 697);
INSERT INTO public.games VALUES (11, 5, 36);
INSERT INTO public.games VALUES (12, 5, 10);
INSERT INTO public.games VALUES (13, 4, 741);
INSERT INTO public.games VALUES (14, 4, 546);
INSERT INTO public.games VALUES (15, 4, 7);
INSERT INTO public.games VALUES (16, 6, 923);
INSERT INTO public.games VALUES (17, 6, 459);
INSERT INTO public.games VALUES (18, 7, 585);
INSERT INTO public.games VALUES (19, 7, 583);
INSERT INTO public.games VALUES (20, 6, 840);
INSERT INTO public.games VALUES (21, 6, 112);
INSERT INTO public.games VALUES (22, 6, 646);
INSERT INTO public.games VALUES (23, 8, 748);
INSERT INTO public.games VALUES (24, 8, 714);
INSERT INTO public.games VALUES (25, 9, 460);
INSERT INTO public.games VALUES (26, 9, 756);
INSERT INTO public.games VALUES (27, 8, 34);
INSERT INTO public.games VALUES (28, 8, 378);
INSERT INTO public.games VALUES (29, 8, 425);
INSERT INTO public.games VALUES (30, 10, 575);
INSERT INTO public.games VALUES (31, 10, 994);
INSERT INTO public.games VALUES (32, 11, 768);
INSERT INTO public.games VALUES (33, 11, 574);
INSERT INTO public.games VALUES (34, 10, 333);
INSERT INTO public.games VALUES (35, 10, 690);
INSERT INTO public.games VALUES (36, 10, 689);
INSERT INTO public.games VALUES (37, 12, 25);
INSERT INTO public.games VALUES (38, 12, 455);
INSERT INTO public.games VALUES (39, 13, 250);
INSERT INTO public.games VALUES (40, 13, 126);
INSERT INTO public.games VALUES (41, 12, 975);
INSERT INTO public.games VALUES (42, 12, 832);
INSERT INTO public.games VALUES (43, 12, 81);
INSERT INTO public.games VALUES (44, 14, 615);
INSERT INTO public.games VALUES (45, 14, 176);
INSERT INTO public.games VALUES (46, 15, 578);
INSERT INTO public.games VALUES (47, 15, 945);
INSERT INTO public.games VALUES (48, 14, 877);
INSERT INTO public.games VALUES (49, 14, 668);
INSERT INTO public.games VALUES (50, 14, 314);
INSERT INTO public.games VALUES (51, 16, 379);
INSERT INTO public.games VALUES (52, 16, 176);
INSERT INTO public.games VALUES (53, 17, 360);
INSERT INTO public.games VALUES (54, 17, 562);
INSERT INTO public.games VALUES (55, 16, 31);
INSERT INTO public.games VALUES (56, 16, 57);
INSERT INTO public.games VALUES (57, 16, 837);
INSERT INTO public.games VALUES (58, 18, 608);
INSERT INTO public.games VALUES (59, 18, 209);
INSERT INTO public.games VALUES (60, 19, 724);
INSERT INTO public.games VALUES (61, 19, 742);
INSERT INTO public.games VALUES (62, 18, 109);
INSERT INTO public.games VALUES (63, 18, 734);
INSERT INTO public.games VALUES (64, 18, 836);
INSERT INTO public.games VALUES (65, 20, 854);
INSERT INTO public.games VALUES (66, 20, 523);
INSERT INTO public.games VALUES (67, 21, 812);
INSERT INTO public.games VALUES (68, 21, 40);
INSERT INTO public.games VALUES (69, 20, 296);
INSERT INTO public.games VALUES (70, 20, 349);
INSERT INTO public.games VALUES (71, 20, 700);
INSERT INTO public.games VALUES (72, 22, 293);
INSERT INTO public.games VALUES (73, 22, 144);
INSERT INTO public.games VALUES (74, 23, 75);
INSERT INTO public.games VALUES (75, 23, 253);
INSERT INTO public.games VALUES (76, 22, 651);
INSERT INTO public.games VALUES (77, 22, 291);
INSERT INTO public.games VALUES (78, 22, 661);
INSERT INTO public.games VALUES (79, 24, 93);
INSERT INTO public.games VALUES (80, 24, 107);
INSERT INTO public.games VALUES (81, 25, 379);
INSERT INTO public.games VALUES (82, 25, 942);
INSERT INTO public.games VALUES (83, 24, 403);
INSERT INTO public.games VALUES (84, 24, 797);
INSERT INTO public.games VALUES (85, 24, 220);
INSERT INTO public.games VALUES (86, 26, 671);
INSERT INTO public.games VALUES (87, 26, 504);
INSERT INTO public.games VALUES (88, 27, 910);
INSERT INTO public.games VALUES (89, 27, 959);
INSERT INTO public.games VALUES (90, 26, 657);
INSERT INTO public.games VALUES (91, 26, 387);
INSERT INTO public.games VALUES (92, 26, 982);
INSERT INTO public.games VALUES (93, 28, 747);
INSERT INTO public.games VALUES (94, 28, 722);
INSERT INTO public.games VALUES (95, 29, 137);
INSERT INTO public.games VALUES (96, 29, 573);
INSERT INTO public.games VALUES (97, 28, 316);
INSERT INTO public.games VALUES (98, 28, 311);
INSERT INTO public.games VALUES (99, 28, 33);
INSERT INTO public.games VALUES (100, 30, 218);
INSERT INTO public.games VALUES (101, 30, 680);
INSERT INTO public.games VALUES (102, 31, 763);
INSERT INTO public.games VALUES (103, 31, 289);
INSERT INTO public.games VALUES (104, 30, 523);
INSERT INTO public.games VALUES (105, 30, 7);
INSERT INTO public.games VALUES (106, 30, 803);
INSERT INTO public.games VALUES (107, 32, 347);
INSERT INTO public.games VALUES (108, 32, 924);
INSERT INTO public.games VALUES (109, 33, 467);
INSERT INTO public.games VALUES (110, 33, 297);
INSERT INTO public.games VALUES (111, 32, 376);
INSERT INTO public.games VALUES (112, 32, 486);
INSERT INTO public.games VALUES (113, 32, 822);
INSERT INTO public.games VALUES (114, 34, 652);
INSERT INTO public.games VALUES (115, 34, 122);
INSERT INTO public.games VALUES (116, 35, 93);
INSERT INTO public.games VALUES (117, 35, 360);
INSERT INTO public.games VALUES (118, 34, 5);
INSERT INTO public.games VALUES (119, 34, 447);
INSERT INTO public.games VALUES (120, 34, 868);
INSERT INTO public.games VALUES (121, 36, 285);
INSERT INTO public.games VALUES (122, 36, 340);
INSERT INTO public.games VALUES (123, 37, 949);
INSERT INTO public.games VALUES (124, 37, 968);
INSERT INTO public.games VALUES (125, 36, 921);
INSERT INTO public.games VALUES (126, 36, 676);
INSERT INTO public.games VALUES (127, 36, 568);
INSERT INTO public.games VALUES (128, 38, 40);
INSERT INTO public.games VALUES (129, 38, 869);
INSERT INTO public.games VALUES (130, 39, 420);
INSERT INTO public.games VALUES (131, 39, 641);
INSERT INTO public.games VALUES (132, 38, 857);
INSERT INTO public.games VALUES (133, 38, 154);
INSERT INTO public.games VALUES (134, 38, 869);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'marroncita');
INSERT INTO public.users VALUES (2, 'user_1794234343728');
INSERT INTO public.users VALUES (3, 'user_1794234343727');
INSERT INTO public.users VALUES (4, 'user_1794234347448');
INSERT INTO public.users VALUES (5, 'user_1794234347447');
INSERT INTO public.users VALUES (6, 'user_1794234451650');
INSERT INTO public.users VALUES (7, 'user_1794234451649');
INSERT INTO public.users VALUES (8, 'user_1794234463881');
INSERT INTO public.users VALUES (9, 'user_1794234463880');
INSERT INTO public.users VALUES (10, 'user_1794234522156');
INSERT INTO public.users VALUES (11, 'user_1794234522155');
INSERT INTO public.users VALUES (12, 'user_1794234567420');
INSERT INTO public.users VALUES (13, 'user_1794234567419');
INSERT INTO public.users VALUES (14, 'user_1794234646681');
INSERT INTO public.users VALUES (15, 'user_1794234646680');
INSERT INTO public.users VALUES (16, 'user_1794235002059');
INSERT INTO public.users VALUES (17, 'user_1794235002058');
INSERT INTO public.users VALUES (18, 'user_1794235011561');
INSERT INTO public.users VALUES (19, 'user_1794235011560');
INSERT INTO public.users VALUES (20, 'user_1794235049735');
INSERT INTO public.users VALUES (21, 'user_1794235049734');
INSERT INTO public.users VALUES (22, 'user_1794235134008');
INSERT INTO public.users VALUES (23, 'user_1794235134007');
INSERT INTO public.users VALUES (24, 'user_1794235252343');
INSERT INTO public.users VALUES (25, 'user_1794235252342');
INSERT INTO public.users VALUES (26, 'user_1794235387578');
INSERT INTO public.users VALUES (27, 'user_1794235387577');
INSERT INTO public.users VALUES (28, 'user_1794235399281');
INSERT INTO public.users VALUES (29, 'user_1794235399280');
INSERT INTO public.users VALUES (30, 'user_1794235433282');
INSERT INTO public.users VALUES (31, 'user_1794235433281');
INSERT INTO public.users VALUES (32, 'user_1794235750141');
INSERT INTO public.users VALUES (33, 'user_1794235750140');
INSERT INTO public.users VALUES (34, 'user_1794235961145');
INSERT INTO public.users VALUES (35, 'user_1794235961144');
INSERT INTO public.users VALUES (36, 'user_1794236282267');
INSERT INTO public.users VALUES (37, 'user_1794236282266');
INSERT INTO public.users VALUES (38, 'user_1794236435520');
INSERT INTO public.users VALUES (39, 'user_1794236435519');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 134, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 39, true);


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


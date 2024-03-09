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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying(50) NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_id integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (39, 2018, 'Final', 4, 2, 127, 126);
INSERT INTO public.games VALUES (40, 2018, 'Third Place', 2, 0, 129, 128);
INSERT INTO public.games VALUES (41, 2018, 'Semi-Final', 2, 1, 129, 127);
INSERT INTO public.games VALUES (42, 2018, 'Semi-Final', 1, 0, 128, 126);
INSERT INTO public.games VALUES (43, 2018, 'Quarter-Final', 3, 2, 130, 127);
INSERT INTO public.games VALUES (44, 2018, 'Quarter-Final', 2, 0, 131, 129);
INSERT INTO public.games VALUES (45, 2018, 'Quarter-Final', 2, 1, 132, 128);
INSERT INTO public.games VALUES (46, 2018, 'Quarter-Final', 2, 0, 133, 126);
INSERT INTO public.games VALUES (47, 2018, 'Eighth-Final', 2, 1, 134, 129);
INSERT INTO public.games VALUES (48, 2018, 'Eighth-Final', 1, 0, 135, 131);
INSERT INTO public.games VALUES (49, 2018, 'Eighth-Final', 3, 2, 136, 128);
INSERT INTO public.games VALUES (50, 2018, 'Eighth-Final', 2, 0, 137, 132);
INSERT INTO public.games VALUES (51, 2018, 'Eighth-Final', 2, 1, 138, 127);
INSERT INTO public.games VALUES (52, 2018, 'Eighth-Final', 2, 1, 139, 130);
INSERT INTO public.games VALUES (53, 2018, 'Eighth-Final', 2, 1, 140, 133);
INSERT INTO public.games VALUES (54, 2018, 'Eighth-Final', 4, 3, 141, 126);
INSERT INTO public.games VALUES (55, 2014, 'Final', 1, 0, 141, 142);
INSERT INTO public.games VALUES (56, 2014, 'Third Place', 3, 0, 132, 143);
INSERT INTO public.games VALUES (57, 2014, 'Semi-Final', 1, 0, 143, 141);
INSERT INTO public.games VALUES (58, 2014, 'Semi-Final', 7, 1, 132, 142);
INSERT INTO public.games VALUES (59, 2014, 'Quarter-Final', 1, 0, 144, 143);
INSERT INTO public.games VALUES (60, 2014, 'Quarter-Final', 1, 0, 128, 141);
INSERT INTO public.games VALUES (61, 2014, 'Quarter-Final', 2, 1, 134, 132);
INSERT INTO public.games VALUES (62, 2014, 'Quarter-Final', 1, 0, 126, 142);
INSERT INTO public.games VALUES (63, 2014, 'Eighth-Final', 2, 1, 145, 132);
INSERT INTO public.games VALUES (64, 2014, 'Eighth-Final', 2, 0, 133, 134);
INSERT INTO public.games VALUES (65, 2014, 'Eighth-Final', 2, 0, 146, 126);
INSERT INTO public.games VALUES (66, 2014, 'Eighth-Final', 2, 1, 147, 142);
INSERT INTO public.games VALUES (67, 2014, 'Eighth-Final', 2, 1, 137, 143);
INSERT INTO public.games VALUES (68, 2014, 'Eighth-Final', 2, 1, 148, 144);
INSERT INTO public.games VALUES (69, 2014, 'Eighth-Final', 1, 0, 135, 141);
INSERT INTO public.games VALUES (70, 2014, 'Eighth-Final', 2, 1, 149, 128);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (126, 'France');
INSERT INTO public.teams VALUES (127, 'Croatia');
INSERT INTO public.teams VALUES (128, 'Belgium');
INSERT INTO public.teams VALUES (129, 'England');
INSERT INTO public.teams VALUES (130, 'Russia');
INSERT INTO public.teams VALUES (131, 'Sweden');
INSERT INTO public.teams VALUES (132, 'Brazil');
INSERT INTO public.teams VALUES (133, 'Uruguay');
INSERT INTO public.teams VALUES (134, 'Colombia');
INSERT INTO public.teams VALUES (135, 'Switzerland');
INSERT INTO public.teams VALUES (136, 'Japan');
INSERT INTO public.teams VALUES (137, 'Mexico');
INSERT INTO public.teams VALUES (138, 'Denmark');
INSERT INTO public.teams VALUES (139, 'Spain');
INSERT INTO public.teams VALUES (140, 'Portugal');
INSERT INTO public.teams VALUES (141, 'Argentina');
INSERT INTO public.teams VALUES (142, 'Germany');
INSERT INTO public.teams VALUES (143, 'Netherlands');
INSERT INTO public.teams VALUES (144, 'Costa Rica');
INSERT INTO public.teams VALUES (145, 'Chile');
INSERT INTO public.teams VALUES (146, 'Nigeria');
INSERT INTO public.teams VALUES (147, 'Algeria');
INSERT INTO public.teams VALUES (148, 'Greece');
INSERT INTO public.teams VALUES (149, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 70, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 149, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--


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
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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

INSERT INTO public.games VALUES (51, 2018, 'Final', 557, 558, 4, 2);
INSERT INTO public.games VALUES (52, 2018, 'Third Place', 559, 560, 2, 0);
INSERT INTO public.games VALUES (53, 2018, 'Semi-Final', 558, 560, 2, 1);
INSERT INTO public.games VALUES (54, 2018, 'Semi-Final', 557, 559, 1, 0);
INSERT INTO public.games VALUES (55, 2018, 'Quarter-Final', 558, 561, 3, 2);
INSERT INTO public.games VALUES (56, 2018, 'Quarter-Final', 560, 562, 2, 0);
INSERT INTO public.games VALUES (57, 2018, 'Quarter-Final', 559, 563, 2, 1);
INSERT INTO public.games VALUES (58, 2018, 'Quarter-Final', 557, 564, 2, 0);
INSERT INTO public.games VALUES (59, 2018, 'Eighth-Final', 560, 565, 2, 1);
INSERT INTO public.games VALUES (60, 2018, 'Eighth-Final', 562, 566, 1, 0);
INSERT INTO public.games VALUES (61, 2018, 'Eighth-Final', 559, 567, 3, 2);
INSERT INTO public.games VALUES (62, 2018, 'Eighth-Final', 563, 568, 2, 0);
INSERT INTO public.games VALUES (63, 2018, 'Eighth-Final', 558, 569, 2, 1);
INSERT INTO public.games VALUES (64, 2018, 'Eighth-Final', 561, 570, 2, 1);
INSERT INTO public.games VALUES (65, 2018, 'Eighth-Final', 564, 571, 2, 1);
INSERT INTO public.games VALUES (66, 2018, 'Eighth-Final', 557, 572, 4, 3);
INSERT INTO public.games VALUES (67, 2014, 'Final', 573, 572, 1, 0);
INSERT INTO public.games VALUES (68, 2014, 'Third Place', 574, 563, 3, 0);
INSERT INTO public.games VALUES (69, 2014, 'Semi-Final', 572, 574, 1, 0);
INSERT INTO public.games VALUES (70, 2014, 'Semi-Final', 573, 563, 7, 1);
INSERT INTO public.games VALUES (71, 2014, 'Quarter-Final', 574, 575, 1, 0);
INSERT INTO public.games VALUES (72, 2014, 'Quarter-Final', 572, 559, 1, 0);
INSERT INTO public.games VALUES (73, 2014, 'Quarter-Final', 563, 565, 2, 1);
INSERT INTO public.games VALUES (74, 2014, 'Quarter-Final', 573, 557, 1, 0);
INSERT INTO public.games VALUES (75, 2014, 'Eighth-Final', 563, 576, 2, 1);
INSERT INTO public.games VALUES (76, 2014, 'Eighth-Final', 565, 564, 2, 0);
INSERT INTO public.games VALUES (77, 2014, 'Eighth-Final', 557, 577, 2, 0);
INSERT INTO public.games VALUES (78, 2014, 'Eighth-Final', 573, 578, 2, 1);
INSERT INTO public.games VALUES (79, 2014, 'Eighth-Final', 574, 568, 2, 1);
INSERT INTO public.games VALUES (80, 2014, 'Eighth-Final', 575, 579, 2, 1);
INSERT INTO public.games VALUES (81, 2014, 'Eighth-Final', 572, 566, 1, 0);
INSERT INTO public.games VALUES (82, 2014, 'Eighth-Final', 559, 580, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (557, 'France');
INSERT INTO public.teams VALUES (558, 'Croatia');
INSERT INTO public.teams VALUES (559, 'Belgium');
INSERT INTO public.teams VALUES (560, 'England');
INSERT INTO public.teams VALUES (561, 'Russia');
INSERT INTO public.teams VALUES (562, 'Sweden');
INSERT INTO public.teams VALUES (563, 'Brazil');
INSERT INTO public.teams VALUES (564, 'Uruguay');
INSERT INTO public.teams VALUES (565, 'Colombia');
INSERT INTO public.teams VALUES (566, 'Switzerland');
INSERT INTO public.teams VALUES (567, 'Japan');
INSERT INTO public.teams VALUES (568, 'Mexico');
INSERT INTO public.teams VALUES (569, 'Denmark');
INSERT INTO public.teams VALUES (570, 'Spain');
INSERT INTO public.teams VALUES (571, 'Portugal');
INSERT INTO public.teams VALUES (572, 'Argentina');
INSERT INTO public.teams VALUES (573, 'Germany');
INSERT INTO public.teams VALUES (574, 'Netherlands');
INSERT INTO public.teams VALUES (575, 'Costa Rica');
INSERT INTO public.teams VALUES (576, 'Chile');
INSERT INTO public.teams VALUES (577, 'Nigeria');
INSERT INTO public.teams VALUES (578, 'Algeria');
INSERT INTO public.teams VALUES (579, 'Greece');
INSERT INTO public.teams VALUES (580, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 82, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 580, true);


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
-- Name: games fkey_games_teams_opponent; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fkey_games_teams_opponent FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fkey_games_teams_winner; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fkey_games_teams_winner FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--


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

DROP DATABASE students;
--
-- Name: students; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE students WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE students OWNER TO freecodecamp;

\connect students

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
-- Name: courses; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.courses (
    course_id integer NOT NULL,
    course character varying(100) NOT NULL
);


ALTER TABLE public.courses OWNER TO freecodecamp;

--
-- Name: courses_course_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.courses_course_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.courses_course_id_seq OWNER TO freecodecamp;

--
-- Name: courses_course_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.courses_course_id_seq OWNED BY public.courses.course_id;


--
-- Name: majors; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.majors (
    major_id integer NOT NULL,
    major character varying(50) NOT NULL
);


ALTER TABLE public.majors OWNER TO freecodecamp;

--
-- Name: majors_courses; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.majors_courses (
    major_id integer NOT NULL,
    course_id integer NOT NULL
);


ALTER TABLE public.majors_courses OWNER TO freecodecamp;

--
-- Name: majors_major_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.majors_major_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.majors_major_id_seq OWNER TO freecodecamp;

--
-- Name: majors_major_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.majors_major_id_seq OWNED BY public.majors.major_id;


--
-- Name: students; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.students (
    student_id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    major_id integer,
    gpa numeric(2,1)
);


ALTER TABLE public.students OWNER TO freecodecamp;

--
-- Name: students_student_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.students_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.students_student_id_seq OWNER TO freecodecamp;

--
-- Name: students_student_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.students_student_id_seq OWNED BY public.students.student_id;


--
-- Name: courses course_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.courses ALTER COLUMN course_id SET DEFAULT nextval('public.courses_course_id_seq'::regclass);


--
-- Name: majors major_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors ALTER COLUMN major_id SET DEFAULT nextval('public.majors_major_id_seq'::regclass);


--
-- Name: students student_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.students ALTER COLUMN student_id SET DEFAULT nextval('public.students_student_id_seq'::regclass);


--
-- Data for Name: courses; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.courses VALUES (67, 'Data Structures and Algorithms');
INSERT INTO public.courses VALUES (68, 'Web Programming');
INSERT INTO public.courses VALUES (69, 'Database Systems');
INSERT INTO public.courses VALUES (70, 'Computer Networks');
INSERT INTO public.courses VALUES (71, 'SQL');
INSERT INTO public.courses VALUES (72, 'Machine Learning');
INSERT INTO public.courses VALUES (73, 'Computer Systems');
INSERT INTO public.courses VALUES (74, 'Web Applications');
INSERT INTO public.courses VALUES (75, 'Artificial Intelligence');
INSERT INTO public.courses VALUES (76, 'Python');
INSERT INTO public.courses VALUES (77, 'Object-Oriented Programming');
INSERT INTO public.courses VALUES (78, 'Calculus');
INSERT INTO public.courses VALUES (79, 'Game Architecture');
INSERT INTO public.courses VALUES (80, 'Algorithms');
INSERT INTO public.courses VALUES (81, 'UNIX');
INSERT INTO public.courses VALUES (82, 'Server Administration');
INSERT INTO public.courses VALUES (83, 'Network Security');


--
-- Data for Name: majors; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.majors VALUES (70, 'Database Administration');
INSERT INTO public.majors VALUES (71, 'Web Development');
INSERT INTO public.majors VALUES (72, 'Data Science');
INSERT INTO public.majors VALUES (73, 'Network Engineering');
INSERT INTO public.majors VALUES (74, 'Computer Programming');
INSERT INTO public.majors VALUES (75, 'Game Design');
INSERT INTO public.majors VALUES (76, 'System Administration');


--
-- Data for Name: majors_courses; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.majors_courses VALUES (70, 67);
INSERT INTO public.majors_courses VALUES (71, 68);
INSERT INTO public.majors_courses VALUES (70, 69);
INSERT INTO public.majors_courses VALUES (72, 67);
INSERT INTO public.majors_courses VALUES (73, 70);
INSERT INTO public.majors_courses VALUES (70, 71);
INSERT INTO public.majors_courses VALUES (72, 72);
INSERT INTO public.majors_courses VALUES (73, 73);
INSERT INTO public.majors_courses VALUES (74, 70);
INSERT INTO public.majors_courses VALUES (70, 74);
INSERT INTO public.majors_courses VALUES (75, 75);
INSERT INTO public.majors_courses VALUES (72, 76);
INSERT INTO public.majors_courses VALUES (74, 77);
INSERT INTO public.majors_courses VALUES (76, 73);
INSERT INTO public.majors_courses VALUES (75, 78);
INSERT INTO public.majors_courses VALUES (71, 67);
INSERT INTO public.majors_courses VALUES (72, 78);
INSERT INTO public.majors_courses VALUES (71, 77);
INSERT INTO public.majors_courses VALUES (75, 79);
INSERT INTO public.majors_courses VALUES (76, 70);
INSERT INTO public.majors_courses VALUES (75, 80);
INSERT INTO public.majors_courses VALUES (76, 81);
INSERT INTO public.majors_courses VALUES (76, 82);
INSERT INTO public.majors_courses VALUES (74, 73);
INSERT INTO public.majors_courses VALUES (74, 76);
INSERT INTO public.majors_courses VALUES (73, 83);
INSERT INTO public.majors_courses VALUES (71, 74);
INSERT INTO public.majors_courses VALUES (73, 80);


--
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.students VALUES (37, 'Rhea', 'Kellems', 70, 2.5);
INSERT INTO public.students VALUES (38, 'Emma', 'Gilbert', NULL, NULL);
INSERT INTO public.students VALUES (39, 'Kimberly', 'Whitley', 71, 3.8);
INSERT INTO public.students VALUES (40, 'Jimmy', 'Felipe', 70, 3.7);
INSERT INTO public.students VALUES (41, 'Kyle', 'Stimson', NULL, 2.8);
INSERT INTO public.students VALUES (42, 'Casares', 'Hijo', 75, 4.0);
INSERT INTO public.students VALUES (43, 'Noe', 'Savage', NULL, 3.6);
INSERT INTO public.students VALUES (44, 'Sterling', 'Boss', 75, 3.9);
INSERT INTO public.students VALUES (45, 'Brian', 'Davis', NULL, 2.3);
INSERT INTO public.students VALUES (46, 'Kaija', 'Uronen', 75, 3.7);
INSERT INTO public.students VALUES (47, 'Faye', 'Conn', 75, 2.1);
INSERT INTO public.students VALUES (48, 'Efren', 'Reilly', 71, 3.9);
INSERT INTO public.students VALUES (49, 'Danh', 'Nhung', NULL, 2.4);
INSERT INTO public.students VALUES (50, 'Maxine', 'Hagenes', 70, 2.9);
INSERT INTO public.students VALUES (51, 'Larry', 'Saunders', 72, 2.2);
INSERT INTO public.students VALUES (52, 'Karl', 'Kuhar', 71, NULL);
INSERT INTO public.students VALUES (53, 'Lieke', 'Hazenveld', 75, 3.5);
INSERT INTO public.students VALUES (54, 'Obie', 'Hilpert', 71, NULL);
INSERT INTO public.students VALUES (55, 'Peter', 'Booysen', NULL, 2.9);
INSERT INTO public.students VALUES (56, 'Nathan', 'Turner', 70, 3.3);
INSERT INTO public.students VALUES (57, 'Gerald', 'Osiki', 72, 2.2);
INSERT INTO public.students VALUES (58, 'Vanya', 'Hassanah', 75, 4.0);
INSERT INTO public.students VALUES (59, 'Roxelana', 'Florescu', 70, 3.2);
INSERT INTO public.students VALUES (60, 'Helene', 'Parker', 72, 3.4);
INSERT INTO public.students VALUES (61, 'Mariana', 'Russel', 71, 1.8);
INSERT INTO public.students VALUES (62, 'Ajit', 'Dhungel', NULL, 3.0);
INSERT INTO public.students VALUES (63, 'Mehdi', 'Vandenberghe', 70, 1.9);
INSERT INTO public.students VALUES (64, 'Dejon', 'Howell', 71, 4.0);
INSERT INTO public.students VALUES (65, 'Aliya', 'Gulgowski', 76, 2.6);
INSERT INTO public.students VALUES (66, 'Ana', 'Tupajic', 72, 3.1);
INSERT INTO public.students VALUES (67, 'Hugo', 'Duran', NULL, 3.8);


--
-- Name: courses_course_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.courses_course_id_seq', 83, true);


--
-- Name: majors_major_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.majors_major_id_seq', 76, true);


--
-- Name: students_student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.students_student_id_seq', 67, true);


--
-- Name: courses courses_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (course_id);


--
-- Name: majors_courses majors_courses_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors_courses
    ADD CONSTRAINT majors_courses_pkey PRIMARY KEY (major_id, course_id);


--
-- Name: majors majors_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors
    ADD CONSTRAINT majors_pkey PRIMARY KEY (major_id);


--
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (student_id);


--
-- Name: majors_courses majors_courses_course_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors_courses
    ADD CONSTRAINT majors_courses_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.courses(course_id);


--
-- Name: majors_courses majors_courses_major_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors_courses
    ADD CONSTRAINT majors_courses_major_id_fkey FOREIGN KEY (major_id) REFERENCES public.majors(major_id);


--
-- Name: students students_major_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_major_id_fkey FOREIGN KEY (major_id) REFERENCES public.majors(major_id);


--
-- PostgreSQL database dump complete
--
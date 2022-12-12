--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5 (Debian 14.5-2.pgdg110+2)
-- Dumped by pg_dump version 15.0 (Debian 15.0-1.pgdg110+1)

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
-- Name: __efmigrations_history_portal; Type: TABLE; Schema: public; Owner: portal
--

CREATE TABLE public.__efmigrations_history_portal (
    migration_id character varying(150) NOT NULL,
    product_version character varying(32) NOT NULL
);


ALTER TABLE public.__efmigrations_history_portal OWNER TO portal;

--
-- Name: __efmigrations_history_provisioning; Type: TABLE; Schema: public; Owner: provisioning
--

CREATE TABLE public.__efmigrations_history_provisioning (
    migration_id character varying(150) NOT NULL,
    product_version character varying(32) NOT NULL
);


ALTER TABLE public.__efmigrations_history_provisioning OWNER TO provisioning;

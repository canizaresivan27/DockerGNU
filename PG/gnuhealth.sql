--
-- PostgreSQL database dump
--

-- Dumped from database version 13.9
-- Dumped by pg_dump version 13.9

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

--
-- Name: ir_action_id_seq; Type: SEQUENCE; Schema: public; Owner: gnuhealth
--

CREATE SEQUENCE public.ir_action_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_action_id_seq OWNER TO gnuhealth;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: ir_action; Type: TABLE; Schema: public; Owner: gnuhealth
--

CREATE TABLE public.ir_action (
    id integer DEFAULT nextval('public.ir_action_id_seq'::regclass) NOT NULL,
    active boolean DEFAULT false,
    create_date timestamp(6) without time zone,
    create_uid integer,
    icon integer,
    name character varying NOT NULL,
    records character varying,
    type character varying NOT NULL,
    usage character varying,
    write_date timestamp(6) without time zone,
    write_uid integer,
    CONSTRAINT ir_action_id_positive CHECK ((id >= 0))
);


ALTER TABLE public.ir_action OWNER TO gnuhealth;

--
-- Name: TABLE ir_action; Type: COMMENT; Schema: public; Owner: gnuhealth
--

COMMENT ON TABLE public.ir_action IS 'Action';


--
-- Name: ir_action-res_group_id_seq; Type: SEQUENCE; Schema: public; Owner: gnuhealth
--

CREATE SEQUENCE public."ir_action-res_group_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."ir_action-res_group_id_seq" OWNER TO gnuhealth;

--
-- Name: ir_action-res_group; Type: TABLE; Schema: public; Owner: gnuhealth
--

CREATE TABLE public."ir_action-res_group" (
    id integer DEFAULT nextval('public."ir_action-res_group_id_seq"'::regclass) NOT NULL,
    action integer NOT NULL,
    create_date timestamp(6) without time zone,
    create_uid integer,
    "group" integer NOT NULL,
    write_date timestamp(6) without time zone,
    write_uid integer,
    CONSTRAINT "ir_action-res_group_id_positive" CHECK ((id >= 0))
);


ALTER TABLE public."ir_action-res_group" OWNER TO gnuhealth;

--
-- Name: TABLE "ir_action-res_group"; Type: COMMENT; Schema: public; Owner: gnuhealth
--

COMMENT ON TABLE public."ir_action-res_group" IS 'Action - Group';


--
-- Name: ir_action_act_window_id_seq; Type: SEQUENCE; Schema: public; Owner: gnuhealth
--

CREATE SEQUENCE public.ir_action_act_window_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_action_act_window_id_seq OWNER TO gnuhealth;

--
-- Name: ir_action_act_window; Type: TABLE; Schema: public; Owner: gnuhealth
--

CREATE TABLE public.ir_action_act_window (
    id integer DEFAULT nextval('public.ir_action_act_window_id_seq'::regclass) NOT NULL,
    action integer NOT NULL,
    context character varying,
    context_domain character varying,
    context_model character varying,
    create_date timestamp(6) without time zone,
    create_uid integer,
    domain character varying,
    "limit" integer,
    "order" character varying,
    res_model character varying,
    search_value character varying,
    write_date timestamp(6) without time zone,
    write_uid integer,
    CONSTRAINT ir_action_act_window_id_positive CHECK ((id >= 0))
);


ALTER TABLE public.ir_action_act_window OWNER TO gnuhealth;

--
-- Name: TABLE ir_action_act_window; Type: COMMENT; Schema: public; Owner: gnuhealth
--

COMMENT ON TABLE public.ir_action_act_window IS 'Action act window';


--
-- Name: ir_action_act_window_domain_id_seq; Type: SEQUENCE; Schema: public; Owner: gnuhealth
--

CREATE SEQUENCE public.ir_action_act_window_domain_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_action_act_window_domain_id_seq OWNER TO gnuhealth;

--
-- Name: ir_action_act_window_domain; Type: TABLE; Schema: public; Owner: gnuhealth
--

CREATE TABLE public.ir_action_act_window_domain (
    id integer DEFAULT nextval('public.ir_action_act_window_domain_id_seq'::regclass) NOT NULL,
    act_window integer NOT NULL,
    active boolean DEFAULT false,
    count boolean DEFAULT false,
    create_date timestamp(6) without time zone,
    create_uid integer,
    domain character varying,
    name character varying,
    sequence integer,
    write_date timestamp(6) without time zone,
    write_uid integer,
    CONSTRAINT ir_action_act_window_domain_id_positive CHECK ((id >= 0))
);


ALTER TABLE public.ir_action_act_window_domain OWNER TO gnuhealth;

--
-- Name: TABLE ir_action_act_window_domain; Type: COMMENT; Schema: public; Owner: gnuhealth
--

COMMENT ON TABLE public.ir_action_act_window_domain IS 'Action act window domain';


--
-- Name: ir_action_act_window_view_id_seq; Type: SEQUENCE; Schema: public; Owner: gnuhealth
--

CREATE SEQUENCE public.ir_action_act_window_view_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_action_act_window_view_id_seq OWNER TO gnuhealth;

--
-- Name: ir_action_act_window_view; Type: TABLE; Schema: public; Owner: gnuhealth
--

CREATE TABLE public.ir_action_act_window_view (
    id integer DEFAULT nextval('public.ir_action_act_window_view_id_seq'::regclass) NOT NULL,
    act_window integer,
    active boolean DEFAULT false,
    create_date timestamp(6) without time zone,
    create_uid integer,
    sequence integer,
    view integer NOT NULL,
    write_date timestamp(6) without time zone,
    write_uid integer,
    CONSTRAINT ir_action_act_window_view_id_positive CHECK ((id >= 0))
);


ALTER TABLE public.ir_action_act_window_view OWNER TO gnuhealth;

--
-- Name: TABLE ir_action_act_window_view; Type: COMMENT; Schema: public; Owner: gnuhealth
--

COMMENT ON TABLE public.ir_action_act_window_view IS 'Action act window view';


--
-- Name: ir_action_keyword_id_seq; Type: SEQUENCE; Schema: public; Owner: gnuhealth
--

CREATE SEQUENCE public.ir_action_keyword_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_action_keyword_id_seq OWNER TO gnuhealth;

--
-- Name: ir_action_keyword; Type: TABLE; Schema: public; Owner: gnuhealth
--

CREATE TABLE public.ir_action_keyword (
    id integer DEFAULT nextval('public.ir_action_keyword_id_seq'::regclass) NOT NULL,
    action integer,
    create_date timestamp(6) without time zone,
    create_uid integer,
    keyword character varying NOT NULL,
    model character varying,
    write_date timestamp(6) without time zone,
    write_uid integer,
    CONSTRAINT ir_action_keyword_id_positive CHECK ((id >= 0))
);


ALTER TABLE public.ir_action_keyword OWNER TO gnuhealth;

--
-- Name: TABLE ir_action_keyword; Type: COMMENT; Schema: public; Owner: gnuhealth
--

COMMENT ON TABLE public.ir_action_keyword IS 'Action keyword';


--
-- Name: ir_action_report_id_seq; Type: SEQUENCE; Schema: public; Owner: gnuhealth
--

CREATE SEQUENCE public.ir_action_report_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_action_report_id_seq OWNER TO gnuhealth;

--
-- Name: ir_action_report; Type: TABLE; Schema: public; Owner: gnuhealth
--

CREATE TABLE public.ir_action_report (
    id integer DEFAULT nextval('public.ir_action_report_id_seq'::regclass) NOT NULL,
    action integer NOT NULL,
    create_date timestamp(6) without time zone,
    create_uid integer,
    direct_print boolean DEFAULT false,
    extension character varying,
    model character varying,
    module character varying,
    report character varying,
    report_content_custom bytea,
    report_name character varying NOT NULL,
    single boolean DEFAULT false,
    template_extension character varying NOT NULL,
    translatable boolean DEFAULT false,
    write_date timestamp(6) without time zone,
    write_uid integer,
    CONSTRAINT ir_action_report_id_positive CHECK ((id >= 0))
);


ALTER TABLE public.ir_action_report OWNER TO gnuhealth;

--
-- Name: TABLE ir_action_report; Type: COMMENT; Schema: public; Owner: gnuhealth
--

COMMENT ON TABLE public.ir_action_report IS 'Action report';


--
-- Name: ir_action_url_id_seq; Type: SEQUENCE; Schema: public; Owner: gnuhealth
--

CREATE SEQUENCE public.ir_action_url_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_action_url_id_seq OWNER TO gnuhealth;

--
-- Name: ir_action_url; Type: TABLE; Schema: public; Owner: gnuhealth
--

CREATE TABLE public.ir_action_url (
    id integer DEFAULT nextval('public.ir_action_url_id_seq'::regclass) NOT NULL,
    action integer NOT NULL,
    create_date timestamp(6) without time zone,
    create_uid integer,
    url character varying NOT NULL,
    write_date timestamp(6) without time zone,
    write_uid integer,
    CONSTRAINT ir_action_url_id_positive CHECK ((id >= 0))
);


ALTER TABLE public.ir_action_url OWNER TO gnuhealth;

--
-- Name: TABLE ir_action_url; Type: COMMENT; Schema: public; Owner: gnuhealth
--

COMMENT ON TABLE public.ir_action_url IS 'Action URL';


--
-- Name: ir_action_wizard_id_seq; Type: SEQUENCE; Schema: public; Owner: gnuhealth
--

CREATE SEQUENCE public.ir_action_wizard_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_action_wizard_id_seq OWNER TO gnuhealth;

--
-- Name: ir_action_wizard; Type: TABLE; Schema: public; Owner: gnuhealth
--

CREATE TABLE public.ir_action_wizard (
    id integer DEFAULT nextval('public.ir_action_wizard_id_seq'::regclass) NOT NULL,
    action integer NOT NULL,
    create_date timestamp(6) without time zone,
    create_uid integer,
    model character varying,
    "window" boolean DEFAULT false,
    wiz_name character varying NOT NULL,
    write_date timestamp(6) without time zone,
    write_uid integer,
    CONSTRAINT ir_action_wizard_id_positive CHECK ((id >= 0))
);


ALTER TABLE public.ir_action_wizard OWNER TO gnuhealth;

--
-- Name: TABLE ir_action_wizard; Type: COMMENT; Schema: public; Owner: gnuhealth
--

COMMENT ON TABLE public.ir_action_wizard IS 'Action wizard';


--
-- Name: ir_attachment_id_seq; Type: SEQUENCE; Schema: public; Owner: gnuhealth
--

CREATE SEQUENCE public.ir_attachment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_attachment_id_seq OWNER TO gnuhealth;

--
-- Name: ir_attachment; Type: TABLE; Schema: public; Owner: gnuhealth
--

CREATE TABLE public.ir_attachment (
    id integer DEFAULT nextval('public.ir_attachment_id_seq'::regclass) NOT NULL,
    copy_to_resources character varying,
    create_date timestamp(6) without time zone,
    create_uid integer,
    data bytea,
    description text,
    file_id character varying,
    link character varying,
    name character varying NOT NULL,
    resource character varying NOT NULL,
    type character varying NOT NULL,
    write_date timestamp(6) without time zone,
    write_uid integer,
    CONSTRAINT ir_attachment_id_positive CHECK ((id >= 0))
);


ALTER TABLE public.ir_attachment OWNER TO gnuhealth;

--
-- Name: TABLE ir_attachment; Type: COMMENT; Schema: public; Owner: gnuhealth
--

COMMENT ON TABLE public.ir_attachment IS 'Attachment';


--
-- Name: ir_avatar_id_seq; Type: SEQUENCE; Schema: public; Owner: gnuhealth
--

CREATE SEQUENCE public.ir_avatar_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_avatar_id_seq OWNER TO gnuhealth;

--
-- Name: ir_avatar; Type: TABLE; Schema: public; Owner: gnuhealth
--

CREATE TABLE public.ir_avatar (
    id integer DEFAULT nextval('public.ir_avatar_id_seq'::regclass) NOT NULL,
    copy_to_resources character varying,
    create_date timestamp(6) without time zone,
    create_uid integer,
    image bytea,
    image_id character varying,
    resource character varying NOT NULL,
    uuid character varying NOT NULL,
    write_date timestamp(6) without time zone,
    write_uid integer
);


ALTER TABLE public.ir_avatar OWNER TO gnuhealth;

--
-- Name: TABLE ir_avatar; Type: COMMENT; Schema: public; Owner: gnuhealth
--

COMMENT ON TABLE public.ir_avatar IS 'Avatar';


--
-- Name: ir_avatar_cache_id_seq; Type: SEQUENCE; Schema: public; Owner: gnuhealth
--

CREATE SEQUENCE public.ir_avatar_cache_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_avatar_cache_id_seq OWNER TO gnuhealth;

--
-- Name: ir_avatar_cache; Type: TABLE; Schema: public; Owner: gnuhealth
--

CREATE TABLE public.ir_avatar_cache (
    id integer DEFAULT nextval('public.ir_avatar_cache_id_seq'::regclass) NOT NULL,
    avatar integer NOT NULL,
    create_date timestamp(6) without time zone,
    create_uid integer,
    image bytea,
    image_id character varying,
    size integer NOT NULL,
    write_date timestamp(6) without time zone,
    write_uid integer
);


ALTER TABLE public.ir_avatar_cache OWNER TO gnuhealth;

--
-- Name: TABLE ir_avatar_cache; Type: COMMENT; Schema: public; Owner: gnuhealth
--

COMMENT ON TABLE public.ir_avatar_cache IS 'Avatar Cache';


--
-- Name: ir_cache_id_seq; Type: SEQUENCE; Schema: public; Owner: gnuhealth
--

CREATE SEQUENCE public.ir_cache_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_cache_id_seq OWNER TO gnuhealth;

--
-- Name: ir_cache; Type: TABLE; Schema: public; Owner: gnuhealth
--

CREATE TABLE public.ir_cache (
    id integer DEFAULT nextval('public.ir_cache_id_seq'::regclass) NOT NULL,
    name character varying NOT NULL,
    "timestamp" timestamp without time zone,
    create_date timestamp(6) without time zone,
    create_uid integer,
    write_date timestamp(6) without time zone,
    write_uid integer,
    CONSTRAINT ir_cache_id_positive CHECK ((id >= 0))
);


ALTER TABLE public.ir_cache OWNER TO gnuhealth;

--
-- Name: TABLE ir_cache; Type: COMMENT; Schema: public; Owner: gnuhealth
--

COMMENT ON TABLE public.ir_cache IS 'Cache';


--
-- Name: ir_calendar_day_id_seq; Type: SEQUENCE; Schema: public; Owner: gnuhealth
--

CREATE SEQUENCE public.ir_calendar_day_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_calendar_day_id_seq OWNER TO gnuhealth;

--
-- Name: ir_calendar_day; Type: TABLE; Schema: public; Owner: gnuhealth
--

CREATE TABLE public.ir_calendar_day (
    id integer DEFAULT nextval('public.ir_calendar_day_id_seq'::regclass) NOT NULL,
    abbreviation character varying NOT NULL,
    create_date timestamp(6) without time zone,
    create_uid integer,
    index integer NOT NULL,
    name character varying NOT NULL,
    write_date timestamp(6) without time zone,
    write_uid integer
);


ALTER TABLE public.ir_calendar_day OWNER TO gnuhealth;

--
-- Name: TABLE ir_calendar_day; Type: COMMENT; Schema: public; Owner: gnuhealth
--

COMMENT ON TABLE public.ir_calendar_day IS 'Day';


--
-- Name: ir_calendar_month_id_seq; Type: SEQUENCE; Schema: public; Owner: gnuhealth
--

CREATE SEQUENCE public.ir_calendar_month_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_calendar_month_id_seq OWNER TO gnuhealth;

--
-- Name: ir_calendar_month; Type: TABLE; Schema: public; Owner: gnuhealth
--

CREATE TABLE public.ir_calendar_month (
    id integer DEFAULT nextval('public.ir_calendar_month_id_seq'::regclass) NOT NULL,
    abbreviation character varying NOT NULL,
    create_date timestamp(6) without time zone,
    create_uid integer,
    index integer NOT NULL,
    name character varying NOT NULL,
    write_date timestamp(6) without time zone,
    write_uid integer
);


ALTER TABLE public.ir_calendar_month OWNER TO gnuhealth;

--
-- Name: TABLE ir_calendar_month; Type: COMMENT; Schema: public; Owner: gnuhealth
--

COMMENT ON TABLE public.ir_calendar_month IS 'Month';


--
-- Name: ir_configuration_id_seq; Type: SEQUENCE; Schema: public; Owner: gnuhealth
--

CREATE SEQUENCE public.ir_configuration_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_configuration_id_seq OWNER TO gnuhealth;

--
-- Name: ir_configuration; Type: TABLE; Schema: public; Owner: gnuhealth
--

CREATE TABLE public.ir_configuration (
    id integer DEFAULT nextval('public.ir_configuration_id_seq'::regclass) NOT NULL,
    language character varying,
    hostname character varying,
    create_date timestamp(6) without time zone,
    create_uid integer,
    write_date timestamp(6) without time zone,
    write_uid integer,
    CONSTRAINT ir_configuration_id_positive CHECK ((id >= 0))
);


ALTER TABLE public.ir_configuration OWNER TO gnuhealth;

--
-- Name: TABLE ir_configuration; Type: COMMENT; Schema: public; Owner: gnuhealth
--

COMMENT ON TABLE public.ir_configuration IS 'Configuration';


--
-- Name: ir_cron_id_seq; Type: SEQUENCE; Schema: public; Owner: gnuhealth
--

CREATE SEQUENCE public.ir_cron_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_cron_id_seq OWNER TO gnuhealth;

--
-- Name: ir_cron; Type: TABLE; Schema: public; Owner: gnuhealth
--

CREATE TABLE public.ir_cron (
    id integer DEFAULT nextval('public.ir_cron_id_seq'::regclass) NOT NULL,
    active boolean DEFAULT false,
    create_date timestamp(6) without time zone,
    create_uid integer,
    day integer,
    hour integer,
    interval_number integer NOT NULL,
    interval_type character varying NOT NULL,
    method character varying NOT NULL,
    minute integer,
    next_call timestamp(0) without time zone,
    weekday integer,
    write_date timestamp(6) without time zone,
    write_uid integer,
    CONSTRAINT ir_cron_id_positive CHECK ((id >= 0))
);


ALTER TABLE public.ir_cron OWNER TO gnuhealth;

--
-- Name: TABLE ir_cron; Type: COMMENT; Schema: public; Owner: gnuhealth
--

COMMENT ON TABLE public.ir_cron IS 'Cron';


--
-- Name: ir_email_id_seq; Type: SEQUENCE; Schema: public; Owner: gnuhealth
--

CREATE SEQUENCE public.ir_email_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_email_id_seq OWNER TO gnuhealth;

--
-- Name: ir_email; Type: TABLE; Schema: public; Owner: gnuhealth
--

CREATE TABLE public.ir_email (
    id integer DEFAULT nextval('public.ir_email_id_seq'::regclass) NOT NULL,
    body text,
    create_date timestamp(6) without time zone,
    create_uid integer,
    recipients character varying,
    recipients_hidden character varying,
    recipients_secondary character varying,
    resource character varying NOT NULL,
    subject character varying,
    write_date timestamp(6) without time zone,
    write_uid integer,
    CONSTRAINT ir_email_id_positive CHECK ((id >= 0))
);


ALTER TABLE public.ir_email OWNER TO gnuhealth;

--
-- Name: TABLE ir_email; Type: COMMENT; Schema: public; Owner: gnuhealth
--

COMMENT ON TABLE public.ir_email IS 'Email';


--
-- Name: ir_email_address_id_seq; Type: SEQUENCE; Schema: public; Owner: gnuhealth
--

CREATE SEQUENCE public.ir_email_address_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_email_address_id_seq OWNER TO gnuhealth;

--
-- Name: ir_email_address; Type: TABLE; Schema: public; Owner: gnuhealth
--

CREATE TABLE public.ir_email_address (
    id integer DEFAULT nextval('public.ir_email_address_id_seq'::regclass) NOT NULL,
    address character varying NOT NULL,
    create_date timestamp(6) without time zone,
    create_uid integer,
    email integer NOT NULL,
    write_date timestamp(6) without time zone,
    write_uid integer,
    CONSTRAINT ir_email_address_id_positive CHECK ((id >= 0))
);


ALTER TABLE public.ir_email_address OWNER TO gnuhealth;

--
-- Name: TABLE ir_email_address; Type: COMMENT; Schema: public; Owner: gnuhealth
--

COMMENT ON TABLE public.ir_email_address IS 'Email Address';


--
-- Name: ir_email_template_id_seq; Type: SEQUENCE; Schema: public; Owner: gnuhealth
--

CREATE SEQUENCE public.ir_email_template_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_email_template_id_seq OWNER TO gnuhealth;

--
-- Name: ir_email_template; Type: TABLE; Schema: public; Owner: gnuhealth
--

CREATE TABLE public.ir_email_template (
    id integer DEFAULT nextval('public.ir_email_template_id_seq'::regclass) NOT NULL,
    body text,
    create_date timestamp(6) without time zone,
    create_uid integer,
    model integer NOT NULL,
    name character varying NOT NULL,
    recipients integer,
    recipients_hidden integer,
    recipients_hidden_pyson character varying,
    recipients_pyson character varying,
    recipients_secondary integer,
    recipients_secondary_pyson character varying,
    subject character varying,
    write_date timestamp(6) without time zone,
    write_uid integer,
    CONSTRAINT ir_email_template_id_positive CHECK ((id >= 0))
);


ALTER TABLE public.ir_email_template OWNER TO gnuhealth;

--
-- Name: TABLE ir_email_template; Type: COMMENT; Schema: public; Owner: gnuhealth
--

COMMENT ON TABLE public.ir_email_template IS 'Email Template';


--
-- Name: ir_email_template-ir_action_report_id_seq; Type: SEQUENCE; Schema: public; Owner: gnuhealth
--

CREATE SEQUENCE public."ir_email_template-ir_action_report_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."ir_email_template-ir_action_report_id_seq" OWNER TO gnuhealth;

--
-- Name: ir_email_template-ir_action_report; Type: TABLE; Schema: public; Owner: gnuhealth
--

CREATE TABLE public."ir_email_template-ir_action_report" (
    id integer DEFAULT nextval('public."ir_email_template-ir_action_report_id_seq"'::regclass) NOT NULL,
    create_date timestamp(6) without time zone,
    create_uid integer,
    report integer NOT NULL,
    template integer NOT NULL,
    write_date timestamp(6) without time zone,
    write_uid integer,
    CONSTRAINT "ir_email_template-ir_action_report_id_positive" CHECK ((id >= 0))
);


ALTER TABLE public."ir_email_template-ir_action_report" OWNER TO gnuhealth;

--
-- Name: TABLE "ir_email_template-ir_action_report"; Type: COMMENT; Schema: public; Owner: gnuhealth
--

COMMENT ON TABLE public."ir_email_template-ir_action_report" IS 'Email Template - Report';


--
-- Name: ir_export_id_seq; Type: SEQUENCE; Schema: public; Owner: gnuhealth
--

CREATE SEQUENCE public.ir_export_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_export_id_seq OWNER TO gnuhealth;

--
-- Name: ir_export; Type: TABLE; Schema: public; Owner: gnuhealth
--

CREATE TABLE public.ir_export (
    id integer DEFAULT nextval('public.ir_export_id_seq'::regclass) NOT NULL,
    create_date timestamp(6) without time zone,
    create_uid integer,
    name character varying,
    resource character varying,
    write_date timestamp(6) without time zone,
    write_uid integer,
    CONSTRAINT ir_export_id_positive CHECK ((id >= 0))
);


ALTER TABLE public.ir_export OWNER TO gnuhealth;

--
-- Name: TABLE ir_export; Type: COMMENT; Schema: public; Owner: gnuhealth
--

COMMENT ON TABLE public.ir_export IS 'Export';


--
-- Name: ir_export-res_group_id_seq; Type: SEQUENCE; Schema: public; Owner: gnuhealth
--

CREATE SEQUENCE public."ir_export-res_group_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."ir_export-res_group_id_seq" OWNER TO gnuhealth;

--
-- Name: ir_export-res_group; Type: TABLE; Schema: public; Owner: gnuhealth
--

CREATE TABLE public."ir_export-res_group" (
    id integer DEFAULT nextval('public."ir_export-res_group_id_seq"'::regclass) NOT NULL,
    create_date timestamp(6) without time zone,
    create_uid integer,
    export integer NOT NULL,
    "group" integer NOT NULL,
    write_date timestamp(6) without time zone,
    write_uid integer,
    CONSTRAINT "ir_export-res_group_id_positive" CHECK ((id >= 0))
);


ALTER TABLE public."ir_export-res_group" OWNER TO gnuhealth;

--
-- Name: TABLE "ir_export-res_group"; Type: COMMENT; Schema: public; Owner: gnuhealth
--

COMMENT ON TABLE public."ir_export-res_group" IS 'Export Group';


--
-- Name: ir_export-write-res_group_id_seq; Type: SEQUENCE; Schema: public; Owner: gnuhealth
--

CREATE SEQUENCE public."ir_export-write-res_group_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."ir_export-write-res_group_id_seq" OWNER TO gnuhealth;

--
-- Name: ir_export-write-res_group; Type: TABLE; Schema: public; Owner: gnuhealth
--

CREATE TABLE public."ir_export-write-res_group" (
    id integer DEFAULT nextval('public."ir_export-write-res_group_id_seq"'::regclass) NOT NULL,
    create_date timestamp(6) without time zone,
    create_uid integer,
    export integer NOT NULL,
    "group" integer NOT NULL,
    write_date timestamp(6) without time zone,
    write_uid integer,
    CONSTRAINT "ir_export-write-res_group_id_positive" CHECK ((id >= 0))
);


ALTER TABLE public."ir_export-write-res_group" OWNER TO gnuhealth;

--
-- Name: TABLE "ir_export-write-res_group"; Type: COMMENT; Schema: public; Owner: gnuhealth
--

COMMENT ON TABLE public."ir_export-write-res_group" IS 'Export Modification Group';


--
-- Name: ir_export_line_id_seq; Type: SEQUENCE; Schema: public; Owner: gnuhealth
--

CREATE SEQUENCE public.ir_export_line_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_export_line_id_seq OWNER TO gnuhealth;

--
-- Name: ir_export_line; Type: TABLE; Schema: public; Owner: gnuhealth
--

CREATE TABLE public.ir_export_line (
    id integer DEFAULT nextval('public.ir_export_line_id_seq'::regclass) NOT NULL,
    create_date timestamp(6) without time zone,
    create_uid integer,
    export integer NOT NULL,
    name character varying,
    write_date timestamp(6) without time zone,
    write_uid integer,
    CONSTRAINT ir_export_line_id_positive CHECK ((id >= 0))
);


ALTER TABLE public.ir_export_line OWNER TO gnuhealth;

--
-- Name: TABLE ir_export_line; Type: COMMENT; Schema: public; Owner: gnuhealth
--

COMMENT ON TABLE public.ir_export_line IS 'Export line';


--
-- Name: ir_lang_id_seq; Type: SEQUENCE; Schema: public; Owner: gnuhealth
--

CREATE SEQUENCE public.ir_lang_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_lang_id_seq OWNER TO gnuhealth;

--
-- Name: ir_lang; Type: TABLE; Schema: public; Owner: gnuhealth
--

CREATE TABLE public.ir_lang (
    id integer DEFAULT nextval('public.ir_lang_id_seq'::regclass) NOT NULL,
    name character varying NOT NULL,
    code character varying NOT NULL,
    translatable boolean DEFAULT false,
    parent character varying,
    active boolean DEFAULT false,
    direction character varying NOT NULL,
    am character varying,
    create_date timestamp(6) without time zone,
    create_uid integer,
    date character varying NOT NULL,
    decimal_point character varying NOT NULL,
    "grouping" character varying NOT NULL,
    mon_decimal_point character varying NOT NULL,
    mon_grouping character varying NOT NULL,
    mon_thousands_sep character varying,
    n_cs_precedes boolean DEFAULT false,
    n_sep_by_space boolean DEFAULT false,
    n_sign_posn integer NOT NULL,
    negative_sign character varying,
    p_cs_precedes boolean DEFAULT false,
    p_sep_by_space boolean DEFAULT false,
    p_sign_posn integer NOT NULL,
    pg_text_search character varying,
    pm character varying,
    positive_sign character varying,
    thousands_sep character varying,
    write_date timestamp(6) without time zone,
    write_uid integer,
    CONSTRAINT ir_lang_check_decimal_point_thousands_sep CHECK (((decimal_point)::text <> (thousands_sep)::text)),
    CONSTRAINT ir_lang_id_positive CHECK ((id >= 0))
);


ALTER TABLE public.ir_lang OWNER TO gnuhealth;

--
-- Name: TABLE ir_lang; Type: COMMENT; Schema: public; Owner: gnuhealth
--

COMMENT ON TABLE public.ir_lang IS 'Language';


--
-- Name: ir_message_id_seq; Type: SEQUENCE; Schema: public; Owner: gnuhealth
--

CREATE SEQUENCE public.ir_message_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_message_id_seq OWNER TO gnuhealth;

--
-- Name: ir_message; Type: TABLE; Schema: public; Owner: gnuhealth
--

CREATE TABLE public.ir_message (
    id integer DEFAULT nextval('public.ir_message_id_seq'::regclass) NOT NULL,
    create_date timestamp(6) without time zone,
    create_uid integer,
    text text NOT NULL,
    write_date timestamp(6) without time zone,
    write_uid integer,
    CONSTRAINT ir_message_id_positive CHECK ((id >= 0))
);


ALTER TABLE public.ir_message OWNER TO gnuhealth;

--
-- Name: TABLE ir_message; Type: COMMENT; Schema: public; Owner: gnuhealth
--

COMMENT ON TABLE public.ir_message IS 'Message';


--
-- Name: ir_model_id_seq; Type: SEQUENCE; Schema: public; Owner: gnuhealth
--

CREATE SEQUENCE public.ir_model_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_model_id_seq OWNER TO gnuhealth;

--
-- Name: ir_model; Type: TABLE; Schema: public; Owner: gnuhealth
--

CREATE TABLE public.ir_model (
    id integer DEFAULT nextval('public.ir_model_id_seq'::regclass) NOT NULL,
    model character varying NOT NULL,
    name character varying,
    info text,
    module character varying,
    create_date timestamp(6) without time zone,
    create_uid integer,
    global_search_p boolean DEFAULT false,
    write_date timestamp(6) without time zone,
    write_uid integer,
    CONSTRAINT ir_model_id_positive CHECK ((id >= 0))
);


ALTER TABLE public.ir_model OWNER TO gnuhealth;

--
-- Name: TABLE ir_model; Type: COMMENT; Schema: public; Owner: gnuhealth
--

COMMENT ON TABLE public.ir_model IS 'Model';


--
-- Name: ir_model_access_id_seq; Type: SEQUENCE; Schema: public; Owner: gnuhealth
--

CREATE SEQUENCE public.ir_model_access_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_model_access_id_seq OWNER TO gnuhealth;

--
-- Name: ir_model_access; Type: TABLE; Schema: public; Owner: gnuhealth
--

CREATE TABLE public.ir_model_access (
    id integer DEFAULT nextval('public.ir_model_access_id_seq'::regclass) NOT NULL,
    active boolean DEFAULT false,
    create_date timestamp(6) without time zone,
    create_uid integer,
    description text,
    "group" integer,
    model integer NOT NULL,
    perm_create boolean DEFAULT false,
    perm_delete boolean DEFAULT false,
    perm_read boolean DEFAULT false,
    perm_write boolean DEFAULT false,
    write_date timestamp(6) without time zone,
    write_uid integer,
    CONSTRAINT ir_model_access_id_positive CHECK ((id >= 0))
);


ALTER TABLE public.ir_model_access OWNER TO gnuhealth;

--
-- Name: TABLE ir_model_access; Type: COMMENT; Schema: public; Owner: gnuhealth
--

COMMENT ON TABLE public.ir_model_access IS 'Model access';


--
-- Name: ir_model_button_id_seq; Type: SEQUENCE; Schema: public; Owner: gnuhealth
--

CREATE SEQUENCE public.ir_model_button_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_model_button_id_seq OWNER TO gnuhealth;

--
-- Name: ir_model_button; Type: TABLE; Schema: public; Owner: gnuhealth
--

CREATE TABLE public.ir_model_button (
    id integer DEFAULT nextval('public.ir_model_button_id_seq'::regclass) NOT NULL,
    confirm text,
    create_date timestamp(6) without time zone,
    create_uid integer,
    help text,
    model integer NOT NULL,
    name character varying NOT NULL,
    string character varying,
    write_date timestamp(6) without time zone,
    write_uid integer,
    CONSTRAINT ir_model_button_id_positive CHECK ((id >= 0))
);


ALTER TABLE public.ir_model_button OWNER TO gnuhealth;

--
-- Name: TABLE ir_model_button; Type: COMMENT; Schema: public; Owner: gnuhealth
--

COMMENT ON TABLE public.ir_model_button IS 'Model Button';


--
-- Name: ir_model_button-button_reset_id_seq; Type: SEQUENCE; Schema: public; Owner: gnuhealth
--

CREATE SEQUENCE public."ir_model_button-button_reset_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."ir_model_button-button_reset_id_seq" OWNER TO gnuhealth;

--
-- Name: ir_model_button-button_reset; Type: TABLE; Schema: public; Owner: gnuhealth
--

CREATE TABLE public."ir_model_button-button_reset" (
    id integer DEFAULT nextval('public."ir_model_button-button_reset_id_seq"'::regclass) NOT NULL,
    button integer NOT NULL,
    button_ruled integer NOT NULL,
    create_date timestamp(6) without time zone,
    create_uid integer,
    write_date timestamp(6) without time zone,
    write_uid integer,
    CONSTRAINT "ir_model_button-button_reset_id_positive" CHECK ((id >= 0))
);


ALTER TABLE public."ir_model_button-button_reset" OWNER TO gnuhealth;

--
-- Name: TABLE "ir_model_button-button_reset"; Type: COMMENT; Schema: public; Owner: gnuhealth
--

COMMENT ON TABLE public."ir_model_button-button_reset" IS 'Model Button Reset';


--
-- Name: ir_model_button-res_group_id_seq; Type: SEQUENCE; Schema: public; Owner: gnuhealth
--

CREATE SEQUENCE public."ir_model_button-res_group_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."ir_model_button-res_group_id_seq" OWNER TO gnuhealth;

--
-- Name: ir_model_button-res_group; Type: TABLE; Schema: public; Owner: gnuhealth
--

CREATE TABLE public."ir_model_button-res_group" (
    id integer DEFAULT nextval('public."ir_model_button-res_group_id_seq"'::regclass) NOT NULL,
    active boolean DEFAULT false,
    button integer NOT NULL,
    create_date timestamp(6) without time zone,
    create_uid integer,
    "group" integer NOT NULL,
    write_date timestamp(6) without time zone,
    write_uid integer,
    CONSTRAINT "ir_model_button-res_group_id_positive" CHECK ((id >= 0))
);


ALTER TABLE public."ir_model_button-res_group" OWNER TO gnuhealth;

--
-- Name: TABLE "ir_model_button-res_group"; Type: COMMENT; Schema: public; Owner: gnuhealth
--

COMMENT ON TABLE public."ir_model_button-res_group" IS 'Model Button - Group';


--
-- Name: ir_model_button_click_id_seq; Type: SEQUENCE; Schema: public; Owner: gnuhealth
--

CREATE SEQUENCE public.ir_model_button_click_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_model_button_click_id_seq OWNER TO gnuhealth;

--
-- Name: ir_model_button_click; Type: TABLE; Schema: public; Owner: gnuhealth
--

CREATE TABLE public.ir_model_button_click (
    id integer DEFAULT nextval('public.ir_model_button_click_id_seq'::regclass) NOT NULL,
    active boolean DEFAULT false,
    button integer NOT NULL,
    create_date timestamp(6) without time zone,
    create_uid integer,
    record_id integer NOT NULL,
    write_date timestamp(6) without time zone,
    write_uid integer,
    "user" integer,
    CONSTRAINT ir_model_button_click_id_positive CHECK ((id >= 0))
);


ALTER TABLE public.ir_model_button_click OWNER TO gnuhealth;

--
-- Name: TABLE ir_model_button_click; Type: COMMENT; Schema: public; Owner: gnuhealth
--

COMMENT ON TABLE public.ir_model_button_click IS 'Model Button Click';


--
-- Name: ir_model_button_rule_id_seq; Type: SEQUENCE; Schema: public; Owner: gnuhealth
--

CREATE SEQUENCE public.ir_model_button_rule_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_model_button_rule_id_seq OWNER TO gnuhealth;

--
-- Name: ir_model_button_rule; Type: TABLE; Schema: public; Owner: gnuhealth
--

CREATE TABLE public.ir_model_button_rule (
    id integer DEFAULT nextval('public.ir_model_button_rule_id_seq'::regclass) NOT NULL,
    button integer NOT NULL,
    condition character varying,
    create_date timestamp(6) without time zone,
    create_uid integer,
    description character varying,
    number_user integer NOT NULL,
    write_date timestamp(6) without time zone,
    write_uid integer,
    "group" integer,
    CONSTRAINT ir_model_button_rule_id_positive CHECK ((id >= 0))
);


ALTER TABLE public.ir_model_button_rule OWNER TO gnuhealth;

--
-- Name: TABLE ir_model_button_rule; Type: COMMENT; Schema: public; Owner: gnuhealth
--

COMMENT ON TABLE public.ir_model_button_rule IS 'Model Button Rule';


--
-- Name: ir_model_data_id_seq; Type: SEQUENCE; Schema: public; Owner: gnuhealth
--

CREATE SEQUENCE public.ir_model_data_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_model_data_id_seq OWNER TO gnuhealth;

--
-- Name: ir_model_data; Type: TABLE; Schema: public; Owner: gnuhealth
--

CREATE TABLE public.ir_model_data (
    id integer DEFAULT nextval('public.ir_model_data_id_seq'::regclass) NOT NULL,
    create_date timestamp(6) without time zone,
    create_uid integer,
    db_id integer,
    fs_id character varying NOT NULL,
    fs_values text,
    model character varying NOT NULL,
    module character varying NOT NULL,
    noupdate boolean DEFAULT false,
    "values" text,
    write_date timestamp(6) without time zone,
    write_uid integer
);


ALTER TABLE public.ir_model_data OWNER TO gnuhealth;

--
-- Name: TABLE ir_model_data; Type: COMMENT; Schema: public; Owner: gnuhealth
--

COMMENT ON TABLE public.ir_model_data IS 'Model data';


--
-- Name: ir_model_field_id_seq; Type: SEQUENCE; Schema: public; Owner: gnuhealth
--

CREATE SEQUENCE public.ir_model_field_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_model_field_id_seq OWNER TO gnuhealth;

--
-- Name: ir_model_field; Type: TABLE; Schema: public; Owner: gnuhealth
--

CREATE TABLE public.ir_model_field (
    id integer DEFAULT nextval('public.ir_model_field_id_seq'::regclass) NOT NULL,
    model integer NOT NULL,
    name character varying NOT NULL,
    relation character varying,
    field_description character varying,
    ttype character varying,
    help text,
    module character varying,
    access boolean DEFAULT false,
    create_date timestamp(6) without time zone,
    create_uid integer,
    write_date timestamp(6) without time zone,
    write_uid integer,
    CONSTRAINT ir_model_field_id_positive CHECK ((id >= 0))
);


ALTER TABLE public.ir_model_field OWNER TO gnuhealth;

--
-- Name: TABLE ir_model_field; Type: COMMENT; Schema: public; Owner: gnuhealth
--

COMMENT ON TABLE public.ir_model_field IS 'Model field';


--
-- Name: ir_model_field_access_id_seq; Type: SEQUENCE; Schema: public; Owner: gnuhealth
--

CREATE SEQUENCE public.ir_model_field_access_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_model_field_access_id_seq OWNER TO gnuhealth;

--
-- Name: ir_model_field_access; Type: TABLE; Schema: public; Owner: gnuhealth
--

CREATE TABLE public.ir_model_field_access (
    id integer DEFAULT nextval('public.ir_model_field_access_id_seq'::regclass) NOT NULL,
    active boolean DEFAULT false,
    create_date timestamp(6) without time zone,
    create_uid integer,
    description text,
    field integer NOT NULL,
    "group" integer,
    perm_create boolean DEFAULT false,
    perm_delete boolean DEFAULT false,
    perm_read boolean DEFAULT false,
    perm_write boolean DEFAULT false,
    write_date timestamp(6) without time zone,
    write_uid integer,
    CONSTRAINT ir_model_field_access_id_positive CHECK ((id >= 0))
);


ALTER TABLE public.ir_model_field_access OWNER TO gnuhealth;

--
-- Name: TABLE ir_model_field_access; Type: COMMENT; Schema: public; Owner: gnuhealth
--

COMMENT ON TABLE public.ir_model_field_access IS 'Model Field Access';


--
-- Name: ir_module_id_seq; Type: SEQUENCE; Schema: public; Owner: gnuhealth
--

CREATE SEQUENCE public.ir_module_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_module_id_seq OWNER TO gnuhealth;

--
-- Name: ir_module; Type: TABLE; Schema: public; Owner: gnuhealth
--

CREATE TABLE public.ir_module (
    id integer DEFAULT nextval('public.ir_module_id_seq'::regclass) NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_date timestamp without time zone,
    write_uid integer,
    name character varying NOT NULL,
    state character varying
);


ALTER TABLE public.ir_module OWNER TO gnuhealth;

--
-- Name: TABLE ir_module; Type: COMMENT; Schema: public; Owner: gnuhealth
--

COMMENT ON TABLE public.ir_module IS 'Module';


--
-- Name: ir_module_config_wizard_item_id_seq; Type: SEQUENCE; Schema: public; Owner: gnuhealth
--

CREATE SEQUENCE public.ir_module_config_wizard_item_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_module_config_wizard_item_id_seq OWNER TO gnuhealth;

--
-- Name: ir_module_config_wizard_item; Type: TABLE; Schema: public; Owner: gnuhealth
--

CREATE TABLE public.ir_module_config_wizard_item (
    id integer DEFAULT nextval('public.ir_module_config_wizard_item_id_seq'::regclass) NOT NULL,
    action integer NOT NULL,
    create_date timestamp(6) without time zone,
    create_uid integer,
    sequence integer,
    state character varying NOT NULL,
    write_date timestamp(6) without time zone,
    write_uid integer,
    CONSTRAINT ir_module_config_wizard_item_id_positive CHECK ((id >= 0))
);


ALTER TABLE public.ir_module_config_wizard_item OWNER TO gnuhealth;

--
-- Name: TABLE ir_module_config_wizard_item; Type: COMMENT; Schema: public; Owner: gnuhealth
--

COMMENT ON TABLE public.ir_module_config_wizard_item IS 'Config wizard to run after activating a module';


--
-- Name: ir_module_dependency_id_seq; Type: SEQUENCE; Schema: public; Owner: gnuhealth
--

CREATE SEQUENCE public.ir_module_dependency_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_module_dependency_id_seq OWNER TO gnuhealth;

--
-- Name: ir_module_dependency; Type: TABLE; Schema: public; Owner: gnuhealth
--

CREATE TABLE public.ir_module_dependency (
    id integer DEFAULT nextval('public.ir_module_dependency_id_seq'::regclass) NOT NULL,
    create_uid integer,
    create_date timestamp without time zone,
    write_date timestamp without time zone,
    write_uid integer,
    name character varying,
    module integer NOT NULL,
    CONSTRAINT ir_module_dependency_id_positive CHECK ((id >= 0))
);


ALTER TABLE public.ir_module_dependency OWNER TO gnuhealth;

--
-- Name: TABLE ir_module_dependency; Type: COMMENT; Schema: public; Owner: gnuhealth
--

COMMENT ON TABLE public.ir_module_dependency IS 'Module dependency';


--
-- Name: ir_note_id_seq; Type: SEQUENCE; Schema: public; Owner: gnuhealth
--

CREATE SEQUENCE public.ir_note_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_note_id_seq OWNER TO gnuhealth;

--
-- Name: ir_note; Type: TABLE; Schema: public; Owner: gnuhealth
--

CREATE TABLE public.ir_note (
    id integer DEFAULT nextval('public.ir_note_id_seq'::regclass) NOT NULL,
    copy_to_resources character varying,
    create_date timestamp(6) without time zone,
    create_uid integer,
    message text,
    resource character varying NOT NULL,
    write_date timestamp(6) without time zone,
    write_uid integer,
    CONSTRAINT ir_note_id_positive CHECK ((id >= 0))
);


ALTER TABLE public.ir_note OWNER TO gnuhealth;

--
-- Name: TABLE ir_note; Type: COMMENT; Schema: public; Owner: gnuhealth
--

COMMENT ON TABLE public.ir_note IS 'Note';


--
-- Name: ir_note_read_id_seq; Type: SEQUENCE; Schema: public; Owner: gnuhealth
--

CREATE SEQUENCE public.ir_note_read_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_note_read_id_seq OWNER TO gnuhealth;

--
-- Name: ir_note_read; Type: TABLE; Schema: public; Owner: gnuhealth
--

CREATE TABLE public.ir_note_read (
    id integer DEFAULT nextval('public.ir_note_read_id_seq'::regclass) NOT NULL,
    create_date timestamp(6) without time zone,
    create_uid integer,
    note integer NOT NULL,
    "user" integer NOT NULL,
    write_date timestamp(6) without time zone,
    write_uid integer,
    CONSTRAINT ir_note_read_id_positive CHECK ((id >= 0))
);


ALTER TABLE public.ir_note_read OWNER TO gnuhealth;

--
-- Name: TABLE ir_note_read; Type: COMMENT; Schema: public; Owner: gnuhealth
--

COMMENT ON TABLE public.ir_note_read IS 'Note Read';


--
-- Name: ir_queue_id_seq; Type: SEQUENCE; Schema: public; Owner: gnuhealth
--

CREATE SEQUENCE public.ir_queue_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_queue_id_seq OWNER TO gnuhealth;

--
-- Name: ir_queue; Type: TABLE; Schema: public; Owner: gnuhealth
--

CREATE TABLE public.ir_queue (
    id integer DEFAULT nextval('public.ir_queue_id_seq'::regclass) NOT NULL,
    create_date timestamp(6) without time zone,
    create_uid integer,
    data text,
    dequeued_at timestamp(6) without time zone,
    enqueued_at timestamp(6) without time zone NOT NULL,
    expected_at timestamp(6) without time zone,
    finished_at timestamp(6) without time zone,
    name character varying NOT NULL,
    scheduled_at timestamp(6) without time zone,
    write_date timestamp(6) without time zone,
    write_uid integer,
    CONSTRAINT ir_queue_id_positive CHECK ((id >= 0))
);


ALTER TABLE public.ir_queue OWNER TO gnuhealth;

--
-- Name: TABLE ir_queue; Type: COMMENT; Schema: public; Owner: gnuhealth
--

COMMENT ON TABLE public.ir_queue IS 'Queue';


--
-- Name: ir_rule_id_seq; Type: SEQUENCE; Schema: public; Owner: gnuhealth
--

CREATE SEQUENCE public.ir_rule_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_rule_id_seq OWNER TO gnuhealth;

--
-- Name: ir_rule; Type: TABLE; Schema: public; Owner: gnuhealth
--

CREATE TABLE public.ir_rule (
    id integer DEFAULT nextval('public.ir_rule_id_seq'::regclass) NOT NULL,
    create_date timestamp(6) without time zone,
    create_uid integer,
    domain character varying NOT NULL,
    rule_group integer NOT NULL,
    write_date timestamp(6) without time zone,
    write_uid integer,
    CONSTRAINT ir_rule_id_positive CHECK ((id >= 0))
);


ALTER TABLE public.ir_rule OWNER TO gnuhealth;

--
-- Name: TABLE ir_rule; Type: COMMENT; Schema: public; Owner: gnuhealth
--

COMMENT ON TABLE public.ir_rule IS 'Rule';


--
-- Name: ir_rule_group_id_seq; Type: SEQUENCE; Schema: public; Owner: gnuhealth
--

CREATE SEQUENCE public.ir_rule_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_rule_group_id_seq OWNER TO gnuhealth;

--
-- Name: ir_rule_group; Type: TABLE; Schema: public; Owner: gnuhealth
--

CREATE TABLE public.ir_rule_group (
    id integer DEFAULT nextval('public.ir_rule_group_id_seq'::regclass) NOT NULL,
    create_date timestamp(6) without time zone,
    create_uid integer,
    default_p boolean DEFAULT false,
    global_p boolean DEFAULT false,
    model integer NOT NULL,
    name character varying NOT NULL,
    perm_create boolean DEFAULT false,
    perm_delete boolean DEFAULT false,
    perm_read boolean DEFAULT false,
    perm_write boolean DEFAULT false,
    write_date timestamp(6) without time zone,
    write_uid integer,
    CONSTRAINT ir_rule_group_global_default_exclusive CHECK (((global_p = false) OR (default_p = false))),
    CONSTRAINT ir_rule_group_id_positive CHECK ((id >= 0))
);


ALTER TABLE public.ir_rule_group OWNER TO gnuhealth;

--
-- Name: TABLE ir_rule_group; Type: COMMENT; Schema: public; Owner: gnuhealth
--

COMMENT ON TABLE public.ir_rule_group IS 'Rule group';


--
-- Name: ir_rule_group-res_group_id_seq; Type: SEQUENCE; Schema: public; Owner: gnuhealth
--

CREATE SEQUENCE public."ir_rule_group-res_group_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."ir_rule_group-res_group_id_seq" OWNER TO gnuhealth;

--
-- Name: ir_rule_group-res_group; Type: TABLE; Schema: public; Owner: gnuhealth
--

CREATE TABLE public."ir_rule_group-res_group" (
    id integer DEFAULT nextval('public."ir_rule_group-res_group_id_seq"'::regclass) NOT NULL,
    create_date timestamp(6) without time zone,
    create_uid integer,
    "group" integer NOT NULL,
    rule_group integer NOT NULL,
    write_date timestamp(6) without time zone,
    write_uid integer,
    CONSTRAINT "ir_rule_group-res_group_id_positive" CHECK ((id >= 0))
);


ALTER TABLE public."ir_rule_group-res_group" OWNER TO gnuhealth;

--
-- Name: TABLE "ir_rule_group-res_group"; Type: COMMENT; Schema: public; Owner: gnuhealth
--

COMMENT ON TABLE public."ir_rule_group-res_group" IS 'Rule Group - Group';


--
-- Name: ir_sequence_id_seq; Type: SEQUENCE; Schema: public; Owner: gnuhealth
--

CREATE SEQUENCE public.ir_sequence_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_sequence_id_seq OWNER TO gnuhealth;

--
-- Name: ir_sequence; Type: TABLE; Schema: public; Owner: gnuhealth
--

CREATE TABLE public.ir_sequence (
    id integer DEFAULT nextval('public.ir_sequence_id_seq'::regclass) NOT NULL,
    active boolean DEFAULT false,
    create_date timestamp(6) without time zone,
    create_uid integer,
    last_timestamp integer,
    name character varying NOT NULL,
    number_increment integer,
    number_next_internal integer,
    padding integer,
    prefix character varying,
    sequence_type integer NOT NULL,
    suffix character varying,
    timestamp_offset double precision NOT NULL,
    timestamp_rounding double precision NOT NULL,
    type character varying,
    write_date timestamp(6) without time zone,
    write_uid integer,
    CONSTRAINT ir_sequence_check_timestamp_rounding CHECK ((timestamp_rounding > (0)::double precision)),
    CONSTRAINT ir_sequence_id_positive CHECK ((id >= 0))
);


ALTER TABLE public.ir_sequence OWNER TO gnuhealth;

--
-- Name: TABLE ir_sequence; Type: COMMENT; Schema: public; Owner: gnuhealth
--

COMMENT ON TABLE public.ir_sequence IS 'Sequence';


--
-- Name: ir_sequence_strict_id_seq; Type: SEQUENCE; Schema: public; Owner: gnuhealth
--

CREATE SEQUENCE public.ir_sequence_strict_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_sequence_strict_id_seq OWNER TO gnuhealth;

--
-- Name: ir_sequence_strict; Type: TABLE; Schema: public; Owner: gnuhealth
--

CREATE TABLE public.ir_sequence_strict (
    id integer DEFAULT nextval('public.ir_sequence_strict_id_seq'::regclass) NOT NULL,
    active boolean DEFAULT false,
    create_date timestamp(6) without time zone,
    create_uid integer,
    last_timestamp integer,
    name character varying NOT NULL,
    number_increment integer,
    number_next_internal integer,
    padding integer,
    prefix character varying,
    sequence_type integer NOT NULL,
    suffix character varying,
    timestamp_offset double precision NOT NULL,
    timestamp_rounding double precision NOT NULL,
    type character varying,
    write_date timestamp(6) without time zone,
    write_uid integer,
    CONSTRAINT ir_sequence_strict_check_timestamp_rounding CHECK ((timestamp_rounding > (0)::double precision)),
    CONSTRAINT ir_sequence_strict_id_positive CHECK ((id >= 0))
);


ALTER TABLE public.ir_sequence_strict OWNER TO gnuhealth;

--
-- Name: TABLE ir_sequence_strict; Type: COMMENT; Schema: public; Owner: gnuhealth
--

COMMENT ON TABLE public.ir_sequence_strict IS 'Sequence Strict';


--
-- Name: ir_sequence_type_id_seq; Type: SEQUENCE; Schema: public; Owner: gnuhealth
--

CREATE SEQUENCE public.ir_sequence_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_sequence_type_id_seq OWNER TO gnuhealth;

--
-- Name: ir_sequence_type; Type: TABLE; Schema: public; Owner: gnuhealth
--

CREATE TABLE public.ir_sequence_type (
    id integer DEFAULT nextval('public.ir_sequence_type_id_seq'::regclass) NOT NULL,
    create_date timestamp(6) without time zone,
    create_uid integer,
    name character varying NOT NULL,
    write_date timestamp(6) without time zone,
    write_uid integer,
    CONSTRAINT ir_sequence_type_id_positive CHECK ((id >= 0))
);


ALTER TABLE public.ir_sequence_type OWNER TO gnuhealth;

--
-- Name: TABLE ir_sequence_type; Type: COMMENT; Schema: public; Owner: gnuhealth
--

COMMENT ON TABLE public.ir_sequence_type IS 'Sequence type';


--
-- Name: ir_sequence_type-res_group_id_seq; Type: SEQUENCE; Schema: public; Owner: gnuhealth
--

CREATE SEQUENCE public."ir_sequence_type-res_group_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."ir_sequence_type-res_group_id_seq" OWNER TO gnuhealth;

--
-- Name: ir_sequence_type-res_group; Type: TABLE; Schema: public; Owner: gnuhealth
--

CREATE TABLE public."ir_sequence_type-res_group" (
    id integer DEFAULT nextval('public."ir_sequence_type-res_group_id_seq"'::regclass) NOT NULL,
    create_date timestamp(6) without time zone,
    create_uid integer,
    "group" integer NOT NULL,
    sequence_type integer NOT NULL,
    write_date timestamp(6) without time zone,
    write_uid integer,
    CONSTRAINT "ir_sequence_type-res_group_id_positive" CHECK ((id >= 0))
);


ALTER TABLE public."ir_sequence_type-res_group" OWNER TO gnuhealth;

--
-- Name: TABLE "ir_sequence_type-res_group"; Type: COMMENT; Schema: public; Owner: gnuhealth
--

COMMENT ON TABLE public."ir_sequence_type-res_group" IS 'Sequence Type - Group';


--
-- Name: ir_session_id_seq; Type: SEQUENCE; Schema: public; Owner: gnuhealth
--

CREATE SEQUENCE public.ir_session_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_session_id_seq OWNER TO gnuhealth;

--
-- Name: ir_session; Type: TABLE; Schema: public; Owner: gnuhealth
--

CREATE TABLE public.ir_session (
    id integer DEFAULT nextval('public.ir_session_id_seq'::regclass) NOT NULL,
    create_date timestamp(6) without time zone,
    create_uid integer,
    key character varying NOT NULL,
    write_date timestamp(6) without time zone,
    write_uid integer,
    CONSTRAINT ir_session_id_positive CHECK ((id >= 0))
);


ALTER TABLE public.ir_session OWNER TO gnuhealth;

--
-- Name: TABLE ir_session; Type: COMMENT; Schema: public; Owner: gnuhealth
--

COMMENT ON TABLE public.ir_session IS 'Session';


--
-- Name: ir_session_wizard_id_seq; Type: SEQUENCE; Schema: public; Owner: gnuhealth
--

CREATE SEQUENCE public.ir_session_wizard_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_session_wizard_id_seq OWNER TO gnuhealth;

--
-- Name: ir_session_wizard; Type: TABLE; Schema: public; Owner: gnuhealth
--

CREATE TABLE public.ir_session_wizard (
    id integer DEFAULT nextval('public.ir_session_wizard_id_seq'::regclass) NOT NULL,
    create_date timestamp(6) without time zone,
    create_uid integer,
    data text,
    write_date timestamp(6) without time zone,
    write_uid integer,
    CONSTRAINT ir_session_wizard_id_positive CHECK ((id >= 0))
);


ALTER TABLE public.ir_session_wizard OWNER TO gnuhealth;

--
-- Name: TABLE ir_session_wizard; Type: COMMENT; Schema: public; Owner: gnuhealth
--

COMMENT ON TABLE public.ir_session_wizard IS 'Session Wizard';


--
-- Name: ir_translation_id_seq; Type: SEQUENCE; Schema: public; Owner: gnuhealth
--

CREATE SEQUENCE public.ir_translation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_translation_id_seq OWNER TO gnuhealth;

--
-- Name: ir_translation; Type: TABLE; Schema: public; Owner: gnuhealth
--

CREATE TABLE public.ir_translation (
    id integer DEFAULT nextval('public.ir_translation_id_seq'::regclass) NOT NULL,
    lang character varying,
    src text,
    name character varying NOT NULL,
    res_id integer NOT NULL,
    value text,
    type character varying NOT NULL,
    module character varying,
    fuzzy boolean DEFAULT false,
    create_date timestamp(6) without time zone,
    create_uid integer,
    overriding_module character varying,
    write_date timestamp(6) without time zone,
    write_uid integer,
    CONSTRAINT ir_translation_id_positive CHECK ((id >= 0))
);


ALTER TABLE public.ir_translation OWNER TO gnuhealth;

--
-- Name: TABLE ir_translation; Type: COMMENT; Schema: public; Owner: gnuhealth
--

COMMENT ON TABLE public.ir_translation IS 'Translation';


--
-- Name: ir_trigger_id_seq; Type: SEQUENCE; Schema: public; Owner: gnuhealth
--

CREATE SEQUENCE public.ir_trigger_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_trigger_id_seq OWNER TO gnuhealth;

--
-- Name: ir_trigger; Type: TABLE; Schema: public; Owner: gnuhealth
--

CREATE TABLE public.ir_trigger (
    id integer DEFAULT nextval('public.ir_trigger_id_seq'::regclass) NOT NULL,
    action character varying NOT NULL,
    active boolean DEFAULT false,
    condition character varying NOT NULL,
    create_date timestamp(6) without time zone,
    create_uid integer,
    limit_number integer NOT NULL,
    minimum_time_delay interval,
    model integer NOT NULL,
    name character varying NOT NULL,
    on_create boolean DEFAULT false,
    on_delete boolean DEFAULT false,
    on_time boolean DEFAULT false,
    on_write boolean DEFAULT false,
    write_date timestamp(6) without time zone,
    write_uid integer,
    CONSTRAINT ir_trigger_id_positive CHECK ((id >= 0)),
    CONSTRAINT ir_trigger_on_exclusive CHECK ((NOT ((on_time = true) AND ((on_create = true) OR (on_write = true) OR (on_delete = true)))))
);


ALTER TABLE public.ir_trigger OWNER TO gnuhealth;

--
-- Name: TABLE ir_trigger; Type: COMMENT; Schema: public; Owner: gnuhealth
--

COMMENT ON TABLE public.ir_trigger IS 'Trigger';


--
-- Name: ir_trigger__history___id_seq; Type: SEQUENCE; Schema: public; Owner: gnuhealth
--

CREATE SEQUENCE public.ir_trigger__history___id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_trigger__history___id_seq OWNER TO gnuhealth;

--
-- Name: ir_trigger__history; Type: TABLE; Schema: public; Owner: gnuhealth
--

CREATE TABLE public.ir_trigger__history (
    id integer,
    __id integer DEFAULT nextval('public.ir_trigger__history___id_seq'::regclass) NOT NULL
);


ALTER TABLE public.ir_trigger__history OWNER TO gnuhealth;

--
-- Name: TABLE ir_trigger__history; Type: COMMENT; Schema: public; Owner: gnuhealth
--

COMMENT ON TABLE public.ir_trigger__history IS 'Trigger';


--
-- Name: ir_trigger_log_id_seq; Type: SEQUENCE; Schema: public; Owner: gnuhealth
--

CREATE SEQUENCE public.ir_trigger_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_trigger_log_id_seq OWNER TO gnuhealth;

--
-- Name: ir_trigger_log; Type: TABLE; Schema: public; Owner: gnuhealth
--

CREATE TABLE public.ir_trigger_log (
    id integer DEFAULT nextval('public.ir_trigger_log_id_seq'::regclass) NOT NULL,
    create_date timestamp(6) without time zone,
    create_uid integer,
    record_id integer NOT NULL,
    trigger integer NOT NULL,
    write_date timestamp(6) without time zone,
    write_uid integer,
    CONSTRAINT ir_trigger_log_id_positive CHECK ((id >= 0))
);


ALTER TABLE public.ir_trigger_log OWNER TO gnuhealth;

--
-- Name: TABLE ir_trigger_log; Type: COMMENT; Schema: public; Owner: gnuhealth
--

COMMENT ON TABLE public.ir_trigger_log IS 'Trigger Log';


--
-- Name: ir_ui_icon_id_seq; Type: SEQUENCE; Schema: public; Owner: gnuhealth
--

CREATE SEQUENCE public.ir_ui_icon_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_ui_icon_id_seq OWNER TO gnuhealth;

--
-- Name: ir_ui_icon; Type: TABLE; Schema: public; Owner: gnuhealth
--

CREATE TABLE public.ir_ui_icon (
    id integer DEFAULT nextval('public.ir_ui_icon_id_seq'::regclass) NOT NULL,
    create_date timestamp(6) without time zone,
    create_uid integer,
    module character varying NOT NULL,
    name character varying NOT NULL,
    path character varying NOT NULL,
    sequence integer,
    write_date timestamp(6) without time zone,
    write_uid integer,
    CONSTRAINT ir_ui_icon_id_positive CHECK ((id >= 0))
);


ALTER TABLE public.ir_ui_icon OWNER TO gnuhealth;

--
-- Name: TABLE ir_ui_icon; Type: COMMENT; Schema: public; Owner: gnuhealth
--

COMMENT ON TABLE public.ir_ui_icon IS 'Icon';


--
-- Name: ir_ui_menu_id_seq; Type: SEQUENCE; Schema: public; Owner: gnuhealth
--

CREATE SEQUENCE public.ir_ui_menu_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_ui_menu_id_seq OWNER TO gnuhealth;

--
-- Name: ir_ui_menu; Type: TABLE; Schema: public; Owner: gnuhealth
--

CREATE TABLE public.ir_ui_menu (
    id integer DEFAULT nextval('public.ir_ui_menu_id_seq'::regclass) NOT NULL,
    parent integer,
    name character varying NOT NULL,
    icon character varying,
    active boolean DEFAULT false,
    create_date timestamp(6) without time zone,
    create_uid integer,
    sequence integer,
    write_date timestamp(6) without time zone,
    write_uid integer,
    CONSTRAINT ir_ui_menu_id_positive CHECK ((id >= 0))
);


ALTER TABLE public.ir_ui_menu OWNER TO gnuhealth;

--
-- Name: TABLE ir_ui_menu; Type: COMMENT; Schema: public; Owner: gnuhealth
--

COMMENT ON TABLE public.ir_ui_menu IS 'UI menu';


--
-- Name: ir_ui_menu-res_group_id_seq; Type: SEQUENCE; Schema: public; Owner: gnuhealth
--

CREATE SEQUENCE public."ir_ui_menu-res_group_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."ir_ui_menu-res_group_id_seq" OWNER TO gnuhealth;

--
-- Name: ir_ui_menu-res_group; Type: TABLE; Schema: public; Owner: gnuhealth
--

CREATE TABLE public."ir_ui_menu-res_group" (
    id integer DEFAULT nextval('public."ir_ui_menu-res_group_id_seq"'::regclass) NOT NULL,
    create_date timestamp(6) without time zone,
    create_uid integer,
    "group" integer NOT NULL,
    menu integer NOT NULL,
    write_date timestamp(6) without time zone,
    write_uid integer,
    CONSTRAINT "ir_ui_menu-res_group_id_positive" CHECK ((id >= 0))
);


ALTER TABLE public."ir_ui_menu-res_group" OWNER TO gnuhealth;

--
-- Name: TABLE "ir_ui_menu-res_group"; Type: COMMENT; Schema: public; Owner: gnuhealth
--

COMMENT ON TABLE public."ir_ui_menu-res_group" IS 'UI Menu - Group';


--
-- Name: ir_ui_menu_favorite_id_seq; Type: SEQUENCE; Schema: public; Owner: gnuhealth
--

CREATE SEQUENCE public.ir_ui_menu_favorite_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_ui_menu_favorite_id_seq OWNER TO gnuhealth;

--
-- Name: ir_ui_menu_favorite; Type: TABLE; Schema: public; Owner: gnuhealth
--

CREATE TABLE public.ir_ui_menu_favorite (
    id integer DEFAULT nextval('public.ir_ui_menu_favorite_id_seq'::regclass) NOT NULL,
    create_date timestamp(6) without time zone,
    create_uid integer,
    menu integer NOT NULL,
    sequence integer,
    "user" integer NOT NULL,
    write_date timestamp(6) without time zone,
    write_uid integer,
    CONSTRAINT ir_ui_menu_favorite_id_positive CHECK ((id >= 0))
);


ALTER TABLE public.ir_ui_menu_favorite OWNER TO gnuhealth;

--
-- Name: TABLE ir_ui_menu_favorite; Type: COMMENT; Schema: public; Owner: gnuhealth
--

COMMENT ON TABLE public.ir_ui_menu_favorite IS 'Menu Favorite';


--
-- Name: ir_ui_view_id_seq; Type: SEQUENCE; Schema: public; Owner: gnuhealth
--

CREATE SEQUENCE public.ir_ui_view_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_ui_view_id_seq OWNER TO gnuhealth;

--
-- Name: ir_ui_view; Type: TABLE; Schema: public; Owner: gnuhealth
--

CREATE TABLE public.ir_ui_view (
    id integer DEFAULT nextval('public.ir_ui_view_id_seq'::regclass) NOT NULL,
    model character varying,
    type character varying,
    data text,
    field_childs character varying,
    priority integer NOT NULL,
    create_date timestamp(6) without time zone,
    create_uid integer,
    domain character varying,
    inherit integer,
    module character varying,
    name character varying,
    write_date timestamp(6) without time zone,
    write_uid integer,
    CONSTRAINT ir_ui_view_id_positive CHECK ((id >= 0))
);


ALTER TABLE public.ir_ui_view OWNER TO gnuhealth;

--
-- Name: TABLE ir_ui_view; Type: COMMENT; Schema: public; Owner: gnuhealth
--

COMMENT ON TABLE public.ir_ui_view IS 'View';


--
-- Name: ir_ui_view_search_id_seq; Type: SEQUENCE; Schema: public; Owner: gnuhealth
--

CREATE SEQUENCE public.ir_ui_view_search_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_ui_view_search_id_seq OWNER TO gnuhealth;

--
-- Name: ir_ui_view_search; Type: TABLE; Schema: public; Owner: gnuhealth
--

CREATE TABLE public.ir_ui_view_search (
    id integer DEFAULT nextval('public.ir_ui_view_search_id_seq'::regclass) NOT NULL,
    create_date timestamp(6) without time zone,
    create_uid integer,
    domain character varying,
    model character varying NOT NULL,
    name character varying NOT NULL,
    "user" integer,
    write_date timestamp(6) without time zone,
    write_uid integer,
    CONSTRAINT ir_ui_view_search_id_positive CHECK ((id >= 0))
);


ALTER TABLE public.ir_ui_view_search OWNER TO gnuhealth;

--
-- Name: TABLE ir_ui_view_search; Type: COMMENT; Schema: public; Owner: gnuhealth
--

COMMENT ON TABLE public.ir_ui_view_search IS 'View Search';


--
-- Name: ir_ui_view_tree_state_id_seq; Type: SEQUENCE; Schema: public; Owner: gnuhealth
--

CREATE SEQUENCE public.ir_ui_view_tree_state_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_ui_view_tree_state_id_seq OWNER TO gnuhealth;

--
-- Name: ir_ui_view_tree_state; Type: TABLE; Schema: public; Owner: gnuhealth
--

CREATE TABLE public.ir_ui_view_tree_state (
    id integer DEFAULT nextval('public.ir_ui_view_tree_state_id_seq'::regclass) NOT NULL,
    child_name character varying,
    create_date timestamp(6) without time zone,
    create_uid integer,
    domain character varying NOT NULL,
    model character varying NOT NULL,
    nodes text,
    selected_nodes text,
    "user" integer NOT NULL,
    write_date timestamp(6) without time zone,
    write_uid integer,
    CONSTRAINT ir_ui_view_tree_state_id_positive CHECK ((id >= 0))
);


ALTER TABLE public.ir_ui_view_tree_state OWNER TO gnuhealth;

--
-- Name: TABLE ir_ui_view_tree_state; Type: COMMENT; Schema: public; Owner: gnuhealth
--

COMMENT ON TABLE public.ir_ui_view_tree_state IS 'View Tree State';


--
-- Name: ir_ui_view_tree_width_id_seq; Type: SEQUENCE; Schema: public; Owner: gnuhealth
--

CREATE SEQUENCE public.ir_ui_view_tree_width_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ir_ui_view_tree_width_id_seq OWNER TO gnuhealth;

--
-- Name: ir_ui_view_tree_width; Type: TABLE; Schema: public; Owner: gnuhealth
--

CREATE TABLE public.ir_ui_view_tree_width (
    id integer DEFAULT nextval('public.ir_ui_view_tree_width_id_seq'::regclass) NOT NULL,
    create_date timestamp(6) without time zone,
    create_uid integer,
    field character varying NOT NULL,
    model character varying NOT NULL,
    "user" integer NOT NULL,
    width integer NOT NULL,
    write_date timestamp(6) without time zone,
    write_uid integer,
    CONSTRAINT ir_ui_view_tree_width_id_positive CHECK ((id >= 0))
);


ALTER TABLE public.ir_ui_view_tree_width OWNER TO gnuhealth;

--
-- Name: TABLE ir_ui_view_tree_width; Type: COMMENT; Schema: public; Owner: gnuhealth
--

COMMENT ON TABLE public.ir_ui_view_tree_width IS 'View Tree Width';


--
-- Name: res_group_id_seq; Type: SEQUENCE; Schema: public; Owner: gnuhealth
--

CREATE SEQUENCE public.res_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.res_group_id_seq OWNER TO gnuhealth;

--
-- Name: res_group; Type: TABLE; Schema: public; Owner: gnuhealth
--

CREATE TABLE public.res_group (
    id integer DEFAULT nextval('public.res_group_id_seq'::regclass) NOT NULL,
    name character varying NOT NULL,
    active boolean DEFAULT false,
    create_date timestamp(6) without time zone,
    create_uid integer,
    parent integer,
    write_date timestamp(6) without time zone,
    write_uid integer,
    CONSTRAINT res_group_id_positive CHECK ((id >= 0))
);


ALTER TABLE public.res_group OWNER TO gnuhealth;

--
-- Name: TABLE res_group; Type: COMMENT; Schema: public; Owner: gnuhealth
--

COMMENT ON TABLE public.res_group IS 'Group';


--
-- Name: res_user_id_seq; Type: SEQUENCE; Schema: public; Owner: gnuhealth
--

CREATE SEQUENCE public.res_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.res_user_id_seq OWNER TO gnuhealth;

--
-- Name: res_user; Type: TABLE; Schema: public; Owner: gnuhealth
--

CREATE TABLE public.res_user (
    id integer DEFAULT nextval('public.res_user_id_seq'::regclass) NOT NULL,
    name character varying,
    active boolean DEFAULT false,
    login character varying NOT NULL,
    password character varying,
    create_date timestamp(6) without time zone,
    create_uid integer,
    email character varying,
    language integer,
    menu integer NOT NULL,
    password_hash character varying,
    password_reset character varying,
    password_reset_expire timestamp(6) without time zone,
    signature text,
    write_date timestamp(6) without time zone,
    write_uid integer,
    CONSTRAINT res_user_id_positive CHECK ((id >= 0))
);


ALTER TABLE public.res_user OWNER TO gnuhealth;

--
-- Name: TABLE res_user; Type: COMMENT; Schema: public; Owner: gnuhealth
--

COMMENT ON TABLE public.res_user IS 'User';


--
-- Name: res_user-ir_action_id_seq; Type: SEQUENCE; Schema: public; Owner: gnuhealth
--

CREATE SEQUENCE public."res_user-ir_action_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."res_user-ir_action_id_seq" OWNER TO gnuhealth;

--
-- Name: res_user-ir_action; Type: TABLE; Schema: public; Owner: gnuhealth
--

CREATE TABLE public."res_user-ir_action" (
    id integer DEFAULT nextval('public."res_user-ir_action_id_seq"'::regclass) NOT NULL,
    action integer NOT NULL,
    create_date timestamp(6) without time zone,
    create_uid integer,
    "user" integer NOT NULL,
    write_date timestamp(6) without time zone,
    write_uid integer,
    CONSTRAINT "res_user-ir_action_id_positive" CHECK ((id >= 0))
);


ALTER TABLE public."res_user-ir_action" OWNER TO gnuhealth;

--
-- Name: TABLE "res_user-ir_action"; Type: COMMENT; Schema: public; Owner: gnuhealth
--

COMMENT ON TABLE public."res_user-ir_action" IS 'User - Action';


--
-- Name: res_user-res_group_id_seq; Type: SEQUENCE; Schema: public; Owner: gnuhealth
--

CREATE SEQUENCE public."res_user-res_group_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."res_user-res_group_id_seq" OWNER TO gnuhealth;

--
-- Name: res_user-res_group; Type: TABLE; Schema: public; Owner: gnuhealth
--

CREATE TABLE public."res_user-res_group" (
    id integer DEFAULT nextval('public."res_user-res_group_id_seq"'::regclass) NOT NULL,
    "user" integer NOT NULL,
    "group" integer NOT NULL,
    create_date timestamp(6) without time zone,
    create_uid integer,
    write_date timestamp(6) without time zone,
    write_uid integer,
    CONSTRAINT "res_user-res_group_id_positive" CHECK ((id >= 0))
);


ALTER TABLE public."res_user-res_group" OWNER TO gnuhealth;

--
-- Name: TABLE "res_user-res_group"; Type: COMMENT; Schema: public; Owner: gnuhealth
--

COMMENT ON TABLE public."res_user-res_group" IS 'User - Group';


--
-- Name: res_user_application_id_seq; Type: SEQUENCE; Schema: public; Owner: gnuhealth
--

CREATE SEQUENCE public.res_user_application_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.res_user_application_id_seq OWNER TO gnuhealth;

--
-- Name: res_user_application; Type: TABLE; Schema: public; Owner: gnuhealth
--

CREATE TABLE public.res_user_application (
    id integer DEFAULT nextval('public.res_user_application_id_seq'::regclass) NOT NULL,
    application character varying,
    create_date timestamp(6) without time zone,
    create_uid integer,
    key character varying NOT NULL,
    state character varying,
    "user" integer,
    write_date timestamp(6) without time zone,
    write_uid integer,
    CONSTRAINT res_user_application_id_positive CHECK ((id >= 0))
);


ALTER TABLE public.res_user_application OWNER TO gnuhealth;

--
-- Name: TABLE res_user_application; Type: COMMENT; Schema: public; Owner: gnuhealth
--

COMMENT ON TABLE public.res_user_application IS 'User Application';


--
-- Name: res_user_device_id_seq; Type: SEQUENCE; Schema: public; Owner: gnuhealth
--

CREATE SEQUENCE public.res_user_device_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.res_user_device_id_seq OWNER TO gnuhealth;

--
-- Name: res_user_device; Type: TABLE; Schema: public; Owner: gnuhealth
--

CREATE TABLE public.res_user_device (
    id integer DEFAULT nextval('public.res_user_device_id_seq'::regclass) NOT NULL,
    cookie character varying NOT NULL,
    create_date timestamp(6) without time zone,
    create_uid integer,
    login character varying NOT NULL,
    write_date timestamp(6) without time zone,
    write_uid integer,
    CONSTRAINT res_user_device_id_positive CHECK ((id >= 0))
);


ALTER TABLE public.res_user_device OWNER TO gnuhealth;

--
-- Name: TABLE res_user_device; Type: COMMENT; Schema: public; Owner: gnuhealth
--

COMMENT ON TABLE public.res_user_device IS 'User Device';


--
-- Name: res_user_login_attempt_id_seq; Type: SEQUENCE; Schema: public; Owner: gnuhealth
--

CREATE SEQUENCE public.res_user_login_attempt_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.res_user_login_attempt_id_seq OWNER TO gnuhealth;

--
-- Name: res_user_login_attempt; Type: TABLE; Schema: public; Owner: gnuhealth
--

CREATE TABLE public.res_user_login_attempt (
    id integer DEFAULT nextval('public.res_user_login_attempt_id_seq'::regclass) NOT NULL,
    create_date timestamp(6) without time zone,
    create_uid integer,
    device_cookie character varying,
    ip_address character varying,
    ip_network character varying,
    login character varying(512),
    write_date timestamp(6) without time zone,
    write_uid integer,
    CONSTRAINT res_user_login_attempt_id_positive CHECK ((id >= 0))
);


ALTER TABLE public.res_user_login_attempt OWNER TO gnuhealth;

--
-- Name: TABLE res_user_login_attempt; Type: COMMENT; Schema: public; Owner: gnuhealth
--

COMMENT ON TABLE public.res_user_login_attempt IS 'Login Attempt

    This class is separated from the res.user one in order to prevent locking
    the res.user table when in a long running process.
    ';


--
-- Name: res_user_warning_id_seq; Type: SEQUENCE; Schema: public; Owner: gnuhealth
--

CREATE SEQUENCE public.res_user_warning_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.res_user_warning_id_seq OWNER TO gnuhealth;

--
-- Name: res_user_warning; Type: TABLE; Schema: public; Owner: gnuhealth
--

CREATE TABLE public.res_user_warning (
    id integer DEFAULT nextval('public.res_user_warning_id_seq'::regclass) NOT NULL,
    always boolean DEFAULT false,
    create_date timestamp(6) without time zone,
    create_uid integer,
    name character varying NOT NULL,
    "user" integer NOT NULL,
    write_date timestamp(6) without time zone,
    write_uid integer,
    CONSTRAINT res_user_warning_id_positive CHECK ((id >= 0))
);


ALTER TABLE public.res_user_warning OWNER TO gnuhealth;

--
-- Name: TABLE res_user_warning; Type: COMMENT; Schema: public; Owner: gnuhealth
--

COMMENT ON TABLE public.res_user_warning IS 'User Warning';


--
-- Data for Name: ir_action; Type: TABLE DATA; Schema: public; Owner: gnuhealth
--

COPY public.ir_action (id, active, create_date, create_uid, icon, name, records, type, usage, write_date, write_uid) FROM stdin;
1	t	2022-12-06 20:16:32.52404	0	\N	Icons	selected	ir.action.act_window	\N	2022-12-06 20:16:32.52404	0
2	t	2022-12-06 20:16:32.52404	0	\N	Menu	selected	ir.action.act_window	menu	2022-12-06 20:16:32.52404	0
3	t	2022-12-06 20:16:32.52404	0	\N	Menu	selected	ir.action.act_window	\N	2022-12-06 20:16:32.52404	0
4	t	2022-12-06 20:16:32.52404	0	\N	Show View	selected	ir.action.wizard	\N	2022-12-06 20:16:32.52404	0
5	t	2022-12-06 20:16:32.52404	0	\N	Views	selected	ir.action.act_window	\N	2022-12-06 20:16:32.52404	0
6	t	2022-12-06 20:16:32.52404	0	\N	View Tree Width	selected	ir.action.act_window	\N	2022-12-06 20:16:32.52404	0
7	t	2022-12-06 20:16:32.52404	0	\N	Tree State	selected	ir.action.act_window	\N	2022-12-06 20:16:32.52404	0
8	t	2022-12-06 20:16:32.52404	0	\N	View Search	selected	ir.action.act_window	\N	2022-12-06 20:16:32.52404	0
9	t	2022-12-06 20:16:32.52404	0	\N	Actions	selected	ir.action.act_window	\N	2022-12-06 20:16:32.52404	0
10	t	2022-12-06 20:16:32.52404	0	\N	Reports	selected	ir.action.act_window	\N	2022-12-06 20:16:32.52404	0
11	t	2022-12-06 20:16:32.52404	0	\N	Window Actions	selected	ir.action.act_window	\N	2022-12-06 20:16:32.52404	0
12	t	2022-12-06 20:16:32.52404	0	\N	Wizards	selected	ir.action.act_window	\N	2022-12-06 20:16:32.52404	0
13	t	2022-12-06 20:16:32.52404	0	\N	URLs	selected	ir.action.act_window	\N	2022-12-06 20:16:32.52404	0
14	t	2022-12-06 20:16:32.52404	0	\N	Models	selected	ir.action.act_window	\N	2022-12-06 20:16:32.52404	0
15	t	2022-12-06 20:16:32.52404	0	\N	Fields	selected	ir.action.act_window	\N	2022-12-06 20:16:32.52404	0
16	t	2022-12-06 20:16:32.52404	0	\N	Models Access	selected	ir.action.act_window	\N	2022-12-06 20:16:32.52404	0
17	t	2022-12-06 20:16:32.52404	0	\N	Access	selected	ir.action.act_window	\N	2022-12-06 20:16:32.52404	0
18	t	2022-12-06 20:16:32.52404	0	\N	Fields Access	selected	ir.action.act_window	\N	2022-12-06 20:16:32.52404	0
19	t	2022-12-06 20:16:32.52404	0	\N	Access	selected	ir.action.act_window	\N	2022-12-06 20:16:32.52404	0
20	t	2022-12-06 20:16:32.52404	0	\N	Graph	selected	ir.action.report	\N	2022-12-06 20:16:32.52404	0
21	t	2022-12-06 20:16:32.52404	0	\N	Graph	selected	ir.action.wizard	\N	2022-12-06 20:16:32.52404	0
22	t	2022-12-06 20:16:32.52404	0	\N	Workflow Graph	selected	ir.action.report	\N	2022-12-06 20:16:32.52404	0
23	t	2022-12-06 20:16:32.52404	0	\N	Buttons	selected	ir.action.act_window	\N	2022-12-06 20:16:32.52404	0
24	t	2022-12-06 20:16:32.52404	0	\N	Clicks	selected	ir.action.act_window	\N	2022-12-06 20:16:32.52404	0
25	t	2022-12-06 20:16:32.52404	0	\N	Data	selected	ir.action.act_window	\N	2022-12-06 20:16:32.52404	0
26	t	2022-12-06 20:16:32.52404	0	\N	Sequences	selected	ir.action.act_window	\N	2022-12-06 20:16:32.52404	0
27	t	2022-12-06 20:16:32.52404	0	\N	Sequences Strict	selected	ir.action.act_window	\N	2022-12-06 20:16:32.52404	0
28	t	2022-12-06 20:16:32.52404	0	\N	Types	selected	ir.action.act_window	\N	2022-12-06 20:16:32.52404	0
29	t	2022-12-06 20:16:32.52404	0	\N	Attachments	selected	ir.action.act_window	\N	2022-12-06 20:16:32.52404	0
30	t	2022-12-06 20:16:32.52404	0	\N	Notes	selected	ir.action.act_window	\N	2022-12-06 20:16:32.52404	0
31	t	2022-12-06 20:16:32.52404	0	\N	Actions	selected	ir.action.act_window	\N	2022-12-06 20:16:32.52404	0
32	t	2022-12-06 20:16:32.52404	0	\N	Languages	selected	ir.action.act_window	\N	2022-12-06 20:16:32.52404	0
33	t	2022-12-06 20:16:32.52404	0	\N	Configure Languages	selected	ir.action.wizard	\N	2022-12-06 20:16:32.52404	0
34	t	2022-12-06 20:16:32.52404	0	\N	Translations	selected	ir.action.act_window	\N	2022-12-06 20:16:32.52404	0
35	t	2022-12-06 20:16:32.52404	0	\N	Translations	selected	ir.action.wizard	\N	2022-12-06 20:16:32.52404	0
36	t	2022-12-06 20:16:32.52404	0	\N	Translations	selected	ir.action.act_window	\N	2022-12-06 20:16:32.52404	0
37	t	2022-12-06 20:16:32.52404	0	\N	Set Translations	selected	ir.action.wizard	\N	2022-12-06 20:16:32.52404	0
38	t	2022-12-06 20:16:32.52404	0	\N	Clean Translations	selected	ir.action.wizard	\N	2022-12-06 20:16:32.52404	0
39	t	2022-12-06 20:16:32.52404	0	\N	Synchronize Translations	selected	ir.action.wizard	\N	2022-12-06 20:16:32.52404	0
40	t	2022-12-06 20:16:32.52404	0	\N	Export Translations	selected	ir.action.wizard	\N	2022-12-06 20:16:32.52404	0
41	t	2022-12-06 20:16:32.52404	0	\N	Exports	selected	ir.action.act_window	\N	2022-12-06 20:16:32.52404	0
42	t	2022-12-06 20:16:32.52404	0	\N	Record Rules	selected	ir.action.act_window	\N	2022-12-06 20:16:32.52404	0
43	t	2022-12-06 20:16:32.52404	0	\N	Modules	selected	ir.action.act_window	\N	2022-12-06 20:16:32.52404	0
44	t	2022-12-06 20:16:32.52404	0	\N	Config Wizard Items	selected	ir.action.act_window	\N	2022-12-06 20:16:32.52404	0
45	t	2022-12-06 20:16:32.52404	0	\N	Module Configuration	selected	ir.action.wizard	\N	2022-12-06 20:16:32.52404	0
56	t	2022-12-06 20:16:47.746915	0	\N	Reset Password	selected	ir.action.report	\N	2022-12-06 20:16:47.746915	0
46	t	2022-12-06 20:16:32.52404	0	\N	Perform Pending Activation/Upgrade	selected	ir.action.wizard	\N	2022-12-06 20:16:32.52404	0
47	t	2022-12-06 20:16:32.52404	0	\N	Configure Modules	selected	ir.action.wizard	\N	2022-12-06 20:16:32.52404	0
48	t	2022-12-06 20:16:32.52404	0	\N	Triggers	selected	ir.action.act_window	\N	2022-12-06 20:16:32.52404	0
49	t	2022-12-06 20:16:32.52404	0	\N	Message	selected	ir.action.act_window	\N	2022-12-06 20:16:32.52404	0
50	t	2022-12-06 20:16:32.52404	0	\N	E-mails	selected	ir.action.act_window	\N	2022-12-06 20:16:32.52404	0
51	t	2022-12-06 20:16:32.52404	0	\N	E-mail Archives	selected	ir.action.act_window	\N	2022-12-06 20:16:32.52404	0
52	t	2022-12-06 20:16:32.52404	0	\N	E-mail Templates	selected	ir.action.act_window	\N	2022-12-06 20:16:32.52404	0
53	t	2022-12-06 20:16:47.746915	0	\N	Groups	selected	ir.action.act_window	\N	2022-12-06 20:16:47.746915	0
54	t	2022-12-06 20:16:47.746915	0	\N	Users	selected	ir.action.act_window	\N	2022-12-06 20:16:47.746915	0
55	t	2022-12-06 20:16:47.746915	0	\N	Configure Users	selected	ir.action.wizard	\N	2022-12-06 20:16:47.746915	0
\.


--
-- Data for Name: ir_action-res_group; Type: TABLE DATA; Schema: public; Owner: gnuhealth
--

COPY public."ir_action-res_group" (id, action, create_date, create_uid, "group", write_date, write_uid) FROM stdin;
1	46	2022-12-06 20:16:47.746915	0	1	\N	\N
2	39	2022-12-06 20:16:47.746915	0	1	\N	\N
3	40	2022-12-06 20:16:47.746915	0	1	\N	\N
4	33	2022-12-06 20:16:47.746915	0	1	\N	\N
\.


--
-- Data for Name: ir_action_act_window; Type: TABLE DATA; Schema: public; Owner: gnuhealth
--

COPY public.ir_action_act_window (id, action, context, context_domain, context_model, create_date, create_uid, domain, "limit", "order", res_model, search_value, write_date, write_uid) FROM stdin;
1	1	{}	\N	\N	2022-12-06 20:16:32.52404	0	\N	\N	\N	ir.ui.icon	[]	2022-12-06 20:16:32.52404	0
2	2	{}	\N	\N	2022-12-06 20:16:32.52404	0	[["parent", "=", null]]	\N	\N	ir.ui.menu	[]	2022-12-06 20:16:32.52404	0
53	53	{}	\N	\N	2022-12-06 20:16:47.746915	0	\N	\N	\N	res.group	[]	2022-12-06 20:16:47.746915	0
3	3	{}	\N	\N	2022-12-06 20:16:32.52404	0	\N	\N	\N	ir.ui.menu	[]	2022-12-06 20:16:32.52404	0
5	5	{}	\N	\N	2022-12-06 20:16:32.52404	0	\N	\N	\N	ir.ui.view	[]	2022-12-06 20:16:32.52404	0
6	6	{}	\N	\N	2022-12-06 20:16:32.52404	0	\N	\N	\N	ir.ui.view_tree_width	[]	2022-12-06 20:16:32.52404	0
54	54	{}	\N	\N	2022-12-06 20:16:47.746915	0	\N	\N	\N	res.user	[]	2022-12-06 20:16:47.746915	0
7	7	{}	\N	\N	2022-12-06 20:16:32.52404	0	\N	\N	\N	ir.ui.view_tree_state	[]	2022-12-06 20:16:32.52404	0
8	8	{}	\N	\N	2022-12-06 20:16:32.52404	0	\N	\N	\N	ir.ui.view_search	[]	2022-12-06 20:16:32.52404	0
9	9	{}	\N	\N	2022-12-06 20:16:32.52404	0	\N	\N	\N	ir.action	[]	2022-12-06 20:16:32.52404	0
10	10	{}	\N	\N	2022-12-06 20:16:32.52404	0	\N	\N	\N	ir.action.report	[]	2022-12-06 20:16:32.52404	0
11	11	{}	\N	\N	2022-12-06 20:16:32.52404	0	\N	\N	\N	ir.action.act_window	[]	2022-12-06 20:16:32.52404	0
12	12	{}	\N	\N	2022-12-06 20:16:32.52404	0	\N	\N	\N	ir.action.wizard	[]	2022-12-06 20:16:32.52404	0
13	13	{}	\N	\N	2022-12-06 20:16:32.52404	0	\N	\N	\N	ir.action.url	[]	2022-12-06 20:16:32.52404	0
14	14	{}	\N	\N	2022-12-06 20:16:32.52404	0	\N	\N	\N	ir.model	[]	2022-12-06 20:16:32.52404	0
15	15	{}	\N	\N	2022-12-06 20:16:32.52404	0	\N	\N	\N	ir.model.field	[]	2022-12-06 20:16:32.52404	0
16	16	{}	\N	\N	2022-12-06 20:16:32.52404	0	\N	\N	\N	ir.model.access	[]	2022-12-06 20:16:32.52404	0
17	17	{}	\N	\N	2022-12-06 20:16:32.52404	0	[{"__class__": "If", "c": {"__class__": "Equal", "s1": {"__class__": "Eval", "d": [], "v": "active_ids"}, "s2": [{"__class__": "Eval", "d": "", "v": "active_id"}]}, "e": ["model", "in", {"__class__": "Eval", "d": "", "v": "active_ids"}], "t": ["model", "=", {"__class__": "Eval", "d": "", "v": "active_id"}]}]	\N	\N	ir.model.access	[]	2022-12-06 20:16:32.52404	0
18	18	{}	\N	\N	2022-12-06 20:16:32.52404	0	\N	\N	\N	ir.model.field.access	[]	2022-12-06 20:16:32.52404	0
19	19	{}	\N	\N	2022-12-06 20:16:32.52404	0	[{"__class__": "If", "c": {"__class__": "Equal", "s1": {"__class__": "Eval", "d": [], "v": "active_ids"}, "s2": [{"__class__": "Eval", "d": "", "v": "active_id"}]}, "e": ["field", "in", {"__class__": "Eval", "d": "", "v": "active_ids"}], "t": ["field", "=", {"__class__": "Eval", "d": "", "v": "active_id"}]}]	\N	\N	ir.model.field.access	[]	2022-12-06 20:16:32.52404	0
23	23	{}	\N	\N	2022-12-06 20:16:32.52404	0	\N	\N	\N	ir.model.button	[]	2022-12-06 20:16:32.52404	0
24	24	{}	\N	\N	2022-12-06 20:16:32.52404	0	[{"__class__": "If", "c": {"__class__": "Equal", "s1": {"__class__": "Eval", "d": [], "v": "active_ids"}, "s2": [{"__class__": "Eval", "d": "", "v": "active_id"}]}, "e": ["button", "in", {"__class__": "Eval", "d": "", "v": "active_ids"}], "t": ["button", "=", {"__class__": "Eval", "d": "", "v": "active_id"}]}]	\N	\N	ir.model.button.click	[]	2022-12-06 20:16:32.52404	0
25	25	{}	\N	\N	2022-12-06 20:16:32.52404	0	\N	\N	\N	ir.model.data	[]	2022-12-06 20:16:32.52404	0
26	26		\N	\N	2022-12-06 20:16:32.52404	0	\N	\N	\N	ir.sequence	[]	2022-12-06 20:16:32.52404	0
27	27		\N	\N	2022-12-06 20:16:32.52404	0	\N	\N	\N	ir.sequence.strict	[]	2022-12-06 20:16:32.52404	0
28	28	{}	\N	\N	2022-12-06 20:16:32.52404	0	\N	\N	\N	ir.sequence.type	[]	2022-12-06 20:16:32.52404	0
29	29	{}	\N	\N	2022-12-06 20:16:32.52404	0	\N	\N	\N	ir.attachment	[]	2022-12-06 20:16:32.52404	0
30	30	{}	\N	\N	2022-12-06 20:16:32.52404	0	\N	\N	\N	ir.note	[]	2022-12-06 20:16:32.52404	0
31	31		\N	\N	2022-12-06 20:16:32.52404	0	\N	\N	\N	ir.cron	[]	2022-12-06 20:16:32.52404	0
32	32		\N	\N	2022-12-06 20:16:32.52404	0	\N	\N	\N	ir.lang	[]	2022-12-06 20:16:32.52404	0
34	34	{}	\N	\N	2022-12-06 20:16:32.52404	0	\N	\N	\N	ir.translation	[]	2022-12-06 20:16:32.52404	0
36	36	{}	\N	\N	2022-12-06 20:16:32.52404	0	\N	\N	\N	ir.translation	[]	2022-12-06 20:16:32.52404	0
41	41	{}	\N	\N	2022-12-06 20:16:32.52404	0	\N	\N	\N	ir.export	[]	2022-12-06 20:16:32.52404	0
42	42	{}	\N	\N	2022-12-06 20:16:32.52404	0	\N	\N	\N	ir.rule.group	[]	2022-12-06 20:16:32.52404	0
43	43	{}	\N	\N	2022-12-06 20:16:32.52404	0	[["name", "!=", "tests"]]	\N	\N	ir.module	[]	2022-12-06 20:16:32.52404	0
44	44	{}	\N	\N	2022-12-06 20:16:32.52404	0	\N	\N	\N	ir.module.config_wizard.item	[]	2022-12-06 20:16:32.52404	0
48	48	{}	\N	\N	2022-12-06 20:16:32.52404	0	\N	\N	\N	ir.trigger	[]	2022-12-06 20:16:32.52404	0
49	49	{}	\N	\N	2022-12-06 20:16:32.52404	0	\N	\N	\N	ir.message	[]	2022-12-06 20:16:32.52404	0
50	50	{}	\N	\N	2022-12-06 20:16:32.52404	0	\N	\N	\N	ir.email	[]	2022-12-06 20:16:32.52404	0
51	51	{}	\N	\N	2022-12-06 20:16:32.52404	0	[{"__class__": "If", "c": {"__class__": "Equal", "s1": {"__class__": "Eval", "d": [], "v": "active_ids"}, "s2": [{"__class__": "Eval", "d": "", "v": "active_id"}]}, "e": ["resource.id", "in", {"__class__": "Eval", "d": "", "v": "active_ids"}, {"__class__": "Eval", "d": "", "v": "active_model"}], "t": ["resource", "=", [{"__class__": "Eval", "d": "", "v": "active_model"}, {"__class__": "Eval", "d": "", "v": "active_id"}]]}]	\N	\N	ir.email	[]	2022-12-06 20:16:32.52404	0
52	52	{}	\N	\N	2022-12-06 20:16:32.52404	0	\N	\N	\N	ir.email.template	[]	2022-12-06 20:16:32.52404	0
\.


--
-- Data for Name: ir_action_act_window_domain; Type: TABLE DATA; Schema: public; Owner: gnuhealth
--

COPY public.ir_action_act_window_domain (id, act_window, active, count, create_date, create_uid, domain, name, sequence, write_date, write_uid) FROM stdin;
1	25	t	t	2022-12-06 20:16:32.52404	0	[["out_of_sync", "=", true]]	Out of Sync	10	\N	\N
2	25	t	f	2022-12-06 20:16:32.52404	0		All	9999	\N	\N
3	34	t	f	2022-12-06 20:16:32.52404	0	[["module", "!=", null]]	Modules	10	\N	\N
4	34	t	f	2022-12-06 20:16:32.52404	0	[["module", "=", null]]	Local	20	\N	\N
\.


--
-- Data for Name: ir_action_act_window_view; Type: TABLE DATA; Schema: public; Owner: gnuhealth
--

COPY public.ir_action_act_window_view (id, act_window, active, create_date, create_uid, sequence, view, write_date, write_uid) FROM stdin;
1	1	t	2022-12-06 20:16:32.52404	0	10	1	\N	\N
2	1	t	2022-12-06 20:16:32.52404	0	20	2	\N	\N
3	2	t	2022-12-06 20:16:32.52404	0	1	3	\N	\N
4	3	t	2022-12-06 20:16:32.52404	0	10	4	\N	\N
5	3	t	2022-12-06 20:16:32.52404	0	20	5	\N	\N
6	5	t	2022-12-06 20:16:32.52404	0	1	9	\N	\N
7	5	t	2022-12-06 20:16:32.52404	0	2	8	\N	\N
8	6	t	2022-12-06 20:16:32.52404	0	1	11	\N	\N
9	6	t	2022-12-06 20:16:32.52404	0	2	10	\N	\N
10	7	t	2022-12-06 20:16:32.52404	0	10	13	\N	\N
11	7	t	2022-12-06 20:16:32.52404	0	20	12	\N	\N
12	8	t	2022-12-06 20:16:32.52404	0	10	15	\N	\N
13	8	t	2022-12-06 20:16:32.52404	0	20	14	\N	\N
14	9	t	2022-12-06 20:16:32.52404	0	1	17	\N	\N
15	9	t	2022-12-06 20:16:32.52404	0	2	16	\N	\N
16	10	t	2022-12-06 20:16:32.52404	0	1	21	\N	\N
17	10	t	2022-12-06 20:16:32.52404	0	2	20	\N	\N
18	11	t	2022-12-06 20:16:32.52404	0	1	23	\N	\N
19	11	t	2022-12-06 20:16:32.52404	0	2	22	\N	\N
20	12	t	2022-12-06 20:16:32.52404	0	1	31	\N	\N
21	12	t	2022-12-06 20:16:32.52404	0	2	30	\N	\N
22	13	t	2022-12-06 20:16:32.52404	0	1	33	\N	\N
23	13	t	2022-12-06 20:16:32.52404	0	2	32	\N	\N
24	14	t	2022-12-06 20:16:32.52404	0	1	35	\N	\N
25	14	t	2022-12-06 20:16:32.52404	0	2	34	\N	\N
26	15	t	2022-12-06 20:16:32.52404	0	1	37	\N	\N
27	15	t	2022-12-06 20:16:32.52404	0	2	36	\N	\N
28	16	t	2022-12-06 20:16:32.52404	0	1	38	\N	\N
29	16	t	2022-12-06 20:16:32.52404	0	2	39	\N	\N
30	18	t	2022-12-06 20:16:32.52404	0	10	40	\N	\N
31	18	t	2022-12-06 20:16:32.52404	0	20	41	\N	\N
32	23	t	2022-12-06 20:16:32.52404	0	10	43	\N	\N
33	23	t	2022-12-06 20:16:32.52404	0	20	44	\N	\N
34	25	t	2022-12-06 20:16:32.52404	0	10	49	\N	\N
35	25	t	2022-12-06 20:16:32.52404	0	20	50	\N	\N
36	26	t	2022-12-06 20:16:32.52404	0	1	52	\N	\N
37	26	t	2022-12-06 20:16:32.52404	0	2	51	\N	\N
38	27	t	2022-12-06 20:16:32.52404	0	1	54	\N	\N
39	27	t	2022-12-06 20:16:32.52404	0	2	53	\N	\N
40	28	t	2022-12-06 20:16:32.52404	0	1	56	\N	\N
41	28	t	2022-12-06 20:16:32.52404	0	2	55	\N	\N
42	29	t	2022-12-06 20:16:32.52404	0	1	59	\N	\N
43	29	t	2022-12-06 20:16:32.52404	0	2	57	\N	\N
44	30	t	2022-12-06 20:16:32.52404	0	1	61	\N	\N
45	30	t	2022-12-06 20:16:32.52404	0	2	60	\N	\N
46	31	t	2022-12-06 20:16:32.52404	0	1	62	\N	\N
47	31	t	2022-12-06 20:16:32.52404	0	2	63	\N	\N
48	32	t	2022-12-06 20:16:32.52404	0	1	64	\N	\N
49	32	t	2022-12-06 20:16:32.52404	0	2	65	\N	\N
50	34	t	2022-12-06 20:16:32.52404	0	1	68	\N	\N
51	34	t	2022-12-06 20:16:32.52404	0	2	67	\N	\N
52	41	t	2022-12-06 20:16:32.52404	0	1	77	\N	\N
53	41	t	2022-12-06 20:16:32.52404	0	2	76	\N	\N
54	42	t	2022-12-06 20:16:32.52404	0	1	81	\N	\N
55	42	t	2022-12-06 20:16:32.52404	0	2	80	\N	\N
56	43	t	2022-12-06 20:16:32.52404	0	1	85	\N	\N
57	43	t	2022-12-06 20:16:32.52404	0	2	84	\N	\N
58	44	t	2022-12-06 20:16:32.52404	0	10	88	\N	\N
59	48	t	2022-12-06 20:16:32.52404	0	10	95	\N	\N
60	48	t	2022-12-06 20:16:32.52404	0	20	94	\N	\N
61	49	t	2022-12-06 20:16:32.52404	0	10	96	\N	\N
62	49	t	2022-12-06 20:16:32.52404	0	20	97	\N	\N
63	50	t	2022-12-06 20:16:32.52404	0	10	99	\N	\N
64	50	t	2022-12-06 20:16:32.52404	0	20	98	\N	\N
65	51	t	2022-12-06 20:16:32.52404	0	10	99	\N	\N
66	51	t	2022-12-06 20:16:32.52404	0	20	98	\N	\N
67	52	t	2022-12-06 20:16:32.52404	0	10	101	\N	\N
68	52	t	2022-12-06 20:16:32.52404	0	20	100	\N	\N
69	53	t	2022-12-06 20:16:47.746915	0	1	103	\N	\N
70	53	t	2022-12-06 20:16:47.746915	0	2	102	\N	\N
71	54	t	2022-12-06 20:16:47.746915	0	1	106	\N	\N
72	54	t	2022-12-06 20:16:47.746915	0	2	104	\N	\N
\.


--
-- Data for Name: ir_action_keyword; Type: TABLE DATA; Schema: public; Owner: gnuhealth
--

COPY public.ir_action_keyword (id, action, create_date, create_uid, keyword, model, write_date, write_uid) FROM stdin;
1	1	2022-12-06 20:16:32.52404	0	tree_open	ir.ui.menu,3	\N	\N
2	3	2022-12-06 20:16:32.52404	0	tree_open	ir.ui.menu,4	\N	\N
3	5	2022-12-06 20:16:32.52404	0	tree_open	ir.ui.menu,5	\N	\N
4	6	2022-12-06 20:16:32.52404	0	tree_open	ir.ui.menu,6	\N	\N
5	7	2022-12-06 20:16:32.52404	0	tree_open	ir.ui.menu,7	\N	\N
6	8	2022-12-06 20:16:32.52404	0	tree_open	ir.ui.menu,8	\N	\N
7	9	2022-12-06 20:16:32.52404	0	tree_open	ir.ui.menu,10	\N	\N
8	10	2022-12-06 20:16:32.52404	0	tree_open	ir.ui.menu,11	\N	\N
9	11	2022-12-06 20:16:32.52404	0	tree_open	ir.ui.menu,12	\N	\N
10	12	2022-12-06 20:16:32.52404	0	tree_open	ir.ui.menu,13	\N	\N
11	13	2022-12-06 20:16:32.52404	0	tree_open	ir.ui.menu,14	\N	\N
12	14	2022-12-06 20:16:32.52404	0	tree_open	ir.ui.menu,16	\N	\N
13	15	2022-12-06 20:16:32.52404	0	tree_open	ir.ui.menu,17	\N	\N
14	16	2022-12-06 20:16:32.52404	0	tree_open	ir.ui.menu,18	\N	\N
15	17	2022-12-06 20:16:32.52404	0	form_relate	ir.model,-1	\N	\N
16	18	2022-12-06 20:16:32.52404	0	tree_open	ir.ui.menu,19	\N	\N
17	19	2022-12-06 20:16:32.52404	0	form_relate	ir.model.field,-1	\N	\N
18	21	2022-12-06 20:16:32.52404	0	form_print	ir.model,-1	\N	\N
19	22	2022-12-06 20:16:32.52404	0	form_print	ir.model,-1	\N	\N
20	23	2022-12-06 20:16:32.52404	0	tree_open	ir.ui.menu,20	\N	\N
21	24	2022-12-06 20:16:32.52404	0	form_relate	ir.model.button,-1	\N	\N
22	25	2022-12-06 20:16:32.52404	0	tree_open	ir.ui.menu,21	\N	\N
23	26	2022-12-06 20:16:32.52404	0	tree_open	ir.ui.menu,23	\N	\N
24	27	2022-12-06 20:16:32.52404	0	tree_open	ir.ui.menu,24	\N	\N
25	28	2022-12-06 20:16:32.52404	0	tree_open	ir.ui.menu,25	\N	\N
26	29	2022-12-06 20:16:32.52404	0	tree_open	ir.ui.menu,26	\N	\N
27	30	2022-12-06 20:16:32.52404	0	tree_open	ir.ui.menu,27	\N	\N
28	31	2022-12-06 20:16:32.52404	0	tree_open	ir.ui.menu,29	\N	\N
29	32	2022-12-06 20:16:32.52404	0	tree_open	ir.ui.menu,31	\N	\N
30	34	2022-12-06 20:16:32.52404	0	tree_open	ir.ui.menu,32	\N	\N
31	35	2022-12-06 20:16:32.52404	0	form_relate	ir.action.report,-1	\N	\N
32	37	2022-12-06 20:16:32.52404	0	form_action	ir.action.report,-1	\N	\N
33	37	2022-12-06 20:16:32.52404	0	form_action	ir.ui.view,-1	\N	\N
34	37	2022-12-06 20:16:32.52404	0	tree_open	ir.ui.menu,33	\N	\N
35	38	2022-12-06 20:16:32.52404	0	tree_open	ir.ui.menu,34	\N	\N
36	39	2022-12-06 20:16:32.52404	0	form_action	ir.action.report,-1	\N	\N
37	39	2022-12-06 20:16:32.52404	0	form_action	ir.ui.view,-1	\N	\N
38	39	2022-12-06 20:16:32.52404	0	tree_open	ir.ui.menu,35	\N	\N
39	40	2022-12-06 20:16:32.52404	0	tree_open	ir.ui.menu,36	\N	\N
40	41	2022-12-06 20:16:32.52404	0	tree_open	ir.ui.menu,37	\N	\N
41	42	2022-12-06 20:16:32.52404	0	tree_open	ir.ui.menu,38	\N	\N
42	43	2022-12-06 20:16:32.52404	0	tree_open	ir.ui.menu,40	\N	\N
43	44	2022-12-06 20:16:32.52404	0	tree_open	ir.ui.menu,41	\N	\N
44	45	2022-12-06 20:16:32.52404	0	form_action	ir.module.config_wizard.item,-1	\N	\N
45	46	2022-12-06 20:16:32.52404	0	form_action	ir.module,-1	\N	\N
46	46	2022-12-06 20:16:32.52404	0	tree_open	ir.ui.menu,42	\N	\N
47	48	2022-12-06 20:16:32.52404	0	tree_open	ir.ui.menu,43	\N	\N
48	49	2022-12-06 20:16:32.52404	0	tree_open	ir.ui.menu,44	\N	\N
49	50	2022-12-06 20:16:32.52404	0	tree_open	ir.ui.menu,45	\N	\N
50	51	2022-12-06 20:16:32.52404	0	form_relate	\N	\N	\N
51	52	2022-12-06 20:16:32.52404	0	tree_open	ir.ui.menu,46	\N	\N
52	53	2022-12-06 20:16:47.746915	0	tree_open	ir.ui.menu,48	\N	\N
53	54	2022-12-06 20:16:47.746915	0	tree_open	ir.ui.menu,49	\N	\N
\.


--
-- Data for Name: ir_action_report; Type: TABLE DATA; Schema: public; Owner: gnuhealth
--

COPY public.ir_action_report (id, action, create_date, create_uid, direct_print, extension, model, module, report, report_content_custom, report_name, single, template_extension, translatable, write_date, write_uid) FROM stdin;
20	20	2022-12-06 20:16:32.52404	0	f		ir.model	ir	\N	\N	ir.model.graph	f	odt	t	2022-12-06 20:16:32.52404	0
22	22	2022-12-06 20:16:32.52404	0	f		ir.model	ir	\N	\N	ir.model.workflow_graph	f	odt	t	2022-12-06 20:16:32.52404	0
56	56	2022-12-06 20:16:47.746915	0	f		res.user	res	res/email_reset_password.html	\N	res.user.email_reset_password	f	html	t	2022-12-06 20:16:47.746915	0
\.


--
-- Data for Name: ir_action_url; Type: TABLE DATA; Schema: public; Owner: gnuhealth
--

COPY public.ir_action_url (id, action, create_date, create_uid, url, write_date, write_uid) FROM stdin;
\.


--
-- Data for Name: ir_action_wizard; Type: TABLE DATA; Schema: public; Owner: gnuhealth
--

COPY public.ir_action_wizard (id, action, create_date, create_uid, model, "window", wiz_name, write_date, write_uid) FROM stdin;
4	4	2022-12-06 20:16:32.52404	0	\N	f	ir.ui.view.show	2022-12-06 20:16:32.52404	0
21	21	2022-12-06 20:16:32.52404	0	ir.model	f	ir.model.print_model_graph	2022-12-06 20:16:32.52404	0
33	33	2022-12-06 20:16:32.52404	0	\N	t	ir.lang.config	2022-12-06 20:16:32.52404	0
35	35	2022-12-06 20:16:32.52404	0	ir.action.report	f	ir.translation.report	2022-12-06 20:16:32.52404	0
37	37	2022-12-06 20:16:32.52404	0	\N	f	ir.translation.set	2022-12-06 20:16:32.52404	0
38	38	2022-12-06 20:16:32.52404	0	\N	f	ir.translation.clean	2022-12-06 20:16:32.52404	0
39	39	2022-12-06 20:16:32.52404	0	\N	f	ir.translation.update	2022-12-06 20:16:32.52404	0
40	40	2022-12-06 20:16:32.52404	0	\N	f	ir.translation.export	2022-12-06 20:16:32.52404	0
45	45	2022-12-06 20:16:32.52404	0	\N	t	ir.module.config_wizard	2022-12-06 20:16:32.52404	0
46	46	2022-12-06 20:16:32.52404	0	\N	f	ir.module.activate_upgrade	2022-12-06 20:16:32.52404	0
47	47	2022-12-06 20:16:32.52404	0	\N	f	ir.module.config	2022-12-06 20:16:32.52404	0
55	55	2022-12-06 20:16:47.746915	0	\N	t	res.user.config	2022-12-06 20:16:47.746915	0
\.


--
-- Data for Name: ir_attachment; Type: TABLE DATA; Schema: public; Owner: gnuhealth
--

COPY public.ir_attachment (id, copy_to_resources, create_date, create_uid, data, description, file_id, link, name, resource, type, write_date, write_uid) FROM stdin;
\.


--
-- Data for Name: ir_avatar; Type: TABLE DATA; Schema: public; Owner: gnuhealth
--

COPY public.ir_avatar (id, copy_to_resources, create_date, create_uid, image, image_id, resource, uuid, write_date, write_uid) FROM stdin;
1	\N	2022-12-06 20:16:47.746915	0	\\xffd8ffe000104a46494600010100000100010000ffdb004300080606070605080707070909080a0c140d0c0b0b0c1912130f141d1a1f1e1d1a1c1c20242e2720222c231c1c2837292c30313434341f27393d38323c2e333432ffdb0043010909090c0b0c180d0d1832211c213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232ffc00011080064006403012200021101031101ffc4001a000100030101010000000000000000000000050607040302ffc4003310000103030105030b0500000000000000000102030405110607122141811415911622315162717292a1a2c234556195b1ffc400190101000301010000000000000000000000000102030405ffc4001e11010003000202030000000000000000000001021112210322415171ffda000c03010002110311003f0080001e9b8c0000000000000000000000000000000000f486096a66643044f9657ae1ac6355ce72ff00089e9097983b2aad372a18925abb7d5411aaeea3e681cc455f56553d3c14e323740004a000000000000000002f5b2eb5f6bd412d7bdb98e8e3f357db7704fa6f145361d271b34c6cf25b9ccd447c8c754aa2f3ca6189d787cc65e59cae47caf48ed33a9a961d43a52e3053b9247c7bfbb8f4a491af14f7e5153a9829a86caef0f966b85b67915cf7af6a62af355e0ffc7ea523555afb9f535751a3711a48af8fe07714f045c7429e2f599a2d7ee22c86001d0c80000000000000001d969b7beeb76a4a18f3bd3cad6653922af15e899534ada7dc194564a3b353e1a92aa395a9ca367044f1c7ca43ecaed7da6f751727b7cca58f758bedbb87f88be259aefab747f794d05ca8d955514ee585ce7d2364c6157288abcb3939af6dbc75b8d6b1ebfaccb4bdd3b9f5250d6abb11b6446c9f03b83be8b9e85db6b36cf3a86eac6f0545a7917ee6fe474f955a03f6783faf6137755a3d61a16a9f6f45735cc5742d56e151ec5ca26396718f72916b4f28b4c62623d663587000ea620000000000000000d974c319a5f672faf95a8923e375539179ab930c4ea9bbe2638f7ba591d23dcae7b955ce55e6aa7c8295a71999fb5ad6dc80d3b64d73fd7dadeef554469f6bbf133102f5e51856727533aaed7dd1a9aba95adc46926fc7f03b8a78671d08600b4464224001280000000000000000000000000000000000000000000000000000000000007fffd9	\N	res.user,1	4210313096f940aab9efb18ef095444f	2022-12-06 20:16:47.746915	0
\.


--
-- Data for Name: ir_avatar_cache; Type: TABLE DATA; Schema: public; Owner: gnuhealth
--

COPY public.ir_avatar_cache (id, avatar, create_date, create_uid, image, image_id, size, write_date, write_uid) FROM stdin;
\.


--
-- Data for Name: ir_cache; Type: TABLE DATA; Schema: public; Owner: gnuhealth
--

COPY public.ir_cache (id, name, "timestamp", create_date, create_uid, write_date, write_uid) FROM stdin;
1	ir.calendar.day	2022-12-06 20:16:53.471876	\N	\N	\N	\N
2	ir_model_data.get_id	2022-12-06 20:16:53.475998	\N	\N	\N	\N
3	ir.model.button.reset	2022-12-06 20:16:53.479447	\N	\N	\N	\N
5	calendar_calendar.get_name	2022-12-06 20:16:53.486946	\N	\N	\N	\N
6	ir.model.get_names	2022-12-06 20:16:53.4907	\N	\N	\N	\N
7	ir_trigger.get_triggers	2022-12-06 20:16:53.494372	\N	\N	\N	\N
10	ir.translation	2022-12-06 20:16:53.50741	\N	\N	\N	\N
11	ir.model.button.groups	2022-12-06 20:16:53.512167	\N	\N	\N	\N
14	ir.model.button.view_attributes	2022-12-06 20:16:53.525244	\N	\N	\N	\N
16	ir.model.field.get_name	2022-12-06 20:16:53.532756	\N	\N	\N	\N
17	_dict_schema_mixin.get_relation_fields	2022-12-06 20:16:53.536619	\N	\N	\N	\N
19	ir.translation.get_report	2022-12-06 20:16:53.543692	\N	\N	\N	\N
20	ir_model_data.has_model	2022-12-06 20:16:53.54685	\N	\N	\N	\N
21	ir.model.button.rules	2022-12-06 20:16:53.549751	\N	\N	\N	\N
22	party.address.subdivision_type.get_types	2022-12-06 20:16:53.553432	\N	\N	\N	\N
25	ir.message	2022-12-06 20:16:53.564218	\N	\N	\N	\N
26	ir.action.report.template	2022-12-06 20:16:53.56723	\N	\N	\N	\N
27	ir_action_keyword.get_keyword	2022-12-06 20:16:53.570678	\N	\N	\N	\N
28	party.address.format.get_format	2022-12-06 20:16:53.573939	\N	\N	\N	\N
29	modelview.view_toolbar_get	2022-12-06 20:16:53.576783	\N	\N	\N	\N
32	stock.location.default_warehouse	2022-12-06 20:16:53.585802	\N	\N	\N	\N
33	webdav_collection.event	2022-12-06 20:16:53.589883	\N	\N	\N	\N
34	ir.calendar.month	2022-12-06 20:16:53.594029	\N	\N	\N	\N
35	ir_ui_view.get_rng	2022-12-06 20:16:53.597626	\N	\N	\N	\N
8	ir.lang	2022-12-06 20:16:53.625859	\N	\N	\N	\N
12	ir.translation.get_language	2022-12-06 20:16:53.629601	\N	\N	\N	\N
24	ir.lang.code	2022-12-06 20:16:53.635582	\N	\N	\N	\N
18	res_user.get_groups	2022-12-06 20:17:40.511117	\N	\N	\N	\N
13	modelview.fields_view_get	2022-12-06 20:17:40.514483	\N	\N	\N	\N
4	res_user.get_preferences	2022-12-06 20:17:40.517458	\N	\N	\N	\N
15	ir_configuration.get_language	2022-12-06 20:17:40.520633	\N	\N	\N	\N
30	ir_rule.domain_get	2022-12-06 20:17:40.523779	\N	\N	\N	\N
9	res_user._get_login	2022-12-06 20:17:40.527081	\N	\N	\N	\N
23	ir_model_access.get_access	2022-12-06 20:17:40.530179	\N	\N	\N	\N
31	ir_model_field_access.check	2022-12-06 20:17:40.533412	\N	\N	\N	\N
\.


--
-- Data for Name: ir_calendar_day; Type: TABLE DATA; Schema: public; Owner: gnuhealth
--

COPY public.ir_calendar_day (id, abbreviation, create_date, create_uid, index, name, write_date, write_uid) FROM stdin;
1	Mon	2022-12-06 20:16:32.52404	0	0	Monday	\N	\N
2	Tue	2022-12-06 20:16:32.52404	0	1	Tuesday	\N	\N
3	Wed	2022-12-06 20:16:32.52404	0	2	Wednesday	\N	\N
4	Thu	2022-12-06 20:16:32.52404	0	3	Thursday	\N	\N
5	Fri	2022-12-06 20:16:32.52404	0	4	Friday	\N	\N
6	Sat	2022-12-06 20:16:32.52404	0	5	Saturday	\N	\N
7	Sun	2022-12-06 20:16:32.52404	0	6	Sunday	\N	\N
\.


--
-- Data for Name: ir_calendar_month; Type: TABLE DATA; Schema: public; Owner: gnuhealth
--

COPY public.ir_calendar_month (id, abbreviation, create_date, create_uid, index, name, write_date, write_uid) FROM stdin;
1	Jan	2022-12-06 20:16:32.52404	0	1	January	\N	\N
2	Feb	2022-12-06 20:16:32.52404	0	2	February	\N	\N
3	Mar	2022-12-06 20:16:32.52404	0	3	March	\N	\N
4	Apr	2022-12-06 20:16:32.52404	0	4	April	\N	\N
5	May	2022-12-06 20:16:32.52404	0	5	May	\N	\N
6	Jun	2022-12-06 20:16:32.52404	0	6	June	\N	\N
7	Jul	2022-12-06 20:16:32.52404	0	7	July	\N	\N
8	Aug	2022-12-06 20:16:32.52404	0	8	August	\N	\N
9	Sep	2022-12-06 20:16:32.52404	0	9	September	\N	\N
10	Oct	2022-12-06 20:16:32.52404	0	10	October	\N	\N
11	Nov	2022-12-06 20:16:32.52404	0	11	November	\N	\N
12	Dec	2022-12-06 20:16:32.52404	0	12	December	\N	\N
\.


--
-- Data for Name: ir_configuration; Type: TABLE DATA; Schema: public; Owner: gnuhealth
--

COPY public.ir_configuration (id, language, hostname, create_date, create_uid, write_date, write_uid) FROM stdin;
1	en	\N	2022-12-06 20:16:53.641846	0	2022-12-06 20:16:53.641846	0
\.


--
-- Data for Name: ir_cron; Type: TABLE DATA; Schema: public; Owner: gnuhealth
--

COPY public.ir_cron (id, active, create_date, create_uid, day, hour, interval_number, interval_type, method, minute, next_call, weekday, write_date, write_uid) FROM stdin;
1	t	2022-12-06 20:16:32.52404	0	\N	\N	1	days	ir.queue|clean	\N	\N	\N	\N	\N
2	t	2022-12-06 20:16:47.746915	0	\N	\N	5	minutes	ir.trigger|trigger_time	\N	\N	\N	\N	\N
\.


--
-- Data for Name: ir_email; Type: TABLE DATA; Schema: public; Owner: gnuhealth
--

COPY public.ir_email (id, body, create_date, create_uid, recipients, recipients_hidden, recipients_secondary, resource, subject, write_date, write_uid) FROM stdin;
\.


--
-- Data for Name: ir_email_address; Type: TABLE DATA; Schema: public; Owner: gnuhealth
--

COPY public.ir_email_address (id, address, create_date, create_uid, email, write_date, write_uid) FROM stdin;
\.


--
-- Data for Name: ir_email_template; Type: TABLE DATA; Schema: public; Owner: gnuhealth
--

COPY public.ir_email_template (id, body, create_date, create_uid, model, name, recipients, recipients_hidden, recipients_hidden_pyson, recipients_pyson, recipients_secondary, recipients_secondary_pyson, subject, write_date, write_uid) FROM stdin;
\.


--
-- Data for Name: ir_email_template-ir_action_report; Type: TABLE DATA; Schema: public; Owner: gnuhealth
--

COPY public."ir_email_template-ir_action_report" (id, create_date, create_uid, report, template, write_date, write_uid) FROM stdin;
\.


--
-- Data for Name: ir_export; Type: TABLE DATA; Schema: public; Owner: gnuhealth
--

COPY public.ir_export (id, create_date, create_uid, name, resource, write_date, write_uid) FROM stdin;
\.


--
-- Data for Name: ir_export-res_group; Type: TABLE DATA; Schema: public; Owner: gnuhealth
--

COPY public."ir_export-res_group" (id, create_date, create_uid, export, "group", write_date, write_uid) FROM stdin;
\.


--
-- Data for Name: ir_export-write-res_group; Type: TABLE DATA; Schema: public; Owner: gnuhealth
--

COPY public."ir_export-write-res_group" (id, create_date, create_uid, export, "group", write_date, write_uid) FROM stdin;
\.


--
-- Data for Name: ir_export_line; Type: TABLE DATA; Schema: public; Owner: gnuhealth
--

COPY public.ir_export_line (id, create_date, create_uid, export, name, write_date, write_uid) FROM stdin;
\.


--
-- Data for Name: ir_lang; Type: TABLE DATA; Schema: public; Owner: gnuhealth
--

COPY public.ir_lang (id, name, code, translatable, parent, active, direction, am, create_date, create_uid, date, decimal_point, "grouping", mon_decimal_point, mon_grouping, mon_thousands_sep, n_cs_precedes, n_sep_by_space, n_sign_posn, negative_sign, p_cs_precedes, p_sep_by_space, p_sign_posn, pg_text_search, pm, positive_sign, thousands_sep, write_date, write_uid) FROM stdin;
2	Bulgarian	bg	f	\N	t	ltr		2022-12-06 20:16:32.52404	0	%d.%m.%Y	,	[3, 3, 0]	,	[3, 3, 0]	 	f	t	1	-	f	t	1	\N			.	\N	\N
3	Català	ca	f	\N	t	ltr	a. m.	2022-12-06 20:16:32.52404	0	%d/%m/%Y	,	[3, 3, 0]	,	[3, 3, 0]	.	f	t	1	-	f	t	1	\N	p. m.		 	\N	\N
4	Czech	cs	f	\N	t	ltr		2022-12-06 20:16:32.52404	0	%d.%m.%Y	,	[3, 3, 0]	,	[3, 3, 0]	 	f	t	1	-	f	t	1	\N			 	\N	\N
5	German	de	f	\N	t	ltr		2022-12-06 20:16:32.52404	0	%d.%m.%Y	,	[3, 3, 0]	,	[3, 3, 0]	.	f	t	1	-	f	t	1	\N			.	\N	\N
6	Spanish	es	f	\N	t	ltr		2022-12-06 20:16:32.52404	0	%d/%m/%Y	,	[3, 3, 0]	,	[3, 3, 0]	.	f	t	1	-	f	t	1	\N			.	\N	\N
7	Spanish (Latin American)	es_419	f	\N	t	ltr		2022-12-06 20:16:32.52404	0	%d/%m/%Y	.	[3, 3, 0]	.	[3, 3, 0]	,	f	t	1	-	f	t	1	\N			,	\N	\N
8	Estonian	et	f	\N	t	ltr	\N	2022-12-06 20:16:32.52404	0	%d.%m.%Y	,	[3, 3]	,	[3, 3]	 	f	t	1	-	f	t	1	\N	\N		 	\N	\N
9	Persian	fa	f	\N	t	rtl		2022-12-06 20:16:32.52404	0	%Y/%m/%d	.	[3, 0]	٫	[3, 0]	٬	f	t	1	-	f	t	1	\N			,	\N	\N
10	Finnish	fi	f	\N	t	ltr	\N	2022-12-06 20:16:32.52404	0	%d.%m.%Y	,	[3, 3, 0]	,	[3, 3, 0]	 	f	t	1	-	f	t	1	\N	\N		 	\N	\N
11	French	fr	f	\N	t	ltr		2022-12-06 20:16:32.52404	0	%d.%m.%Y	,	[3, 0]	,	[3, 0]	 	f	t	1	-	f	t	1	\N			 	\N	\N
12	Hungarian	hu	f	\N	t	ltr		2022-12-06 20:16:32.52404	0	%Y-%m-%d	,	[3, 3, 0]	,	[3, 3, 0]	.	f	t	1	-	f	t	1	\N			.	\N	\N
13	Indonesian	id	f	\N	t	ltr		2022-12-06 20:16:32.52404	0	%d/%m/%Y	,	[3, 3]	,	[3, 3]	.	t	f	1	-	t	f	1	\N			.	\N	\N
14	Italian	it	f	\N	t	ltr		2022-12-06 20:16:32.52404	0	%d/%m/%Y	,	[]	,	[3, 3, 0]	.	t	t	1	-	t	t	1	\N				\N	\N
15	Lao	lo	f	\N	t	ltr	AM	2022-12-06 20:16:32.52404	0	%d/%m/%Y	.	[3, 3, 0]	.	[3, 3, 0]	,	t	t	4	-	t	t	4	\N	PM		,	\N	\N
16	Lithuanian	lt	f	\N	t	ltr		2022-12-06 20:16:32.52404	0	%Y-%m-%d	,	[3, 3, 0]	,	[3, 3, 0]	.	f	t	1	-	f	t	1	\N			.	\N	\N
17	Dutch	nl	f	\N	t	ltr		2022-12-06 20:16:32.52404	0	%d-%m-%Y	,	[]	,	[3, 3, 0]	 	t	t	2	-	t	t	1	\N				\N	\N
18	Polish	pl	f	\N	t	ltr		2022-12-06 20:16:32.52404	0	%d.%m.%Y	,	[3, 3, 0]	,	[3, 0, 0]	 	f	t	1	-	f	t	1	\N			 	\N	\N
19	Portuguese	pt	f	\N	t	ltr		2022-12-06 20:16:32.52404	0	%d-%m-%Y	,	[]	,	[3, 3, 0]	.	t	t	1	-	t	t	1	\N				\N	\N
20	Romanian	ro	f	\N	t	ltr		2022-12-06 20:16:32.52404	0	%d.%m.%Y	,	[3,3]	,	[3,3]	.	t	t	1	-	t	t	1	\N			.	\N	\N
21	Russian	ru	f	\N	t	ltr		2022-12-06 20:16:32.52404	0	%d.%m.%Y	,	[3, 3, 0]	.	[3, 3, 0]	 	f	t	1	-	f	t	1	\N			 	\N	\N
22	Slovenian	sl	f	\N	t	ltr		2022-12-06 20:16:32.52404	0	%d.%m.%Y	,	[]	,	[3, 3, 0]	 	f	t	1	-	f	t	1	\N			 	\N	\N
23	Turkish	tr	f	\N	t	ltr	\N	2022-12-06 20:16:32.52404	0	%d-%m-%Y	,	[3, 3, 0]	,	[3, 3, 0]	.	f	t	1	-	f	t	1	\N	\N		.	\N	\N
24	Chinese Simplified	zh_CN	f	\N	t	ltr	上午	2022-12-06 20:16:32.52404	0	%Y-%m-%d	.	[3, 0]	.	[3, 0]	,	t	f	4	-	t	f	4	\N	下午		,	\N	\N
1	English	en	t	\N	t	ltr	AM	2022-12-06 20:16:32.52404	0	%m/%d/%Y	.	[3, 3, 0]	.	[3, 3, 0]	,	t	f	1	-	t	f	1	\N	PM		,	2022-12-06 20:16:53.604545	0
\.


--
-- Data for Name: ir_message; Type: TABLE DATA; Schema: public; Owner: gnuhealth
--

COPY public.ir_message (id, create_date, create_uid, text, write_date, write_uid) FROM stdin;
1	2022-12-06 20:16:32.52404	0	ID	\N	\N
2	2022-12-06 20:16:32.52404	0	Created by	\N	\N
3	2022-12-06 20:16:32.52404	0	Created at	\N	\N
4	2022-12-06 20:16:32.52404	0	Edited by	\N	\N
5	2022-12-06 20:16:32.52404	0	Edited at	\N	\N
6	2022-12-06 20:16:32.52404	0	Record Name	\N	\N
7	2022-12-06 20:16:32.52404	0	Active	\N	\N
8	2022-12-06 20:16:32.52404	0	Uncheck to exclude from future use.	\N	\N
9	2022-12-06 20:16:32.52404	0	Name	\N	\N
10	2022-12-06 20:16:32.52404	0	String	\N	\N
11	2022-12-06 20:16:32.52404	0	Help	\N	\N
12	2022-12-06 20:16:32.52404	0	Type	\N	\N
13	2022-12-06 20:16:32.52404	0	Boolean	\N	\N
14	2022-12-06 20:16:32.52404	0	Integer	\N	\N
15	2022-12-06 20:16:32.52404	0	Char	\N	\N
16	2022-12-06 20:16:32.52404	0	Float	\N	\N
17	2022-12-06 20:16:32.52404	0	Numeric	\N	\N
18	2022-12-06 20:16:32.52404	0	Date	\N	\N
19	2022-12-06 20:16:32.52404	0	DateTime	\N	\N
20	2022-12-06 20:16:32.52404	0	Selection	\N	\N
21	2022-12-06 20:16:32.52404	0	MultiSelection	\N	\N
22	2022-12-06 20:16:32.52404	0	Digits	\N	\N
23	2022-12-06 20:16:32.52404	0	Domain	\N	\N
24	2022-12-06 20:16:32.52404	0	A couple of key and label separated by ":" per line.	\N	\N
25	2022-12-06 20:16:32.52404	0	Selection Sorted	\N	\N
26	2022-12-06 20:16:32.52404	0	If the selection must be sorted on label.	\N	\N
27	2022-12-06 20:16:32.52404	0	Help Selection	\N	\N
28	2022-12-06 20:16:32.52404	0	The key followed by the help text separated by a ":", one per line.	\N	\N
29	2022-12-06 20:16:32.52404	0	Selection JSON	\N	\N
30	2022-12-06 20:16:32.52404	0	Help Selection JSON	\N	\N
31	2022-12-06 20:16:32.52404	0	Sequence	\N	\N
32	2022-12-06 20:16:32.52404	0	ID must be positive.	\N	\N
33	2022-12-06 20:16:32.52404	0	You are not allowed to modify this record.	\N	\N
34	2022-12-06 20:16:32.52404	0	You are not allowed to delete this record.	\N	\N
35	2022-12-06 20:16:32.52404	0	This record is part of the base configuration.	\N	\N
36	2022-12-06 20:16:32.52404	0	Relation not found: "%(value)r" in "%(model)s".	\N	\N
37	2022-12-06 20:16:32.52404	0	Too many relations found: "%(value)r" in "%(model)s".	\N	\N
38	2022-12-06 20:16:32.52404	0	Syntax error for reference: "%(value)r" in "%(field)s".	\N	\N
39	2022-12-06 20:16:32.52404	0	Syntax error for XML id: "%(value)r" in "%(field)s".	\N	\N
40	2022-12-06 20:16:32.52404	0	The value for field "%(field)s" in "%(model)s" is not valid according to its domain.	\N	\N
41	2022-12-06 20:16:32.52404	0	A value is required for field "%(field)s" in "%(model)s".	\N	\N
42	2022-12-06 20:16:32.52404	0	The value for field "%(field)s" in "%(model)s" is too long (%(size)i > %(max_size)i).	\N	\N
43	2022-12-06 20:16:32.52404	0	The number of digits in the value "%(value)s" for field "%(field)s" in "%(model)s" exceeds the limit of "%(digits)i".	\N	\N
44	2022-12-06 20:16:32.52404	0	The value "%(value)s" for field "%(field)s" in "%(model)s" contains some invalid chars "%(chars)s".	\N	\N
45	2022-12-06 20:16:32.52404	0	The value "%(value)s" for field "%(field)s" in "%(model)s" is not one of the allowed options.	\N	\N
46	2022-12-06 20:16:32.52404	0	The time value "%(value)s" for field "%(field)s" in "%(model)s" is not valid.	\N	\N
47	2022-12-06 20:16:32.52404	0	The value "%(value)s" for field "%(field)s" in "%(model)s" does not exist.	\N	\N
48	2022-12-06 20:16:32.52404	0	The records could not be deleted because they are used by field "%(field)s" of "%(model)s".	\N	\N
49	2022-12-06 20:16:32.52404	0	You are not allowed to access "%(model)s".	\N	\N
50	2022-12-06 20:16:32.52404	0	You are not allowed to access "%(model)s.%(field)s".	\N	\N
51	2022-12-06 20:16:32.52404	0	You are not allowed to create records of "%(model)s" because they fail on at least one of these rules:\n%(rules)s	\N	\N
52	2022-12-06 20:16:32.52404	0	You are not allowed to read records "%(ids)s" of "%(model)s" because of at least one of these rules:\n%(rules)s	\N	\N
53	2022-12-06 20:16:32.52404	0	You are trying to read records "%(ids)s" of "%(model)s" that don't exist anymore.	\N	\N
54	2022-12-06 20:16:32.52404	0	You are not allowed to write to records "%(ids)s" of "%(model)s" because of at least one of these rules:\n%(rules)s	\N	\N
55	2022-12-06 20:16:32.52404	0	You are trying to write to records "%(ids)s" of "%(model)s" that don't exist anymore.	\N	\N
56	2022-12-06 20:16:32.52404	0	You are not allowed to delete records "%(ids)s" of "%(model)s" because of at lease one of those rules:\n%(rules)s	\N	\N
57	2022-12-06 20:16:32.52404	0	Invalid domain in schema "%(schema)s".	\N	\N
58	2022-12-06 20:16:32.52404	0	Invalid selection in schema "%(schema)s".	\N	\N
59	2022-12-06 20:16:32.52404	0	Invalid help selection in schema "%(schema)s".	\N	\N
60	2022-12-06 20:16:32.52404	0	Recursion error: Record "%(rec_name)s" with parent "%(parent_rec_name)s" was configured as ancestor of itself.	\N	\N
61	2022-12-06 20:16:32.52404	0	Missing search function for field "%(field)s" in "%(model)s".	\N	\N
62	2022-12-06 20:16:32.52404	0	Missing setter function for field "%(field)s" in "%(model)s".	\N	\N
63	2022-12-06 20:16:32.52404	0	Calling button "%(button)s on "%(model)s" is not allowed.	\N	\N
64	2022-12-06 20:16:32.52404	0	Invalid XML for view "%(name)s".	\N	\N
65	2022-12-06 20:16:32.52404	0	Wrong wizard model in keyword action "%(name)s".	\N	\N
66	2022-12-06 20:16:32.52404	0	Invalid email definition for report "%(name)s".	\N	\N
67	2022-12-06 20:16:32.52404	0	Invalid view "%(view)s" for action "%(action)s".	\N	\N
68	2022-12-06 20:16:32.52404	0	Invalid domain or search criteria "%(domain)s" for action "%(action)s".	\N	\N
69	2022-12-06 20:16:32.52404	0	Invalid context "%(context)s" for action "%(action)s".	\N	\N
70	2022-12-06 20:16:32.52404	0	The condition "%(condition)s" is not a valid PYSON expression for button rule "%(rule)s".	\N	\N
71	2022-12-06 20:16:32.52404	0	Missing sequence.	\N	\N
72	2022-12-06 20:16:32.52404	0	Invalid prefix "%(affix)s" for sequence "%(sequence)s".	\N	\N
73	2022-12-06 20:16:32.52404	0	Invalid suffix "%(affix)s" for sequence "%(sequence)s".	\N	\N
74	2022-12-06 20:16:32.52404	0	The "Last Timestamp" cannot be in the future for sequence "%s".	\N	\N
75	2022-12-06 20:16:32.52404	0	You cannot change the sequence type of a sequence instead create a new sequence.	\N	\N
76	2022-12-06 20:16:32.52404	0	Invalid grouping "%(grouping)s" for language "%(language)s".	\N	\N
77	2022-12-06 20:16:32.52404	0	Invalid date format "%(format)s" for language "%(language)s".	\N	\N
78	2022-12-06 20:16:32.52404	0	The default language "%(language)s" must be translatable.	\N	\N
79	2022-12-06 20:16:32.52404	0	The default language "%(language)s" can not be deleted.	\N	\N
80	2022-12-06 20:16:32.52404	0	Invalid domain in rule "%(name)s".	\N	\N
81	2022-12-06 20:16:32.52404	0	You can not export translation "%(name)s" because it has been overridden by module "%(overriding_module)s".	\N	\N
82	2022-12-06 20:16:32.52404	0	You can not remove a module that is activated or that is about to be activated.	\N	\N
83	2022-12-06 20:16:32.52404	0	Some activated modules depend on the ones you are trying to deactivate:	\N	\N
84	2022-12-06 20:16:32.52404	0	Condition "%(condition)s" is not a valid PYSON expression for trigger "%(trigger)s".	\N	\N
85	2022-12-06 20:16:32.52404	0	Failed to save, please retry.	\N	\N
86	2022-12-06 20:16:32.52404	0	Y	\N	\N
87	2022-12-06 20:16:32.52404	0	M	\N	\N
88	2022-12-06 20:16:32.52404	0	w	\N	\N
89	2022-12-06 20:16:32.52404	0	d	\N	\N
90	2022-12-06 20:16:32.52404	0	h	\N	\N
91	2022-12-06 20:16:32.52404	0	m	\N	\N
92	2022-12-06 20:16:32.52404	0	s	\N	\N
93	2022-12-06 20:16:32.52404	0	The resources to which this record must be copied.	\N	\N
94	2022-12-06 20:16:32.52404	0	Attachments	\N	\N
95	2022-12-06 20:16:32.52404	0	Notes	\N	\N
96	2022-12-06 20:16:32.52404	0	You are not allowed to execute wizard "%(wizard)s".	\N	\N
97	2022-12-06 20:16:32.52404	0	You are not allowed to execute wizard "%(wizard)s" on "%(model)s".	\N	\N
98	2022-12-06 20:16:32.52404	0	Invalid subject in e-mail template "%(template)s" with exception "%(exception)s".	\N	\N
99	2022-12-06 20:16:32.52404	0	Invalid body in e-mail template "%(template)s" with exception "%(exception)s".	\N	\N
100	2022-12-06 20:16:32.52404	0	Invalid PYSON %(field)s in e-mail template "%(template)s" with exception "%(exception)s".	\N	\N
101	2022-12-06 20:16:32.52404	0	The PYSON %(field)s in e-mail template "%(template)s" must generate a list.	\N	\N
102	2022-12-06 20:16:32.52404	0	Only one avatar is allowed per resource.	\N	\N
103	2022-12-06 20:16:32.52404	0	The size of an avatar must be unique.	\N	\N
104	2022-12-06 20:16:32.52404	0	Avatar	\N	\N
105	2022-12-06 20:16:32.52404	0	Avatars	\N	\N
106	2022-12-06 20:16:32.52404	0	Avatar URL	\N	\N
107	2022-12-06 20:16:47.746915	0	The password is too short.	\N	\N
108	2022-12-06 20:16:47.746915	0	The password is forbidden.	\N	\N
109	2022-12-06 20:16:47.746915	0	The same characters appear in the password too many times.	\N	\N
110	2022-12-06 20:16:47.746915	0	The password cannot be the same as user's name.	\N	\N
111	2022-12-06 20:16:47.746915	0	The password cannot be the same as user's login.	\N	\N
112	2022-12-06 20:16:47.746915	0	The password cannot be the same as user's email address.	\N	\N
113	2022-12-06 20:16:47.746915	0	For logging purposes users cannot be deleted, instead they should be deactivated.	\N	\N
114	2022-12-06 20:16:47.746915	0	Password for %(login)s	\N	\N
\.


--
-- Data for Name: ir_model; Type: TABLE DATA; Schema: public; Owner: gnuhealth
--

COPY public.ir_model (id, model, name, info, module, create_date, create_uid, global_search_p, write_date, write_uid) FROM stdin;
84	ir.model.button-res.group	Model Button - Group	Model Button - Group	res	\N	\N	f	\N	\N
85	ir.rule.group-res.group	Rule Group - Group	Rule Group - Group	res	\N	\N	f	\N	\N
86	ir.sequence.type-res.group	Sequence Type - Group	Sequence Type - Group	res	\N	\N	f	\N	\N
87	ir.export-res.group	Export Group	Export Group	res	\N	\N	f	\N	\N
88	ir.export-write-res.group	Export Modification Group	Export Modification Group	res	\N	\N	f	\N	\N
1	ir.configuration	Configuration	Configuration	ir	2022-12-06 20:16:35.673206	0	\N	\N	\N
2	ir.translation	Translation	Translation	ir	2022-12-06 20:16:35.673206	0	\N	\N	\N
3	ir.translation.set.start	Set Translation	Set Translation	ir	2022-12-06 20:16:35.673206	0	\N	\N	\N
4	ir.translation.set.succeed	Set Translation	Set Translation	ir	2022-12-06 20:16:35.673206	0	\N	\N	\N
5	ir.translation.clean.start	Clean translation	Clean translation	ir	2022-12-06 20:16:35.673206	0	\N	\N	\N
6	ir.translation.clean.succeed	Clean translation	Clean translation	ir	2022-12-06 20:16:35.673206	0	\N	\N	\N
7	ir.translation.update.start	Update translation	Update translation	ir	2022-12-06 20:16:35.673206	0	\N	\N	\N
8	ir.translation.export.start	Export translation	Export translation	ir	2022-12-06 20:16:35.673206	0	\N	\N	\N
9	ir.translation.export.result	Export translation	Export translation	ir	2022-12-06 20:16:35.673206	0	\N	\N	\N
10	ir.sequence.type	Sequence type	Sequence type	ir	2022-12-06 20:16:35.673206	0	\N	\N	\N
11	ir.sequence	Sequence	Sequence	ir	2022-12-06 20:16:35.673206	0	\N	\N	\N
12	ir.sequence.strict	Sequence Strict	Sequence Strict	ir	2022-12-06 20:16:35.673206	0	\N	\N	\N
13	ir.ui.menu	UI menu	UI menu	ir	2022-12-06 20:16:35.673206	0	\N	\N	\N
14	ir.ui.menu.favorite	Menu Favorite	Menu Favorite	ir	2022-12-06 20:16:35.673206	0	\N	\N	\N
15	ir.ui.view	View	View	ir	2022-12-06 20:16:35.673206	0	\N	\N	\N
16	ir.ui.view.show.start	Show view	Show view	ir	2022-12-06 20:16:35.673206	0	\N	\N	\N
17	ir.ui.view_tree_width	View Tree Width	View Tree Width	ir	2022-12-06 20:16:35.673206	0	\N	\N	\N
18	ir.ui.view_tree_state	View Tree State	View Tree State	ir	2022-12-06 20:16:35.673206	0	\N	\N	\N
19	ir.ui.view_search	View Search	View Search	ir	2022-12-06 20:16:35.673206	0	\N	\N	\N
20	ir.ui.icon	Icon	Icon	ir	2022-12-06 20:16:35.673206	0	\N	\N	\N
21	ir.action	Action	Action	ir	2022-12-06 20:16:35.673206	0	\N	\N	\N
22	ir.action.keyword	Action keyword	Action keyword	ir	2022-12-06 20:16:35.673206	0	\N	\N	\N
23	ir.action.report	Action report	Action report	ir	2022-12-06 20:16:35.673206	0	\N	\N	\N
24	ir.action.act_window	Action act window	Action act window	ir	2022-12-06 20:16:35.673206	0	\N	\N	\N
25	ir.action.act_window.view	Action act window view	Action act window view	ir	2022-12-06 20:16:35.673206	0	\N	\N	\N
26	ir.action.act_window.domain	Action act window domain	Action act window domain	ir	2022-12-06 20:16:35.673206	0	\N	\N	\N
27	ir.action.wizard	Action wizard	Action wizard	ir	2022-12-06 20:16:35.673206	0	\N	\N	\N
28	ir.action.url	Action URL	Action URL	ir	2022-12-06 20:16:35.673206	0	\N	\N	\N
29	ir.model	Model	Model	ir	2022-12-06 20:16:35.673206	0	\N	\N	\N
30	ir.model.field	Model field	Model field	ir	\N	\N	f	\N	\N
31	ir.model.access	Model access	Model access	ir	\N	\N	f	\N	\N
32	ir.model.field.access	Model Field Access	Model Field Access	ir	\N	\N	f	\N	\N
33	ir.model.button	Model Button	Model Button	ir	\N	\N	f	\N	\N
34	ir.model.button.rule	Model Button Rule	Model Button Rule	ir	\N	\N	f	\N	\N
35	ir.model.button.click	Model Button Click	Model Button Click	ir	\N	\N	f	\N	\N
36	ir.model.button-button.reset	Model Button Reset	Model Button Reset	ir	\N	\N	f	\N	\N
37	ir.model.data	Model data	Model data	ir	\N	\N	f	\N	\N
38	ir.model.print_model_graph.start	Print Model Graph	Print Model Graph	ir	\N	\N	f	\N	\N
39	ir.attachment	Attachment	Attachment	ir	\N	\N	f	\N	\N
40	ir.note	Note	Note	ir	\N	\N	f	\N	\N
41	ir.note.read	Note Read	Note Read	ir	\N	\N	f	\N	\N
42	ir.avatar	Avatar	Avatar	ir	\N	\N	f	\N	\N
43	ir.avatar.cache	Avatar Cache	Avatar Cache	ir	\N	\N	f	\N	\N
44	ir.cron	Cron	Cron	ir	\N	\N	f	\N	\N
45	ir.lang	Language	Language	ir	\N	\N	f	\N	\N
46	ir.lang.config.start	Language Configuration Start	Language Configuration Start	ir	\N	\N	f	\N	\N
47	ir.export	Export	Export	ir	\N	\N	f	\N	\N
48	ir.export.line	Export line	Export line	ir	\N	\N	f	\N	\N
49	ir.rule.group	Rule group	Rule group	ir	\N	\N	f	\N	\N
50	ir.rule	Rule	Rule	ir	\N	\N	f	\N	\N
51	ir.module	Module	Module	ir	\N	\N	f	\N	\N
52	ir.module.dependency	Module dependency	Module dependency	ir	\N	\N	f	\N	\N
53	ir.module.config_wizard.item	Config wizard to run after activating a module	Config wizard to run after activating a module	ir	\N	\N	f	\N	\N
54	ir.module.config_wizard.first	Module Config Wizard First	Module Config Wizard First	ir	\N	\N	f	\N	\N
55	ir.module.config_wizard.other	Module Config Wizard Other	Module Config Wizard Other	ir	\N	\N	f	\N	\N
56	ir.module.config_wizard.done	Module Config Wizard Done	Module Config Wizard Done	ir	\N	\N	f	\N	\N
57	ir.module.activate_upgrade.start	Module Activate Upgrade Start	Module Activate Upgrade Start	ir	\N	\N	f	\N	\N
58	ir.module.activate_upgrade.done	Module Activate Upgrade Done	Module Activate Upgrade Done	ir	\N	\N	f	\N	\N
59	ir.cache	Cache	Cache	ir	\N	\N	f	\N	\N
60	ir.date	Date	Date	ir	\N	\N	f	\N	\N
61	ir.trigger	Trigger	Trigger	ir	\N	\N	f	\N	\N
62	ir.trigger.log	Trigger Log	Trigger Log	ir	\N	\N	f	\N	\N
63	ir.session	Session	Session	ir	\N	\N	f	\N	\N
64	ir.session.wizard	Session Wizard	Session Wizard	ir	\N	\N	f	\N	\N
65	ir.queue	Queue	Queue	ir	\N	\N	f	\N	\N
66	ir.calendar.month	Month	Month	ir	\N	\N	f	\N	\N
67	ir.calendar.day	Day	Day	ir	\N	\N	f	\N	\N
68	ir.message	Message	Message	ir	\N	\N	f	\N	\N
69	ir.email	Email	Email	ir	\N	\N	f	\N	\N
70	ir.email.address	Email Address	Email Address	ir	\N	\N	f	\N	\N
71	ir.email.template	Email Template	Email Template	ir	\N	\N	f	\N	\N
72	ir.email.template-ir.action.report	Email Template - Report	Email Template - Report	ir	\N	\N	f	\N	\N
73	res.group	Group	Group	res	\N	\N	f	\N	\N
74	res.user	User	User	res	\N	\N	f	\N	\N
75	res.user.login.attempt	Login Attempt	Login Attempt\n\n    This class is separated from the res.user one in order to prevent locking\n    the res.user table when in a long running process.\n    	res	\N	\N	f	\N	\N
76	res.user.device	User Device	User Device	res	\N	\N	f	\N	\N
77	res.user-ir.action	User - Action	User - Action	res	\N	\N	f	\N	\N
78	res.user-res.group	User - Group	User - Group	res	\N	\N	f	\N	\N
79	res.user.warning	User Warning	User Warning	res	\N	\N	f	\N	\N
80	res.user.application	User Application	User Application	res	\N	\N	f	\N	\N
81	res.user.config.start	User Config Init	User Config Init	res	\N	\N	f	\N	\N
82	ir.ui.menu-res.group	UI Menu - Group	UI Menu - Group	res	\N	\N	f	\N	\N
83	ir.action-res.group	Action - Group	Action - Group	res	\N	\N	f	\N	\N
\.


--
-- Data for Name: ir_model_access; Type: TABLE DATA; Schema: public; Owner: gnuhealth
--

COPY public.ir_model_access (id, active, create_date, create_uid, description, "group", model, perm_create, perm_delete, perm_read, perm_write, write_date, write_uid) FROM stdin;
1	t	2022-12-06 20:16:32.52404	0	\N	\N	69	t	f	t	f	\N	\N
2	t	2022-12-06 20:16:47.746915	0	\N	\N	73	f	f	t	f	\N	\N
3	t	2022-12-06 20:16:47.746915	0	\N	1	73	t	t	t	t	\N	\N
4	t	2022-12-06 20:16:47.746915	0	\N	\N	74	f	f	t	f	\N	\N
5	t	2022-12-06 20:16:47.746915	0	\N	1	74	t	t	t	t	\N	\N
6	t	2022-12-06 20:16:47.746915	0	\N	\N	10	f	f	t	f	\N	\N
7	t	2022-12-06 20:16:47.746915	0	\N	1	10	t	t	t	t	\N	\N
8	t	2022-12-06 20:16:47.746915	0	\N	\N	20	f	f	t	f	\N	\N
9	t	2022-12-06 20:16:47.746915	0	\N	1	20	t	t	t	t	\N	\N
10	t	2022-12-06 20:16:47.746915	0	\N	\N	13	f	f	t	f	\N	\N
11	t	2022-12-06 20:16:47.746915	0	\N	1	13	t	t	t	t	\N	\N
12	t	2022-12-06 20:16:47.746915	0	\N	\N	15	f	f	t	f	\N	\N
13	t	2022-12-06 20:16:47.746915	0	\N	1	15	t	t	t	t	\N	\N
14	t	2022-12-06 20:16:47.746915	0	\N	\N	21	f	f	t	f	\N	\N
15	t	2022-12-06 20:16:47.746915	0	\N	1	21	t	t	t	t	\N	\N
16	t	2022-12-06 20:16:47.746915	0	\N	\N	22	f	f	t	f	\N	\N
17	t	2022-12-06 20:16:47.746915	0	\N	1	22	t	t	t	t	\N	\N
18	t	2022-12-06 20:16:47.746915	0	\N	\N	23	f	f	t	f	\N	\N
19	t	2022-12-06 20:16:47.746915	0	\N	1	23	t	t	t	t	\N	\N
20	t	2022-12-06 20:16:47.746915	0	\N	\N	24	f	f	t	f	\N	\N
21	t	2022-12-06 20:16:47.746915	0	\N	1	24	t	t	t	t	\N	\N
22	t	2022-12-06 20:16:47.746915	0	\N	\N	25	f	f	t	f	\N	\N
23	t	2022-12-06 20:16:47.746915	0	\N	1	25	t	t	t	t	\N	\N
24	t	2022-12-06 20:16:47.746915	0	\N	\N	26	f	f	t	f	\N	\N
25	t	2022-12-06 20:16:47.746915	0	\N	1	26	t	t	t	t	\N	\N
26	t	2022-12-06 20:16:47.746915	0	\N	\N	27	f	f	t	f	\N	\N
27	t	2022-12-06 20:16:47.746915	0	\N	1	27	t	t	t	t	\N	\N
28	t	2022-12-06 20:16:47.746915	0	\N	\N	28	f	f	t	f	\N	\N
29	t	2022-12-06 20:16:47.746915	0	\N	1	28	t	t	t	t	\N	\N
30	t	2022-12-06 20:16:47.746915	0	\N	\N	29	f	f	t	f	\N	\N
31	t	2022-12-06 20:16:47.746915	0	\N	1	29	t	t	t	t	\N	\N
32	t	2022-12-06 20:16:47.746915	0	\N	\N	30	f	f	t	f	\N	\N
33	t	2022-12-06 20:16:47.746915	0	\N	1	30	t	t	t	t	\N	\N
34	t	2022-12-06 20:16:47.746915	0	\N	\N	31	f	f	t	f	\N	\N
35	t	2022-12-06 20:16:47.746915	0	\N	1	31	t	t	t	t	\N	\N
36	t	2022-12-06 20:16:47.746915	0	\N	\N	33	f	f	t	f	\N	\N
37	t	2022-12-06 20:16:47.746915	0	\N	1	33	t	t	t	t	\N	\N
38	t	2022-12-06 20:16:47.746915	0	\N	\N	34	f	f	t	f	\N	\N
39	t	2022-12-06 20:16:47.746915	0	\N	1	34	t	t	t	t	\N	\N
40	t	2022-12-06 20:16:47.746915	0	\N	\N	35	f	f	t	f	\N	\N
41	t	2022-12-06 20:16:47.746915	0	\N	1	35	t	t	t	t	\N	\N
42	t	2022-12-06 20:16:47.746915	0	\N	\N	37	f	f	t	f	\N	\N
43	t	2022-12-06 20:16:47.746915	0	\N	\N	44	f	f	t	f	\N	\N
44	t	2022-12-06 20:16:47.746915	0	\N	1	44	t	t	t	t	\N	\N
45	t	2022-12-06 20:16:47.746915	0	\N	\N	65	f	f	f	f	\N	\N
46	t	2022-12-06 20:16:47.746915	0	\N	1	65	f	f	t	f	\N	\N
47	t	2022-12-06 20:16:47.746915	0	\N	\N	45	f	f	t	f	\N	\N
48	t	2022-12-06 20:16:47.746915	0	\N	1	45	t	t	t	t	\N	\N
49	t	2022-12-06 20:16:47.746915	0	\N	\N	2	f	f	t	f	\N	\N
50	t	2022-12-06 20:16:47.746915	0	\N	1	2	t	t	t	t	\N	\N
51	t	2022-12-06 20:16:47.746915	0	\N	\N	49	f	f	t	f	\N	\N
52	t	2022-12-06 20:16:47.746915	0	\N	1	49	t	t	t	t	\N	\N
53	t	2022-12-06 20:16:47.746915	0	\N	\N	50	f	f	t	f	\N	\N
54	t	2022-12-06 20:16:47.746915	0	\N	1	50	t	t	t	t	\N	\N
55	t	2022-12-06 20:16:47.746915	0	\N	\N	51	f	f	t	f	\N	\N
56	t	2022-12-06 20:16:47.746915	0	\N	1	51	t	t	t	t	\N	\N
57	t	2022-12-06 20:16:47.746915	0	\N	\N	52	f	f	t	f	\N	\N
58	t	2022-12-06 20:16:47.746915	0	\N	1	52	t	t	t	t	\N	\N
59	t	2022-12-06 20:16:47.746915	0	\N	\N	61	f	f	t	f	\N	\N
60	t	2022-12-06 20:16:47.746915	0	\N	1	61	t	t	t	t	\N	\N
61	t	2022-12-06 20:16:47.746915	0	\N	\N	62	f	f	t	f	\N	\N
62	t	2022-12-06 20:16:47.746915	0	\N	1	62	t	t	t	t	\N	\N
63	t	2022-12-06 20:16:47.746915	0	\N	\N	18	f	f	f	f	\N	\N
64	t	2022-12-06 20:16:47.746915	0	\N	1	18	t	t	t	t	\N	\N
65	t	2022-12-06 20:16:47.746915	0	\N	\N	68	f	f	t	f	\N	\N
66	t	2022-12-06 20:16:47.746915	0	\N	1	68	t	t	t	t	\N	\N
67	t	2022-12-06 20:16:47.746915	0	\N	\N	71	f	f	t	f	\N	\N
68	t	2022-12-06 20:16:47.746915	0	\N	1	71	t	t	t	t	\N	\N
\.


--
-- Data for Name: ir_model_button; Type: TABLE DATA; Schema: public; Owner: gnuhealth
--

COPY public.ir_model_button (id, confirm, create_date, create_uid, help, model, name, string, write_date, write_uid) FROM stdin;
1	\N	2022-12-06 20:16:32.52404	0	\N	15	show	Show	\N	\N
2	\N	2022-12-06 20:16:32.52404	0	\N	37	sync	Sync	\N	\N
3	\N	2022-12-06 20:16:32.52404	0	\N	44	run_once	Run Once	\N	\N
4	Are you sure you want to load languages' translations?	2022-12-06 20:16:32.52404	0	\N	45	load_translations	Load translations	\N	\N
5	Are you sure you want to remove languages' translations?	2022-12-06 20:16:32.52404	0	\N	45	unload_translations	Unload translations	\N	\N
6	\N	2022-12-06 20:16:32.52404	0	\N	51	activate	Mark for Activation	\N	\N
7	\N	2022-12-06 20:16:32.52404	0	\N	51	activate_cancel	Cancel Activation	\N	\N
8	\N	2022-12-06 20:16:32.52404	0	\N	51	deactivate	Mark for Deactivation (beta)	\N	\N
9	\N	2022-12-06 20:16:32.52404	0	\N	51	deactivate_cancel	Cancel Deactivation	\N	\N
10	\N	2022-12-06 20:16:32.52404	0	\N	51	upgrade	Mark for Upgrade	\N	\N
11	\N	2022-12-06 20:16:32.52404	0	\N	51	upgrade_cancel	Cancel Upgrade	\N	\N
12	\N	2022-12-06 20:16:47.746915	0	Send by email a new temporary password to the user	74	reset_password	Reset Password	\N	\N
13	\N	2022-12-06 20:16:47.746915	0	\N	80	validate_	Validate	\N	\N
14	\N	2022-12-06 20:16:47.746915	0	\N	80	cancel	Cancel	\N	\N
\.


--
-- Data for Name: ir_model_button-button_reset; Type: TABLE DATA; Schema: public; Owner: gnuhealth
--

COPY public."ir_model_button-button_reset" (id, button, button_ruled, create_date, create_uid, write_date, write_uid) FROM stdin;
\.


--
-- Data for Name: ir_model_button-res_group; Type: TABLE DATA; Schema: public; Owner: gnuhealth
--

COPY public."ir_model_button-res_group" (id, active, button, create_date, create_uid, "group", write_date, write_uid) FROM stdin;
1	t	6	2022-12-06 20:16:47.746915	0	1	\N	\N
2	t	7	2022-12-06 20:16:47.746915	0	1	\N	\N
3	t	8	2022-12-06 20:16:47.746915	0	1	\N	\N
4	t	9	2022-12-06 20:16:47.746915	0	1	\N	\N
5	t	10	2022-12-06 20:16:47.746915	0	1	\N	\N
6	t	11	2022-12-06 20:16:47.746915	0	1	\N	\N
7	t	3	2022-12-06 20:16:47.746915	0	1	\N	\N
8	t	2	2022-12-06 20:16:47.746915	0	1	\N	\N
9	t	1	2022-12-06 20:16:47.746915	0	1	\N	\N
\.


--
-- Data for Name: ir_model_button_click; Type: TABLE DATA; Schema: public; Owner: gnuhealth
--

COPY public.ir_model_button_click (id, active, button, create_date, create_uid, record_id, write_date, write_uid, "user") FROM stdin;
\.


--
-- Data for Name: ir_model_button_rule; Type: TABLE DATA; Schema: public; Owner: gnuhealth
--

COPY public.ir_model_button_rule (id, button, condition, create_date, create_uid, description, number_user, write_date, write_uid, "group") FROM stdin;
\.


--
-- Data for Name: ir_model_data; Type: TABLE DATA; Schema: public; Owner: gnuhealth
--

COPY public.ir_model_data (id, create_date, create_uid, db_id, fs_id, fs_values, model, module, noupdate, "values", write_date, write_uid) FROM stdin;
1	2022-12-06 20:16:32.52404	0	1	lang_en	[["am","AM"],["code","en"],["date","%m/%d/%Y"],["decimal_point","."],["grouping","[3, 3, 0]"],["mon_decimal_point","."],["mon_grouping","[3, 3, 0]"],["mon_thousands_sep",","],["n_cs_precedes",true],["n_sep_by_space",false],["n_sign_posn",1],["name","English"],["negative_sign","-"],["p_cs_precedes",true],["p_sep_by_space",false],["p_sign_posn",1],["pm","PM"],["positive_sign",""],["thousands_sep",","]]	ir.lang	ir	f	[["am","AM"],["code","en"],["date","%m/%d/%Y"],["decimal_point","."],["grouping","[3, 3, 0]"],["mon_decimal_point","."],["mon_grouping","[3, 3, 0]"],["mon_thousands_sep",","],["n_cs_precedes",true],["n_sep_by_space",false],["n_sign_posn",1],["name","English"],["negative_sign","-"],["p_cs_precedes",true],["p_sep_by_space",false],["p_sign_posn",1],["pm","PM"],["positive_sign",""],["thousands_sep",","]]	\N	\N
2	2022-12-06 20:16:32.52404	0	1	board_icon	[["name","tryton-board"],["path","ui/icons/tryton-board.svg"]]	ir.ui.icon	ir	f	[["name","tryton-board"],["path","ui/icons/tryton-board.svg"]]	\N	\N
3	2022-12-06 20:16:32.52404	0	2	calendar_icon	[["name","tryton-calendar"],["path","ui/icons/tryton-calendar.svg"]]	ir.ui.icon	ir	f	[["name","tryton-calendar"],["path","ui/icons/tryton-calendar.svg"]]	\N	\N
4	2022-12-06 20:16:32.52404	0	3	folder_icon	[["name","tryton-folder"],["path","ui/icons/tryton-folder.svg"]]	ir.ui.icon	ir	f	[["name","tryton-folder"],["path","ui/icons/tryton-folder.svg"]]	\N	\N
5	2022-12-06 20:16:32.52404	0	4	form_icon	[["name","tryton-form"],["path","ui/icons/tryton-form.svg"]]	ir.ui.icon	ir	f	[["name","tryton-form"],["path","ui/icons/tryton-form.svg"]]	\N	\N
6	2022-12-06 20:16:32.52404	0	5	graph_icon	[["name","tryton-graph"],["path","ui/icons/tryton-graph.svg"]]	ir.ui.icon	ir	f	[["name","tryton-graph"],["path","ui/icons/tryton-graph.svg"]]	\N	\N
7	2022-12-06 20:16:32.52404	0	6	list_icon	[["name","tryton-list"],["path","ui/icons/tryton-list.svg"]]	ir.ui.icon	ir	f	[["name","tryton-list"],["path","ui/icons/tryton-list.svg"]]	\N	\N
8	2022-12-06 20:16:32.52404	0	7	settings_icon	[["name","tryton-settings"],["path","ui/icons/tryton-settings.svg"]]	ir.ui.icon	ir	f	[["name","tryton-settings"],["path","ui/icons/tryton-settings.svg"]]	\N	\N
9	2022-12-06 20:16:32.52404	0	8	tree_icon	[["name","tryton-tree"],["path","ui/icons/tryton-tree.svg"]]	ir.ui.icon	ir	f	[["name","tryton-tree"],["path","ui/icons/tryton-tree.svg"]]	\N	\N
10	2022-12-06 20:16:32.52404	0	1	menu_administration	[["icon","tryton-settings"],["name","Administration"],["sequence",9999]]	ir.ui.menu	ir	f	[["icon","tryton-settings"],["name","Administration"],["sequence",9999]]	\N	\N
11	2022-12-06 20:16:32.52404	0	2	menu_ui	[["icon","tryton-folder"],["name","User Interface"],["parent",1],["sequence",50]]	ir.ui.menu	ir	f	[["icon","tryton-folder"],["name","User Interface"],["parent",1],["sequence",50]]	\N	\N
12	2022-12-06 20:16:32.52404	0	1	icon_view_tree	[["model","ir.ui.icon"],["name","icon_view_list"],["type","tree"]]	ir.ui.view	ir	f	[["model","ir.ui.icon"],["name","icon_view_list"],["type","tree"]]	\N	\N
13	2022-12-06 20:16:32.52404	0	2	icon_view_form	[["model","ir.ui.icon"],["name","icon_view_form"],["type","form"]]	ir.ui.view	ir	f	[["model","ir.ui.icon"],["name","icon_view_form"],["type","form"]]	\N	\N
14	2022-12-06 20:16:32.52404	0	1	act_icon_form	[["name","Icons"],["res_model","ir.ui.icon"]]	ir.action.act_window	ir	f	[["name","Icons"],["res_model","ir.ui.icon"]]	\N	\N
15	2022-12-06 20:16:32.52404	0	1	act_icon_form_view1	[["act_window",1],["sequence",10],["view",1]]	ir.action.act_window.view	ir	f	[["act_window",1],["sequence",10],["view",1]]	\N	\N
16	2022-12-06 20:16:32.52404	0	2	act_icon_form_view2	[["act_window",1],["sequence",20],["view",2]]	ir.action.act_window.view	ir	f	[["act_window",1],["sequence",20],["view",2]]	\N	\N
17	2022-12-06 20:16:32.52404	0	3	menu_icon_form	[["action","ir.action.act_window,1"],["icon","tryton-list"],["name","Icons"],["parent",2],["sequence",20]]	ir.ui.menu	ir	f	[["action","ir.action.act_window,1"],["icon","tryton-list"],["name","Icons"],["parent",2],["sequence",20]]	\N	\N
18	2022-12-06 20:16:32.52404	0	3	menu_view_tree_tree	[["field_childs","childs"],["model","ir.ui.menu"],["name","ui_menu_tree"],["priority",20],["type","tree"]]	ir.ui.view	ir	f	[["field_childs","childs"],["model","ir.ui.menu"],["name","ui_menu_tree"],["priority",20],["type","tree"]]	\N	\N
19	2022-12-06 20:16:32.52404	0	4	menu_view_list	[["model","ir.ui.menu"],["name","ui_menu_list"],["priority",10],["type","tree"]]	ir.ui.view	ir	f	[["model","ir.ui.menu"],["name","ui_menu_list"],["priority",10],["type","tree"]]	\N	\N
20	2022-12-06 20:16:32.52404	0	5	menu_view_form	[["model","ir.ui.menu"],["name","ui_menu_form"],["type","form"]]	ir.ui.view	ir	f	[["model","ir.ui.menu"],["name","ui_menu_form"],["type","form"]]	\N	\N
21	2022-12-06 20:16:32.52404	0	2	act_menu_tree	[["domain","[[\\"parent\\", \\"=\\", null]]"],["name","Menu"],["res_model","ir.ui.menu"],["usage","menu"]]	ir.action.act_window	ir	f	[["domain","[[\\"parent\\", \\"=\\", null]]"],["name","Menu"],["res_model","ir.ui.menu"],["usage","menu"]]	\N	\N
22	2022-12-06 20:16:32.52404	0	3	act_menu_tree_view1	[["act_window",2],["sequence",1],["view",3]]	ir.action.act_window.view	ir	f	[["act_window",2],["sequence",1],["view",3]]	\N	\N
23	2022-12-06 20:16:32.52404	0	3	act_menu_list	[["name","Menu"],["res_model","ir.ui.menu"]]	ir.action.act_window	ir	f	[["name","Menu"],["res_model","ir.ui.menu"]]	\N	\N
24	2022-12-06 20:16:32.52404	0	4	act_menu_list_view1	[["act_window",3],["sequence",10],["view",4]]	ir.action.act_window.view	ir	f	[["act_window",3],["sequence",10],["view",4]]	\N	\N
25	2022-12-06 20:16:32.52404	0	5	act_menu_list_view2	[["act_window",3],["sequence",20],["view",5]]	ir.action.act_window.view	ir	f	[["act_window",3],["sequence",20],["view",5]]	\N	\N
26	2022-12-06 20:16:32.52404	0	4	menu_menu_list	[["action","ir.action.act_window,3"],["icon","tryton-list"],["name","Menu"],["parent",2],["sequence",10]]	ir.ui.menu	ir	f	[["action","ir.action.act_window,3"],["icon","tryton-list"],["name","Menu"],["parent",2],["sequence",10]]	\N	\N
27	2022-12-06 20:16:32.52404	0	6	menu_favorite_view_list	[["model","ir.ui.menu.favorite"],["name","ui_menu_favorite_list"],["type","tree"]]	ir.ui.view	ir	f	[["model","ir.ui.menu.favorite"],["name","ui_menu_favorite_list"],["type","tree"]]	\N	\N
28	2022-12-06 20:16:32.52404	0	7	menu_favorite_view_form	[["model","ir.ui.menu.favorite"],["name","ui_menu_favorite_form"],["type","form"]]	ir.ui.view	ir	f	[["model","ir.ui.menu.favorite"],["name","ui_menu_favorite_form"],["type","form"]]	\N	\N
29	2022-12-06 20:16:32.52404	0	4	act_view_show	[["name","Show View"],["wiz_name","ir.ui.view.show"]]	ir.action.wizard	ir	f	[["name","Show View"],["wiz_name","ir.ui.view.show"]]	\N	\N
30	2022-12-06 20:16:32.52404	0	8	view_view_form	[["model","ir.ui.view"],["name","ui_view_form"],["type","form"]]	ir.ui.view	ir	f	[["model","ir.ui.view"],["name","ui_view_form"],["type","form"]]	\N	\N
31	2022-12-06 20:16:32.52404	0	9	view_view_tree	[["model","ir.ui.view"],["name","ui_view_list"],["type","tree"]]	ir.ui.view	ir	f	[["model","ir.ui.view"],["name","ui_view_list"],["type","tree"]]	\N	\N
32	2022-12-06 20:16:32.52404	0	5	act_view_form	[["name","Views"],["res_model","ir.ui.view"],["type","ir.action.act_window"]]	ir.action.act_window	ir	f	[["name","Views"],["res_model","ir.ui.view"],["type","ir.action.act_window"]]	\N	\N
33	2022-12-06 20:16:32.52404	0	6	act_view_form_view1	[["act_window",5],["sequence",1],["view",9]]	ir.action.act_window.view	ir	f	[["act_window",5],["sequence",1],["view",9]]	\N	\N
34	2022-12-06 20:16:32.52404	0	7	act_view_form_view2	[["act_window",5],["sequence",2],["view",8]]	ir.action.act_window.view	ir	f	[["act_window",5],["sequence",2],["view",8]]	\N	\N
35	2022-12-06 20:16:32.52404	0	5	menu_view	[["action","ir.action.act_window,5"],["icon","tryton-list"],["name","Views"],["parent",2],["sequence",10]]	ir.ui.menu	ir	f	[["action","ir.action.act_window,5"],["icon","tryton-list"],["name","Views"],["parent",2],["sequence",10]]	\N	\N
36	2022-12-06 20:16:32.52404	0	1	view_show_button	[["model",15],["name","show"],["string","Show"]]	ir.model.button	ir	f	[["model",15],["name","show"],["string","Show"]]	\N	\N
37	2022-12-06 20:16:32.52404	0	10	view_tree_width_view_form	[["model","ir.ui.view_tree_width"],["name","ui_view_tree_width_form"],["type","form"]]	ir.ui.view	ir	f	[["model","ir.ui.view_tree_width"],["name","ui_view_tree_width_form"],["type","form"]]	\N	\N
38	2022-12-06 20:16:32.52404	0	11	view_tree_width_view_tree	[["model","ir.ui.view_tree_width"],["name","ui_view_tree_width_list"],["type","tree"]]	ir.ui.view	ir	f	[["model","ir.ui.view_tree_width"],["name","ui_view_tree_width_list"],["type","tree"]]	\N	\N
39	2022-12-06 20:16:32.52404	0	6	act_view_tree_width_form	[["name","View Tree Width"],["res_model","ir.ui.view_tree_width"],["type","ir.action.act_window"]]	ir.action.act_window	ir	f	[["name","View Tree Width"],["res_model","ir.ui.view_tree_width"],["type","ir.action.act_window"]]	\N	\N
40	2022-12-06 20:16:32.52404	0	8	act_view_tree_width_form_view1	[["act_window",6],["sequence",1],["view",11]]	ir.action.act_window.view	ir	f	[["act_window",6],["sequence",1],["view",11]]	\N	\N
41	2022-12-06 20:16:32.52404	0	9	act_view_tree_width_form_view2	[["act_window",6],["sequence",2],["view",10]]	ir.action.act_window.view	ir	f	[["act_window",6],["sequence",2],["view",10]]	\N	\N
42	2022-12-06 20:16:32.52404	0	6	menu_view_tree_width	[["action","ir.action.act_window,6"],["icon","tryton-list"],["name","View Tree Width"],["parent",2],["sequence",50]]	ir.ui.menu	ir	f	[["action","ir.action.act_window,6"],["icon","tryton-list"],["name","View Tree Width"],["parent",2],["sequence",50]]	\N	\N
43	2022-12-06 20:16:32.52404	0	12	view_tree_state_form	[["model","ir.ui.view_tree_state"],["name","ui_view_tree_state_form"],["type","form"]]	ir.ui.view	ir	f	[["model","ir.ui.view_tree_state"],["name","ui_view_tree_state_form"],["type","form"]]	\N	\N
44	2022-12-06 20:16:32.52404	0	13	view_tree_state_tree	[["model","ir.ui.view_tree_state"],["name","ui_view_tree_state_list"],["type","tree"]]	ir.ui.view	ir	f	[["model","ir.ui.view_tree_state"],["name","ui_view_tree_state_list"],["type","tree"]]	\N	\N
45	2022-12-06 20:16:32.52404	0	7	act_view_tree_state	[["name","Tree State"],["res_model","ir.ui.view_tree_state"],["type","ir.action.act_window"]]	ir.action.act_window	ir	f	[["name","Tree State"],["res_model","ir.ui.view_tree_state"],["type","ir.action.act_window"]]	\N	\N
46	2022-12-06 20:16:32.52404	0	10	act_view_tree_state_tree	[["act_window",7],["sequence",10],["view",13]]	ir.action.act_window.view	ir	f	[["act_window",7],["sequence",10],["view",13]]	\N	\N
47	2022-12-06 20:16:32.52404	0	11	act_view_tree_state_form	[["act_window",7],["sequence",20],["view",12]]	ir.action.act_window.view	ir	f	[["act_window",7],["sequence",20],["view",12]]	\N	\N
48	2022-12-06 20:16:32.52404	0	7	menu_view_tree_state	[["action","ir.action.act_window,7"],["icon","tryton-list"],["name","Tree State"],["parent",2],["sequence",50]]	ir.ui.menu	ir	f	[["action","ir.action.act_window,7"],["icon","tryton-list"],["name","Tree State"],["parent",2],["sequence",50]]	\N	\N
49	2022-12-06 20:16:32.52404	0	14	view_search_form	[["model","ir.ui.view_search"],["name","ui_view_search_form"],["type","form"]]	ir.ui.view	ir	f	[["model","ir.ui.view_search"],["name","ui_view_search_form"],["type","form"]]	\N	\N
50	2022-12-06 20:16:32.52404	0	15	view_search_tree	[["model","ir.ui.view_search"],["name","ui_view_search_list"],["type","tree"]]	ir.ui.view	ir	f	[["model","ir.ui.view_search"],["name","ui_view_search_list"],["type","tree"]]	\N	\N
51	2022-12-06 20:16:32.52404	0	8	act_view_search	[["name","View Search"],["res_model","ir.ui.view_search"],["type","ir.action.act_window"]]	ir.action.act_window	ir	f	[["name","View Search"],["res_model","ir.ui.view_search"],["type","ir.action.act_window"]]	\N	\N
52	2022-12-06 20:16:32.52404	0	12	act_view_search_tree	[["act_window",8],["sequence",10],["view",15]]	ir.action.act_window.view	ir	f	[["act_window",8],["sequence",10],["view",15]]	\N	\N
53	2022-12-06 20:16:32.52404	0	13	act_view_search_form	[["act_window",8],["sequence",20],["view",14]]	ir.action.act_window.view	ir	f	[["act_window",8],["sequence",20],["view",14]]	\N	\N
54	2022-12-06 20:16:32.52404	0	8	menu_view_search	[["action","ir.action.act_window,8"],["icon","tryton-list"],["name","View Search"],["parent",2],["sequence",50]]	ir.ui.menu	ir	f	[["action","ir.action.act_window,8"],["icon","tryton-list"],["name","View Search"],["parent",2],["sequence",50]]	\N	\N
55	2022-12-06 20:16:32.52404	0	9	menu_action	[["icon","tryton-folder"],["name","Actions"],["parent",2],["sequence",50]]	ir.ui.menu	ir	f	[["icon","tryton-folder"],["name","Actions"],["parent",2],["sequence",50]]	\N	\N
56	2022-12-06 20:16:32.52404	0	16	action_view_form	[["model","ir.action"],["name","action_form"],["type","form"]]	ir.ui.view	ir	f	[["model","ir.action"],["name","action_form"],["type","form"]]	\N	\N
57	2022-12-06 20:16:32.52404	0	17	action_view_tree	[["model","ir.action"],["name","action_list"],["type","tree"]]	ir.ui.view	ir	f	[["model","ir.action"],["name","action_list"],["type","tree"]]	\N	\N
58	2022-12-06 20:16:32.52404	0	9	act_action_form	[["name","Actions"],["res_model","ir.action"],["type","ir.action.act_window"]]	ir.action.act_window	ir	f	[["name","Actions"],["res_model","ir.action"],["type","ir.action.act_window"]]	\N	\N
59	2022-12-06 20:16:32.52404	0	14	act_action_form_view1	[["act_window",9],["sequence",1],["view",17]]	ir.action.act_window.view	ir	f	[["act_window",9],["sequence",1],["view",17]]	\N	\N
60	2022-12-06 20:16:32.52404	0	15	act_action_form_view2	[["act_window",9],["sequence",2],["view",16]]	ir.action.act_window.view	ir	f	[["act_window",9],["sequence",2],["view",16]]	\N	\N
61	2022-12-06 20:16:32.52404	0	10	menu_act_action	[["action","ir.action.act_window,9"],["icon","tryton-list"],["name","Actions"],["parent",9],["sequence",10]]	ir.ui.menu	ir	f	[["action","ir.action.act_window,9"],["icon","tryton-list"],["name","Actions"],["parent",9],["sequence",10]]	\N	\N
62	2022-12-06 20:16:32.52404	0	18	action_keyword_view_list	[["model","ir.action.keyword"],["name","action_keyword_list"],["type","tree"]]	ir.ui.view	ir	f	[["model","ir.action.keyword"],["name","action_keyword_list"],["type","tree"]]	\N	\N
63	2022-12-06 20:16:32.52404	0	19	action_keyword_view_form	[["model","ir.action.keyword"],["name","action_keyword_form"],["type","form"]]	ir.ui.view	ir	f	[["model","ir.action.keyword"],["name","action_keyword_form"],["type","form"]]	\N	\N
64	2022-12-06 20:16:32.52404	0	20	action_report_view_form	[["model","ir.action.report"],["name","action_report_form"],["type","form"]]	ir.ui.view	ir	f	[["model","ir.action.report"],["name","action_report_form"],["type","form"]]	\N	\N
65	2022-12-06 20:16:32.52404	0	21	action_report_view_tree	[["model","ir.action.report"],["name","action_report_list"],["type","tree"]]	ir.ui.view	ir	f	[["model","ir.action.report"],["name","action_report_list"],["type","tree"]]	\N	\N
66	2022-12-06 20:16:32.52404	0	10	act_action_report_form	[["name","Reports"],["res_model","ir.action.report"],["type","ir.action.act_window"]]	ir.action.act_window	ir	f	[["name","Reports"],["res_model","ir.action.report"],["type","ir.action.act_window"]]	\N	\N
67	2022-12-06 20:16:32.52404	0	16	act_action_report_form_view1	[["act_window",10],["sequence",1],["view",21]]	ir.action.act_window.view	ir	f	[["act_window",10],["sequence",1],["view",21]]	\N	\N
68	2022-12-06 20:16:32.52404	0	17	act_action_report_form_view2	[["act_window",10],["sequence",2],["view",20]]	ir.action.act_window.view	ir	f	[["act_window",10],["sequence",2],["view",20]]	\N	\N
69	2022-12-06 20:16:32.52404	0	11	menu_action_report_form	[["action","ir.action.act_window,10"],["icon","tryton-list"],["name","Reports"],["parent",9],["sequence",20]]	ir.ui.menu	ir	f	[["action","ir.action.act_window,10"],["icon","tryton-list"],["name","Reports"],["parent",9],["sequence",20]]	\N	\N
70	2022-12-06 20:16:32.52404	0	22	action_act_window_view_form	[["model","ir.action.act_window"],["name","action_act_window_form"],["type","form"]]	ir.ui.view	ir	f	[["model","ir.action.act_window"],["name","action_act_window_form"],["type","form"]]	\N	\N
71	2022-12-06 20:16:32.52404	0	23	action_act_window_view_tree	[["model","ir.action.act_window"],["name","action_act_window_list"],["type","tree"]]	ir.ui.view	ir	f	[["model","ir.action.act_window"],["name","action_act_window_list"],["type","tree"]]	\N	\N
72	2022-12-06 20:16:32.52404	0	11	act_action_act_window_form	[["name","Window Actions"],["res_model","ir.action.act_window"],["type","ir.action.act_window"]]	ir.action.act_window	ir	f	[["name","Window Actions"],["res_model","ir.action.act_window"],["type","ir.action.act_window"]]	\N	\N
73	2022-12-06 20:16:32.52404	0	18	act_action_act_window_view1	[["act_window",11],["sequence",1],["view",23]]	ir.action.act_window.view	ir	f	[["act_window",11],["sequence",1],["view",23]]	\N	\N
74	2022-12-06 20:16:32.52404	0	19	act_action_act_window_view2	[["act_window",11],["sequence",2],["view",22]]	ir.action.act_window.view	ir	f	[["act_window",11],["sequence",2],["view",22]]	\N	\N
75	2022-12-06 20:16:32.52404	0	12	menu_action_act_window	[["action","ir.action.act_window,11"],["icon","tryton-list"],["name","Window Actions"],["parent",9],["sequence",20]]	ir.ui.menu	ir	f	[["action","ir.action.act_window,11"],["icon","tryton-list"],["name","Window Actions"],["parent",9],["sequence",20]]	\N	\N
76	2022-12-06 20:16:32.52404	0	24	act_window_view_view_form	[["model","ir.action.act_window.view"],["name","action_act_window_view_form"],["type","form"]]	ir.ui.view	ir	f	[["model","ir.action.act_window.view"],["name","action_act_window_view_form"],["type","form"]]	\N	\N
77	2022-12-06 20:16:32.52404	0	25	act_window_view_view_list	[["model","ir.action.act_window.view"],["name","action_act_window_view_list"],["priority",10],["type","tree"]]	ir.ui.view	ir	f	[["model","ir.action.act_window.view"],["name","action_act_window_view_list"],["priority",10],["type","tree"]]	\N	\N
78	2022-12-06 20:16:32.52404	0	26	act_window_view_view_list2	[["model","ir.action.act_window.view"],["name","action_act_window_view_list2"],["priority",20],["type","tree"]]	ir.ui.view	ir	f	[["model","ir.action.act_window.view"],["name","action_act_window_view_list2"],["priority",20],["type","tree"]]	\N	\N
79	2022-12-06 20:16:32.52404	0	27	act_window_domain_view_form	[["model","ir.action.act_window.domain"],["name","action_act_window_domain_form"],["type","form"]]	ir.ui.view	ir	f	[["model","ir.action.act_window.domain"],["name","action_act_window_domain_form"],["type","form"]]	\N	\N
80	2022-12-06 20:16:32.52404	0	28	act_window_domain_view_list	[["model","ir.action.act_window.domain"],["name","action_act_window_domain_list"],["priority",10],["type","tree"]]	ir.ui.view	ir	f	[["model","ir.action.act_window.domain"],["name","action_act_window_domain_list"],["priority",10],["type","tree"]]	\N	\N
81	2022-12-06 20:16:32.52404	0	29	act_window_domain_view_list2	[["model","ir.action.act_window.domain"],["name","action_act_window_domain_list2"],["priority",20],["type","tree"]]	ir.ui.view	ir	f	[["model","ir.action.act_window.domain"],["name","action_act_window_domain_list2"],["priority",20],["type","tree"]]	\N	\N
82	2022-12-06 20:16:32.52404	0	30	action_wizard_view_form	[["model","ir.action.wizard"],["name","action_wizard_form"],["type","form"]]	ir.ui.view	ir	f	[["model","ir.action.wizard"],["name","action_wizard_form"],["type","form"]]	\N	\N
83	2022-12-06 20:16:32.52404	0	31	action_wizard_view_tree	[["model","ir.action.wizard"],["name","action_wizard_list"],["type","tree"]]	ir.ui.view	ir	f	[["model","ir.action.wizard"],["name","action_wizard_list"],["type","tree"]]	\N	\N
84	2022-12-06 20:16:32.52404	0	12	act_action_wizard_form	[["name","Wizards"],["res_model","ir.action.wizard"],["type","ir.action.act_window"]]	ir.action.act_window	ir	f	[["name","Wizards"],["res_model","ir.action.wizard"],["type","ir.action.act_window"]]	\N	\N
85	2022-12-06 20:16:32.52404	0	20	act_action_wizard_form_view1	[["act_window",12],["sequence",1],["view",31]]	ir.action.act_window.view	ir	f	[["act_window",12],["sequence",1],["view",31]]	\N	\N
86	2022-12-06 20:16:32.52404	0	21	act_action_wizard_form_view2	[["act_window",12],["sequence",2],["view",30]]	ir.action.act_window.view	ir	f	[["act_window",12],["sequence",2],["view",30]]	\N	\N
87	2022-12-06 20:16:32.52404	0	13	menu_action_wizard	[["action","ir.action.act_window,12"],["icon","tryton-list"],["name","Wizards"],["parent",9]]	ir.ui.menu	ir	f	[["action","ir.action.act_window,12"],["icon","tryton-list"],["name","Wizards"],["parent",9]]	\N	\N
88	2022-12-06 20:16:32.52404	0	32	action_url_view_form	[["model","ir.action.url"],["name","action_url_form"],["type","form"]]	ir.ui.view	ir	f	[["model","ir.action.url"],["name","action_url_form"],["type","form"]]	\N	\N
89	2022-12-06 20:16:32.52404	0	33	action_url_view_tree	[["model","ir.action.url"],["name","action_url_list"],["type","tree"]]	ir.ui.view	ir	f	[["model","ir.action.url"],["name","action_url_list"],["type","tree"]]	\N	\N
90	2022-12-06 20:16:32.52404	0	13	act_action_url_form	[["name","URLs"],["res_model","ir.action.url"],["type","ir.action.act_window"]]	ir.action.act_window	ir	f	[["name","URLs"],["res_model","ir.action.url"],["type","ir.action.act_window"]]	\N	\N
91	2022-12-06 20:16:32.52404	0	22	act_action_url_form_view1	[["act_window",13],["sequence",1],["view",33]]	ir.action.act_window.view	ir	f	[["act_window",13],["sequence",1],["view",33]]	\N	\N
92	2022-12-06 20:16:32.52404	0	23	act_action_url_form_view2	[["act_window",13],["sequence",2],["view",32]]	ir.action.act_window.view	ir	f	[["act_window",13],["sequence",2],["view",32]]	\N	\N
93	2022-12-06 20:16:32.52404	0	14	menu_action_url	[["action","ir.action.act_window,13"],["icon","tryton-list"],["name","URLs"],["parent",9],["sequence",20]]	ir.ui.menu	ir	f	[["action","ir.action.act_window,13"],["icon","tryton-list"],["name","URLs"],["parent",9],["sequence",20]]	\N	\N
94	2022-12-06 20:16:32.52404	0	15	menu_models	[["icon","tryton-folder"],["name","Models"],["parent",1],["sequence",50]]	ir.ui.menu	ir	f	[["icon","tryton-folder"],["name","Models"],["parent",1],["sequence",50]]	\N	\N
95	2022-12-06 20:16:32.52404	0	34	model_view_form	[["model","ir.model"],["name","model_form"],["type","form"]]	ir.ui.view	ir	f	[["model","ir.model"],["name","model_form"],["type","form"]]	\N	\N
96	2022-12-06 20:16:32.52404	0	35	model_view_tree	[["model","ir.model"],["name","model_list"],["type","tree"]]	ir.ui.view	ir	f	[["model","ir.model"],["name","model_list"],["type","tree"]]	\N	\N
97	2022-12-06 20:16:32.52404	0	14	act_model_form	[["name","Models"],["res_model","ir.model"]]	ir.action.act_window	ir	f	[["name","Models"],["res_model","ir.model"]]	\N	\N
98	2022-12-06 20:16:32.52404	0	24	act_model_form_view1	[["act_window",14],["sequence",1],["view",35]]	ir.action.act_window.view	ir	f	[["act_window",14],["sequence",1],["view",35]]	\N	\N
99	2022-12-06 20:16:32.52404	0	25	act_model_form_view2	[["act_window",14],["sequence",2],["view",34]]	ir.action.act_window.view	ir	f	[["act_window",14],["sequence",2],["view",34]]	\N	\N
100	2022-12-06 20:16:32.52404	0	16	menu_model_form	[["action","ir.action.act_window,14"],["icon","tryton-list"],["name","Models"],["parent",15],["sequence",10]]	ir.ui.menu	ir	f	[["action","ir.action.act_window,14"],["icon","tryton-list"],["name","Models"],["parent",15],["sequence",10]]	\N	\N
101	2022-12-06 20:16:32.52404	0	36	model_fields_view_form	[["model","ir.model.field"],["name","model_field_form"],["type","form"]]	ir.ui.view	ir	f	[["model","ir.model.field"],["name","model_field_form"],["type","form"]]	\N	\N
102	2022-12-06 20:16:32.52404	0	37	model_fields_view_tree	[["model","ir.model.field"],["name","model_field_list"],["type","tree"]]	ir.ui.view	ir	f	[["model","ir.model.field"],["name","model_field_list"],["type","tree"]]	\N	\N
103	2022-12-06 20:16:32.52404	0	15	act_model_fields_form	[["name","Fields"],["res_model","ir.model.field"]]	ir.action.act_window	ir	f	[["name","Fields"],["res_model","ir.model.field"]]	\N	\N
104	2022-12-06 20:16:32.52404	0	26	act_model_fields_form_view1	[["act_window",15],["sequence",1],["view",37]]	ir.action.act_window.view	ir	f	[["act_window",15],["sequence",1],["view",37]]	\N	\N
105	2022-12-06 20:16:32.52404	0	27	act_model_fields_form_view2	[["act_window",15],["sequence",2],["view",36]]	ir.action.act_window.view	ir	f	[["act_window",15],["sequence",2],["view",36]]	\N	\N
106	2022-12-06 20:16:32.52404	0	17	model_model_fields_form	[["action","ir.action.act_window,15"],["icon","tryton-list"],["name","Fields"],["parent",16],["sequence",20]]	ir.ui.menu	ir	f	[["action","ir.action.act_window,15"],["icon","tryton-list"],["name","Fields"],["parent",16],["sequence",20]]	\N	\N
107	2022-12-06 20:16:32.52404	0	38	model_access_view_tree	[["model","ir.model.access"],["name","model_access_list"],["type","tree"]]	ir.ui.view	ir	f	[["model","ir.model.access"],["name","model_access_list"],["type","tree"]]	\N	\N
108	2022-12-06 20:16:32.52404	0	39	model_access_view_form	[["model","ir.model.access"],["name","model_access_form"],["type","form"]]	ir.ui.view	ir	f	[["model","ir.model.access"],["name","model_access_form"],["type","form"]]	\N	\N
109	2022-12-06 20:16:32.52404	0	16	act_model_access_form	[["name","Models Access"],["res_model","ir.model.access"]]	ir.action.act_window	ir	f	[["name","Models Access"],["res_model","ir.model.access"]]	\N	\N
110	2022-12-06 20:16:32.52404	0	28	act_model_access_form_view1	[["act_window",16],["sequence",1],["view",38]]	ir.action.act_window.view	ir	f	[["act_window",16],["sequence",1],["view",38]]	\N	\N
111	2022-12-06 20:16:32.52404	0	29	act_model_access_form_view2	[["act_window",16],["sequence",2],["view",39]]	ir.action.act_window.view	ir	f	[["act_window",16],["sequence",2],["view",39]]	\N	\N
112	2022-12-06 20:16:32.52404	0	18	menu_model_access_form	[["action","ir.action.act_window,16"],["icon","tryton-list"],["name","Models Access"],["parent",15],["sequence",30]]	ir.ui.menu	ir	f	[["action","ir.action.act_window,16"],["icon","tryton-list"],["name","Models Access"],["parent",15],["sequence",30]]	\N	\N
113	2022-12-06 20:16:32.52404	0	17	act_model_access_form_relate_model	[["domain","[{\\"__class__\\": \\"If\\", \\"c\\": {\\"__class__\\": \\"Equal\\", \\"s1\\": {\\"__class__\\": \\"Eval\\", \\"d\\": [], \\"v\\": \\"active_ids\\"}, \\"s2\\": [{\\"__class__\\": \\"Eval\\", \\"d\\": \\"\\", \\"v\\": \\"active_id\\"}]}, \\"e\\": [\\"model\\", \\"in\\", {\\"__class__\\": \\"Eval\\", \\"d\\": \\"\\", \\"v\\": \\"active_ids\\"}], \\"t\\": [\\"model\\", \\"=\\", {\\"__class__\\": \\"Eval\\", \\"d\\": \\"\\", \\"v\\": \\"active_id\\"}]}]"],["name","Access"],["res_model","ir.model.access"]]	ir.action.act_window	ir	f	[["domain","[{\\"__class__\\": \\"If\\", \\"c\\": {\\"__class__\\": \\"Equal\\", \\"s1\\": {\\"__class__\\": \\"Eval\\", \\"d\\": [], \\"v\\": \\"active_ids\\"}, \\"s2\\": [{\\"__class__\\": \\"Eval\\", \\"d\\": \\"\\", \\"v\\": \\"active_id\\"}]}, \\"e\\": [\\"model\\", \\"in\\", {\\"__class__\\": \\"Eval\\", \\"d\\": \\"\\", \\"v\\": \\"active_ids\\"}], \\"t\\": [\\"model\\", \\"=\\", {\\"__class__\\": \\"Eval\\", \\"d\\": \\"\\", \\"v\\": \\"active_id\\"}]}]"],["name","Access"],["res_model","ir.model.access"]]	\N	\N
114	2022-12-06 20:16:32.52404	0	15	act_model_access_form_relate_model_keyword1	[["action",17],["keyword","form_relate"],["model","ir.model,-1"]]	ir.action.keyword	ir	f	[["action",17],["keyword","form_relate"],["model","ir.model,-1"]]	\N	\N
115	2022-12-06 20:16:32.52404	0	40	model_field_access_view_tree	[["model","ir.model.field.access"],["name","model_field_access_list"],["type","tree"]]	ir.ui.view	ir	f	[["model","ir.model.field.access"],["name","model_field_access_list"],["type","tree"]]	\N	\N
116	2022-12-06 20:16:32.52404	0	41	model_field_access_view_form	[["model","ir.model.field.access"],["name","model_field_access_form"],["type","form"]]	ir.ui.view	ir	f	[["model","ir.model.field.access"],["name","model_field_access_form"],["type","form"]]	\N	\N
117	2022-12-06 20:16:32.52404	0	18	act_model_field_access_form	[["name","Fields Access"],["res_model","ir.model.field.access"]]	ir.action.act_window	ir	f	[["name","Fields Access"],["res_model","ir.model.field.access"]]	\N	\N
118	2022-12-06 20:16:32.52404	0	30	act_model_field_access_form_view1	[["act_window",18],["sequence",10],["view",40]]	ir.action.act_window.view	ir	f	[["act_window",18],["sequence",10],["view",40]]	\N	\N
119	2022-12-06 20:16:32.52404	0	31	act_model_field_access_form_view2	[["act_window",18],["sequence",20],["view",41]]	ir.action.act_window.view	ir	f	[["act_window",18],["sequence",20],["view",41]]	\N	\N
120	2022-12-06 20:16:32.52404	0	19	menu_model_field_access_form	[["action","ir.action.act_window,18"],["icon","tryton-list"],["name","Fields Access"],["parent",18],["sequence",10]]	ir.ui.menu	ir	f	[["action","ir.action.act_window,18"],["icon","tryton-list"],["name","Fields Access"],["parent",18],["sequence",10]]	\N	\N
146	2022-12-06 20:16:32.52404	0	1	act_model_data_form_domain_out_of_sync	[["act_window",25],["count",true],["domain","[[\\"out_of_sync\\", \\"=\\", true]]"],["name","Out of Sync"],["sequence",10]]	ir.action.act_window.domain	ir	f	[["act_window",25],["count",true],["domain","[[\\"out_of_sync\\", \\"=\\", true]]"],["name","Out of Sync"],["sequence",10]]	\N	\N
147	2022-12-06 20:16:32.52404	0	2	act_model_data_form_domain_all	[["act_window",25],["domain",""],["name","All"],["sequence",9999]]	ir.action.act_window.domain	ir	f	[["act_window",25],["domain",""],["name","All"],["sequence",9999]]	\N	\N
148	2022-12-06 20:16:32.52404	0	21	menu_model_data_form	[["action","ir.action.act_window,25"],["icon","tryton-list"],["name","Data"],["parent",16],["sequence",50]]	ir.ui.menu	ir	f	[["action","ir.action.act_window,25"],["icon","tryton-list"],["name","Data"],["parent",16],["sequence",50]]	\N	\N
121	2022-12-06 20:16:32.52404	0	19	act_model_field_access_form_relate_field	[["domain","[{\\"__class__\\": \\"If\\", \\"c\\": {\\"__class__\\": \\"Equal\\", \\"s1\\": {\\"__class__\\": \\"Eval\\", \\"d\\": [], \\"v\\": \\"active_ids\\"}, \\"s2\\": [{\\"__class__\\": \\"Eval\\", \\"d\\": \\"\\", \\"v\\": \\"active_id\\"}]}, \\"e\\": [\\"field\\", \\"in\\", {\\"__class__\\": \\"Eval\\", \\"d\\": \\"\\", \\"v\\": \\"active_ids\\"}], \\"t\\": [\\"field\\", \\"=\\", {\\"__class__\\": \\"Eval\\", \\"d\\": \\"\\", \\"v\\": \\"active_id\\"}]}]"],["name","Access"],["res_model","ir.model.field.access"]]	ir.action.act_window	ir	f	[["domain","[{\\"__class__\\": \\"If\\", \\"c\\": {\\"__class__\\": \\"Equal\\", \\"s1\\": {\\"__class__\\": \\"Eval\\", \\"d\\": [], \\"v\\": \\"active_ids\\"}, \\"s2\\": [{\\"__class__\\": \\"Eval\\", \\"d\\": \\"\\", \\"v\\": \\"active_id\\"}]}, \\"e\\": [\\"field\\", \\"in\\", {\\"__class__\\": \\"Eval\\", \\"d\\": \\"\\", \\"v\\": \\"active_ids\\"}], \\"t\\": [\\"field\\", \\"=\\", {\\"__class__\\": \\"Eval\\", \\"d\\": \\"\\", \\"v\\": \\"active_id\\"}]}]"],["name","Access"],["res_model","ir.model.field.access"]]	\N	\N
122	2022-12-06 20:16:32.52404	0	17	act_modelfield__access_form_relate_field_keyword1	[["action",19],["keyword","form_relate"],["model","ir.model.field,-1"]]	ir.action.keyword	ir	f	[["action",19],["keyword","form_relate"],["model","ir.model.field,-1"]]	\N	\N
123	2022-12-06 20:16:32.52404	0	20	report_model_graph	[["model","ir.model"],["name","Graph"],["report_name","ir.model.graph"]]	ir.action.report	ir	f	[["model","ir.model"],["name","Graph"],["report_name","ir.model.graph"]]	\N	\N
124	2022-12-06 20:16:32.52404	0	42	print_model_graph_start_view_form	[["model","ir.model.print_model_graph.start"],["name","model_print_model_graph_start_form"],["type","form"]]	ir.ui.view	ir	f	[["model","ir.model.print_model_graph.start"],["name","model_print_model_graph_start_form"],["type","form"]]	\N	\N
125	2022-12-06 20:16:32.52404	0	21	print_model_graph	[["model","ir.model"],["name","Graph"],["wiz_name","ir.model.print_model_graph"]]	ir.action.wizard	ir	f	[["model","ir.model"],["name","Graph"],["wiz_name","ir.model.print_model_graph"]]	\N	\N
126	2022-12-06 20:16:32.52404	0	18	print_model_graph_keyword	[["action",21],["keyword","form_print"],["model","ir.model,-1"]]	ir.action.keyword	ir	f	[["action",21],["keyword","form_print"],["model","ir.model,-1"]]	\N	\N
127	2022-12-06 20:16:32.52404	0	22	report_model_workflow_graph	[["model","ir.model"],["name","Workflow Graph"],["report_name","ir.model.workflow_graph"]]	ir.action.report	ir	f	[["model","ir.model"],["name","Workflow Graph"],["report_name","ir.model.workflow_graph"]]	\N	\N
128	2022-12-06 20:16:32.52404	0	19	print_model_workflow_graph_keyword	[["action",22],["keyword","form_print"],["model","ir.model,-1"]]	ir.action.keyword	ir	f	[["action",22],["keyword","form_print"],["model","ir.model,-1"]]	\N	\N
129	2022-12-06 20:16:32.52404	0	43	model_button_view_list	[["model","ir.model.button"],["name","model_button_list"],["type","tree"]]	ir.ui.view	ir	f	[["model","ir.model.button"],["name","model_button_list"],["type","tree"]]	\N	\N
130	2022-12-06 20:16:32.52404	0	44	model_button_view_form	[["model","ir.model.button"],["name","model_button_form"],["type","form"]]	ir.ui.view	ir	f	[["model","ir.model.button"],["name","model_button_form"],["type","form"]]	\N	\N
131	2022-12-06 20:16:32.52404	0	23	act_model_button_form	[["name","Buttons"],["res_model","ir.model.button"]]	ir.action.act_window	ir	f	[["name","Buttons"],["res_model","ir.model.button"]]	\N	\N
132	2022-12-06 20:16:32.52404	0	32	act_model_button_form_view1	[["act_window",23],["sequence",10],["view",43]]	ir.action.act_window.view	ir	f	[["act_window",23],["sequence",10],["view",43]]	\N	\N
133	2022-12-06 20:16:32.52404	0	33	act_model_button_form_view2	[["act_window",23],["sequence",20],["view",44]]	ir.action.act_window.view	ir	f	[["act_window",23],["sequence",20],["view",44]]	\N	\N
134	2022-12-06 20:16:32.52404	0	20	menu_model_button_form	[["action","ir.action.act_window,23"],["icon","tryton-list"],["name","Buttons"],["parent",18],["sequence",20]]	ir.ui.menu	ir	f	[["action","ir.action.act_window,23"],["icon","tryton-list"],["name","Buttons"],["parent",18],["sequence",20]]	\N	\N
135	2022-12-06 20:16:32.52404	0	45	model_button_rule_view_list	[["model","ir.model.button.rule"],["name","model_button_rule_list"],["type","tree"]]	ir.ui.view	ir	f	[["model","ir.model.button.rule"],["name","model_button_rule_list"],["type","tree"]]	\N	\N
136	2022-12-06 20:16:32.52404	0	46	model_button_rule_view_form	[["model","ir.model.button.rule"],["name","model_button_rule_form"],["type","form"]]	ir.ui.view	ir	f	[["model","ir.model.button.rule"],["name","model_button_rule_form"],["type","form"]]	\N	\N
137	2022-12-06 20:16:32.52404	0	47	model_button_click_view_list	[["model","ir.model.button.click"],["name","model_button_click_list"],["type","tree"]]	ir.ui.view	ir	f	[["model","ir.model.button.click"],["name","model_button_click_list"],["type","tree"]]	\N	\N
138	2022-12-06 20:16:32.52404	0	48	model_button_click_view_form	[["model","ir.model.button.click"],["name","model_button_click_form"],["type","form"]]	ir.ui.view	ir	f	[["model","ir.model.button.click"],["name","model_button_click_form"],["type","form"]]	\N	\N
139	2022-12-06 20:16:32.52404	0	24	act_model_button_click_form_relate_model_button	[["domain","[{\\"__class__\\": \\"If\\", \\"c\\": {\\"__class__\\": \\"Equal\\", \\"s1\\": {\\"__class__\\": \\"Eval\\", \\"d\\": [], \\"v\\": \\"active_ids\\"}, \\"s2\\": [{\\"__class__\\": \\"Eval\\", \\"d\\": \\"\\", \\"v\\": \\"active_id\\"}]}, \\"e\\": [\\"button\\", \\"in\\", {\\"__class__\\": \\"Eval\\", \\"d\\": \\"\\", \\"v\\": \\"active_ids\\"}], \\"t\\": [\\"button\\", \\"=\\", {\\"__class__\\": \\"Eval\\", \\"d\\": \\"\\", \\"v\\": \\"active_id\\"}]}]"],["name","Clicks"],["res_model","ir.model.button.click"]]	ir.action.act_window	ir	f	[["domain","[{\\"__class__\\": \\"If\\", \\"c\\": {\\"__class__\\": \\"Equal\\", \\"s1\\": {\\"__class__\\": \\"Eval\\", \\"d\\": [], \\"v\\": \\"active_ids\\"}, \\"s2\\": [{\\"__class__\\": \\"Eval\\", \\"d\\": \\"\\", \\"v\\": \\"active_id\\"}]}, \\"e\\": [\\"button\\", \\"in\\", {\\"__class__\\": \\"Eval\\", \\"d\\": \\"\\", \\"v\\": \\"active_ids\\"}], \\"t\\": [\\"button\\", \\"=\\", {\\"__class__\\": \\"Eval\\", \\"d\\": \\"\\", \\"v\\": \\"active_id\\"}]}]"],["name","Clicks"],["res_model","ir.model.button.click"]]	\N	\N
140	2022-12-06 20:16:32.52404	0	21	act_model_button_click_form_relate_model_button_keyword1	[["action",24],["keyword","form_relate"],["model","ir.model.button,-1"]]	ir.action.keyword	ir	f	[["action",24],["keyword","form_relate"],["model","ir.model.button,-1"]]	\N	\N
141	2022-12-06 20:16:32.52404	0	49	model_data_view_list	[["model","ir.model.data"],["name","model_data_list"],["type","tree"]]	ir.ui.view	ir	f	[["model","ir.model.data"],["name","model_data_list"],["type","tree"]]	\N	\N
142	2022-12-06 20:16:32.52404	0	50	model_data_view_form	[["model","ir.model.data"],["name","model_data_form"],["type","form"]]	ir.ui.view	ir	f	[["model","ir.model.data"],["name","model_data_form"],["type","form"]]	\N	\N
143	2022-12-06 20:16:32.52404	0	25	act_model_data_form	[["name","Data"],["res_model","ir.model.data"]]	ir.action.act_window	ir	f	[["name","Data"],["res_model","ir.model.data"]]	\N	\N
144	2022-12-06 20:16:32.52404	0	34	act_model_data_form_view1	[["act_window",25],["sequence",10],["view",49]]	ir.action.act_window.view	ir	f	[["act_window",25],["sequence",10],["view",49]]	\N	\N
145	2022-12-06 20:16:32.52404	0	35	act_model_data_form_view2	[["act_window",25],["sequence",20],["view",50]]	ir.action.act_window.view	ir	f	[["act_window",25],["sequence",20],["view",50]]	\N	\N
149	2022-12-06 20:16:32.52404	0	2	model_data_sync_button	[["model",37],["name","sync"],["string","Sync"]]	ir.model.button	ir	f	[["model",37],["name","sync"],["string","Sync"]]	\N	\N
150	2022-12-06 20:16:32.52404	0	22	menu_sequences	[["icon","tryton-folder"],["name","Sequences"],["parent",1],["sequence",20]]	ir.ui.menu	ir	f	[["icon","tryton-folder"],["name","Sequences"],["parent",1],["sequence",20]]	\N	\N
151	2022-12-06 20:16:32.52404	0	51	sequence_view_form	[["model","ir.sequence"],["name","sequence_form"],["type","form"]]	ir.ui.view	ir	f	[["model","ir.sequence"],["name","sequence_form"],["type","form"]]	\N	\N
152	2022-12-06 20:16:32.52404	0	52	sequence_view_tree	[["model","ir.sequence"],["name","sequence_list"],["type","tree"]]	ir.ui.view	ir	f	[["model","ir.sequence"],["name","sequence_list"],["type","tree"]]	\N	\N
153	2022-12-06 20:16:32.52404	0	26	act_sequence_form	[["context",""],["name","Sequences"],["res_model","ir.sequence"],["type","ir.action.act_window"]]	ir.action.act_window	ir	f	[["context",""],["name","Sequences"],["res_model","ir.sequence"],["type","ir.action.act_window"]]	\N	\N
154	2022-12-06 20:16:32.52404	0	36	act_sequence_form_view1	[["act_window",26],["sequence",1],["view",52]]	ir.action.act_window.view	ir	f	[["act_window",26],["sequence",1],["view",52]]	\N	\N
155	2022-12-06 20:16:32.52404	0	37	act_sequence_form_view2	[["act_window",26],["sequence",2],["view",51]]	ir.action.act_window.view	ir	f	[["act_window",26],["sequence",2],["view",51]]	\N	\N
156	2022-12-06 20:16:32.52404	0	23	menu_sequence_form	[["action","ir.action.act_window,26"],["icon","tryton-list"],["name","Sequences"],["parent",22],["sequence",10]]	ir.ui.menu	ir	f	[["action","ir.action.act_window,26"],["icon","tryton-list"],["name","Sequences"],["parent",22],["sequence",10]]	\N	\N
157	2022-12-06 20:16:32.52404	0	53	sequence_strict_view_form	[["inherit",51],["model","ir.sequence.strict"],["type",null]]	ir.ui.view	ir	f	[["inherit",51],["model","ir.sequence.strict"],["type",null]]	\N	\N
158	2022-12-06 20:16:32.52404	0	54	sequence_strict_view_tree	[["inherit",52],["model","ir.sequence.strict"],["type",null]]	ir.ui.view	ir	f	[["inherit",52],["model","ir.sequence.strict"],["type",null]]	\N	\N
159	2022-12-06 20:16:32.52404	0	27	act_sequence_strict_form	[["context",""],["name","Sequences Strict"],["res_model","ir.sequence.strict"],["type","ir.action.act_window"]]	ir.action.act_window	ir	f	[["context",""],["name","Sequences Strict"],["res_model","ir.sequence.strict"],["type","ir.action.act_window"]]	\N	\N
160	2022-12-06 20:16:32.52404	0	38	act_sequence_strict_form_view1	[["act_window",27],["sequence",1],["view",54]]	ir.action.act_window.view	ir	f	[["act_window",27],["sequence",1],["view",54]]	\N	\N
161	2022-12-06 20:16:32.52404	0	39	act_sequence_strict_form_view2	[["act_window",27],["sequence",2],["view",53]]	ir.action.act_window.view	ir	f	[["act_window",27],["sequence",2],["view",53]]	\N	\N
162	2022-12-06 20:16:32.52404	0	24	menu_sequence_strict_form	[["action","ir.action.act_window,27"],["icon","tryton-list"],["name","Sequences Strict"],["parent",22],["sequence",10]]	ir.ui.menu	ir	f	[["action","ir.action.act_window,27"],["icon","tryton-list"],["name","Sequences Strict"],["parent",22],["sequence",10]]	\N	\N
163	2022-12-06 20:16:32.52404	0	55	sequence_type_view_form	[["model","ir.sequence.type"],["name","sequence_type_form"],["type","form"]]	ir.ui.view	ir	f	[["model","ir.sequence.type"],["name","sequence_type_form"],["type","form"]]	\N	\N
164	2022-12-06 20:16:32.52404	0	56	sequence_type_view_tree	[["model","ir.sequence.type"],["name","sequence_type_list"],["type","tree"]]	ir.ui.view	ir	f	[["model","ir.sequence.type"],["name","sequence_type_list"],["type","tree"]]	\N	\N
165	2022-12-06 20:16:32.52404	0	28	act_sequence_type_form	[["name","Types"],["res_model","ir.sequence.type"],["type","ir.action.act_window"]]	ir.action.act_window	ir	f	[["name","Types"],["res_model","ir.sequence.type"],["type","ir.action.act_window"]]	\N	\N
166	2022-12-06 20:16:32.52404	0	40	act_sequence_type_form_view1	[["act_window",28],["sequence",1],["view",56]]	ir.action.act_window.view	ir	f	[["act_window",28],["sequence",1],["view",56]]	\N	\N
167	2022-12-06 20:16:32.52404	0	41	act_sequence_type_form_view2	[["act_window",28],["sequence",2],["view",55]]	ir.action.act_window.view	ir	f	[["act_window",28],["sequence",2],["view",55]]	\N	\N
168	2022-12-06 20:16:32.52404	0	25	menu_ir_sequence_type	[["action","ir.action.act_window,28"],["icon","tryton-list"],["name","Types"],["parent",22],["sequence",20]]	ir.ui.menu	ir	f	[["action","ir.action.act_window,28"],["icon","tryton-list"],["name","Types"],["parent",22],["sequence",20]]	\N	\N
169	2022-12-06 20:16:32.52404	0	57	attachment_view_form	[["model","ir.attachment"],["name","attachment_form"],["type","form"]]	ir.ui.view	ir	f	[["model","ir.attachment"],["name","attachment_form"],["type","form"]]	\N	\N
170	2022-12-06 20:16:32.52404	0	58	attachment_view_form_preview	[["model","ir.attachment"],["name","attachment_form_preview"],["priority",50],["type","form"]]	ir.ui.view	ir	f	[["model","ir.attachment"],["name","attachment_form_preview"],["priority",50],["type","form"]]	\N	\N
171	2022-12-06 20:16:32.52404	0	59	attachment_view_tree	[["model","ir.attachment"],["name","attachment_list"],["type","tree"]]	ir.ui.view	ir	f	[["model","ir.attachment"],["name","attachment_list"],["type","tree"]]	\N	\N
172	2022-12-06 20:16:32.52404	0	29	act_attachment_form	[["name","Attachments"],["res_model","ir.attachment"],["type","ir.action.act_window"]]	ir.action.act_window	ir	f	[["name","Attachments"],["res_model","ir.attachment"],["type","ir.action.act_window"]]	\N	\N
173	2022-12-06 20:16:32.52404	0	42	act_attachment_form_view1	[["act_window",29],["sequence",1],["view",59]]	ir.action.act_window.view	ir	f	[["act_window",29],["sequence",1],["view",59]]	\N	\N
174	2022-12-06 20:16:32.52404	0	43	act_attachment_form_view2	[["act_window",29],["sequence",2],["view",57]]	ir.action.act_window.view	ir	f	[["act_window",29],["sequence",2],["view",57]]	\N	\N
175	2022-12-06 20:16:32.52404	0	26	menu_attachment_form	[["action","ir.action.act_window,29"],["icon","tryton-list"],["name","Attachments"],["parent",15],["sequence",50]]	ir.ui.menu	ir	f	[["action","ir.action.act_window,29"],["icon","tryton-list"],["name","Attachments"],["parent",15],["sequence",50]]	\N	\N
176	2022-12-06 20:16:32.52404	0	60	note_view_form	[["model","ir.note"],["name","note_form"],["type","form"]]	ir.ui.view	ir	f	[["model","ir.note"],["name","note_form"],["type","form"]]	\N	\N
177	2022-12-06 20:16:32.52404	0	61	note_view_list	[["model","ir.note"],["name","note_list"],["type","tree"]]	ir.ui.view	ir	f	[["model","ir.note"],["name","note_list"],["type","tree"]]	\N	\N
178	2022-12-06 20:16:32.52404	0	30	act_note_form	[["name","Notes"],["res_model","ir.note"],["type","ir.action.act_window"]]	ir.action.act_window	ir	f	[["name","Notes"],["res_model","ir.note"],["type","ir.action.act_window"]]	\N	\N
179	2022-12-06 20:16:32.52404	0	44	act_note_form_view1	[["act_window",30],["sequence",1],["view",61]]	ir.action.act_window.view	ir	f	[["act_window",30],["sequence",1],["view",61]]	\N	\N
180	2022-12-06 20:16:32.52404	0	45	act_note_form_view2	[["act_window",30],["sequence",2],["view",60]]	ir.action.act_window.view	ir	f	[["act_window",30],["sequence",2],["view",60]]	\N	\N
355	2022-12-06 20:16:32.52404	0	23	msg_dict_schema_domain	[["text","Domain"]]	ir.message	ir	f	[["text","Domain"]]	\N	\N
181	2022-12-06 20:16:32.52404	0	27	menu_note_form	[["action","ir.action.act_window,30"],["icon","tryton-list"],["name","Notes"],["parent",15],["sequence",50]]	ir.ui.menu	ir	f	[["action","ir.action.act_window,30"],["icon","tryton-list"],["name","Notes"],["parent",15],["sequence",50]]	\N	\N
182	2022-12-06 20:16:32.52404	0	28	menu_scheduler	[["icon","tryton-folder"],["name","Scheduler"],["parent",1],["sequence",50]]	ir.ui.menu	ir	f	[["icon","tryton-folder"],["name","Scheduler"],["parent",1],["sequence",50]]	\N	\N
183	2022-12-06 20:16:32.52404	0	62	cron_view_tree	[["model","ir.cron"],["name","cron_list"],["type","tree"]]	ir.ui.view	ir	f	[["model","ir.cron"],["name","cron_list"],["type","tree"]]	\N	\N
184	2022-12-06 20:16:32.52404	0	63	cron_view_form	[["model","ir.cron"],["name","cron_form"],["type","form"]]	ir.ui.view	ir	f	[["model","ir.cron"],["name","cron_form"],["type","form"]]	\N	\N
185	2022-12-06 20:16:32.52404	0	31	act_cron_form	[["context",""],["name","Actions"],["res_model","ir.cron"]]	ir.action.act_window	ir	f	[["context",""],["name","Actions"],["res_model","ir.cron"]]	\N	\N
186	2022-12-06 20:16:32.52404	0	46	act_cron_form_view1	[["act_window",31],["sequence",1],["view",62]]	ir.action.act_window.view	ir	f	[["act_window",31],["sequence",1],["view",62]]	\N	\N
187	2022-12-06 20:16:32.52404	0	47	act_cron_form_view2	[["act_window",31],["sequence",2],["view",63]]	ir.action.act_window.view	ir	f	[["act_window",31],["sequence",2],["view",63]]	\N	\N
188	2022-12-06 20:16:32.52404	0	29	menu_cron_form	[["action","ir.action.act_window,31"],["icon","tryton-list"],["name","Actions"],["parent",28],["sequence",10]]	ir.ui.menu	ir	f	[["action","ir.action.act_window,31"],["icon","tryton-list"],["name","Actions"],["parent",28],["sequence",10]]	\N	\N
189	2022-12-06 20:16:32.52404	0	3	cron_run_once_button	[["model",44],["name","run_once"],["string","Run Once"]]	ir.model.button	ir	f	[["model",44],["name","run_once"],["string","Run Once"]]	\N	\N
190	2022-12-06 20:16:32.52404	0	30	menu_localization	[["icon","tryton-folder"],["name","Localization"],["parent",1],["sequence",30]]	ir.ui.menu	ir	f	[["icon","tryton-folder"],["name","Localization"],["parent",1],["sequence",30]]	\N	\N
191	2022-12-06 20:16:32.52404	0	2	lang_bg	[["am",""],["code","bg"],["date","%d.%m.%Y"],["decimal_point",","],["grouping","[3, 3, 0]"],["mon_decimal_point",","],["mon_grouping","[3, 3, 0]"],["mon_thousands_sep","\\u00a0"],["n_cs_precedes",false],["n_sep_by_space",true],["n_sign_posn",1],["name","Bulgarian"],["negative_sign","-"],["p_cs_precedes",false],["p_sep_by_space",true],["p_sign_posn",1],["pm",""],["positive_sign",""],["thousands_sep","."]]	ir.lang	ir	f	[["am",""],["code","bg"],["date","%d.%m.%Y"],["decimal_point",","],["grouping","[3, 3, 0]"],["mon_decimal_point",","],["mon_grouping","[3, 3, 0]"],["mon_thousands_sep","\\u00a0"],["n_cs_precedes",false],["n_sep_by_space",true],["n_sign_posn",1],["name","Bulgarian"],["negative_sign","-"],["p_cs_precedes",false],["p_sep_by_space",true],["p_sign_posn",1],["pm",""],["positive_sign",""],["thousands_sep","."]]	\N	\N
192	2022-12-06 20:16:32.52404	0	3	lang_ca	[["am","a. m."],["code","ca"],["date","%d/%m/%Y"],["decimal_point",","],["grouping","[3, 3, 0]"],["mon_decimal_point",","],["mon_grouping","[3, 3, 0]"],["mon_thousands_sep","."],["n_cs_precedes",false],["n_sep_by_space",true],["n_sign_posn",1],["name","Catal\\u00e0"],["negative_sign","-"],["p_cs_precedes",false],["p_sep_by_space",true],["p_sign_posn",1],["pm","p. m."],["positive_sign",""],["thousands_sep"," "]]	ir.lang	ir	f	[["am","a. m."],["code","ca"],["date","%d/%m/%Y"],["decimal_point",","],["grouping","[3, 3, 0]"],["mon_decimal_point",","],["mon_grouping","[3, 3, 0]"],["mon_thousands_sep","."],["n_cs_precedes",false],["n_sep_by_space",true],["n_sign_posn",1],["name","Catal\\u00e0"],["negative_sign","-"],["p_cs_precedes",false],["p_sep_by_space",true],["p_sign_posn",1],["pm","p. m."],["positive_sign",""],["thousands_sep"," "]]	\N	\N
193	2022-12-06 20:16:32.52404	0	4	lang_cs	[["am",""],["code","cs"],["date","%d.%m.%Y"],["decimal_point",","],["grouping","[3, 3, 0]"],["mon_decimal_point",","],["mon_grouping","[3, 3, 0]"],["mon_thousands_sep","\\u00a0"],["n_cs_precedes",false],["n_sep_by_space",true],["n_sign_posn",1],["name","Czech"],["negative_sign","-"],["p_cs_precedes",false],["p_sep_by_space",true],["p_sign_posn",1],["pm",""],["positive_sign",""],["thousands_sep"," "]]	ir.lang	ir	f	[["am",""],["code","cs"],["date","%d.%m.%Y"],["decimal_point",","],["grouping","[3, 3, 0]"],["mon_decimal_point",","],["mon_grouping","[3, 3, 0]"],["mon_thousands_sep","\\u00a0"],["n_cs_precedes",false],["n_sep_by_space",true],["n_sign_posn",1],["name","Czech"],["negative_sign","-"],["p_cs_precedes",false],["p_sep_by_space",true],["p_sign_posn",1],["pm",""],["positive_sign",""],["thousands_sep"," "]]	\N	\N
194	2022-12-06 20:16:32.52404	0	5	lang_de	[["am",""],["code","de"],["date","%d.%m.%Y"],["decimal_point",","],["grouping","[3, 3, 0]"],["mon_decimal_point",","],["mon_grouping","[3, 3, 0]"],["mon_thousands_sep","."],["n_cs_precedes",false],["n_sep_by_space",true],["n_sign_posn",1],["name","German"],["negative_sign","-"],["p_cs_precedes",false],["p_sep_by_space",true],["p_sign_posn",1],["pm",""],["positive_sign",""],["thousands_sep","."]]	ir.lang	ir	f	[["am",""],["code","de"],["date","%d.%m.%Y"],["decimal_point",","],["grouping","[3, 3, 0]"],["mon_decimal_point",","],["mon_grouping","[3, 3, 0]"],["mon_thousands_sep","."],["n_cs_precedes",false],["n_sep_by_space",true],["n_sign_posn",1],["name","German"],["negative_sign","-"],["p_cs_precedes",false],["p_sep_by_space",true],["p_sign_posn",1],["pm",""],["positive_sign",""],["thousands_sep","."]]	\N	\N
195	2022-12-06 20:16:32.52404	0	6	lang_es	[["am",""],["code","es"],["date","%d/%m/%Y"],["decimal_point",","],["grouping","[3, 3, 0]"],["mon_decimal_point",","],["mon_grouping","[3, 3, 0]"],["mon_thousands_sep","."],["n_cs_precedes",false],["n_sep_by_space",true],["n_sign_posn",1],["name","Spanish"],["negative_sign","-"],["p_cs_precedes",false],["p_sep_by_space",true],["p_sign_posn",1],["pm",""],["positive_sign",""],["thousands_sep","."]]	ir.lang	ir	f	[["am",""],["code","es"],["date","%d/%m/%Y"],["decimal_point",","],["grouping","[3, 3, 0]"],["mon_decimal_point",","],["mon_grouping","[3, 3, 0]"],["mon_thousands_sep","."],["n_cs_precedes",false],["n_sep_by_space",true],["n_sign_posn",1],["name","Spanish"],["negative_sign","-"],["p_cs_precedes",false],["p_sep_by_space",true],["p_sign_posn",1],["pm",""],["positive_sign",""],["thousands_sep","."]]	\N	\N
196	2022-12-06 20:16:32.52404	0	7	lang_es_419	[["am",""],["code","es_419"],["date","%d/%m/%Y"],["decimal_point","."],["grouping","[3, 3, 0]"],["mon_decimal_point","."],["mon_grouping","[3, 3, 0]"],["mon_thousands_sep",","],["n_cs_precedes",false],["n_sep_by_space",true],["n_sign_posn",1],["name","Spanish (Latin American)"],["negative_sign","-"],["p_cs_precedes",false],["p_sep_by_space",true],["p_sign_posn",1],["pm",""],["positive_sign",""],["thousands_sep",","]]	ir.lang	ir	f	[["am",""],["code","es_419"],["date","%d/%m/%Y"],["decimal_point","."],["grouping","[3, 3, 0]"],["mon_decimal_point","."],["mon_grouping","[3, 3, 0]"],["mon_thousands_sep",","],["n_cs_precedes",false],["n_sep_by_space",true],["n_sign_posn",1],["name","Spanish (Latin American)"],["negative_sign","-"],["p_cs_precedes",false],["p_sep_by_space",true],["p_sign_posn",1],["pm",""],["positive_sign",""],["thousands_sep",","]]	\N	\N
247	2022-12-06 20:16:32.52404	0	39	act_translation_update	[["name","Synchronize Translations"],["wiz_name","ir.translation.update"]]	ir.action.wizard	ir	f	[["name","Synchronize Translations"],["wiz_name","ir.translation.update"]]	\N	\N
197	2022-12-06 20:16:32.52404	0	8	lang_et	[["code","et"],["date","%d.%m.%Y"],["decimal_point",","],["grouping","[3, 3]"],["mon_decimal_point",","],["mon_grouping","[3, 3]"],["mon_thousands_sep","\\u00a0"],["n_cs_precedes",false],["n_sep_by_space",true],["n_sign_posn",1],["name","Estonian"],["negative_sign","-"],["p_cs_precedes",false],["p_sep_by_space",true],["p_sign_posn",1],["positive_sign",""],["thousands_sep","\\u00a0"]]	ir.lang	ir	f	[["code","et"],["date","%d.%m.%Y"],["decimal_point",","],["grouping","[3, 3]"],["mon_decimal_point",","],["mon_grouping","[3, 3]"],["mon_thousands_sep","\\u00a0"],["n_cs_precedes",false],["n_sep_by_space",true],["n_sign_posn",1],["name","Estonian"],["negative_sign","-"],["p_cs_precedes",false],["p_sep_by_space",true],["p_sign_posn",1],["positive_sign",""],["thousands_sep","\\u00a0"]]	\N	\N
198	2022-12-06 20:16:32.52404	0	9	lang_fa	[["am",""],["code","fa"],["date","%Y/%m/%d"],["decimal_point","."],["direction","rtl"],["grouping","[3, 0]"],["mon_decimal_point","\\u066b"],["mon_grouping","[3, 0]"],["mon_thousands_sep","\\u066c"],["n_cs_precedes",false],["n_sep_by_space",true],["n_sign_posn",1],["name","Persian"],["negative_sign","-"],["p_cs_precedes",false],["p_sep_by_space",true],["p_sign_posn",1],["pm",""],["positive_sign",""],["thousands_sep",","]]	ir.lang	ir	f	[["am",""],["code","fa"],["date","%Y/%m/%d"],["decimal_point","."],["direction","rtl"],["grouping","[3, 0]"],["mon_decimal_point","\\u066b"],["mon_grouping","[3, 0]"],["mon_thousands_sep","\\u066c"],["n_cs_precedes",false],["n_sep_by_space",true],["n_sign_posn",1],["name","Persian"],["negative_sign","-"],["p_cs_precedes",false],["p_sep_by_space",true],["p_sign_posn",1],["pm",""],["positive_sign",""],["thousands_sep",","]]	\N	\N
199	2022-12-06 20:16:32.52404	0	10	lang_fi	[["code","fi"],["date","%d.%m.%Y"],["decimal_point",","],["grouping","[3, 3, 0]"],["mon_decimal_point",","],["mon_grouping","[3, 3, 0]"],["mon_thousands_sep","\\u00a0"],["n_cs_precedes",false],["n_sep_by_space",true],["n_sign_posn",1],["name","Finnish"],["negative_sign","-"],["p_cs_precedes",false],["p_sep_by_space",true],["p_sign_posn",1],["positive_sign",""],["thousands_sep","\\u00a0"]]	ir.lang	ir	f	[["code","fi"],["date","%d.%m.%Y"],["decimal_point",","],["grouping","[3, 3, 0]"],["mon_decimal_point",","],["mon_grouping","[3, 3, 0]"],["mon_thousands_sep","\\u00a0"],["n_cs_precedes",false],["n_sep_by_space",true],["n_sign_posn",1],["name","Finnish"],["negative_sign","-"],["p_cs_precedes",false],["p_sep_by_space",true],["p_sign_posn",1],["positive_sign",""],["thousands_sep","\\u00a0"]]	\N	\N
200	2022-12-06 20:16:32.52404	0	11	lang_fr	[["am",""],["code","fr"],["date","%d.%m.%Y"],["decimal_point",","],["grouping","[3, 0]"],["mon_decimal_point",","],["mon_grouping","[3, 0]"],["mon_thousands_sep"," "],["n_cs_precedes",false],["n_sep_by_space",true],["n_sign_posn",1],["name","French"],["negative_sign","-"],["p_cs_precedes",false],["p_sep_by_space",true],["p_sign_posn",1],["pm",""],["positive_sign",""],["thousands_sep"," "]]	ir.lang	ir	f	[["am",""],["code","fr"],["date","%d.%m.%Y"],["decimal_point",","],["grouping","[3, 0]"],["mon_decimal_point",","],["mon_grouping","[3, 0]"],["mon_thousands_sep"," "],["n_cs_precedes",false],["n_sep_by_space",true],["n_sign_posn",1],["name","French"],["negative_sign","-"],["p_cs_precedes",false],["p_sep_by_space",true],["p_sign_posn",1],["pm",""],["positive_sign",""],["thousands_sep"," "]]	\N	\N
201	2022-12-06 20:16:32.52404	0	12	lang_hu	[["am",""],["code","hu"],["date","%Y-%m-%d"],["decimal_point",","],["grouping","[3, 3, 0]"],["mon_decimal_point",","],["mon_grouping","[3, 3, 0]"],["mon_thousands_sep","."],["n_cs_precedes",false],["n_sep_by_space",true],["n_sign_posn",1],["name","Hungarian"],["negative_sign","-"],["p_cs_precedes",false],["p_sep_by_space",true],["p_sign_posn",1],["pm",""],["positive_sign",""],["thousands_sep","."]]	ir.lang	ir	f	[["am",""],["code","hu"],["date","%Y-%m-%d"],["decimal_point",","],["grouping","[3, 3, 0]"],["mon_decimal_point",","],["mon_grouping","[3, 3, 0]"],["mon_thousands_sep","."],["n_cs_precedes",false],["n_sep_by_space",true],["n_sign_posn",1],["name","Hungarian"],["negative_sign","-"],["p_cs_precedes",false],["p_sep_by_space",true],["p_sign_posn",1],["pm",""],["positive_sign",""],["thousands_sep","."]]	\N	\N
202	2022-12-06 20:16:32.52404	0	13	lang_id	[["am",""],["code","id"],["date","%d/%m/%Y"],["decimal_point",","],["grouping","[3, 3]"],["mon_decimal_point",","],["mon_grouping","[3, 3]"],["mon_thousands_sep","."],["n_cs_precedes",true],["n_sep_by_space",false],["n_sign_posn",1],["name","Indonesian"],["negative_sign","-"],["p_cs_precedes",true],["p_sep_by_space",false],["p_sign_posn",1],["pm",""],["positive_sign",""],["thousands_sep","."]]	ir.lang	ir	f	[["am",""],["code","id"],["date","%d/%m/%Y"],["decimal_point",","],["grouping","[3, 3]"],["mon_decimal_point",","],["mon_grouping","[3, 3]"],["mon_thousands_sep","."],["n_cs_precedes",true],["n_sep_by_space",false],["n_sign_posn",1],["name","Indonesian"],["negative_sign","-"],["p_cs_precedes",true],["p_sep_by_space",false],["p_sign_posn",1],["pm",""],["positive_sign",""],["thousands_sep","."]]	\N	\N
203	2022-12-06 20:16:32.52404	0	14	lang_it	[["am",""],["code","it"],["date","%d/%m/%Y"],["decimal_point",","],["grouping","[]"],["mon_decimal_point",","],["mon_grouping","[3, 3, 0]"],["mon_thousands_sep","."],["n_cs_precedes",true],["n_sep_by_space",true],["n_sign_posn",1],["name","Italian"],["negative_sign","-"],["p_cs_precedes",true],["p_sep_by_space",true],["p_sign_posn",1],["pm",""],["positive_sign",""],["thousands_sep",""]]	ir.lang	ir	f	[["am",""],["code","it"],["date","%d/%m/%Y"],["decimal_point",","],["grouping","[]"],["mon_decimal_point",","],["mon_grouping","[3, 3, 0]"],["mon_thousands_sep","."],["n_cs_precedes",true],["n_sep_by_space",true],["n_sign_posn",1],["name","Italian"],["negative_sign","-"],["p_cs_precedes",true],["p_sep_by_space",true],["p_sign_posn",1],["pm",""],["positive_sign",""],["thousands_sep",""]]	\N	\N
204	2022-12-06 20:16:32.52404	0	15	lang_lo	[["am","AM"],["code","lo"],["date","%d/%m/%Y"],["decimal_point","."],["grouping","[3, 3, 0]"],["mon_decimal_point","."],["mon_grouping","[3, 3, 0]"],["mon_thousands_sep",","],["n_cs_precedes",true],["n_sep_by_space",true],["n_sign_posn",4],["name","Lao"],["negative_sign","-"],["p_cs_precedes",true],["p_sep_by_space",true],["p_sign_posn",4],["pm","PM"],["positive_sign",""],["thousands_sep",","]]	ir.lang	ir	f	[["am","AM"],["code","lo"],["date","%d/%m/%Y"],["decimal_point","."],["grouping","[3, 3, 0]"],["mon_decimal_point","."],["mon_grouping","[3, 3, 0]"],["mon_thousands_sep",","],["n_cs_precedes",true],["n_sep_by_space",true],["n_sign_posn",4],["name","Lao"],["negative_sign","-"],["p_cs_precedes",true],["p_sep_by_space",true],["p_sign_posn",4],["pm","PM"],["positive_sign",""],["thousands_sep",","]]	\N	\N
205	2022-12-06 20:16:32.52404	0	16	lang_lt	[["am",""],["code","lt"],["date","%Y-%m-%d"],["decimal_point",","],["grouping","[3, 3, 0]"],["mon_decimal_point",","],["mon_grouping","[3, 3, 0]"],["mon_thousands_sep","."],["n_cs_precedes",false],["n_sep_by_space",true],["n_sign_posn",1],["name","Lithuanian"],["negative_sign","-"],["p_cs_precedes",false],["p_sep_by_space",true],["p_sign_posn",1],["pm",""],["positive_sign",""],["thousands_sep","."]]	ir.lang	ir	f	[["am",""],["code","lt"],["date","%Y-%m-%d"],["decimal_point",","],["grouping","[3, 3, 0]"],["mon_decimal_point",","],["mon_grouping","[3, 3, 0]"],["mon_thousands_sep","."],["n_cs_precedes",false],["n_sep_by_space",true],["n_sign_posn",1],["name","Lithuanian"],["negative_sign","-"],["p_cs_precedes",false],["p_sep_by_space",true],["p_sign_posn",1],["pm",""],["positive_sign",""],["thousands_sep","."]]	\N	\N
206	2022-12-06 20:16:32.52404	0	17	lang_nl	[["am",""],["code","nl"],["date","%d-%m-%Y"],["decimal_point",","],["grouping","[]"],["mon_decimal_point",","],["mon_grouping","[3, 3, 0]"],["mon_thousands_sep"," "],["n_cs_precedes",true],["n_sep_by_space",true],["n_sign_posn",2],["name","Dutch"],["negative_sign","-"],["p_cs_precedes",true],["p_sep_by_space",true],["p_sign_posn",1],["pm",""],["positive_sign",""],["thousands_sep",""]]	ir.lang	ir	f	[["am",""],["code","nl"],["date","%d-%m-%Y"],["decimal_point",","],["grouping","[]"],["mon_decimal_point",","],["mon_grouping","[3, 3, 0]"],["mon_thousands_sep"," "],["n_cs_precedes",true],["n_sep_by_space",true],["n_sign_posn",2],["name","Dutch"],["negative_sign","-"],["p_cs_precedes",true],["p_sep_by_space",true],["p_sign_posn",1],["pm",""],["positive_sign",""],["thousands_sep",""]]	\N	\N
207	2022-12-06 20:16:32.52404	0	18	lang_pl	[["am",""],["code","pl"],["date","%d.%m.%Y"],["decimal_point",","],["grouping","[3, 3, 0]"],["mon_decimal_point",","],["mon_grouping","[3, 0, 0]"],["mon_thousands_sep"," "],["n_cs_precedes",false],["n_sep_by_space",true],["n_sign_posn",1],["name","Polish"],["negative_sign","-"],["p_cs_precedes",false],["p_sep_by_space",true],["p_sign_posn",1],["pm",""],["positive_sign",""],["thousands_sep"," "]]	ir.lang	ir	f	[["am",""],["code","pl"],["date","%d.%m.%Y"],["decimal_point",","],["grouping","[3, 3, 0]"],["mon_decimal_point",","],["mon_grouping","[3, 0, 0]"],["mon_thousands_sep"," "],["n_cs_precedes",false],["n_sep_by_space",true],["n_sign_posn",1],["name","Polish"],["negative_sign","-"],["p_cs_precedes",false],["p_sep_by_space",true],["p_sign_posn",1],["pm",""],["positive_sign",""],["thousands_sep"," "]]	\N	\N
208	2022-12-06 20:16:32.52404	0	19	lang_pt	[["am",""],["code","pt"],["date","%d-%m-%Y"],["decimal_point",","],["grouping","[]"],["mon_decimal_point",","],["mon_grouping","[3, 3, 0]"],["mon_thousands_sep","."],["n_cs_precedes",true],["n_sep_by_space",true],["n_sign_posn",1],["name","Portuguese"],["negative_sign","-"],["p_cs_precedes",true],["p_sep_by_space",true],["p_sign_posn",1],["pm",""],["positive_sign",""],["thousands_sep",""]]	ir.lang	ir	f	[["am",""],["code","pt"],["date","%d-%m-%Y"],["decimal_point",","],["grouping","[]"],["mon_decimal_point",","],["mon_grouping","[3, 3, 0]"],["mon_thousands_sep","."],["n_cs_precedes",true],["n_sep_by_space",true],["n_sign_posn",1],["name","Portuguese"],["negative_sign","-"],["p_cs_precedes",true],["p_sep_by_space",true],["p_sign_posn",1],["pm",""],["positive_sign",""],["thousands_sep",""]]	\N	\N
209	2022-12-06 20:16:32.52404	0	20	lang_ro	[["am",""],["code","ro"],["date","%d.%m.%Y"],["decimal_point",","],["grouping","[3,3]"],["mon_decimal_point",","],["mon_grouping","[3,3]"],["mon_thousands_sep","."],["n_cs_precedes",true],["n_sep_by_space",true],["n_sign_posn",1],["name","Romanian"],["negative_sign","-"],["p_cs_precedes",true],["p_sep_by_space",true],["p_sign_posn",1],["pm",""],["positive_sign",""],["thousands_sep","."]]	ir.lang	ir	f	[["am",""],["code","ro"],["date","%d.%m.%Y"],["decimal_point",","],["grouping","[3,3]"],["mon_decimal_point",","],["mon_grouping","[3,3]"],["mon_thousands_sep","."],["n_cs_precedes",true],["n_sep_by_space",true],["n_sign_posn",1],["name","Romanian"],["negative_sign","-"],["p_cs_precedes",true],["p_sep_by_space",true],["p_sign_posn",1],["pm",""],["positive_sign",""],["thousands_sep","."]]	\N	\N
210	2022-12-06 20:16:32.52404	0	21	lang_ru	[["am",""],["code","ru"],["date","%d.%m.%Y"],["decimal_point",","],["grouping","[3, 3, 0]"],["mon_decimal_point","."],["mon_grouping","[3, 3, 0]"],["mon_thousands_sep","\\u00a0"],["n_cs_precedes",false],["n_sep_by_space",true],["n_sign_posn",1],["name","Russian"],["negative_sign","-"],["p_cs_precedes",false],["p_sep_by_space",true],["p_sign_posn",1],["pm",""],["positive_sign",""],["thousands_sep"," "]]	ir.lang	ir	f	[["am",""],["code","ru"],["date","%d.%m.%Y"],["decimal_point",","],["grouping","[3, 3, 0]"],["mon_decimal_point","."],["mon_grouping","[3, 3, 0]"],["mon_thousands_sep","\\u00a0"],["n_cs_precedes",false],["n_sep_by_space",true],["n_sign_posn",1],["name","Russian"],["negative_sign","-"],["p_cs_precedes",false],["p_sep_by_space",true],["p_sign_posn",1],["pm",""],["positive_sign",""],["thousands_sep"," "]]	\N	\N
211	2022-12-06 20:16:32.52404	0	22	lang_sl	[["am",""],["code","sl"],["date","%d.%m.%Y"],["decimal_point",","],["grouping","[]"],["mon_decimal_point",","],["mon_grouping","[3, 3, 0]"],["mon_thousands_sep"," "],["n_cs_precedes",false],["n_sep_by_space",true],["n_sign_posn",1],["name","Slovenian"],["negative_sign","-"],["p_cs_precedes",false],["p_sep_by_space",true],["p_sign_posn",1],["pm",""],["positive_sign",""],["thousands_sep"," "]]	ir.lang	ir	f	[["am",""],["code","sl"],["date","%d.%m.%Y"],["decimal_point",","],["grouping","[]"],["mon_decimal_point",","],["mon_grouping","[3, 3, 0]"],["mon_thousands_sep"," "],["n_cs_precedes",false],["n_sep_by_space",true],["n_sign_posn",1],["name","Slovenian"],["negative_sign","-"],["p_cs_precedes",false],["p_sep_by_space",true],["p_sign_posn",1],["pm",""],["positive_sign",""],["thousands_sep"," "]]	\N	\N
212	2022-12-06 20:16:32.52404	0	23	lang_tr	[["code","tr"],["date","%d-%m-%Y"],["decimal_point",","],["grouping","[3, 3, 0]"],["mon_decimal_point",","],["mon_grouping","[3, 3, 0]"],["mon_thousands_sep","."],["n_cs_precedes",false],["n_sep_by_space",true],["n_sign_posn",1],["name","Turkish"],["negative_sign","-"],["p_cs_precedes",false],["p_sep_by_space",true],["p_sign_posn",1],["positive_sign",""],["thousands_sep","."]]	ir.lang	ir	f	[["code","tr"],["date","%d-%m-%Y"],["decimal_point",","],["grouping","[3, 3, 0]"],["mon_decimal_point",","],["mon_grouping","[3, 3, 0]"],["mon_thousands_sep","."],["n_cs_precedes",false],["n_sep_by_space",true],["n_sign_posn",1],["name","Turkish"],["negative_sign","-"],["p_cs_precedes",false],["p_sep_by_space",true],["p_sign_posn",1],["positive_sign",""],["thousands_sep","."]]	\N	\N
213	2022-12-06 20:16:32.52404	0	24	lang_zh_CN	[["am","\\u4e0a\\u5348"],["code","zh_CN"],["date","%Y-%m-%d"],["decimal_point","."],["grouping","[3, 0]"],["mon_decimal_point","."],["mon_grouping","[3, 0]"],["mon_thousands_sep",","],["n_cs_precedes",true],["n_sep_by_space",false],["n_sign_posn",4],["name","Chinese Simplified"],["negative_sign","-"],["p_cs_precedes",true],["p_sep_by_space",false],["p_sign_posn",4],["pm","\\u4e0b\\u5348"],["positive_sign",""],["thousands_sep",","]]	ir.lang	ir	f	[["am","\\u4e0a\\u5348"],["code","zh_CN"],["date","%Y-%m-%d"],["decimal_point","."],["grouping","[3, 0]"],["mon_decimal_point","."],["mon_grouping","[3, 0]"],["mon_thousands_sep",","],["n_cs_precedes",true],["n_sep_by_space",false],["n_sign_posn",4],["name","Chinese Simplified"],["negative_sign","-"],["p_cs_precedes",true],["p_sep_by_space",false],["p_sign_posn",4],["pm","\\u4e0b\\u5348"],["positive_sign",""],["thousands_sep",","]]	\N	\N
214	2022-12-06 20:16:32.52404	0	64	lang_view_tree	[["model","ir.lang"],["name","lang_list"],["type","tree"]]	ir.ui.view	ir	f	[["model","ir.lang"],["name","lang_list"],["type","tree"]]	\N	\N
215	2022-12-06 20:16:32.52404	0	65	lang_view_form	[["model","ir.lang"],["name","lang_form"],["type","form"]]	ir.ui.view	ir	f	[["model","ir.lang"],["name","lang_form"],["type","form"]]	\N	\N
216	2022-12-06 20:16:32.52404	0	32	act_lang_form	[["context",""],["name","Languages"],["res_model","ir.lang"]]	ir.action.act_window	ir	f	[["context",""],["name","Languages"],["res_model","ir.lang"]]	\N	\N
217	2022-12-06 20:16:32.52404	0	48	act_lang_form_view1	[["act_window",32],["sequence",1],["view",64]]	ir.action.act_window.view	ir	f	[["act_window",32],["sequence",1],["view",64]]	\N	\N
218	2022-12-06 20:16:32.52404	0	49	act_lang_form_view2	[["act_window",32],["sequence",2],["view",65]]	ir.action.act_window.view	ir	f	[["act_window",32],["sequence",2],["view",65]]	\N	\N
219	2022-12-06 20:16:32.52404	0	31	menu_lang_form	[["action","ir.action.act_window,32"],["icon","tryton-list"],["name","Languages"],["parent",30],["sequence",10]]	ir.ui.menu	ir	f	[["action","ir.action.act_window,32"],["icon","tryton-list"],["name","Languages"],["parent",30],["sequence",10]]	\N	\N
220	2022-12-06 20:16:32.52404	0	4	lang_load_translations_button	[["confirm","Are you sure you want to load languages' translations?"],["model",45],["name","load_translations"],["string","Load translations"]]	ir.model.button	ir	f	[["confirm","Are you sure you want to load languages' translations?"],["model",45],["name","load_translations"],["string","Load translations"]]	\N	\N
221	2022-12-06 20:16:32.52404	0	5	lang_unload_translations_button	[["confirm","Are you sure you want to remove languages' translations?"],["model",45],["name","unload_translations"],["string","Unload translations"]]	ir.model.button	ir	f	[["confirm","Are you sure you want to remove languages' translations?"],["model",45],["name","unload_translations"],["string","Unload translations"]]	\N	\N
222	2022-12-06 20:16:32.52404	0	66	lang_config_start_view_form	[["model","ir.lang.config.start"],["name","lang_config_start_form"],["type","form"]]	ir.ui.view	ir	f	[["model","ir.lang.config.start"],["name","lang_config_start_form"],["type","form"]]	\N	\N
223	2022-12-06 20:16:32.52404	0	33	act_lang_config	[["name","Configure Languages"],["window",true],["wiz_name","ir.lang.config"]]	ir.action.wizard	ir	f	[["name","Configure Languages"],["window",true],["wiz_name","ir.lang.config"]]	\N	\N
224	2022-12-06 20:16:32.52404	0	1	config_wizard_item_lang	[["action",33]]	ir.module.config_wizard.item	ir	f	[["action",33]]	\N	\N
225	2022-12-06 20:16:32.52404	0	67	translation_view_form	[["model","ir.translation"],["name","translation_form"],["type","form"]]	ir.ui.view	ir	f	[["model","ir.translation"],["name","translation_form"],["type","form"]]	\N	\N
226	2022-12-06 20:16:32.52404	0	68	translation_view_tree	[["model","ir.translation"],["name","translation_list"],["type","tree"]]	ir.ui.view	ir	f	[["model","ir.translation"],["name","translation_list"],["type","tree"]]	\N	\N
227	2022-12-06 20:16:32.52404	0	34	act_translation_form	[["domain",null],["name","Translations"],["res_model","ir.translation"]]	ir.action.act_window	ir	f	[["domain",null],["name","Translations"],["res_model","ir.translation"]]	\N	\N
228	2022-12-06 20:16:32.52404	0	3	act_translation_form_domain_module	[["act_window",34],["domain","[[\\"module\\", \\"!=\\", null]]"],["name","Modules"],["sequence",10]]	ir.action.act_window.domain	ir	f	[["act_window",34],["domain","[[\\"module\\", \\"!=\\", null]]"],["name","Modules"],["sequence",10]]	\N	\N
229	2022-12-06 20:16:32.52404	0	4	act_translation_form_domain_local	[["act_window",34],["domain","[[\\"module\\", \\"=\\", null]]"],["name","Local"],["sequence",20]]	ir.action.act_window.domain	ir	f	[["act_window",34],["domain","[[\\"module\\", \\"=\\", null]]"],["name","Local"],["sequence",20]]	\N	\N
230	2022-12-06 20:16:32.52404	0	50	act_translation_form_view1	[["act_window",34],["sequence",1],["view",68]]	ir.action.act_window.view	ir	f	[["act_window",34],["sequence",1],["view",68]]	\N	\N
231	2022-12-06 20:16:32.52404	0	51	act_translation_form_view2	[["act_window",34],["sequence",2],["view",67]]	ir.action.act_window.view	ir	f	[["act_window",34],["sequence",2],["view",67]]	\N	\N
232	2022-12-06 20:16:32.52404	0	32	menu_translation_form	[["action","ir.action.act_window,34"],["icon","tryton-list"],["name","Translations"],["parent",30],["sequence",20]]	ir.ui.menu	ir	f	[["action","ir.action.act_window,34"],["icon","tryton-list"],["name","Translations"],["parent",30],["sequence",20]]	\N	\N
233	2022-12-06 20:16:32.52404	0	35	wizard_translation_report	[["model","ir.action.report"],["name","Translations"],["wiz_name","ir.translation.report"]]	ir.action.wizard	ir	f	[["model","ir.action.report"],["name","Translations"],["wiz_name","ir.translation.report"]]	\N	\N
234	2022-12-06 20:16:32.52404	0	31	wizard_translation_report_keyword1	[["action",35],["keyword","form_relate"],["model","ir.action.report,-1"]]	ir.action.keyword	ir	f	[["action",35],["keyword","form_relate"],["model","ir.action.report,-1"]]	\N	\N
235	2022-12-06 20:16:32.52404	0	36	act_translation_report	[["name","Translations"],["res_model","ir.translation"]]	ir.action.act_window	ir	f	[["name","Translations"],["res_model","ir.translation"]]	\N	\N
236	2022-12-06 20:16:32.52404	0	69	translation_set_start_view_form	[["model","ir.translation.set.start"],["name","translation_set_start_form"],["type","form"]]	ir.ui.view	ir	f	[["model","ir.translation.set.start"],["name","translation_set_start_form"],["type","form"]]	\N	\N
237	2022-12-06 20:16:32.52404	0	70	translation_set_succeed_view_form	[["model","ir.translation.set.succeed"],["name","translation_set_succeed_form"],["type","form"]]	ir.ui.view	ir	f	[["model","ir.translation.set.succeed"],["name","translation_set_succeed_form"],["type","form"]]	\N	\N
238	2022-12-06 20:16:32.52404	0	37	act_translation_set	[["name","Set Translations"],["wiz_name","ir.translation.set"]]	ir.action.wizard	ir	f	[["name","Set Translations"],["wiz_name","ir.translation.set"]]	\N	\N
239	2022-12-06 20:16:32.52404	0	32	act_translation_set_keyword_report	[["action",37],["keyword","form_action"],["model","ir.action.report,-1"]]	ir.action.keyword	ir	f	[["action",37],["keyword","form_action"],["model","ir.action.report,-1"]]	\N	\N
240	2022-12-06 20:16:32.52404	0	33	act_translation_set_keyword_view	[["action",37],["keyword","form_action"],["model","ir.ui.view,-1"]]	ir.action.keyword	ir	f	[["action",37],["keyword","form_action"],["model","ir.ui.view,-1"]]	\N	\N
241	2022-12-06 20:16:32.52404	0	33	menu_translation_set	[["action","ir.action.wizard,37"],["icon","tryton-launch"],["name","Set Translations"],["parent",30],["sequence",90]]	ir.ui.menu	ir	f	[["action","ir.action.wizard,37"],["icon","tryton-launch"],["name","Set Translations"],["parent",30],["sequence",90]]	\N	\N
242	2022-12-06 20:16:32.52404	0	71	translation_clean_start_view_form	[["model","ir.translation.clean.start"],["name","translation_clean_start_form"],["type","form"]]	ir.ui.view	ir	f	[["model","ir.translation.clean.start"],["name","translation_clean_start_form"],["type","form"]]	\N	\N
243	2022-12-06 20:16:32.52404	0	72	translation_clean_succeed_view_form	[["model","ir.translation.clean.succeed"],["name","translation_clean_succeed_form"],["type","form"]]	ir.ui.view	ir	f	[["model","ir.translation.clean.succeed"],["name","translation_clean_succeed_form"],["type","form"]]	\N	\N
244	2022-12-06 20:16:32.52404	0	38	act_translation_clean	[["name","Clean Translations"],["wiz_name","ir.translation.clean"]]	ir.action.wizard	ir	f	[["name","Clean Translations"],["wiz_name","ir.translation.clean"]]	\N	\N
245	2022-12-06 20:16:32.52404	0	34	menu_translation_clean	[["action","ir.action.wizard,38"],["icon","tryton-launch"],["name","Clean Translations"],["parent",30],["sequence",91]]	ir.ui.menu	ir	f	[["action","ir.action.wizard,38"],["icon","tryton-launch"],["name","Clean Translations"],["parent",30],["sequence",91]]	\N	\N
246	2022-12-06 20:16:32.52404	0	73	translation_update_start_view_form	[["model","ir.translation.update.start"],["name","translation_update_start_form"],["type","form"]]	ir.ui.view	ir	f	[["model","ir.translation.update.start"],["name","translation_update_start_form"],["type","form"]]	\N	\N
248	2022-12-06 20:16:32.52404	0	36	act_translation_update_keyword_report	[["action",39],["keyword","form_action"],["model","ir.action.report,-1"]]	ir.action.keyword	ir	f	[["action",39],["keyword","form_action"],["model","ir.action.report,-1"]]	\N	\N
249	2022-12-06 20:16:32.52404	0	37	act_translation_update_keyword_view	[["action",39],["keyword","form_action"],["model","ir.ui.view,-1"]]	ir.action.keyword	ir	f	[["action",39],["keyword","form_action"],["model","ir.ui.view,-1"]]	\N	\N
250	2022-12-06 20:16:32.52404	0	35	menu_translation_update	[["action","ir.action.wizard,39"],["icon","tryton-launch"],["name","Synchronize Translations"],["parent",30],["sequence",92]]	ir.ui.menu	ir	f	[["action","ir.action.wizard,39"],["icon","tryton-launch"],["name","Synchronize Translations"],["parent",30],["sequence",92]]	\N	\N
251	2022-12-06 20:16:32.52404	0	74	translation_export_start_view_form	[["model","ir.translation.export.start"],["name","translation_export_start_form"],["type","form"]]	ir.ui.view	ir	f	[["model","ir.translation.export.start"],["name","translation_export_start_form"],["type","form"]]	\N	\N
252	2022-12-06 20:16:32.52404	0	75	translation_export_result_view_form	[["model","ir.translation.export.result"],["name","translation_export_result_form"],["type","form"]]	ir.ui.view	ir	f	[["model","ir.translation.export.result"],["name","translation_export_result_form"],["type","form"]]	\N	\N
253	2022-12-06 20:16:32.52404	0	40	act_translation_export	[["name","Export Translations"],["wiz_name","ir.translation.export"]]	ir.action.wizard	ir	f	[["name","Export Translations"],["wiz_name","ir.translation.export"]]	\N	\N
254	2022-12-06 20:16:32.52404	0	36	menu_translation_export	[["action","ir.action.wizard,40"],["icon","tryton-launch"],["name","Export Translations"],["parent",30],["sequence",93]]	ir.ui.menu	ir	f	[["action","ir.action.wizard,40"],["icon","tryton-launch"],["name","Export Translations"],["parent",30],["sequence",93]]	\N	\N
255	2022-12-06 20:16:32.52404	0	76	export_view_form	[["model","ir.export"],["name","export_form"],["type","form"]]	ir.ui.view	ir	f	[["model","ir.export"],["name","export_form"],["type","form"]]	\N	\N
256	2022-12-06 20:16:32.52404	0	77	export_view_tree	[["model","ir.export"],["name","export_list"],["type","tree"]]	ir.ui.view	ir	f	[["model","ir.export"],["name","export_list"],["type","tree"]]	\N	\N
257	2022-12-06 20:16:32.52404	0	41	act_export_form	[["name","Exports"],["res_model","ir.export"],["type","ir.action.act_window"]]	ir.action.act_window	ir	f	[["name","Exports"],["res_model","ir.export"],["type","ir.action.act_window"]]	\N	\N
258	2022-12-06 20:16:32.52404	0	52	act_export_form_view1	[["act_window",41],["sequence",1],["view",77]]	ir.action.act_window.view	ir	f	[["act_window",41],["sequence",1],["view",77]]	\N	\N
259	2022-12-06 20:16:32.52404	0	53	act_export_form_view2	[["act_window",41],["sequence",2],["view",76]]	ir.action.act_window.view	ir	f	[["act_window",41],["sequence",2],["view",76]]	\N	\N
260	2022-12-06 20:16:32.52404	0	37	menu_export_form	[["action","ir.action.act_window,41"],["icon","tryton-list"],["name","Exports"],["parent",15],["sequence",50]]	ir.ui.menu	ir	f	[["action","ir.action.act_window,41"],["icon","tryton-list"],["name","Exports"],["parent",15],["sequence",50]]	\N	\N
261	2022-12-06 20:16:32.52404	0	78	export_line_view_form	[["model","ir.export.line"],["name","export_line_form"],["type","form"]]	ir.ui.view	ir	f	[["model","ir.export.line"],["name","export_line_form"],["type","form"]]	\N	\N
262	2022-12-06 20:16:32.52404	0	79	export_line_view_tree	[["model","ir.export.line"],["name","export_line_list"],["type","tree"]]	ir.ui.view	ir	f	[["model","ir.export.line"],["name","export_line_list"],["type","tree"]]	\N	\N
263	2022-12-06 20:16:32.52404	0	80	rule_group_view_form	[["model","ir.rule.group"],["name","rule_group_form"],["type","form"]]	ir.ui.view	ir	f	[["model","ir.rule.group"],["name","rule_group_form"],["type","form"]]	\N	\N
264	2022-12-06 20:16:32.52404	0	81	rule_group_view_tree	[["model","ir.rule.group"],["name","rule_group_list"],["type","tree"]]	ir.ui.view	ir	f	[["model","ir.rule.group"],["name","rule_group_list"],["type","tree"]]	\N	\N
265	2022-12-06 20:16:32.52404	0	42	act_rule_group_form	[["name","Record Rules"],["res_model","ir.rule.group"]]	ir.action.act_window	ir	f	[["name","Record Rules"],["res_model","ir.rule.group"]]	\N	\N
266	2022-12-06 20:16:32.52404	0	54	act_rule_group_form_view1	[["act_window",42],["sequence",1],["view",81]]	ir.action.act_window.view	ir	f	[["act_window",42],["sequence",1],["view",81]]	\N	\N
267	2022-12-06 20:16:32.52404	0	55	act_rule_group_form_view2	[["act_window",42],["sequence",2],["view",80]]	ir.action.act_window.view	ir	f	[["act_window",42],["sequence",2],["view",80]]	\N	\N
268	2022-12-06 20:16:32.52404	0	38	menu_rule_group_form	[["action","ir.action.act_window,42"],["icon","tryton-list"],["name","Record Rules"],["parent",15],["sequence",30]]	ir.ui.menu	ir	f	[["action","ir.action.act_window,42"],["icon","tryton-list"],["name","Record Rules"],["parent",15],["sequence",30]]	\N	\N
269	2022-12-06 20:16:32.52404	0	82	rule_view_form	[["model","ir.rule"],["name","rule_form"],["type","form"]]	ir.ui.view	ir	f	[["model","ir.rule"],["name","rule_form"],["type","form"]]	\N	\N
270	2022-12-06 20:16:32.52404	0	83	rule_view_tree	[["model","ir.rule"],["name","rule_list"],["type","tree"]]	ir.ui.view	ir	f	[["model","ir.rule"],["name","rule_list"],["type","tree"]]	\N	\N
271	2022-12-06 20:16:32.52404	0	39	menu_modules	[["icon","tryton-folder"],["name","Modules"],["parent",1],["sequence",20]]	ir.ui.menu	ir	f	[["icon","tryton-folder"],["name","Modules"],["parent",1],["sequence",20]]	\N	\N
272	2022-12-06 20:16:32.52404	0	84	module_view_form	[["model","ir.module"],["name","module_form"],["type","form"]]	ir.ui.view	ir	f	[["model","ir.module"],["name","module_form"],["type","form"]]	\N	\N
273	2022-12-06 20:16:32.52404	0	85	module_view_tree	[["model","ir.module"],["name","module_list"],["type","tree"]]	ir.ui.view	ir	f	[["model","ir.module"],["name","module_list"],["type","tree"]]	\N	\N
274	2022-12-06 20:16:32.52404	0	43	act_module_form	[["domain","[[\\"name\\", \\"!=\\", \\"tests\\"]]"],["name","Modules"],["res_model","ir.module"],["type","ir.action.act_window"]]	ir.action.act_window	ir	f	[["domain","[[\\"name\\", \\"!=\\", \\"tests\\"]]"],["name","Modules"],["res_model","ir.module"],["type","ir.action.act_window"]]	\N	\N
275	2022-12-06 20:16:32.52404	0	56	act_module_form_view1	[["act_window",43],["sequence",1],["view",85]]	ir.action.act_window.view	ir	f	[["act_window",43],["sequence",1],["view",85]]	\N	\N
276	2022-12-06 20:16:32.52404	0	57	act_module_form_view2	[["act_window",43],["sequence",2],["view",84]]	ir.action.act_window.view	ir	f	[["act_window",43],["sequence",2],["view",84]]	\N	\N
277	2022-12-06 20:16:32.52404	0	40	menu_module_form	[["action","ir.action.act_window,43"],["icon","tryton-list"],["name","Modules"],["parent",39],["sequence",10]]	ir.ui.menu	ir	f	[["action","ir.action.act_window,43"],["icon","tryton-list"],["name","Modules"],["parent",39],["sequence",10]]	\N	\N
278	2022-12-06 20:16:32.52404	0	6	module_activate_button	[["model",51],["name","activate"],["string","Mark for Activation"]]	ir.model.button	ir	f	[["model",51],["name","activate"],["string","Mark for Activation"]]	\N	\N
308	2022-12-06 20:16:32.52404	0	1	January	[["abbreviation","Jan"],["index",1],["name","January"]]	ir.calendar.month	ir	f	[["abbreviation","Jan"],["index",1],["name","January"]]	\N	\N
279	2022-12-06 20:16:32.52404	0	7	module_activate_cancel_button	[["model",51],["name","activate_cancel"],["string","Cancel Activation"]]	ir.model.button	ir	f	[["model",51],["name","activate_cancel"],["string","Cancel Activation"]]	\N	\N
280	2022-12-06 20:16:32.52404	0	8	module_deactivate_button	[["model",51],["name","deactivate"],["string","Mark for Deactivation (beta)"]]	ir.model.button	ir	f	[["model",51],["name","deactivate"],["string","Mark for Deactivation (beta)"]]	\N	\N
281	2022-12-06 20:16:32.52404	0	9	module_deactivate_cancel_button	[["model",51],["name","deactivate_cancel"],["string","Cancel Deactivation"]]	ir.model.button	ir	f	[["model",51],["name","deactivate_cancel"],["string","Cancel Deactivation"]]	\N	\N
282	2022-12-06 20:16:32.52404	0	10	module_upgrade_button	[["model",51],["name","upgrade"],["string","Mark for Upgrade"]]	ir.model.button	ir	f	[["model",51],["name","upgrade"],["string","Mark for Upgrade"]]	\N	\N
283	2022-12-06 20:16:32.52404	0	11	module_upgrade_cancel_button	[["model",51],["name","upgrade_cancel"],["string","Cancel Upgrade"]]	ir.model.button	ir	f	[["model",51],["name","upgrade_cancel"],["string","Cancel Upgrade"]]	\N	\N
284	2022-12-06 20:16:32.52404	0	86	module_dependency_view_form	[["model","ir.module.dependency"],["name","module_dependency_form"],["type","form"]]	ir.ui.view	ir	f	[["model","ir.module.dependency"],["name","module_dependency_form"],["type","form"]]	\N	\N
285	2022-12-06 20:16:32.52404	0	87	module_dependency_view_list	[["model","ir.module.dependency"],["name","module_dependency_list"],["type","tree"]]	ir.ui.view	ir	f	[["model","ir.module.dependency"],["name","module_dependency_list"],["type","tree"]]	\N	\N
286	2022-12-06 20:16:32.52404	0	88	config_wizard_item_view_tree	[["model","ir.module.config_wizard.item"],["name","module_config_wizard_item_list"],["type","tree"]]	ir.ui.view	ir	f	[["model","ir.module.config_wizard.item"],["name","module_config_wizard_item_list"],["type","tree"]]	\N	\N
287	2022-12-06 20:16:32.52404	0	44	act_config_wizard_item_form	[["name","Config Wizard Items"],["res_model","ir.module.config_wizard.item"]]	ir.action.act_window	ir	f	[["name","Config Wizard Items"],["res_model","ir.module.config_wizard.item"]]	\N	\N
288	2022-12-06 20:16:32.52404	0	58	act_config_wizard_item_form_view1	[["act_window",44],["sequence",10],["view",88]]	ir.action.act_window.view	ir	f	[["act_window",44],["sequence",10],["view",88]]	\N	\N
289	2022-12-06 20:16:32.52404	0	41	menu_config_wizard_item_form	[["action","ir.action.act_window,44"],["icon","tryton-list"],["name","Config Wizard Items"],["parent",39],["sequence",50]]	ir.ui.menu	ir	f	[["action","ir.action.act_window,44"],["icon","tryton-list"],["name","Config Wizard Items"],["parent",39],["sequence",50]]	\N	\N
290	2022-12-06 20:16:32.52404	0	45	act_module_config_wizard	[["name","Module Configuration"],["window",true],["wiz_name","ir.module.config_wizard"]]	ir.action.wizard	ir	f	[["name","Module Configuration"],["window",true],["wiz_name","ir.module.config_wizard"]]	\N	\N
291	2022-12-06 20:16:32.52404	0	44	act_module_config_wizard_keyword	[["action",45],["keyword","form_action"],["model","ir.module.config_wizard.item,-1"]]	ir.action.keyword	ir	f	[["action",45],["keyword","form_action"],["model","ir.module.config_wizard.item,-1"]]	\N	\N
292	2022-12-06 20:16:32.52404	0	89	module_config_wizard_first_view_form	[["model","ir.module.config_wizard.first"],["name","module_config_wizard_first_form"],["type","form"]]	ir.ui.view	ir	f	[["model","ir.module.config_wizard.first"],["name","module_config_wizard_first_form"],["type","form"]]	\N	\N
293	2022-12-06 20:16:32.52404	0	90	module_config_wizard_other_view_form	[["model","ir.module.config_wizard.other"],["name","module_config_wizard_other_form"],["type","form"]]	ir.ui.view	ir	f	[["model","ir.module.config_wizard.other"],["name","module_config_wizard_other_form"],["type","form"]]	\N	\N
294	2022-12-06 20:16:32.52404	0	91	module_config_wizard_done_view_form	[["model","ir.module.config_wizard.done"],["name","module_config_wizard_done_form"],["type","form"]]	ir.ui.view	ir	f	[["model","ir.module.config_wizard.done"],["name","module_config_wizard_done_form"],["type","form"]]	\N	\N
295	2022-12-06 20:16:32.52404	0	46	act_module_activate_upgrade	[["name","Perform Pending Activation/Upgrade"],["wiz_name","ir.module.activate_upgrade"]]	ir.action.wizard	ir	f	[["name","Perform Pending Activation/Upgrade"],["wiz_name","ir.module.activate_upgrade"]]	\N	\N
296	2022-12-06 20:16:32.52404	0	45	act_module_activate_upgrade_keyword1	[["action",46],["keyword","form_action"],["model","ir.module,-1"]]	ir.action.keyword	ir	f	[["action",46],["keyword","form_action"],["model","ir.module,-1"]]	\N	\N
297	2022-12-06 20:16:32.52404	0	92	module_activate_upgrade_start_view_form	[["model","ir.module.activate_upgrade.start"],["name","module_activate_upgrade_start_form"],["type","form"]]	ir.ui.view	ir	f	[["model","ir.module.activate_upgrade.start"],["name","module_activate_upgrade_start_form"],["type","form"]]	\N	\N
298	2022-12-06 20:16:32.52404	0	93	module_activate_upgrade_done_view_form	[["model","ir.module.activate_upgrade.done"],["name","module_activate_upgrade_done_form"],["type","form"]]	ir.ui.view	ir	f	[["model","ir.module.activate_upgrade.done"],["name","module_activate_upgrade_done_form"],["type","form"]]	\N	\N
299	2022-12-06 20:16:32.52404	0	42	menu_module_activate_upgrade	[["action","ir.action.wizard,46"],["icon","tryton-launch"],["name","Perform Pending Activation/Upgrade"],["parent",39],["sequence",90]]	ir.ui.menu	ir	f	[["action","ir.action.wizard,46"],["icon","tryton-launch"],["name","Perform Pending Activation/Upgrade"],["parent",39],["sequence",90]]	\N	\N
300	2022-12-06 20:16:32.52404	0	47	act_module_config	[["name","Configure Modules"],["wiz_name","ir.module.config"]]	ir.action.wizard	ir	f	[["name","Configure Modules"],["wiz_name","ir.module.config"]]	\N	\N
301	2022-12-06 20:16:32.52404	0	2	config_wizard_item_module	[["action",47],["sequence",10000]]	ir.module.config_wizard.item	ir	f	[["action",47],["sequence",10000]]	\N	\N
302	2022-12-06 20:16:32.52404	0	94	trigger_view_form	[["model","ir.trigger"],["name","trigger_form"],["type","form"]]	ir.ui.view	ir	f	[["model","ir.trigger"],["name","trigger_form"],["type","form"]]	\N	\N
303	2022-12-06 20:16:32.52404	0	95	trigger_view_tree	[["model","ir.trigger"],["name","trigger_list"],["type","tree"]]	ir.ui.view	ir	f	[["model","ir.trigger"],["name","trigger_list"],["type","tree"]]	\N	\N
304	2022-12-06 20:16:32.52404	0	48	act_trigger_form	[["name","Triggers"],["res_model","ir.trigger"]]	ir.action.act_window	ir	f	[["name","Triggers"],["res_model","ir.trigger"]]	\N	\N
305	2022-12-06 20:16:32.52404	0	59	act_trigger_form_view1	[["act_window",48],["sequence",10],["view",95]]	ir.action.act_window.view	ir	f	[["act_window",48],["sequence",10],["view",95]]	\N	\N
306	2022-12-06 20:16:32.52404	0	60	act_trigger_form_view2	[["act_window",48],["sequence",20],["view",94]]	ir.action.act_window.view	ir	f	[["act_window",48],["sequence",20],["view",94]]	\N	\N
307	2022-12-06 20:16:32.52404	0	43	menu_trigger_form	[["action","ir.action.act_window,48"],["icon","tryton-list"],["name","Triggers"],["parent",15],["sequence",50]]	ir.ui.menu	ir	f	[["action","ir.action.act_window,48"],["icon","tryton-list"],["name","Triggers"],["parent",15],["sequence",50]]	\N	\N
354	2022-12-06 20:16:32.52404	0	22	msg_dict_schema_digits	[["text","Digits"]]	ir.message	ir	f	[["text","Digits"]]	\N	\N
309	2022-12-06 20:16:32.52404	0	2	February	[["abbreviation","Feb"],["index",2],["name","February"]]	ir.calendar.month	ir	f	[["abbreviation","Feb"],["index",2],["name","February"]]	\N	\N
310	2022-12-06 20:16:32.52404	0	3	March	[["abbreviation","Mar"],["index",3],["name","March"]]	ir.calendar.month	ir	f	[["abbreviation","Mar"],["index",3],["name","March"]]	\N	\N
311	2022-12-06 20:16:32.52404	0	4	April	[["abbreviation","Apr"],["index",4],["name","April"]]	ir.calendar.month	ir	f	[["abbreviation","Apr"],["index",4],["name","April"]]	\N	\N
312	2022-12-06 20:16:32.52404	0	5	May	[["abbreviation","May"],["index",5],["name","May"]]	ir.calendar.month	ir	f	[["abbreviation","May"],["index",5],["name","May"]]	\N	\N
313	2022-12-06 20:16:32.52404	0	6	June	[["abbreviation","Jun"],["index",6],["name","June"]]	ir.calendar.month	ir	f	[["abbreviation","Jun"],["index",6],["name","June"]]	\N	\N
314	2022-12-06 20:16:32.52404	0	7	July	[["abbreviation","Jul"],["index",7],["name","July"]]	ir.calendar.month	ir	f	[["abbreviation","Jul"],["index",7],["name","July"]]	\N	\N
315	2022-12-06 20:16:32.52404	0	8	August	[["abbreviation","Aug"],["index",8],["name","August"]]	ir.calendar.month	ir	f	[["abbreviation","Aug"],["index",8],["name","August"]]	\N	\N
316	2022-12-06 20:16:32.52404	0	9	September	[["abbreviation","Sep"],["index",9],["name","September"]]	ir.calendar.month	ir	f	[["abbreviation","Sep"],["index",9],["name","September"]]	\N	\N
317	2022-12-06 20:16:32.52404	0	10	October	[["abbreviation","Oct"],["index",10],["name","October"]]	ir.calendar.month	ir	f	[["abbreviation","Oct"],["index",10],["name","October"]]	\N	\N
318	2022-12-06 20:16:32.52404	0	11	November	[["abbreviation","Nov"],["index",11],["name","November"]]	ir.calendar.month	ir	f	[["abbreviation","Nov"],["index",11],["name","November"]]	\N	\N
319	2022-12-06 20:16:32.52404	0	12	December	[["abbreviation","Dec"],["index",12],["name","December"]]	ir.calendar.month	ir	f	[["abbreviation","Dec"],["index",12],["name","December"]]	\N	\N
320	2022-12-06 20:16:32.52404	0	1	Monday	[["abbreviation","Mon"],["index",0],["name","Monday"]]	ir.calendar.day	ir	f	[["abbreviation","Mon"],["index",0],["name","Monday"]]	\N	\N
321	2022-12-06 20:16:32.52404	0	2	Tuesday	[["abbreviation","Tue"],["index",1],["name","Tuesday"]]	ir.calendar.day	ir	f	[["abbreviation","Tue"],["index",1],["name","Tuesday"]]	\N	\N
322	2022-12-06 20:16:32.52404	0	3	Wednesday	[["abbreviation","Wed"],["index",2],["name","Wednesday"]]	ir.calendar.day	ir	f	[["abbreviation","Wed"],["index",2],["name","Wednesday"]]	\N	\N
323	2022-12-06 20:16:32.52404	0	4	Thursday	[["abbreviation","Thu"],["index",3],["name","Thursday"]]	ir.calendar.day	ir	f	[["abbreviation","Thu"],["index",3],["name","Thursday"]]	\N	\N
324	2022-12-06 20:16:32.52404	0	5	Friday	[["abbreviation","Fri"],["index",4],["name","Friday"]]	ir.calendar.day	ir	f	[["abbreviation","Fri"],["index",4],["name","Friday"]]	\N	\N
325	2022-12-06 20:16:32.52404	0	6	Saturday	[["abbreviation","Sat"],["index",5],["name","Saturday"]]	ir.calendar.day	ir	f	[["abbreviation","Sat"],["index",5],["name","Saturday"]]	\N	\N
326	2022-12-06 20:16:32.52404	0	7	Sunday	[["abbreviation","Sun"],["index",6],["name","Sunday"]]	ir.calendar.day	ir	f	[["abbreviation","Sun"],["index",6],["name","Sunday"]]	\N	\N
327	2022-12-06 20:16:32.52404	0	96	message_view_tree	[["model","ir.message"],["name","message_list"],["type","tree"]]	ir.ui.view	ir	f	[["model","ir.message"],["name","message_list"],["type","tree"]]	\N	\N
328	2022-12-06 20:16:32.52404	0	97	message_view_form	[["model","ir.message"],["name","message_form"],["type","form"]]	ir.ui.view	ir	f	[["model","ir.message"],["name","message_form"],["type","form"]]	\N	\N
329	2022-12-06 20:16:32.52404	0	49	act_message_form	[["name","Message"],["res_model","ir.message"]]	ir.action.act_window	ir	f	[["name","Message"],["res_model","ir.message"]]	\N	\N
330	2022-12-06 20:16:32.52404	0	61	act_message_form_view1	[["act_window",49],["sequence",10],["view",96]]	ir.action.act_window.view	ir	f	[["act_window",49],["sequence",10],["view",96]]	\N	\N
331	2022-12-06 20:16:32.52404	0	62	act_message_form_view2	[["act_window",49],["sequence",20],["view",97]]	ir.action.act_window.view	ir	f	[["act_window",49],["sequence",20],["view",97]]	\N	\N
332	2022-12-06 20:16:32.52404	0	44	menu_message_form	[["action","ir.action.act_window,49"],["icon","tryton-list"],["name","Message"],["parent",30],["sequence",20]]	ir.ui.menu	ir	f	[["action","ir.action.act_window,49"],["icon","tryton-list"],["name","Message"],["parent",30],["sequence",20]]	\N	\N
333	2022-12-06 20:16:32.52404	0	1	msg_ID	[["text","ID"]]	ir.message	ir	f	[["text","ID"]]	\N	\N
334	2022-12-06 20:16:32.52404	0	2	msg_created_by	[["text","Created by"]]	ir.message	ir	f	[["text","Created by"]]	\N	\N
335	2022-12-06 20:16:32.52404	0	3	msg_created_at	[["text","Created at"]]	ir.message	ir	f	[["text","Created at"]]	\N	\N
336	2022-12-06 20:16:32.52404	0	4	msg_edited_by	[["text","Edited by"]]	ir.message	ir	f	[["text","Edited by"]]	\N	\N
337	2022-12-06 20:16:32.52404	0	5	msg_edited_at	[["text","Edited at"]]	ir.message	ir	f	[["text","Edited at"]]	\N	\N
338	2022-12-06 20:16:32.52404	0	6	msg_record_name	[["text","Record Name"]]	ir.message	ir	f	[["text","Record Name"]]	\N	\N
339	2022-12-06 20:16:32.52404	0	7	msg_active	[["text","Active"]]	ir.message	ir	f	[["text","Active"]]	\N	\N
340	2022-12-06 20:16:32.52404	0	8	msg_active_help	[["text","Uncheck to exclude from future use."]]	ir.message	ir	f	[["text","Uncheck to exclude from future use."]]	\N	\N
341	2022-12-06 20:16:32.52404	0	9	msg_dict_schema_name	[["text","Name"]]	ir.message	ir	f	[["text","Name"]]	\N	\N
342	2022-12-06 20:16:32.52404	0	10	msg_dict_schema_string	[["text","String"]]	ir.message	ir	f	[["text","String"]]	\N	\N
343	2022-12-06 20:16:32.52404	0	11	msg_dict_schema_help	[["text","Help"]]	ir.message	ir	f	[["text","Help"]]	\N	\N
344	2022-12-06 20:16:32.52404	0	12	msg_dict_schema_type	[["text","Type"]]	ir.message	ir	f	[["text","Type"]]	\N	\N
345	2022-12-06 20:16:32.52404	0	13	msg_dict_schema_boolean	[["text","Boolean"]]	ir.message	ir	f	[["text","Boolean"]]	\N	\N
346	2022-12-06 20:16:32.52404	0	14	msg_dict_schema_integer	[["text","Integer"]]	ir.message	ir	f	[["text","Integer"]]	\N	\N
347	2022-12-06 20:16:32.52404	0	15	msg_dict_schema_char	[["text","Char"]]	ir.message	ir	f	[["text","Char"]]	\N	\N
348	2022-12-06 20:16:32.52404	0	16	msg_dict_schema_float	[["text","Float"]]	ir.message	ir	f	[["text","Float"]]	\N	\N
349	2022-12-06 20:16:32.52404	0	17	msg_dict_schema_numeric	[["text","Numeric"]]	ir.message	ir	f	[["text","Numeric"]]	\N	\N
350	2022-12-06 20:16:32.52404	0	18	msg_dict_schema_date	[["text","Date"]]	ir.message	ir	f	[["text","Date"]]	\N	\N
351	2022-12-06 20:16:32.52404	0	19	msg_dict_schema_datetime	[["text","DateTime"]]	ir.message	ir	f	[["text","DateTime"]]	\N	\N
352	2022-12-06 20:16:32.52404	0	20	msg_dict_schema_selection	[["text","Selection"]]	ir.message	ir	f	[["text","Selection"]]	\N	\N
353	2022-12-06 20:16:32.52404	0	21	msg_dict_schema_multiselection	[["text","MultiSelection"]]	ir.message	ir	f	[["text","MultiSelection"]]	\N	\N
356	2022-12-06 20:16:32.52404	0	24	msg_dict_schema_selection_help	[["text","A couple of key and label separated by \\":\\" per line."]]	ir.message	ir	f	[["text","A couple of key and label separated by \\":\\" per line."]]	\N	\N
357	2022-12-06 20:16:32.52404	0	25	msg_dict_schema_selection_sorted	[["text","Selection Sorted"]]	ir.message	ir	f	[["text","Selection Sorted"]]	\N	\N
358	2022-12-06 20:16:32.52404	0	26	msg_dict_schema_selection_sorted_help	[["text","If the selection must be sorted on label."]]	ir.message	ir	f	[["text","If the selection must be sorted on label."]]	\N	\N
359	2022-12-06 20:16:32.52404	0	27	msg_dict_schema_help_selection	[["text","Help Selection"]]	ir.message	ir	f	[["text","Help Selection"]]	\N	\N
360	2022-12-06 20:16:32.52404	0	28	msg_dict_schema_help_selection_help	[["text","The key followed by the help text separated by a \\":\\", one per line."]]	ir.message	ir	f	[["text","The key followed by the help text separated by a \\":\\", one per line."]]	\N	\N
361	2022-12-06 20:16:32.52404	0	29	msg_dict_schema_selection_json	[["text","Selection JSON"]]	ir.message	ir	f	[["text","Selection JSON"]]	\N	\N
362	2022-12-06 20:16:32.52404	0	30	msg_dict_schema_help_selection_json	[["text","Help Selection JSON"]]	ir.message	ir	f	[["text","Help Selection JSON"]]	\N	\N
363	2022-12-06 20:16:32.52404	0	31	msg_sequence	[["text","Sequence"]]	ir.message	ir	f	[["text","Sequence"]]	\N	\N
364	2022-12-06 20:16:32.52404	0	32	msg_id_positive	[["text","ID must be positive."]]	ir.message	ir	f	[["text","ID must be positive."]]	\N	\N
365	2022-12-06 20:16:32.52404	0	33	msg_write_xml_record	[["text","You are not allowed to modify this record."]]	ir.message	ir	f	[["text","You are not allowed to modify this record."]]	\N	\N
366	2022-12-06 20:16:32.52404	0	34	msg_delete_xml_record	[["text","You are not allowed to delete this record."]]	ir.message	ir	f	[["text","You are not allowed to delete this record."]]	\N	\N
367	2022-12-06 20:16:32.52404	0	35	msg_base_config_record	[["text","This record is part of the base configuration."]]	ir.message	ir	f	[["text","This record is part of the base configuration."]]	\N	\N
368	2022-12-06 20:16:32.52404	0	36	msg_relation_not_found	[["text","Relation not found: \\"%(value)r\\" in \\"%(model)s\\"."]]	ir.message	ir	f	[["text","Relation not found: \\"%(value)r\\" in \\"%(model)s\\"."]]	\N	\N
369	2022-12-06 20:16:32.52404	0	37	msg_too_many_relations_found	[["text","Too many relations found: \\"%(value)r\\" in \\"%(model)s\\"."]]	ir.message	ir	f	[["text","Too many relations found: \\"%(value)r\\" in \\"%(model)s\\"."]]	\N	\N
370	2022-12-06 20:16:32.52404	0	38	msg_reference_syntax_error	[["text","Syntax error for reference: \\"%(value)r\\" in \\"%(field)s\\"."]]	ir.message	ir	f	[["text","Syntax error for reference: \\"%(value)r\\" in \\"%(field)s\\"."]]	\N	\N
371	2022-12-06 20:16:32.52404	0	39	msg_xml_id_syntax_error	[["text","Syntax error for XML id: \\"%(value)r\\" in \\"%(field)s\\"."]]	ir.message	ir	f	[["text","Syntax error for XML id: \\"%(value)r\\" in \\"%(field)s\\"."]]	\N	\N
372	2022-12-06 20:16:32.52404	0	40	msg_domain_validation_record	[["text","The value for field \\"%(field)s\\" in \\"%(model)s\\" is not valid according to its domain."]]	ir.message	ir	f	[["text","The value for field \\"%(field)s\\" in \\"%(model)s\\" is not valid according to its domain."]]	\N	\N
373	2022-12-06 20:16:32.52404	0	41	msg_required_validation_record	[["text","A value is required for field \\"%(field)s\\" in \\"%(model)s\\"."]]	ir.message	ir	f	[["text","A value is required for field \\"%(field)s\\" in \\"%(model)s\\"."]]	\N	\N
374	2022-12-06 20:16:32.52404	0	42	msg_size_validation_record	[["text","The value for field \\"%(field)s\\" in \\"%(model)s\\" is too long (%(size)i > %(max_size)i)."]]	ir.message	ir	f	[["text","The value for field \\"%(field)s\\" in \\"%(model)s\\" is too long (%(size)i > %(max_size)i)."]]	\N	\N
375	2022-12-06 20:16:32.52404	0	43	msg_digits_validation_record	[["text","The number of digits in the value \\"%(value)s\\" for field \\"%(field)s\\" in \\"%(model)s\\" exceeds the limit of \\"%(digits)i\\"."]]	ir.message	ir	f	[["text","The number of digits in the value \\"%(value)s\\" for field \\"%(field)s\\" in \\"%(model)s\\" exceeds the limit of \\"%(digits)i\\"."]]	\N	\N
376	2022-12-06 20:16:32.52404	0	44	msg_forbidden_char_validation_record	[["text","The value \\"%(value)s\\" for field \\"%(field)s\\" in \\"%(model)s\\" contains some invalid chars \\"%(chars)s\\"."]]	ir.message	ir	f	[["text","The value \\"%(value)s\\" for field \\"%(field)s\\" in \\"%(model)s\\" contains some invalid chars \\"%(chars)s\\"."]]	\N	\N
377	2022-12-06 20:16:32.52404	0	45	msg_selection_validation_record	[["text","The value \\"%(value)s\\" for field \\"%(field)s\\" in \\"%(model)s\\" is not one of the allowed options."]]	ir.message	ir	f	[["text","The value \\"%(value)s\\" for field \\"%(field)s\\" in \\"%(model)s\\" is not one of the allowed options."]]	\N	\N
378	2022-12-06 20:16:32.52404	0	46	msg_time_format_validation_record	[["text","The time value \\"%(value)s\\" for field \\"%(field)s\\" in \\"%(model)s\\" is not valid."]]	ir.message	ir	f	[["text","The time value \\"%(value)s\\" for field \\"%(field)s\\" in \\"%(model)s\\" is not valid."]]	\N	\N
379	2022-12-06 20:16:32.52404	0	47	msg_foreign_model_missing	[["text","The value \\"%(value)s\\" for field \\"%(field)s\\" in \\"%(model)s\\" does not exist."]]	ir.message	ir	f	[["text","The value \\"%(value)s\\" for field \\"%(field)s\\" in \\"%(model)s\\" does not exist."]]	\N	\N
380	2022-12-06 20:16:32.52404	0	48	msg_foreign_model_exist	[["text","The records could not be deleted because they are used by field \\"%(field)s\\" of \\"%(model)s\\"."]]	ir.message	ir	f	[["text","The records could not be deleted because they are used by field \\"%(field)s\\" of \\"%(model)s\\"."]]	\N	\N
381	2022-12-06 20:16:32.52404	0	49	msg_access_rule_error	[["text","You are not allowed to access \\"%(model)s\\"."]]	ir.message	ir	f	[["text","You are not allowed to access \\"%(model)s\\"."]]	\N	\N
382	2022-12-06 20:16:32.52404	0	50	msg_access_rule_field_error	[["text","You are not allowed to access \\"%(model)s.%(field)s\\"."]]	ir.message	ir	f	[["text","You are not allowed to access \\"%(model)s.%(field)s\\"."]]	\N	\N
383	2022-12-06 20:16:32.52404	0	51	msg_create_rule_error	[["text","You are not allowed to create records of \\"%(model)s\\" because they fail on at least one of these rules:\\n%(rules)s"]]	ir.message	ir	f	[["text","You are not allowed to create records of \\"%(model)s\\" because they fail on at least one of these rules:\\n%(rules)s"]]	\N	\N
384	2022-12-06 20:16:32.52404	0	52	msg_read_rule_error	[["text","You are not allowed to read records \\"%(ids)s\\" of \\"%(model)s\\" because of at least one of these rules:\\n%(rules)s"]]	ir.message	ir	f	[["text","You are not allowed to read records \\"%(ids)s\\" of \\"%(model)s\\" because of at least one of these rules:\\n%(rules)s"]]	\N	\N
385	2022-12-06 20:16:32.52404	0	53	msg_read_error	[["text","You are trying to read records \\"%(ids)s\\" of \\"%(model)s\\" that don't exist anymore."]]	ir.message	ir	f	[["text","You are trying to read records \\"%(ids)s\\" of \\"%(model)s\\" that don't exist anymore."]]	\N	\N
386	2022-12-06 20:16:32.52404	0	54	msg_write_rule_error	[["text","You are not allowed to write to records \\"%(ids)s\\" of \\"%(model)s\\" because of at least one of these rules:\\n%(rules)s"]]	ir.message	ir	f	[["text","You are not allowed to write to records \\"%(ids)s\\" of \\"%(model)s\\" because of at least one of these rules:\\n%(rules)s"]]	\N	\N
387	2022-12-06 20:16:32.52404	0	55	msg_write_error	[["text","You are trying to write to records \\"%(ids)s\\" of \\"%(model)s\\" that don't exist anymore."]]	ir.message	ir	f	[["text","You are trying to write to records \\"%(ids)s\\" of \\"%(model)s\\" that don't exist anymore."]]	\N	\N
388	2022-12-06 20:16:32.52404	0	56	msg_delete_rule_error	[["text","You are not allowed to delete records \\"%(ids)s\\" of \\"%(model)s\\" because of at lease one of those rules:\\n%(rules)s"]]	ir.message	ir	f	[["text","You are not allowed to delete records \\"%(ids)s\\" of \\"%(model)s\\" because of at lease one of those rules:\\n%(rules)s"]]	\N	\N
389	2022-12-06 20:16:32.52404	0	57	msg_dict_schema_invalid_domain	[["text","Invalid domain in schema \\"%(schema)s\\"."]]	ir.message	ir	f	[["text","Invalid domain in schema \\"%(schema)s\\"."]]	\N	\N
390	2022-12-06 20:16:32.52404	0	58	msg_dict_schema_invalid_selection	[["text","Invalid selection in schema \\"%(schema)s\\"."]]	ir.message	ir	f	[["text","Invalid selection in schema \\"%(schema)s\\"."]]	\N	\N
391	2022-12-06 20:16:32.52404	0	59	msg_dict_schema_invalid_help_selection	[["text","Invalid help selection in schema \\"%(schema)s\\"."]]	ir.message	ir	f	[["text","Invalid help selection in schema \\"%(schema)s\\"."]]	\N	\N
392	2022-12-06 20:16:32.52404	0	60	msg_recursion_error	[["text","Recursion error: Record \\"%(rec_name)s\\" with parent \\"%(parent_rec_name)s\\" was configured as ancestor of itself."]]	ir.message	ir	f	[["text","Recursion error: Record \\"%(rec_name)s\\" with parent \\"%(parent_rec_name)s\\" was configured as ancestor of itself."]]	\N	\N
393	2022-12-06 20:16:32.52404	0	61	msg_search_function_missing	[["text","Missing search function for field \\"%(field)s\\" in \\"%(model)s\\"."]]	ir.message	ir	f	[["text","Missing search function for field \\"%(field)s\\" in \\"%(model)s\\"."]]	\N	\N
394	2022-12-06 20:16:32.52404	0	62	msg_setter_function_missing	[["text","Missing setter function for field \\"%(field)s\\" in \\"%(model)s\\"."]]	ir.message	ir	f	[["text","Missing setter function for field \\"%(field)s\\" in \\"%(model)s\\"."]]	\N	\N
395	2022-12-06 20:16:32.52404	0	63	msg_access_button_error	[["text","Calling button \\"%(button)s on \\"%(model)s\\" is not allowed."]]	ir.message	ir	f	[["text","Calling button \\"%(button)s on \\"%(model)s\\" is not allowed."]]	\N	\N
396	2022-12-06 20:16:32.52404	0	64	msg_view_invalid_xml	[["text","Invalid XML for view \\"%(name)s\\"."]]	ir.message	ir	f	[["text","Invalid XML for view \\"%(name)s\\"."]]	\N	\N
397	2022-12-06 20:16:32.52404	0	65	msg_action_wrong_wizard_model	[["text","Wrong wizard model in keyword action \\"%(name)s\\"."]]	ir.message	ir	f	[["text","Wrong wizard model in keyword action \\"%(name)s\\"."]]	\N	\N
398	2022-12-06 20:16:32.52404	0	66	msg_report_invalid_email	[["text","Invalid email definition for report \\"%(name)s\\"."]]	ir.message	ir	f	[["text","Invalid email definition for report \\"%(name)s\\"."]]	\N	\N
399	2022-12-06 20:16:32.52404	0	67	msg_action_invalid_views	[["text","Invalid view \\"%(view)s\\" for action \\"%(action)s\\"."]]	ir.message	ir	f	[["text","Invalid view \\"%(view)s\\" for action \\"%(action)s\\"."]]	\N	\N
400	2022-12-06 20:16:32.52404	0	68	msg_action_invalid_domain	[["text","Invalid domain or search criteria \\"%(domain)s\\" for action \\"%(action)s\\"."]]	ir.message	ir	f	[["text","Invalid domain or search criteria \\"%(domain)s\\" for action \\"%(action)s\\"."]]	\N	\N
401	2022-12-06 20:16:32.52404	0	69	msg_action_invalid_context	[["text","Invalid context \\"%(context)s\\" for action \\"%(action)s\\"."]]	ir.message	ir	f	[["text","Invalid context \\"%(context)s\\" for action \\"%(action)s\\"."]]	\N	\N
402	2022-12-06 20:16:32.52404	0	70	msg_model_invalid_condition	[["text","The condition \\"%(condition)s\\" is not a valid PYSON expression for button rule \\"%(rule)s\\"."]]	ir.message	ir	f	[["text","The condition \\"%(condition)s\\" is not a valid PYSON expression for button rule \\"%(rule)s\\"."]]	\N	\N
403	2022-12-06 20:16:32.52404	0	71	msg_sequence_missing	[["text","Missing sequence."]]	ir.message	ir	f	[["text","Missing sequence."]]	\N	\N
404	2022-12-06 20:16:32.52404	0	72	msg_sequence_invalid_prefix	[["text","Invalid prefix \\"%(affix)s\\" for sequence \\"%(sequence)s\\"."]]	ir.message	ir	f	[["text","Invalid prefix \\"%(affix)s\\" for sequence \\"%(sequence)s\\"."]]	\N	\N
405	2022-12-06 20:16:32.52404	0	73	msg_sequence_invalid_suffix	[["text","Invalid suffix \\"%(affix)s\\" for sequence \\"%(sequence)s\\"."]]	ir.message	ir	f	[["text","Invalid suffix \\"%(affix)s\\" for sequence \\"%(sequence)s\\"."]]	\N	\N
406	2022-12-06 20:16:32.52404	0	74	msg_sequence_last_timestamp_future	[["text","The \\"Last Timestamp\\" cannot be in the future for sequence \\"%s\\"."]]	ir.message	ir	f	[["text","The \\"Last Timestamp\\" cannot be in the future for sequence \\"%s\\"."]]	\N	\N
407	2022-12-06 20:16:32.52404	0	75	msg_sequence_change_sequence_type	[["text","You cannot change the sequence type of a sequence instead create a new sequence."]]	ir.message	ir	f	[["text","You cannot change the sequence type of a sequence instead create a new sequence."]]	\N	\N
408	2022-12-06 20:16:32.52404	0	76	msg_language_invalid_grouping	[["text","Invalid grouping \\"%(grouping)s\\" for language \\"%(language)s\\"."]]	ir.message	ir	f	[["text","Invalid grouping \\"%(grouping)s\\" for language \\"%(language)s\\"."]]	\N	\N
409	2022-12-06 20:16:32.52404	0	77	msg_language_invalid_date	[["text","Invalid date format \\"%(format)s\\" for language \\"%(language)s\\"."]]	ir.message	ir	f	[["text","Invalid date format \\"%(format)s\\" for language \\"%(language)s\\"."]]	\N	\N
410	2022-12-06 20:16:32.52404	0	78	msg_language_default_translatable	[["text","The default language \\"%(language)s\\" must be translatable."]]	ir.message	ir	f	[["text","The default language \\"%(language)s\\" must be translatable."]]	\N	\N
411	2022-12-06 20:16:32.52404	0	79	msg_language_delete_default	[["text","The default language \\"%(language)s\\" can not be deleted."]]	ir.message	ir	f	[["text","The default language \\"%(language)s\\" can not be deleted."]]	\N	\N
412	2022-12-06 20:16:32.52404	0	80	msg_rule_invalid_domain	[["text","Invalid domain in rule \\"%(name)s\\"."]]	ir.message	ir	f	[["text","Invalid domain in rule \\"%(name)s\\"."]]	\N	\N
413	2022-12-06 20:16:32.52404	0	81	msg_translation_overridden	[["text","You can not export translation \\"%(name)s\\" because it has been overridden by module \\"%(overriding_module)s\\"."]]	ir.message	ir	f	[["text","You can not export translation \\"%(name)s\\" because it has been overridden by module \\"%(overriding_module)s\\"."]]	\N	\N
414	2022-12-06 20:16:32.52404	0	82	msg_module_delete_state	[["text","You can not remove a module that is activated or that is about to be activated."]]	ir.message	ir	f	[["text","You can not remove a module that is activated or that is about to be activated."]]	\N	\N
415	2022-12-06 20:16:32.52404	0	83	msg_module_deactivate_dependency	[["text","Some activated modules depend on the ones you are trying to deactivate:"]]	ir.message	ir	f	[["text","Some activated modules depend on the ones you are trying to deactivate:"]]	\N	\N
416	2022-12-06 20:16:32.52404	0	84	msg_trigger_invalid_condition	[["text","Condition \\"%(condition)s\\" is not a valid PYSON expression for trigger \\"%(trigger)s\\"."]]	ir.message	ir	f	[["text","Condition \\"%(condition)s\\" is not a valid PYSON expression for trigger \\"%(trigger)s\\"."]]	\N	\N
417	2022-12-06 20:16:32.52404	0	85	msg_html_editor_save_fail	[["text","Failed to save, please retry."]]	ir.message	ir	f	[["text","Failed to save, please retry."]]	\N	\N
418	2022-12-06 20:16:32.52404	0	86	msg_timedelta_Y	[["text","Y"]]	ir.message	ir	f	[["text","Y"]]	\N	\N
419	2022-12-06 20:16:32.52404	0	87	msg_timedelta_M	[["text","M"]]	ir.message	ir	f	[["text","M"]]	\N	\N
420	2022-12-06 20:16:32.52404	0	88	msg_timedelta_w	[["text","w"]]	ir.message	ir	f	[["text","w"]]	\N	\N
421	2022-12-06 20:16:32.52404	0	89	msg_timedelta_d	[["text","d"]]	ir.message	ir	f	[["text","d"]]	\N	\N
422	2022-12-06 20:16:32.52404	0	90	msg_timedelta_h	[["text","h"]]	ir.message	ir	f	[["text","h"]]	\N	\N
423	2022-12-06 20:16:32.52404	0	91	msg_timedelta_m	[["text","m"]]	ir.message	ir	f	[["text","m"]]	\N	\N
424	2022-12-06 20:16:32.52404	0	92	msg_timedelta_s	[["text","s"]]	ir.message	ir	f	[["text","s"]]	\N	\N
425	2022-12-06 20:16:32.52404	0	93	msg_resource_copy_help	[["text","The resources to which this record must be copied."]]	ir.message	ir	f	[["text","The resources to which this record must be copied."]]	\N	\N
426	2022-12-06 20:16:32.52404	0	94	msg_attachments	[["text","Attachments"]]	ir.message	ir	f	[["text","Attachments"]]	\N	\N
427	2022-12-06 20:16:32.52404	0	95	msg_notes	[["text","Notes"]]	ir.message	ir	f	[["text","Notes"]]	\N	\N
428	2022-12-06 20:16:32.52404	0	96	msg_access_wizard_error	[["text","You are not allowed to execute wizard \\"%(wizard)s\\"."]]	ir.message	ir	f	[["text","You are not allowed to execute wizard \\"%(wizard)s\\"."]]	\N	\N
429	2022-12-06 20:16:32.52404	0	97	msg_access_wizard_model_error	[["text","You are not allowed to execute wizard \\"%(wizard)s\\" on \\"%(model)s\\"."]]	ir.message	ir	f	[["text","You are not allowed to execute wizard \\"%(wizard)s\\" on \\"%(model)s\\"."]]	\N	\N
430	2022-12-06 20:16:32.52404	0	98	msg_email_template_invalid_subject	[["text","Invalid subject in e-mail template \\"%(template)s\\" with exception \\"%(exception)s\\"."]]	ir.message	ir	f	[["text","Invalid subject in e-mail template \\"%(template)s\\" with exception \\"%(exception)s\\"."]]	\N	\N
431	2022-12-06 20:16:32.52404	0	99	msg_email_template_invalid_body	[["text","Invalid body in e-mail template \\"%(template)s\\" with exception \\"%(exception)s\\"."]]	ir.message	ir	f	[["text","Invalid body in e-mail template \\"%(template)s\\" with exception \\"%(exception)s\\"."]]	\N	\N
432	2022-12-06 20:16:32.52404	0	100	msg_email_template_invalid_field_pyson	[["text","Invalid PYSON %(field)s in e-mail template \\"%(template)s\\" with exception \\"%(exception)s\\"."]]	ir.message	ir	f	[["text","Invalid PYSON %(field)s in e-mail template \\"%(template)s\\" with exception \\"%(exception)s\\"."]]	\N	\N
433	2022-12-06 20:16:32.52404	0	101	msg_email_template_invalid_field_pyson_type	[["text","The PYSON %(field)s in e-mail template \\"%(template)s\\" must generate a list."]]	ir.message	ir	f	[["text","The PYSON %(field)s in e-mail template \\"%(template)s\\" must generate a list."]]	\N	\N
434	2022-12-06 20:16:32.52404	0	102	msg_avatar_resource_unique	[["text","Only one avatar is allowed per resource."]]	ir.message	ir	f	[["text","Only one avatar is allowed per resource."]]	\N	\N
435	2022-12-06 20:16:32.52404	0	103	msg_avatar_size_unique	[["text","The size of an avatar must be unique."]]	ir.message	ir	f	[["text","The size of an avatar must be unique."]]	\N	\N
436	2022-12-06 20:16:32.52404	0	104	msg_avatar	[["text","Avatar"]]	ir.message	ir	f	[["text","Avatar"]]	\N	\N
437	2022-12-06 20:16:32.52404	0	105	msg_avatars	[["text","Avatars"]]	ir.message	ir	f	[["text","Avatars"]]	\N	\N
438	2022-12-06 20:16:32.52404	0	106	msg_avatar_url	[["text","Avatar URL"]]	ir.message	ir	f	[["text","Avatar URL"]]	\N	\N
439	2022-12-06 20:16:32.52404	0	1	cron_queue_clean	[["interval_number",1],["interval_type","days"],["method","ir.queue|clean"]]	ir.cron	ir	t	[["interval_number",1],["interval_type","days"],["method","ir.queue|clean"]]	\N	\N
440	2022-12-06 20:16:32.52404	0	98	email_view_form	[["model","ir.email"],["name","email_form"],["type","form"]]	ir.ui.view	ir	f	[["model","ir.email"],["name","email_form"],["type","form"]]	\N	\N
441	2022-12-06 20:16:32.52404	0	99	email_view_list	[["model","ir.email"],["name","email_list"],["type","tree"]]	ir.ui.view	ir	f	[["model","ir.email"],["name","email_list"],["type","tree"]]	\N	\N
442	2022-12-06 20:16:32.52404	0	50	act_email_form	[["name","E-mails"],["res_model","ir.email"]]	ir.action.act_window	ir	f	[["name","E-mails"],["res_model","ir.email"]]	\N	\N
443	2022-12-06 20:16:32.52404	0	63	act_email_form_view1	[["act_window",50],["sequence",10],["view",99]]	ir.action.act_window.view	ir	f	[["act_window",50],["sequence",10],["view",99]]	\N	\N
444	2022-12-06 20:16:32.52404	0	64	act_email_form_view2	[["act_window",50],["sequence",20],["view",98]]	ir.action.act_window.view	ir	f	[["act_window",50],["sequence",20],["view",98]]	\N	\N
445	2022-12-06 20:16:32.52404	0	45	menu_email_form	[["action","ir.action.act_window,50"],["icon","tryton-list"],["name","E-mails"],["parent",15],["sequence",50]]	ir.ui.menu	ir	f	[["action","ir.action.act_window,50"],["icon","tryton-list"],["name","E-mails"],["parent",15],["sequence",50]]	\N	\N
446	2022-12-06 20:16:32.52404	0	1	access_email	[["model",69],["perm_create",true],["perm_delete",false],["perm_read",true],["perm_write",false]]	ir.model.access	ir	f	[["model",69],["perm_create",true],["perm_delete",false],["perm_read",true],["perm_write",false]]	\N	\N
447	2022-12-06 20:16:32.52404	0	51	act_email_form_relate	[["domain","[{\\"__class__\\": \\"If\\", \\"c\\": {\\"__class__\\": \\"Equal\\", \\"s1\\": {\\"__class__\\": \\"Eval\\", \\"d\\": [], \\"v\\": \\"active_ids\\"}, \\"s2\\": [{\\"__class__\\": \\"Eval\\", \\"d\\": \\"\\", \\"v\\": \\"active_id\\"}]}, \\"e\\": [\\"resource.id\\", \\"in\\", {\\"__class__\\": \\"Eval\\", \\"d\\": \\"\\", \\"v\\": \\"active_ids\\"}, {\\"__class__\\": \\"Eval\\", \\"d\\": \\"\\", \\"v\\": \\"active_model\\"}], \\"t\\": [\\"resource\\", \\"=\\", [{\\"__class__\\": \\"Eval\\", \\"d\\": \\"\\", \\"v\\": \\"active_model\\"}, {\\"__class__\\": \\"Eval\\", \\"d\\": \\"\\", \\"v\\": \\"active_id\\"}]]}]"],["name","E-mail Archives"],["res_model","ir.email"]]	ir.action.act_window	ir	f	[["domain","[{\\"__class__\\": \\"If\\", \\"c\\": {\\"__class__\\": \\"Equal\\", \\"s1\\": {\\"__class__\\": \\"Eval\\", \\"d\\": [], \\"v\\": \\"active_ids\\"}, \\"s2\\": [{\\"__class__\\": \\"Eval\\", \\"d\\": \\"\\", \\"v\\": \\"active_id\\"}]}, \\"e\\": [\\"resource.id\\", \\"in\\", {\\"__class__\\": \\"Eval\\", \\"d\\": \\"\\", \\"v\\": \\"active_ids\\"}, {\\"__class__\\": \\"Eval\\", \\"d\\": \\"\\", \\"v\\": \\"active_model\\"}], \\"t\\": [\\"resource\\", \\"=\\", [{\\"__class__\\": \\"Eval\\", \\"d\\": \\"\\", \\"v\\": \\"active_model\\"}, {\\"__class__\\": \\"Eval\\", \\"d\\": \\"\\", \\"v\\": \\"active_id\\"}]]}]"],["name","E-mail Archives"],["res_model","ir.email"]]	\N	\N
448	2022-12-06 20:16:32.52404	0	65	act_email_form_relate_view1	[["act_window",51],["sequence",10],["view",99]]	ir.action.act_window.view	ir	f	[["act_window",51],["sequence",10],["view",99]]	\N	\N
449	2022-12-06 20:16:32.52404	0	66	act_email_form_relate_view2	[["act_window",51],["sequence",20],["view",98]]	ir.action.act_window.view	ir	f	[["act_window",51],["sequence",20],["view",98]]	\N	\N
450	2022-12-06 20:16:32.52404	0	50	act_email_form_relate_keyword1	[["action",51],["keyword","form_relate"]]	ir.action.keyword	ir	f	[["action",51],["keyword","form_relate"]]	\N	\N
451	2022-12-06 20:16:32.52404	0	100	email_template_view_form	[["model","ir.email.template"],["name","email_template_form"],["type","form"]]	ir.ui.view	ir	f	[["model","ir.email.template"],["name","email_template_form"],["type","form"]]	\N	\N
452	2022-12-06 20:16:32.52404	0	101	email_template_view_list	[["model","ir.email.template"],["name","email_template_list"],["type","tree"]]	ir.ui.view	ir	f	[["model","ir.email.template"],["name","email_template_list"],["type","tree"]]	\N	\N
453	2022-12-06 20:16:32.52404	0	52	act_email_template_form	[["name","E-mail Templates"],["res_model","ir.email.template"]]	ir.action.act_window	ir	f	[["name","E-mail Templates"],["res_model","ir.email.template"]]	\N	\N
454	2022-12-06 20:16:32.52404	0	67	act_email_template_form_view1	[["act_window",52],["sequence",10],["view",101]]	ir.action.act_window.view	ir	f	[["act_window",52],["sequence",10],["view",101]]	\N	\N
455	2022-12-06 20:16:32.52404	0	68	act_email_template_form_view2	[["act_window",52],["sequence",20],["view",100]]	ir.action.act_window.view	ir	f	[["act_window",52],["sequence",20],["view",100]]	\N	\N
456	2022-12-06 20:16:32.52404	0	46	menu_email_template_form	[["action","ir.action.act_window,52"],["icon","tryton-list"],["name","E-mail Templates"],["parent",9],["sequence",50]]	ir.ui.menu	ir	f	[["action","ir.action.act_window,52"],["icon","tryton-list"],["name","E-mail Templates"],["parent",9],["sequence",50]]	\N	\N
457	2022-12-06 20:16:47.746915	0	47	menu_res	[["icon","tryton-folder"],["name","Users"],["parent",1],["sequence",10]]	ir.ui.menu	res	f	[["icon","tryton-folder"],["name","Users"],["parent",1],["sequence",10]]	\N	\N
458	2022-12-06 20:16:47.746915	0	1	group_admin	[["name","Administration"]]	res.group	res	f	[["name","Administration"]]	\N	\N
459	2022-12-06 20:16:47.746915	0	102	group_view_form	[["model","res.group"],["name","group_form"],["type","form"]]	ir.ui.view	res	f	[["model","res.group"],["name","group_form"],["type","form"]]	\N	\N
460	2022-12-06 20:16:47.746915	0	103	group_view_tree	[["model","res.group"],["name","group_list"],["type","tree"]]	ir.ui.view	res	f	[["model","res.group"],["name","group_list"],["type","tree"]]	\N	\N
461	2022-12-06 20:16:47.746915	0	53	act_group_form	[["name","Groups"],["res_model","res.group"],["type","ir.action.act_window"]]	ir.action.act_window	res	f	[["name","Groups"],["res_model","res.group"],["type","ir.action.act_window"]]	\N	\N
462	2022-12-06 20:16:47.746915	0	69	act_group_form_view1	[["act_window",53],["sequence",1],["view",103]]	ir.action.act_window.view	res	f	[["act_window",53],["sequence",1],["view",103]]	\N	\N
463	2022-12-06 20:16:47.746915	0	70	act_group_form_view2	[["act_window",53],["sequence",2],["view",102]]	ir.action.act_window.view	res	f	[["act_window",53],["sequence",2],["view",102]]	\N	\N
464	2022-12-06 20:16:47.746915	0	48	menu_group_form	[["action","ir.action.act_window,53"],["icon","tryton-list"],["name","Groups"],["parent",47],["sequence",20]]	ir.ui.menu	res	f	[["action","ir.action.act_window,53"],["icon","tryton-list"],["name","Groups"],["parent",47],["sequence",20]]	\N	\N
465	2022-12-06 20:16:47.746915	0	1	menu_group_form_admin	[["group",1],["menu",48]]	ir.ui.menu-res.group	res	f	[["group",1],["menu",48]]	\N	\N
466	2022-12-06 20:16:47.746915	0	2	access_group	[["model",73],["perm_create",false],["perm_delete",false],["perm_read",true],["perm_write",false]]	ir.model.access	res	f	[["model",73],["perm_create",false],["perm_delete",false],["perm_read",true],["perm_write",false]]	\N	\N
467	2022-12-06 20:16:47.746915	0	3	access_group_admin	[["group",1],["model",73],["perm_create",true],["perm_delete",true],["perm_read",true],["perm_write",true]]	ir.model.access	res	f	[["group",1],["model",73],["perm_create",true],["perm_delete",true],["perm_read",true],["perm_write",true]]	\N	\N
468	2022-12-06 20:16:47.746915	0	1	user_admin	[["login","admin"],["menu",2],["name","Administrator"]]	res.user	res	t	[["login","admin"],["menu",2],["name","Administrator"]]	\N	\N
469	2022-12-06 20:16:47.746915	0	1	user_admin_group_admin	[["group",1],["user",1]]	res.user-res.group	res	f	[["group",1],["user",1]]	\N	\N
470	2022-12-06 20:16:47.746915	0	104	user_view_form	[["model","res.user"],["name","user_form"],["type","form"]]	ir.ui.view	res	f	[["model","res.user"],["name","user_form"],["type","form"]]	\N	\N
471	2022-12-06 20:16:47.746915	0	105	user_view_form_preferences	[["model","res.user"],["name","user_form_preferences"],["priority",20],["type","form"]]	ir.ui.view	res	f	[["model","res.user"],["name","user_form_preferences"],["priority",20],["type","form"]]	\N	\N
472	2022-12-06 20:16:47.746915	0	106	user_view_tree	[["model","res.user"],["name","user_list"],["type","tree"]]	ir.ui.view	res	f	[["model","res.user"],["name","user_list"],["type","tree"]]	\N	\N
473	2022-12-06 20:16:47.746915	0	54	act_user_form	[["name","Users"],["res_model","res.user"],["type","ir.action.act_window"]]	ir.action.act_window	res	f	[["name","Users"],["res_model","res.user"],["type","ir.action.act_window"]]	\N	\N
474	2022-12-06 20:16:47.746915	0	71	act_user_form_view1	[["act_window",54],["sequence",1],["view",106]]	ir.action.act_window.view	res	f	[["act_window",54],["sequence",1],["view",106]]	\N	\N
475	2022-12-06 20:16:47.746915	0	72	act_user_form_view2	[["act_window",54],["sequence",2],["view",104]]	ir.action.act_window.view	res	f	[["act_window",54],["sequence",2],["view",104]]	\N	\N
476	2022-12-06 20:16:47.746915	0	49	menu_user_form	[["action","ir.action.act_window,54"],["icon","tryton-list"],["name","Users"],["parent",47],["sequence",10]]	ir.ui.menu	res	f	[["action","ir.action.act_window,54"],["icon","tryton-list"],["name","Users"],["parent",47],["sequence",10]]	\N	\N
477	2022-12-06 20:16:47.746915	0	2	menu_user_form_group_admin	[["group",1],["menu",49]]	ir.ui.menu-res.group	res	f	[["group",1],["menu",49]]	\N	\N
478	2022-12-06 20:16:47.746915	0	4	access_user	[["model",74],["perm_create",false],["perm_delete",false],["perm_read",true],["perm_write",false]]	ir.model.access	res	f	[["model",74],["perm_create",false],["perm_delete",false],["perm_read",true],["perm_write",false]]	\N	\N
479	2022-12-06 20:16:47.746915	0	5	access_user_admin	[["group",1],["model",74],["perm_create",true],["perm_delete",true],["perm_read",true],["perm_write",true]]	ir.model.access	res	f	[["group",1],["model",74],["perm_create",true],["perm_delete",true],["perm_read",true],["perm_write",true]]	\N	\N
480	2022-12-06 20:16:47.746915	0	12	user_reset_password_button	[["help","Send by email a new temporary password to the user"],["model",74],["name","reset_password"],["string","Reset Password"]]	ir.model.button	res	f	[["help","Send by email a new temporary password to the user"],["model",74],["name","reset_password"],["string","Reset Password"]]	\N	\N
481	2022-12-06 20:16:47.746915	0	107	user_config_start_view_form	[["model","res.user.config.start"],["name","user_config_start_form"],["type","form"]]	ir.ui.view	res	f	[["model","res.user.config.start"],["name","user_config_start_form"],["type","form"]]	\N	\N
482	2022-12-06 20:16:47.746915	0	55	act_user_config	[["name","Configure Users"],["window",true],["wiz_name","res.user.config"]]	ir.action.wizard	res	f	[["name","Configure Users"],["window",true],["wiz_name","res.user.config"]]	\N	\N
483	2022-12-06 20:16:47.746915	0	3	config_wizard_item_user	[["action",55]]	ir.module.config_wizard.item	res	f	[["action",55]]	\N	\N
484	2022-12-06 20:16:47.746915	0	108	user_warning_view_form	[["model","res.user.warning"],["name","user_warning_form"],["type","form"]]	ir.ui.view	res	f	[["model","res.user.warning"],["name","user_warning_form"],["type","form"]]	\N	\N
485	2022-12-06 20:16:47.746915	0	109	user_warning_view_tree	[["model","res.user.warning"],["name","user_warning_tree"],["type","tree"]]	ir.ui.view	res	f	[["model","res.user.warning"],["name","user_warning_tree"],["type","tree"]]	\N	\N
486	2022-12-06 20:16:47.746915	0	1	rule_group_user_warning	[["global_p",true],["model",79],["name","Own warning"]]	ir.rule.group	res	f	[["global_p",true],["model",79],["name","Own warning"]]	\N	\N
487	2022-12-06 20:16:47.746915	0	1	rule_user_warning1	[["domain","[[\\"user\\", \\"=\\", {\\"__class__\\": \\"Get\\", \\"d\\": -1, \\"k\\": \\"id\\", \\"v\\": {\\"__class__\\": \\"Eval\\", \\"d\\": {}, \\"v\\": \\"user\\"}}]]"],["rule_group",1]]	ir.rule	res	f	[["domain","[[\\"user\\", \\"=\\", {\\"__class__\\": \\"Get\\", \\"d\\": -1, \\"k\\": \\"id\\", \\"v\\": {\\"__class__\\": \\"Eval\\", \\"d\\": {}, \\"v\\": \\"user\\"}}]]"],["rule_group",1]]	\N	\N
488	2022-12-06 20:16:47.746915	0	110	user_application_view_form	[["model","res.user.application"],["name","user_application_form"],["type","form"]]	ir.ui.view	res	f	[["model","res.user.application"],["name","user_application_form"],["type","form"]]	\N	\N
489	2022-12-06 20:16:47.746915	0	111	user_application_view_list	[["model","res.user.application"],["name","user_application_list"],["type","tree"]]	ir.ui.view	res	f	[["model","res.user.application"],["name","user_application_list"],["type","tree"]]	\N	\N
490	2022-12-06 20:16:47.746915	0	2	rule_group_user_application	[["default_p",true],["global_p",false],["model",80],["name","Own user application"]]	ir.rule.group	res	f	[["default_p",true],["global_p",false],["model",80],["name","Own user application"]]	\N	\N
491	2022-12-06 20:16:47.746915	0	2	rule_user_application1	[["domain","[[\\"user\\", \\"=\\", {\\"__class__\\": \\"Get\\", \\"d\\": -1, \\"k\\": \\"id\\", \\"v\\": {\\"__class__\\": \\"Eval\\", \\"d\\": {}, \\"v\\": \\"user\\"}}]]"],["rule_group",2]]	ir.rule	res	f	[["domain","[[\\"user\\", \\"=\\", {\\"__class__\\": \\"Get\\", \\"d\\": -1, \\"k\\": \\"id\\", \\"v\\": {\\"__class__\\": \\"Eval\\", \\"d\\": {}, \\"v\\": \\"user\\"}}]]"],["rule_group",2]]	\N	\N
492	2022-12-06 20:16:47.746915	0	3	rule_group_user_application_admin	[["default_p",false],["global_p",false],["model",80],["name","Any user application"]]	ir.rule.group	res	f	[["default_p",false],["global_p",false],["model",80],["name","Any user application"]]	\N	\N
493	2022-12-06 20:16:47.746915	0	3	rule_user_application_admin1	[["domain","[]"],["rule_group",3]]	ir.rule	res	f	[["domain","[]"],["rule_group",3]]	\N	\N
494	2022-12-06 20:16:47.746915	0	1	rule_user_application_admin_admin	[["group",1],["rule_group",3]]	ir.rule.group-res.group	res	f	[["group",1],["rule_group",3]]	\N	\N
495	2022-12-06 20:16:47.746915	0	56	report_email_reset_password	[["model","res.user"],["name","Reset Password"],["report","res/email_reset_password.html"],["report_name","res.user.email_reset_password"],["template_extension","html"]]	ir.action.report	res	f	[["model","res.user"],["name","Reset Password"],["report","res/email_reset_password.html"],["report_name","res.user.email_reset_password"],["template_extension","html"]]	\N	\N
496	2022-12-06 20:16:47.746915	0	13	user_application_validate_button	[["model",80],["name","validate_"],["string","Validate"]]	ir.model.button	res	f	[["model",80],["name","validate_"],["string","Validate"]]	\N	\N
497	2022-12-06 20:16:47.746915	0	14	user_application_cancel_button	[["model",80],["name","cancel"],["string","Cancel"]]	ir.model.button	res	f	[["model",80],["name","cancel"],["string","Cancel"]]	\N	\N
498	2022-12-06 20:16:47.746915	0	6	access_ir_sequence_type	[["model",10],["perm_create",false],["perm_delete",false],["perm_read",true],["perm_write",false]]	ir.model.access	res	f	[["model",10],["perm_create",false],["perm_delete",false],["perm_read",true],["perm_write",false]]	\N	\N
499	2022-12-06 20:16:47.746915	0	7	access_ir_sequence_type_admin	[["group",1],["model",10],["perm_create",true],["perm_delete",true],["perm_read",true],["perm_write",true]]	ir.model.access	res	f	[["group",1],["model",10],["perm_create",true],["perm_delete",true],["perm_read",true],["perm_write",true]]	\N	\N
500	2022-12-06 20:16:47.746915	0	8	access_ir_ui_icon	[["model",20],["perm_create",false],["perm_delete",false],["perm_read",true],["perm_write",false]]	ir.model.access	res	f	[["model",20],["perm_create",false],["perm_delete",false],["perm_read",true],["perm_write",false]]	\N	\N
501	2022-12-06 20:16:47.746915	0	9	access_ir_ui_icon_admin	[["group",1],["model",20],["perm_create",true],["perm_delete",true],["perm_read",true],["perm_write",true]]	ir.model.access	res	f	[["group",1],["model",20],["perm_create",true],["perm_delete",true],["perm_read",true],["perm_write",true]]	\N	\N
502	2022-12-06 20:16:47.746915	0	10	access_ir_ui_menu	[["model",13],["perm_create",false],["perm_delete",false],["perm_read",true],["perm_write",false]]	ir.model.access	res	f	[["model",13],["perm_create",false],["perm_delete",false],["perm_read",true],["perm_write",false]]	\N	\N
503	2022-12-06 20:16:47.746915	0	11	access_ir_ui_menu_admin	[["group",1],["model",13],["perm_create",true],["perm_delete",true],["perm_read",true],["perm_write",true]]	ir.model.access	res	f	[["group",1],["model",13],["perm_create",true],["perm_delete",true],["perm_read",true],["perm_write",true]]	\N	\N
504	2022-12-06 20:16:47.746915	0	12	access_ir_ui_view	[["model",15],["perm_create",false],["perm_delete",false],["perm_read",true],["perm_write",false]]	ir.model.access	res	f	[["model",15],["perm_create",false],["perm_delete",false],["perm_read",true],["perm_write",false]]	\N	\N
505	2022-12-06 20:16:47.746915	0	13	access_ir_ui_view_admin	[["group",1],["model",15],["perm_create",true],["perm_delete",true],["perm_read",true],["perm_write",true]]	ir.model.access	res	f	[["group",1],["model",15],["perm_create",true],["perm_delete",true],["perm_read",true],["perm_write",true]]	\N	\N
506	2022-12-06 20:16:47.746915	0	14	access_ir_action	[["model",21],["perm_create",false],["perm_delete",false],["perm_read",true],["perm_write",false]]	ir.model.access	res	f	[["model",21],["perm_create",false],["perm_delete",false],["perm_read",true],["perm_write",false]]	\N	\N
507	2022-12-06 20:16:47.746915	0	15	access_ir_action_admin	[["group",1],["model",21],["perm_create",true],["perm_delete",true],["perm_read",true],["perm_write",true]]	ir.model.access	res	f	[["group",1],["model",21],["perm_create",true],["perm_delete",true],["perm_read",true],["perm_write",true]]	\N	\N
508	2022-12-06 20:16:47.746915	0	16	access_ir_action_keyword	[["model",22],["perm_create",false],["perm_delete",false],["perm_read",true],["perm_write",false]]	ir.model.access	res	f	[["model",22],["perm_create",false],["perm_delete",false],["perm_read",true],["perm_write",false]]	\N	\N
509	2022-12-06 20:16:47.746915	0	17	access_ir_action_keyword_admin	[["group",1],["model",22],["perm_create",true],["perm_delete",true],["perm_read",true],["perm_write",true]]	ir.model.access	res	f	[["group",1],["model",22],["perm_create",true],["perm_delete",true],["perm_read",true],["perm_write",true]]	\N	\N
510	2022-12-06 20:16:47.746915	0	18	access_ir_action_report	[["model",23],["perm_create",false],["perm_delete",false],["perm_read",true],["perm_write",false]]	ir.model.access	res	f	[["model",23],["perm_create",false],["perm_delete",false],["perm_read",true],["perm_write",false]]	\N	\N
511	2022-12-06 20:16:47.746915	0	19	access_ir_action_report_admin	[["group",1],["model",23],["perm_create",true],["perm_delete",true],["perm_read",true],["perm_write",true]]	ir.model.access	res	f	[["group",1],["model",23],["perm_create",true],["perm_delete",true],["perm_read",true],["perm_write",true]]	\N	\N
512	2022-12-06 20:16:47.746915	0	20	access_ir_action_act_window	[["model",24],["perm_create",false],["perm_delete",false],["perm_read",true],["perm_write",false]]	ir.model.access	res	f	[["model",24],["perm_create",false],["perm_delete",false],["perm_read",true],["perm_write",false]]	\N	\N
513	2022-12-06 20:16:47.746915	0	21	access_ir_action_act_window_admin	[["group",1],["model",24],["perm_create",true],["perm_delete",true],["perm_read",true],["perm_write",true]]	ir.model.access	res	f	[["group",1],["model",24],["perm_create",true],["perm_delete",true],["perm_read",true],["perm_write",true]]	\N	\N
514	2022-12-06 20:16:47.746915	0	22	access_ir_action_act_window_view	[["model",25],["perm_create",false],["perm_delete",false],["perm_read",true],["perm_write",false]]	ir.model.access	res	f	[["model",25],["perm_create",false],["perm_delete",false],["perm_read",true],["perm_write",false]]	\N	\N
515	2022-12-06 20:16:47.746915	0	23	access_ir_action_act_window_view_admin	[["group",1],["model",25],["perm_create",true],["perm_delete",true],["perm_read",true],["perm_write",true]]	ir.model.access	res	f	[["group",1],["model",25],["perm_create",true],["perm_delete",true],["perm_read",true],["perm_write",true]]	\N	\N
516	2022-12-06 20:16:47.746915	0	24	access_ir_action_act_window_domain	[["model",26],["perm_create",false],["perm_delete",false],["perm_read",true],["perm_write",false]]	ir.model.access	res	f	[["model",26],["perm_create",false],["perm_delete",false],["perm_read",true],["perm_write",false]]	\N	\N
517	2022-12-06 20:16:47.746915	0	25	access_ir_action_act_window_domain_admin	[["group",1],["model",26],["perm_create",true],["perm_delete",true],["perm_read",true],["perm_write",true]]	ir.model.access	res	f	[["group",1],["model",26],["perm_create",true],["perm_delete",true],["perm_read",true],["perm_write",true]]	\N	\N
518	2022-12-06 20:16:47.746915	0	26	access_ir_action_wizard	[["model",27],["perm_create",false],["perm_delete",false],["perm_read",true],["perm_write",false]]	ir.model.access	res	f	[["model",27],["perm_create",false],["perm_delete",false],["perm_read",true],["perm_write",false]]	\N	\N
519	2022-12-06 20:16:47.746915	0	27	access_ir_action_wizard_admin	[["group",1],["model",27],["perm_create",true],["perm_delete",true],["perm_read",true],["perm_write",true]]	ir.model.access	res	f	[["group",1],["model",27],["perm_create",true],["perm_delete",true],["perm_read",true],["perm_write",true]]	\N	\N
520	2022-12-06 20:16:47.746915	0	28	access_ir_action_url	[["model",28],["perm_create",false],["perm_delete",false],["perm_read",true],["perm_write",false]]	ir.model.access	res	f	[["model",28],["perm_create",false],["perm_delete",false],["perm_read",true],["perm_write",false]]	\N	\N
521	2022-12-06 20:16:47.746915	0	29	access_ir_action_url_admin	[["group",1],["model",28],["perm_create",true],["perm_delete",true],["perm_read",true],["perm_write",true]]	ir.model.access	res	f	[["group",1],["model",28],["perm_create",true],["perm_delete",true],["perm_read",true],["perm_write",true]]	\N	\N
522	2022-12-06 20:16:47.746915	0	30	access_ir_model	[["model",29],["perm_create",false],["perm_delete",false],["perm_read",true],["perm_write",false]]	ir.model.access	res	f	[["model",29],["perm_create",false],["perm_delete",false],["perm_read",true],["perm_write",false]]	\N	\N
523	2022-12-06 20:16:47.746915	0	31	access_ir_model_admin	[["group",1],["model",29],["perm_create",true],["perm_delete",true],["perm_read",true],["perm_write",true]]	ir.model.access	res	f	[["group",1],["model",29],["perm_create",true],["perm_delete",true],["perm_read",true],["perm_write",true]]	\N	\N
524	2022-12-06 20:16:47.746915	0	32	access_ir_model_field	[["model",30],["perm_create",false],["perm_delete",false],["perm_read",true],["perm_write",false]]	ir.model.access	res	f	[["model",30],["perm_create",false],["perm_delete",false],["perm_read",true],["perm_write",false]]	\N	\N
525	2022-12-06 20:16:47.746915	0	33	access_ir_model_field_admin	[["group",1],["model",30],["perm_create",true],["perm_delete",true],["perm_read",true],["perm_write",true]]	ir.model.access	res	f	[["group",1],["model",30],["perm_create",true],["perm_delete",true],["perm_read",true],["perm_write",true]]	\N	\N
526	2022-12-06 20:16:47.746915	0	34	access_ir_model_access	[["model",31],["perm_create",false],["perm_delete",false],["perm_read",true],["perm_write",false]]	ir.model.access	res	f	[["model",31],["perm_create",false],["perm_delete",false],["perm_read",true],["perm_write",false]]	\N	\N
527	2022-12-06 20:16:47.746915	0	35	access_ir_model_access_ir_admin	[["group",1],["model",31],["perm_create",true],["perm_delete",true],["perm_read",true],["perm_write",true]]	ir.model.access	res	f	[["group",1],["model",31],["perm_create",true],["perm_delete",true],["perm_read",true],["perm_write",true]]	\N	\N
528	2022-12-06 20:16:47.746915	0	36	access_ir_model_button	[["model",33],["perm_create",false],["perm_delete",false],["perm_read",true],["perm_write",false]]	ir.model.access	res	f	[["model",33],["perm_create",false],["perm_delete",false],["perm_read",true],["perm_write",false]]	\N	\N
529	2022-12-06 20:16:47.746915	0	37	access_ir_model_button_admin	[["group",1],["model",33],["perm_create",true],["perm_delete",true],["perm_read",true],["perm_write",true]]	ir.model.access	res	f	[["group",1],["model",33],["perm_create",true],["perm_delete",true],["perm_read",true],["perm_write",true]]	\N	\N
530	2022-12-06 20:16:47.746915	0	38	access_ir_model_button_rule	[["model",34],["perm_create",false],["perm_delete",false],["perm_read",true],["perm_write",false]]	ir.model.access	res	f	[["model",34],["perm_create",false],["perm_delete",false],["perm_read",true],["perm_write",false]]	\N	\N
531	2022-12-06 20:16:47.746915	0	39	access_ir_model_button_rule_admin	[["group",1],["model",34],["perm_create",true],["perm_delete",true],["perm_read",true],["perm_write",true]]	ir.model.access	res	f	[["group",1],["model",34],["perm_create",true],["perm_delete",true],["perm_read",true],["perm_write",true]]	\N	\N
532	2022-12-06 20:16:47.746915	0	40	access_ir_model_button_click	[["model",35],["perm_create",false],["perm_delete",false],["perm_read",true],["perm_write",false]]	ir.model.access	res	f	[["model",35],["perm_create",false],["perm_delete",false],["perm_read",true],["perm_write",false]]	\N	\N
533	2022-12-06 20:16:47.746915	0	41	access_ir_model_button_click_admin	[["group",1],["model",35],["perm_create",true],["perm_delete",true],["perm_read",true],["perm_write",true]]	ir.model.access	res	f	[["group",1],["model",35],["perm_create",true],["perm_delete",true],["perm_read",true],["perm_write",true]]	\N	\N
534	2022-12-06 20:16:47.746915	0	42	access_ir_model_data	[["model",37],["perm_create",false],["perm_delete",false],["perm_read",true],["perm_write",false]]	ir.model.access	res	f	[["model",37],["perm_create",false],["perm_delete",false],["perm_read",true],["perm_write",false]]	\N	\N
535	2022-12-06 20:16:47.746915	0	43	access_ir_cron	[["model",44],["perm_create",false],["perm_delete",false],["perm_read",true],["perm_write",false]]	ir.model.access	res	f	[["model",44],["perm_create",false],["perm_delete",false],["perm_read",true],["perm_write",false]]	\N	\N
604	2022-12-06 20:16:47.746915	0	27	menu_localization_group_admin	[["group",1],["menu",30]]	ir.ui.menu-res.group	res	f	[["group",1],["menu",30]]	\N	\N
536	2022-12-06 20:16:47.746915	0	44	access_ir_cron_admin	[["group",1],["model",44],["perm_create",true],["perm_delete",true],["perm_read",true],["perm_write",true]]	ir.model.access	res	f	[["group",1],["model",44],["perm_create",true],["perm_delete",true],["perm_read",true],["perm_write",true]]	\N	\N
537	2022-12-06 20:16:47.746915	0	45	access_ir_queue	[["model",65],["perm_create",false],["perm_delete",false],["perm_read",false],["perm_write",false]]	ir.model.access	res	f	[["model",65],["perm_create",false],["perm_delete",false],["perm_read",false],["perm_write",false]]	\N	\N
538	2022-12-06 20:16:47.746915	0	46	access_ir_queue_admin	[["group",1],["model",65],["perm_create",false],["perm_delete",false],["perm_read",true],["perm_write",false]]	ir.model.access	res	f	[["group",1],["model",65],["perm_create",false],["perm_delete",false],["perm_read",true],["perm_write",false]]	\N	\N
539	2022-12-06 20:16:47.746915	0	47	access_ir_lang	[["model",45],["perm_create",false],["perm_delete",false],["perm_read",true],["perm_write",false]]	ir.model.access	res	f	[["model",45],["perm_create",false],["perm_delete",false],["perm_read",true],["perm_write",false]]	\N	\N
540	2022-12-06 20:16:47.746915	0	48	access_ir_lang_admin	[["group",1],["model",45],["perm_create",true],["perm_delete",true],["perm_read",true],["perm_write",true]]	ir.model.access	res	f	[["group",1],["model",45],["perm_create",true],["perm_delete",true],["perm_read",true],["perm_write",true]]	\N	\N
541	2022-12-06 20:16:47.746915	0	49	access_ir_translation	[["model",2],["perm_create",false],["perm_delete",false],["perm_read",true],["perm_write",false]]	ir.model.access	res	f	[["model",2],["perm_create",false],["perm_delete",false],["perm_read",true],["perm_write",false]]	\N	\N
542	2022-12-06 20:16:47.746915	0	50	access_ir_translation_admin	[["group",1],["model",2],["perm_create",true],["perm_delete",true],["perm_read",true],["perm_write",true]]	ir.model.access	res	f	[["group",1],["model",2],["perm_create",true],["perm_delete",true],["perm_read",true],["perm_write",true]]	\N	\N
543	2022-12-06 20:16:47.746915	0	51	access_ir_rule_group	[["model",49],["perm_create",false],["perm_delete",false],["perm_read",true],["perm_write",false]]	ir.model.access	res	f	[["model",49],["perm_create",false],["perm_delete",false],["perm_read",true],["perm_write",false]]	\N	\N
544	2022-12-06 20:16:47.746915	0	52	access_ir_rule_group_admin	[["group",1],["model",49],["perm_create",true],["perm_delete",true],["perm_read",true],["perm_write",true]]	ir.model.access	res	f	[["group",1],["model",49],["perm_create",true],["perm_delete",true],["perm_read",true],["perm_write",true]]	\N	\N
545	2022-12-06 20:16:47.746915	0	53	access_ir_rule	[["model",50],["perm_create",false],["perm_delete",false],["perm_read",true],["perm_write",false]]	ir.model.access	res	f	[["model",50],["perm_create",false],["perm_delete",false],["perm_read",true],["perm_write",false]]	\N	\N
546	2022-12-06 20:16:47.746915	0	54	access_ir_rule_admin	[["group",1],["model",50],["perm_create",true],["perm_delete",true],["perm_read",true],["perm_write",true]]	ir.model.access	res	f	[["group",1],["model",50],["perm_create",true],["perm_delete",true],["perm_read",true],["perm_write",true]]	\N	\N
547	2022-12-06 20:16:47.746915	0	55	access_ir_module	[["model",51],["perm_create",false],["perm_delete",false],["perm_read",true],["perm_write",false]]	ir.model.access	res	f	[["model",51],["perm_create",false],["perm_delete",false],["perm_read",true],["perm_write",false]]	\N	\N
548	2022-12-06 20:16:47.746915	0	56	access_ir_module_admin	[["group",1],["model",51],["perm_create",true],["perm_delete",true],["perm_read",true],["perm_write",true]]	ir.model.access	res	f	[["group",1],["model",51],["perm_create",true],["perm_delete",true],["perm_read",true],["perm_write",true]]	\N	\N
549	2022-12-06 20:16:47.746915	0	57	access_ir_module_dependency	[["model",52],["perm_create",false],["perm_delete",false],["perm_read",true],["perm_write",false]]	ir.model.access	res	f	[["model",52],["perm_create",false],["perm_delete",false],["perm_read",true],["perm_write",false]]	\N	\N
550	2022-12-06 20:16:47.746915	0	58	access_ir_module_dependency_admin	[["group",1],["model",52],["perm_create",true],["perm_delete",true],["perm_read",true],["perm_write",true]]	ir.model.access	res	f	[["group",1],["model",52],["perm_create",true],["perm_delete",true],["perm_read",true],["perm_write",true]]	\N	\N
551	2022-12-06 20:16:47.746915	0	59	access_ir_trigger	[["model",61],["perm_create",false],["perm_delete",false],["perm_read",true],["perm_write",false]]	ir.model.access	res	f	[["model",61],["perm_create",false],["perm_delete",false],["perm_read",true],["perm_write",false]]	\N	\N
552	2022-12-06 20:16:47.746915	0	60	access_ir_trigger_admin	[["group",1],["model",61],["perm_create",true],["perm_delete",true],["perm_read",true],["perm_write",true]]	ir.model.access	res	f	[["group",1],["model",61],["perm_create",true],["perm_delete",true],["perm_read",true],["perm_write",true]]	\N	\N
553	2022-12-06 20:16:47.746915	0	61	access_ir_trigger_log	[["model",62],["perm_create",false],["perm_delete",false],["perm_read",true],["perm_write",false]]	ir.model.access	res	f	[["model",62],["perm_create",false],["perm_delete",false],["perm_read",true],["perm_write",false]]	\N	\N
554	2022-12-06 20:16:47.746915	0	62	access_ir_trigger_log_admin	[["group",1],["model",62],["perm_create",true],["perm_delete",true],["perm_read",true],["perm_write",true]]	ir.model.access	res	f	[["group",1],["model",62],["perm_create",true],["perm_delete",true],["perm_read",true],["perm_write",true]]	\N	\N
555	2022-12-06 20:16:47.746915	0	4	rule_group_menu	[["global_p",true],["model",13],["name","User in groups"]]	ir.rule.group	res	f	[["global_p",true],["model",13],["name","User in groups"]]	\N	\N
556	2022-12-06 20:16:47.746915	0	4	rule_menu1	[["domain","[[\\"groups\\", \\"in\\", {\\"__class__\\": \\"Eval\\", \\"d\\": [], \\"v\\": \\"groups\\"}]]"],["rule_group",4]]	ir.rule	res	f	[["domain","[[\\"groups\\", \\"in\\", {\\"__class__\\": \\"Eval\\", \\"d\\": [], \\"v\\": \\"groups\\"}]]"],["rule_group",4]]	\N	\N
557	2022-12-06 20:16:47.746915	0	5	rule_menu2	[["domain","[[\\"groups\\", \\"=\\", null]]"],["rule_group",4]]	ir.rule	res	f	[["domain","[[\\"groups\\", \\"=\\", null]]"],["rule_group",4]]	\N	\N
558	2022-12-06 20:16:47.746915	0	5	rule_group_action	[["global_p",true],["model",21],["name","User in groups"]]	ir.rule.group	res	f	[["global_p",true],["model",21],["name","User in groups"]]	\N	\N
559	2022-12-06 20:16:47.746915	0	6	rule_action1	[["domain","[[\\"groups\\", \\"in\\", {\\"__class__\\": \\"Eval\\", \\"d\\": [], \\"v\\": \\"groups\\"}]]"],["rule_group",5]]	ir.rule	res	f	[["domain","[[\\"groups\\", \\"in\\", {\\"__class__\\": \\"Eval\\", \\"d\\": [], \\"v\\": \\"groups\\"}]]"],["rule_group",5]]	\N	\N
560	2022-12-06 20:16:47.746915	0	7	rule_action2	[["domain","[[\\"groups\\", \\"=\\", null]]"],["rule_group",5]]	ir.rule	res	f	[["domain","[[\\"groups\\", \\"=\\", null]]"],["rule_group",5]]	\N	\N
561	2022-12-06 20:16:47.746915	0	6	rule_group_action_keyword	[["global_p",true],["model",22],["name","User in groups"]]	ir.rule.group	res	f	[["global_p",true],["model",22],["name","User in groups"]]	\N	\N
562	2022-12-06 20:16:47.746915	0	8	rule_action_keyword1	[["domain","[[\\"groups\\", \\"in\\", {\\"__class__\\": \\"Eval\\", \\"d\\": [], \\"v\\": \\"groups\\"}]]"],["rule_group",6]]	ir.rule	res	f	[["domain","[[\\"groups\\", \\"in\\", {\\"__class__\\": \\"Eval\\", \\"d\\": [], \\"v\\": \\"groups\\"}]]"],["rule_group",6]]	\N	\N
563	2022-12-06 20:16:47.746915	0	9	rule_action_keyword2	[["domain","[[\\"groups\\", \\"=\\", null]]"],["rule_group",6]]	ir.rule	res	f	[["domain","[[\\"groups\\", \\"=\\", null]]"],["rule_group",6]]	\N	\N
564	2022-12-06 20:16:47.746915	0	7	rule_group_action_report	[["global_p",true],["model",23],["name","User in groups"]]	ir.rule.group	res	f	[["global_p",true],["model",23],["name","User in groups"]]	\N	\N
565	2022-12-06 20:16:47.746915	0	10	rule_action_report1	[["domain","[[\\"groups\\", \\"in\\", {\\"__class__\\": \\"Eval\\", \\"d\\": [], \\"v\\": \\"groups\\"}]]"],["rule_group",7]]	ir.rule	res	f	[["domain","[[\\"groups\\", \\"in\\", {\\"__class__\\": \\"Eval\\", \\"d\\": [], \\"v\\": \\"groups\\"}]]"],["rule_group",7]]	\N	\N
566	2022-12-06 20:16:47.746915	0	11	rule_action_report2	[["domain","[[\\"groups\\", \\"=\\", null]]"],["rule_group",7]]	ir.rule	res	f	[["domain","[[\\"groups\\", \\"=\\", null]]"],["rule_group",7]]	\N	\N
567	2022-12-06 20:16:47.746915	0	8	rule_group_action_act_window	[["global_p",true],["model",24],["name","User in groups"]]	ir.rule.group	res	f	[["global_p",true],["model",24],["name","User in groups"]]	\N	\N
568	2022-12-06 20:16:47.746915	0	12	rule_action_act_window1	[["domain","[[\\"groups\\", \\"in\\", {\\"__class__\\": \\"Eval\\", \\"d\\": [], \\"v\\": \\"groups\\"}]]"],["rule_group",8]]	ir.rule	res	f	[["domain","[[\\"groups\\", \\"in\\", {\\"__class__\\": \\"Eval\\", \\"d\\": [], \\"v\\": \\"groups\\"}]]"],["rule_group",8]]	\N	\N
569	2022-12-06 20:16:47.746915	0	13	rule_action_act_window2	[["domain","[[\\"groups\\", \\"=\\", null]]"],["rule_group",8]]	ir.rule	res	f	[["domain","[[\\"groups\\", \\"=\\", null]]"],["rule_group",8]]	\N	\N
570	2022-12-06 20:16:47.746915	0	9	rule_group_action_wizard	[["global_p",true],["model",27],["name","User in groups"]]	ir.rule.group	res	f	[["global_p",true],["model",27],["name","User in groups"]]	\N	\N
571	2022-12-06 20:16:47.746915	0	14	rule_action_wizard1	[["domain","[[\\"groups\\", \\"in\\", {\\"__class__\\": \\"Eval\\", \\"d\\": [], \\"v\\": \\"groups\\"}]]"],["rule_group",9]]	ir.rule	res	f	[["domain","[[\\"groups\\", \\"in\\", {\\"__class__\\": \\"Eval\\", \\"d\\": [], \\"v\\": \\"groups\\"}]]"],["rule_group",9]]	\N	\N
572	2022-12-06 20:16:47.746915	0	15	rule_action_wizard2	[["domain","[[\\"groups\\", \\"=\\", null]]"],["rule_group",9]]	ir.rule	res	f	[["domain","[[\\"groups\\", \\"=\\", null]]"],["rule_group",9]]	\N	\N
573	2022-12-06 20:16:47.746915	0	10	rule_group_action_url	[["global_p",true],["model",28],["name","User in groups"]]	ir.rule.group	res	f	[["global_p",true],["model",28],["name","User in groups"]]	\N	\N
574	2022-12-06 20:16:47.746915	0	16	rule_action_url1	[["domain","[[\\"groups\\", \\"in\\", {\\"__class__\\": \\"Eval\\", \\"d\\": [], \\"v\\": \\"groups\\"}]]"],["rule_group",10]]	ir.rule	res	f	[["domain","[[\\"groups\\", \\"in\\", {\\"__class__\\": \\"Eval\\", \\"d\\": [], \\"v\\": \\"groups\\"}]]"],["rule_group",10]]	\N	\N
575	2022-12-06 20:16:47.746915	0	17	rule_action_url2	[["domain","[[\\"groups\\", \\"=\\", null]]"],["rule_group",10]]	ir.rule	res	f	[["domain","[[\\"groups\\", \\"=\\", null]]"],["rule_group",10]]	\N	\N
576	2022-12-06 20:16:47.746915	0	1	act_module_activate_upgrade_group_admin	[["action",46],["group",1]]	ir.action-res.group	res	f	[["action",46],["group",1]]	\N	\N
577	2022-12-06 20:16:47.746915	0	2	act_translation_update_group_admin	[["action",39],["group",1]]	ir.action-res.group	res	f	[["action",39],["group",1]]	\N	\N
578	2022-12-06 20:16:47.746915	0	3	act_translation_export_group_admin	[["action",40],["group",1]]	ir.action-res.group	res	f	[["action",40],["group",1]]	\N	\N
579	2022-12-06 20:16:47.746915	0	4	act_lang_config	[["action",33],["group",1]]	ir.action-res.group	res	f	[["action",33],["group",1]]	\N	\N
580	2022-12-06 20:16:47.746915	0	3	menu_administration_group_admin	[["group",1],["menu",1]]	ir.ui.menu-res.group	res	f	[["group",1],["menu",1]]	\N	\N
581	2022-12-06 20:16:47.746915	0	4	menu_ui_group_admin	[["group",1],["menu",2]]	ir.ui.menu-res.group	res	f	[["group",1],["menu",2]]	\N	\N
582	2022-12-06 20:16:47.746915	0	5	menu_icon_form_group_admin	[["group",1],["menu",3]]	ir.ui.menu-res.group	res	f	[["group",1],["menu",3]]	\N	\N
583	2022-12-06 20:16:47.746915	0	6	menu_menu_tree_group_admin	[["group",1],["menu",4]]	ir.ui.menu-res.group	res	f	[["group",1],["menu",4]]	\N	\N
584	2022-12-06 20:16:47.746915	0	7	menu_view_group_admin	[["group",1],["menu",5]]	ir.ui.menu-res.group	res	f	[["group",1],["menu",5]]	\N	\N
585	2022-12-06 20:16:47.746915	0	8	menu_view_tree_width_group_admin	[["group",1],["menu",6]]	ir.ui.menu-res.group	res	f	[["group",1],["menu",6]]	\N	\N
586	2022-12-06 20:16:47.746915	0	9	menu_action_group_admin	[["group",1],["menu",9]]	ir.ui.menu-res.group	res	f	[["group",1],["menu",9]]	\N	\N
587	2022-12-06 20:16:47.746915	0	10	menu_act_action_group_admin	[["group",1],["menu",10]]	ir.ui.menu-res.group	res	f	[["group",1],["menu",10]]	\N	\N
588	2022-12-06 20:16:47.746915	0	11	menu_action_report_form_group_admin	[["group",1],["menu",11]]	ir.ui.menu-res.group	res	f	[["group",1],["menu",11]]	\N	\N
589	2022-12-06 20:16:47.746915	0	12	menu_action_act_window_group_admin	[["group",1],["menu",12]]	ir.ui.menu-res.group	res	f	[["group",1],["menu",12]]	\N	\N
590	2022-12-06 20:16:47.746915	0	13	menu_action_wizard_group_admin	[["group",1],["menu",13]]	ir.ui.menu-res.group	res	f	[["group",1],["menu",13]]	\N	\N
591	2022-12-06 20:16:47.746915	0	14	menu_action_url_group_admin	[["group",1],["menu",14]]	ir.ui.menu-res.group	res	f	[["group",1],["menu",14]]	\N	\N
592	2022-12-06 20:16:47.746915	0	15	menu_models_group_admin	[["group",1],["menu",15]]	ir.ui.menu-res.group	res	f	[["group",1],["menu",15]]	\N	\N
593	2022-12-06 20:16:47.746915	0	16	menu_model_form_group_admin	[["group",1],["menu",16]]	ir.ui.menu-res.group	res	f	[["group",1],["menu",16]]	\N	\N
594	2022-12-06 20:16:47.746915	0	17	model_model_fields_form_group_admin	[["group",1],["menu",17]]	ir.ui.menu-res.group	res	f	[["group",1],["menu",17]]	\N	\N
595	2022-12-06 20:16:47.746915	0	18	menu_model_access_form_group_admin	[["group",1],["menu",18]]	ir.ui.menu-res.group	res	f	[["group",1],["menu",18]]	\N	\N
596	2022-12-06 20:16:47.746915	0	19	menu_model_field_access_form_group_admin	[["group",1],["menu",19]]	ir.ui.menu-res.group	res	f	[["group",1],["menu",19]]	\N	\N
597	2022-12-06 20:16:47.746915	0	20	menu_sequences_group_admin	[["group",1],["menu",22]]	ir.ui.menu-res.group	res	f	[["group",1],["menu",22]]	\N	\N
598	2022-12-06 20:16:47.746915	0	21	menu_sequence_form_group_admin	[["group",1],["menu",23]]	ir.ui.menu-res.group	res	f	[["group",1],["menu",23]]	\N	\N
599	2022-12-06 20:16:47.746915	0	22	menu_sequence_strict_form_group_admin	[["group",1],["menu",24]]	ir.ui.menu-res.group	res	f	[["group",1],["menu",24]]	\N	\N
600	2022-12-06 20:16:47.746915	0	23	menu_ir_sequence_type_group_admin	[["group",1],["menu",25]]	ir.ui.menu-res.group	res	f	[["group",1],["menu",25]]	\N	\N
601	2022-12-06 20:16:47.746915	0	24	menu_attachment_form_group_admin	[["group",1],["menu",26]]	ir.ui.menu-res.group	res	f	[["group",1],["menu",26]]	\N	\N
602	2022-12-06 20:16:47.746915	0	25	menu_scheduler_group_admin	[["group",1],["menu",28]]	ir.ui.menu-res.group	res	f	[["group",1],["menu",28]]	\N	\N
603	2022-12-06 20:16:47.746915	0	26	menu_cron_form_group_admin	[["group",1],["menu",29]]	ir.ui.menu-res.group	res	f	[["group",1],["menu",29]]	\N	\N
605	2022-12-06 20:16:47.746915	0	28	menu_lang_form_group_admin	[["group",1],["menu",31]]	ir.ui.menu-res.group	res	f	[["group",1],["menu",31]]	\N	\N
606	2022-12-06 20:16:47.746915	0	29	menu_translation_form_group_admin	[["group",1],["menu",32]]	ir.ui.menu-res.group	res	f	[["group",1],["menu",32]]	\N	\N
607	2022-12-06 20:16:47.746915	0	30	menu_translation_set_group_admin	[["group",1],["menu",33]]	ir.ui.menu-res.group	res	f	[["group",1],["menu",33]]	\N	\N
608	2022-12-06 20:16:47.746915	0	31	menu_translation_clean_group_admin	[["group",1],["menu",34]]	ir.ui.menu-res.group	res	f	[["group",1],["menu",34]]	\N	\N
609	2022-12-06 20:16:47.746915	0	32	menu_translation_update_group_admin	[["group",1],["menu",35]]	ir.ui.menu-res.group	res	f	[["group",1],["menu",35]]	\N	\N
610	2022-12-06 20:16:47.746915	0	33	menu_translation_export_group_admin	[["group",1],["menu",36]]	ir.ui.menu-res.group	res	f	[["group",1],["menu",36]]	\N	\N
611	2022-12-06 20:16:47.746915	0	34	menu_export_form_group_admin	[["group",1],["menu",37]]	ir.ui.menu-res.group	res	f	[["group",1],["menu",37]]	\N	\N
612	2022-12-06 20:16:47.746915	0	35	menu_rule_group_form_group_admin	[["group",1],["menu",38]]	ir.ui.menu-res.group	res	f	[["group",1],["menu",38]]	\N	\N
613	2022-12-06 20:16:47.746915	0	36	menu_modules_group_admin	[["group",1],["menu",39]]	ir.ui.menu-res.group	res	f	[["group",1],["menu",39]]	\N	\N
614	2022-12-06 20:16:47.746915	0	37	menu_module_form_group_admin	[["group",1],["menu",40]]	ir.ui.menu-res.group	res	f	[["group",1],["menu",40]]	\N	\N
615	2022-12-06 20:16:47.746915	0	38	menu_config_wizard_item_form_group_admin	[["group",1],["menu",41]]	ir.ui.menu-res.group	res	f	[["group",1],["menu",41]]	\N	\N
616	2022-12-06 20:16:47.746915	0	39	menu_module_activate_upgrade_group_admin	[["group",1],["menu",42]]	ir.ui.menu-res.group	res	f	[["group",1],["menu",42]]	\N	\N
617	2022-12-06 20:16:47.746915	0	40	menu_trigger_form_group_admin	[["group",1],["menu",43]]	ir.ui.menu-res.group	res	f	[["group",1],["menu",43]]	\N	\N
618	2022-12-06 20:16:47.746915	0	1	module_activate_button_group_admin	[["button",6],["group",1]]	ir.model.button-res.group	res	f	[["button",6],["group",1]]	\N	\N
619	2022-12-06 20:16:47.746915	0	2	module_activate_cancel_button_group_admin	[["button",7],["group",1]]	ir.model.button-res.group	res	f	[["button",7],["group",1]]	\N	\N
620	2022-12-06 20:16:47.746915	0	3	module_deactivate_button_group_admin	[["button",8],["group",1]]	ir.model.button-res.group	res	f	[["button",8],["group",1]]	\N	\N
621	2022-12-06 20:16:47.746915	0	4	module_deactivate_cancel_button_group_admin	[["button",9],["group",1]]	ir.model.button-res.group	res	f	[["button",9],["group",1]]	\N	\N
622	2022-12-06 20:16:47.746915	0	5	module_upgrade_button_group_admin	[["button",10],["group",1]]	ir.model.button-res.group	res	f	[["button",10],["group",1]]	\N	\N
623	2022-12-06 20:16:47.746915	0	6	module_upgrade_cancel_button_group_admin	[["button",11],["group",1]]	ir.model.button-res.group	res	f	[["button",11],["group",1]]	\N	\N
624	2022-12-06 20:16:47.746915	0	7	cron_run_once_button_group_admin	[["button",3],["group",1]]	ir.model.button-res.group	res	f	[["button",3],["group",1]]	\N	\N
625	2022-12-06 20:16:47.746915	0	8	model_data_sync_button_group_admin	[["button",2],["group",1]]	ir.model.button-res.group	res	f	[["button",2],["group",1]]	\N	\N
626	2022-12-06 20:16:47.746915	0	9	view_show_button_group_admin	[["button",1],["group",1]]	ir.model.button-res.group	res	f	[["button",1],["group",1]]	\N	\N
627	2022-12-06 20:16:47.746915	0	112	sequence_type_view_form	[["inherit",55],["model","ir.sequence.type"],["name","sequence_type_form"]]	ir.ui.view	res	f	[["inherit",55],["model","ir.sequence.type"],["name","sequence_type_form"]]	\N	\N
628	2022-12-06 20:16:47.746915	0	11	rule_group_sequence	[["global_p",true],["model",11],["name","User in groups"],["perm_read",false]]	ir.rule.group	res	f	[["global_p",true],["model",11],["name","User in groups"],["perm_read",false]]	\N	\N
629	2022-12-06 20:16:47.746915	0	18	rule_sequence	[["domain","[[\\"sequence_type.groups\\", \\"in\\", {\\"__class__\\": \\"Eval\\", \\"d\\": [], \\"v\\": \\"groups\\"}]]"],["rule_group",11]]	ir.rule	res	f	[["domain","[[\\"sequence_type.groups\\", \\"in\\", {\\"__class__\\": \\"Eval\\", \\"d\\": [], \\"v\\": \\"groups\\"}]]"],["rule_group",11]]	\N	\N
630	2022-12-06 20:16:47.746915	0	12	rule_group_sequence_strict	[["global_p",true],["model",12],["name","User in groups"],["perm_read",false]]	ir.rule.group	res	f	[["global_p",true],["model",12],["name","User in groups"],["perm_read",false]]	\N	\N
631	2022-12-06 20:16:47.746915	0	19	rule_sequence_strict	[["domain","[[\\"sequence_type.groups\\", \\"in\\", {\\"__class__\\": \\"Eval\\", \\"d\\": [], \\"v\\": \\"groups\\"}]]"],["rule_group",12]]	ir.rule	res	f	[["domain","[[\\"sequence_type.groups\\", \\"in\\", {\\"__class__\\": \\"Eval\\", \\"d\\": [], \\"v\\": \\"groups\\"}]]"],["rule_group",12]]	\N	\N
632	2022-12-06 20:16:47.746915	0	2	cron_trigger_time	[["interval_number",5],["interval_type","minutes"],["method","ir.trigger|trigger_time"]]	ir.cron	res	f	[["interval_number",5],["interval_type","minutes"],["method","ir.trigger|trigger_time"]]	\N	\N
633	2022-12-06 20:16:47.746915	0	63	rule_default_view_tree_state	[["model",18],["perm_create",false],["perm_delete",false],["perm_read",false],["perm_write",false]]	ir.model.access	res	f	[["model",18],["perm_create",false],["perm_delete",false],["perm_read",false],["perm_write",false]]	\N	\N
634	2022-12-06 20:16:47.746915	0	64	rule_group_view_tree_state	[["group",1],["model",18],["perm_create",true],["perm_delete",true],["perm_read",true],["perm_write",true]]	ir.model.access	res	f	[["group",1],["model",18],["perm_create",true],["perm_delete",true],["perm_read",true],["perm_write",true]]	\N	\N
635	2022-12-06 20:16:47.746915	0	13	rule_group_view_search	[["default_p",true],["global_p",false],["model",19],["name","Own view search"],["perm_create",true],["perm_delete",true],["perm_read",true],["perm_write",true]]	ir.rule.group	res	f	[["default_p",true],["global_p",false],["model",19],["name","Own view search"],["perm_create",true],["perm_delete",true],["perm_read",true],["perm_write",true]]	\N	\N
636	2022-12-06 20:16:47.746915	0	20	rule_group_view_search1	[["domain","[[\\"user\\", \\"=\\", {\\"__class__\\": \\"Get\\", \\"d\\": -1, \\"k\\": \\"id\\", \\"v\\": {\\"__class__\\": \\"Eval\\", \\"d\\": {}, \\"v\\": \\"user\\"}}]]"],["rule_group",13]]	ir.rule	res	f	[["domain","[[\\"user\\", \\"=\\", {\\"__class__\\": \\"Get\\", \\"d\\": -1, \\"k\\": \\"id\\", \\"v\\": {\\"__class__\\": \\"Eval\\", \\"d\\": {}, \\"v\\": \\"user\\"}}]]"],["rule_group",13]]	\N	\N
637	2022-12-06 20:16:47.746915	0	14	rule_group_view_search_common	[["default_p",true],["global_p",false],["model",19],["name","Common view search"],["perm_create",false],["perm_delete",false],["perm_read",true],["perm_write",false]]	ir.rule.group	res	f	[["default_p",true],["global_p",false],["model",19],["name","Common view search"],["perm_create",false],["perm_delete",false],["perm_read",true],["perm_write",false]]	\N	\N
638	2022-12-06 20:16:47.746915	0	21	rule_group_view_search_common1	[["domain","[[\\"user\\", \\"=\\", null]]"],["rule_group",14]]	ir.rule	res	f	[["domain","[[\\"user\\", \\"=\\", null]]"],["rule_group",14]]	\N	\N
639	2022-12-06 20:16:47.746915	0	15	rule_group_view_search_admin	[["default_p",false],["global_p",false],["model",19],["name","Any view search"],["perm_create",true],["perm_delete",true],["perm_read",true],["perm_write",true]]	ir.rule.group	res	f	[["default_p",false],["global_p",false],["model",19],["name","Any view search"],["perm_create",true],["perm_delete",true],["perm_read",true],["perm_write",true]]	\N	\N
640	2022-12-06 20:16:47.746915	0	2	rule_group_view_search_admin_group_admin	[["group",1],["rule_group",15]]	ir.rule.group-res.group	res	f	[["group",1],["rule_group",15]]	\N	\N
641	2022-12-06 20:16:47.746915	0	16	rule_group_session	[["global_p",true],["model",63],["name","Own session"]]	ir.rule.group	res	f	[["global_p",true],["model",63],["name","Own session"]]	\N	\N
642	2022-12-06 20:16:47.746915	0	22	rule_session1	[["domain","[[\\"create_uid\\", \\"=\\", {\\"__class__\\": \\"Get\\", \\"d\\": -1, \\"k\\": \\"id\\", \\"v\\": {\\"__class__\\": \\"Eval\\", \\"d\\": {}, \\"v\\": \\"user\\"}}]]"],["rule_group",16]]	ir.rule	res	f	[["domain","[[\\"create_uid\\", \\"=\\", {\\"__class__\\": \\"Get\\", \\"d\\": -1, \\"k\\": \\"id\\", \\"v\\": {\\"__class__\\": \\"Eval\\", \\"d\\": {}, \\"v\\": \\"user\\"}}]]"],["rule_group",16]]	\N	\N
643	2022-12-06 20:16:47.746915	0	17	rule_group_session_wizard	[["global_p",true],["model",64],["name","Own session"]]	ir.rule.group	res	f	[["global_p",true],["model",64],["name","Own session"]]	\N	\N
644	2022-12-06 20:16:47.746915	0	23	rule_session_wizard1	[["domain","[[\\"create_uid\\", \\"=\\", {\\"__class__\\": \\"Get\\", \\"d\\": -1, \\"k\\": \\"id\\", \\"v\\": {\\"__class__\\": \\"Eval\\", \\"d\\": {}, \\"v\\": \\"user\\"}}]]"],["rule_group",17]]	ir.rule	res	f	[["domain","[[\\"create_uid\\", \\"=\\", {\\"__class__\\": \\"Get\\", \\"d\\": -1, \\"k\\": \\"id\\", \\"v\\": {\\"__class__\\": \\"Eval\\", \\"d\\": {}, \\"v\\": \\"user\\"}}]]"],["rule_group",17]]	\N	\N
645	2022-12-06 20:16:47.746915	0	18	rule_group_ui_menu_favorite	[["global_p",true],["model",14],["name","Own favorite"]]	ir.rule.group	res	f	[["global_p",true],["model",14],["name","Own favorite"]]	\N	\N
646	2022-12-06 20:16:47.746915	0	24	rule_ui_menu_favorite1	[["domain","[[\\"create_uid\\", \\"=\\", {\\"__class__\\": \\"Get\\", \\"d\\": -1, \\"k\\": \\"id\\", \\"v\\": {\\"__class__\\": \\"Eval\\", \\"d\\": {}, \\"v\\": \\"user\\"}}]]"],["rule_group",18]]	ir.rule	res	f	[["domain","[[\\"create_uid\\", \\"=\\", {\\"__class__\\": \\"Get\\", \\"d\\": -1, \\"k\\": \\"id\\", \\"v\\": {\\"__class__\\": \\"Eval\\", \\"d\\": {}, \\"v\\": \\"user\\"}}]]"],["rule_group",18]]	\N	\N
647	2022-12-06 20:16:47.746915	0	65	access_message	[["model",68],["perm_create",false],["perm_delete",false],["perm_read",true],["perm_write",false]]	ir.model.access	res	f	[["model",68],["perm_create",false],["perm_delete",false],["perm_read",true],["perm_write",false]]	\N	\N
648	2022-12-06 20:16:47.746915	0	66	access_message_group_admin	[["group",1],["model",68],["perm_create",true],["perm_delete",true],["perm_read",true],["perm_write",true]]	ir.model.access	res	f	[["group",1],["model",68],["perm_create",true],["perm_delete",true],["perm_read",true],["perm_write",true]]	\N	\N
649	2022-12-06 20:16:47.746915	0	113	export_view_form	[["inherit",76],["model","ir.export"],["name","export_form"]]	ir.ui.view	res	f	[["inherit",76],["model","ir.export"],["name","export_form"]]	\N	\N
650	2022-12-06 20:16:47.746915	0	114	export_view_list	[["inherit",77],["model","ir.export"],["name","export_list"]]	ir.ui.view	res	f	[["inherit",77],["model","ir.export"],["name","export_list"]]	\N	\N
651	2022-12-06 20:16:47.746915	0	19	rule_group_export_read	[["default_p",true],["global_p",false],["model",47],["name","User in groups"],["perm_create",false],["perm_delete",false],["perm_read",true],["perm_write",false]]	ir.rule.group	res	f	[["default_p",true],["global_p",false],["model",47],["name","User in groups"],["perm_create",false],["perm_delete",false],["perm_read",true],["perm_write",false]]	\N	\N
652	2022-12-06 20:16:47.746915	0	25	rule_group_export_read1	[["domain","[[\\"groups\\", \\"in\\", {\\"__class__\\": \\"Eval\\", \\"d\\": [], \\"v\\": \\"groups\\"}]]"],["rule_group",19]]	ir.rule	res	f	[["domain","[[\\"groups\\", \\"in\\", {\\"__class__\\": \\"Eval\\", \\"d\\": [], \\"v\\": \\"groups\\"}]]"],["rule_group",19]]	\N	\N
653	2022-12-06 20:16:47.746915	0	26	rule_group_export_read2	[["domain","[[\\"create_uid\\", \\"=\\", {\\"__class__\\": \\"Eval\\", \\"d\\": -1, \\"v\\": \\"user.id\\"}]]"],["rule_group",19]]	ir.rule	res	f	[["domain","[[\\"create_uid\\", \\"=\\", {\\"__class__\\": \\"Eval\\", \\"d\\": -1, \\"v\\": \\"user.id\\"}]]"],["rule_group",19]]	\N	\N
654	2022-12-06 20:16:47.746915	0	20	rule_group_export_write	[["default_p",true],["global_p",false],["model",47],["name","User in modification groups"],["perm_create",true],["perm_delete",true],["perm_read",true],["perm_write",true]]	ir.rule.group	res	f	[["default_p",true],["global_p",false],["model",47],["name","User in modification groups"],["perm_create",true],["perm_delete",true],["perm_read",true],["perm_write",true]]	\N	\N
655	2022-12-06 20:16:47.746915	0	27	rule_group_export_write1	[["domain","[[\\"write_groups\\", \\"in\\", {\\"__class__\\": \\"Eval\\", \\"d\\": [], \\"v\\": \\"groups\\"}]]"],["rule_group",20]]	ir.rule	res	f	[["domain","[[\\"write_groups\\", \\"in\\", {\\"__class__\\": \\"Eval\\", \\"d\\": [], \\"v\\": \\"groups\\"}]]"],["rule_group",20]]	\N	\N
656	2022-12-06 20:16:47.746915	0	28	rule_group_export_write2	[["domain","[[\\"create_uid\\", \\"=\\", {\\"__class__\\": \\"Eval\\", \\"d\\": -1, \\"v\\": \\"user.id\\"}]]"],["rule_group",20]]	ir.rule	res	f	[["domain","[[\\"create_uid\\", \\"=\\", {\\"__class__\\": \\"Eval\\", \\"d\\": -1, \\"v\\": \\"user.id\\"}]]"],["rule_group",20]]	\N	\N
657	2022-12-06 20:16:47.746915	0	21	rule_group_export_any	[["default_p",false],["global_p",false],["model",47],["name","Any export"],["perm_create",true],["perm_delete",true],["perm_read",true],["perm_write",true]]	ir.rule.group	res	f	[["default_p",false],["global_p",false],["model",47],["name","Any export"],["perm_create",true],["perm_delete",true],["perm_read",true],["perm_write",true]]	\N	\N
658	2022-12-06 20:16:47.746915	0	29	rule_group_export_any1	[["domain","[]"],["rule_group",21]]	ir.rule	res	f	[["domain","[]"],["rule_group",21]]	\N	\N
659	2022-12-06 20:16:47.746915	0	3	rule_group_export_any_admin	[["group",1],["rule_group",21]]	ir.rule.group-res.group	res	f	[["group",1],["rule_group",21]]	\N	\N
660	2022-12-06 20:16:47.746915	0	22	rule_group_export_line_read	[["default_p",true],["global_p",false],["model",48],["name","User in groups"],["perm_create",false],["perm_delete",false],["perm_read",true],["perm_write",false]]	ir.rule.group	res	f	[["default_p",true],["global_p",false],["model",48],["name","User in groups"],["perm_create",false],["perm_delete",false],["perm_read",true],["perm_write",false]]	\N	\N
661	2022-12-06 20:16:47.746915	0	30	rule_group_export_line_read1	[["domain","[[\\"export.groups\\", \\"in\\", {\\"__class__\\": \\"Eval\\", \\"d\\": [], \\"v\\": \\"groups\\"}]]"],["rule_group",22]]	ir.rule	res	f	[["domain","[[\\"export.groups\\", \\"in\\", {\\"__class__\\": \\"Eval\\", \\"d\\": [], \\"v\\": \\"groups\\"}]]"],["rule_group",22]]	\N	\N
662	2022-12-06 20:16:47.746915	0	31	rule_group_export_line_read2	[["domain","[[\\"export.create_uid\\", \\"=\\", {\\"__class__\\": \\"Eval\\", \\"d\\": -1, \\"v\\": \\"user.id\\"}]]"],["rule_group",22]]	ir.rule	res	f	[["domain","[[\\"export.create_uid\\", \\"=\\", {\\"__class__\\": \\"Eval\\", \\"d\\": -1, \\"v\\": \\"user.id\\"}]]"],["rule_group",22]]	\N	\N
663	2022-12-06 20:16:47.746915	0	23	rule_group_export_line_write	[["default_p",true],["global_p",false],["model",48],["name","User in modification groups"],["perm_create",true],["perm_delete",true],["perm_read",true],["perm_write",true]]	ir.rule.group	res	f	[["default_p",true],["global_p",false],["model",48],["name","User in modification groups"],["perm_create",true],["perm_delete",true],["perm_read",true],["perm_write",true]]	\N	\N
664	2022-12-06 20:16:47.746915	0	32	rule_group_export_line_write1	[["domain","[[\\"export.write_groups\\", \\"in\\", {\\"__class__\\": \\"Eval\\", \\"d\\": [], \\"v\\": \\"groups\\"}]]"],["rule_group",23]]	ir.rule	res	f	[["domain","[[\\"export.write_groups\\", \\"in\\", {\\"__class__\\": \\"Eval\\", \\"d\\": [], \\"v\\": \\"groups\\"}]]"],["rule_group",23]]	\N	\N
665	2022-12-06 20:16:47.746915	0	33	rule_group_export_line_write2	[["domain","[[\\"export.create_uid\\", \\"=\\", {\\"__class__\\": \\"Eval\\", \\"d\\": -1, \\"v\\": \\"user.id\\"}]]"],["rule_group",23]]	ir.rule	res	f	[["domain","[[\\"export.create_uid\\", \\"=\\", {\\"__class__\\": \\"Eval\\", \\"d\\": -1, \\"v\\": \\"user.id\\"}]]"],["rule_group",23]]	\N	\N
666	2022-12-06 20:16:47.746915	0	24	rule_group_export_line_any	[["default_p",false],["global_p",false],["model",48],["name","Any export"],["perm_create",true],["perm_delete",true],["perm_read",true],["perm_write",true]]	ir.rule.group	res	f	[["default_p",false],["global_p",false],["model",48],["name","Any export"],["perm_create",true],["perm_delete",true],["perm_read",true],["perm_write",true]]	\N	\N
667	2022-12-06 20:16:47.746915	0	34	rule_group_export_line_any1	[["domain","[]"],["rule_group",24]]	ir.rule	res	f	[["domain","[]"],["rule_group",24]]	\N	\N
668	2022-12-06 20:16:47.746915	0	4	rule_group_export_line_any_admin	[["group",1],["rule_group",24]]	ir.rule.group-res.group	res	f	[["group",1],["rule_group",24]]	\N	\N
669	2022-12-06 20:16:47.746915	0	67	access_ir_email_template	[["model",71],["perm_create",false],["perm_delete",false],["perm_read",true],["perm_write",false]]	ir.model.access	res	f	[["model",71],["perm_create",false],["perm_delete",false],["perm_read",true],["perm_write",false]]	\N	\N
670	2022-12-06 20:16:47.746915	0	68	access_ir_email_template_admin	[["group",1],["model",71],["perm_create",true],["perm_delete",true],["perm_read",true],["perm_write",true]]	ir.model.access	res	f	[["group",1],["model",71],["perm_create",true],["perm_delete",true],["perm_read",true],["perm_write",true]]	\N	\N
671	2022-12-06 20:16:47.746915	0	107	msg_password_length	[["text","The password is too short."]]	ir.message	res	f	[["text","The password is too short."]]	\N	\N
672	2022-12-06 20:16:47.746915	0	108	msg_password_forbidden	[["text","The password is forbidden."]]	ir.message	res	f	[["text","The password is forbidden."]]	\N	\N
673	2022-12-06 20:16:47.746915	0	109	msg_password_entropy	[["text","The same characters appear in the password too many times."]]	ir.message	res	f	[["text","The same characters appear in the password too many times."]]	\N	\N
674	2022-12-06 20:16:47.746915	0	110	msg_password_name	[["text","The password cannot be the same as user's name."]]	ir.message	res	f	[["text","The password cannot be the same as user's name."]]	\N	\N
675	2022-12-06 20:16:47.746915	0	111	msg_password_login	[["text","The password cannot be the same as user's login."]]	ir.message	res	f	[["text","The password cannot be the same as user's login."]]	\N	\N
676	2022-12-06 20:16:47.746915	0	112	msg_password_email	[["text","The password cannot be the same as user's email address."]]	ir.message	res	f	[["text","The password cannot be the same as user's email address."]]	\N	\N
677	2022-12-06 20:16:47.746915	0	113	msg_user_delete_forbidden	[["text","For logging purposes users cannot be deleted, instead they should be deactivated."]]	ir.message	res	f	[["text","For logging purposes users cannot be deleted, instead they should be deactivated."]]	\N	\N
678	2022-12-06 20:16:47.746915	0	114	msg_user_password	[["text","Password for %(login)s"]]	ir.message	res	f	[["text","Password for %(login)s"]]	\N	\N
\.


--
-- Data for Name: ir_model_field; Type: TABLE DATA; Schema: public; Owner: gnuhealth
--

COPY public.ir_model_field (id, model, name, relation, field_description, ttype, help, module, access, create_date, create_uid, write_date, write_uid) FROM stdin;
863	22	groups	res.group	Groups	one2many		res	f	\N	\N	\N	\N
864	84	active	\N	ir.msg_active	boolean	ir.msg_active_help	res	f	\N	\N	\N	\N
865	84	button	ir.model.button	Button	many2one		res	f	\N	\N	\N	\N
866	84	create_date	\N	ir.msg_created_at	timestamp		res	f	\N	\N	\N	\N
867	84	create_uid	res.user	ir.msg_created_by	many2one		res	f	\N	\N	\N	\N
868	84	group	res.group	Group	many2one		res	f	\N	\N	\N	\N
869	84	id	\N	ir.msg_ID	integer		res	f	\N	\N	\N	\N
870	84	rec_name	\N	ir.msg_record_name	char		res	f	\N	\N	\N	\N
871	84	write_date	\N	ir.msg_edited_at	timestamp		res	f	\N	\N	\N	\N
872	84	write_uid	res.user	ir.msg_edited_by	many2one		res	f	\N	\N	\N	\N
873	34	group	res.group	Group	many2one		res	f	\N	\N	\N	\N
874	35	user	res.user	User	many2one		res	f	\N	\N	\N	\N
875	85	create_date	\N	ir.msg_created_at	timestamp		res	f	\N	\N	\N	\N
876	85	create_uid	res.user	ir.msg_created_by	many2one		res	f	\N	\N	\N	\N
877	85	group	res.group	Group	many2one		res	f	\N	\N	\N	\N
878	85	id	\N	ir.msg_ID	integer		res	f	\N	\N	\N	\N
879	85	rec_name	\N	ir.msg_record_name	char		res	f	\N	\N	\N	\N
880	85	rule_group	ir.rule.group	Rule Group	many2one		res	f	\N	\N	\N	\N
881	85	write_date	\N	ir.msg_edited_at	timestamp		res	f	\N	\N	\N	\N
882	85	write_uid	res.user	ir.msg_edited_by	many2one		res	f	\N	\N	\N	\N
883	10	groups	ir.sequence.type-res.group	User Groups	many2many	Groups allowed to edit the sequences of this type.	res	f	\N	\N	\N	\N
884	86	create_date	\N	ir.msg_created_at	timestamp		res	f	\N	\N	\N	\N
885	86	create_uid	res.user	ir.msg_created_by	many2one		res	f	\N	\N	\N	\N
886	86	group	res.group	User Groups	many2one		res	f	\N	\N	\N	\N
887	86	id	\N	ir.msg_ID	integer		res	f	\N	\N	\N	\N
888	86	rec_name	\N	ir.msg_record_name	char		res	f	\N	\N	\N	\N
889	86	sequence_type	ir.sequence.type	Sequence Type	many2one		res	f	\N	\N	\N	\N
890	86	write_date	\N	ir.msg_edited_at	timestamp		res	f	\N	\N	\N	\N
891	86	write_uid	res.user	ir.msg_edited_by	many2one		res	f	\N	\N	\N	\N
892	47	groups	ir.export-res.group	Groups	many2many	The user groups that can use the export.	res	f	\N	\N	\N	\N
893	47	write_groups	ir.export-write-res.group	Modification Groups	many2many	The user groups that can modify the export.	res	f	\N	\N	\N	\N
894	87	create_date	\N	ir.msg_created_at	timestamp		res	f	\N	\N	\N	\N
895	87	create_uid	res.user	ir.msg_created_by	many2one		res	f	\N	\N	\N	\N
896	87	export	ir.export	Export	many2one		res	f	\N	\N	\N	\N
897	87	group	res.group	Group	many2one		res	f	\N	\N	\N	\N
898	87	id	\N	ir.msg_ID	integer		res	f	\N	\N	\N	\N
899	87	rec_name	\N	ir.msg_record_name	char		res	f	\N	\N	\N	\N
900	87	write_date	\N	ir.msg_edited_at	timestamp		res	f	\N	\N	\N	\N
901	87	write_uid	res.user	ir.msg_edited_by	many2one		res	f	\N	\N	\N	\N
902	88	create_date	\N	ir.msg_created_at	timestamp		res	f	\N	\N	\N	\N
903	88	create_uid	res.user	ir.msg_created_by	many2one		res	f	\N	\N	\N	\N
904	88	export	ir.export	Export	many2one		res	f	\N	\N	\N	\N
905	88	group	res.group	Group	many2one		res	f	\N	\N	\N	\N
906	88	id	\N	ir.msg_ID	integer		res	f	\N	\N	\N	\N
907	88	rec_name	\N	ir.msg_record_name	char		res	f	\N	\N	\N	\N
908	88	write_date	\N	ir.msg_edited_at	timestamp		res	f	\N	\N	\N	\N
909	88	write_uid	res.user	ir.msg_edited_by	many2one		res	f	\N	\N	\N	\N
202	23	model	\N	Model	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
1	1	create_date	\N	ir.msg_created_at	timestamp		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
2	1	create_uid	res.user	ir.msg_created_by	many2one		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
3	1	hostname	\N	Hostname	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
4	1	id	\N	ir.msg_ID	integer		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
5	1	language	\N	language	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
6	1	rec_name	\N	ir.msg_record_name	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
7	1	write_date	\N	ir.msg_edited_at	timestamp		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
8	1	write_uid	res.user	ir.msg_edited_by	many2one		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
9	2	create_date	\N	ir.msg_created_at	timestamp		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
10	2	create_uid	res.user	ir.msg_created_by	many2one		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
11	2	fuzzy	\N	Fuzzy	boolean		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
12	2	id	\N	ir.msg_ID	integer		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
13	2	lang	\N	Language	selection		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
14	2	model	\N	Model	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
15	2	module	\N	Module	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
16	2	name	\N	Field Name	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
17	2	overriding_module	\N	Overriding Module	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
18	2	rec_name	\N	ir.msg_record_name	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
19	2	res_id	\N	Resource ID	integer		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
20	2	src	\N	Source	text		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
21	2	type	\N	Type	selection		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
22	2	value	\N	Translation Value	text		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
23	2	write_date	\N	ir.msg_edited_at	timestamp		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
24	2	write_uid	res.user	ir.msg_edited_by	many2one		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
25	3	id	\N	ir.msg_ID	integer		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
26	4	id	\N	ir.msg_ID	integer		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
27	5	id	\N	ir.msg_ID	integer		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
28	6	id	\N	ir.msg_ID	integer		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
29	7	id	\N	ir.msg_ID	integer		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
30	7	language	ir.lang	Language	many2one		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
31	8	id	\N	ir.msg_ID	integer		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
32	8	language	ir.lang	Language	many2one		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
33	8	module	ir.module	Module	many2one		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
34	9	file	\N	File	binary		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
35	9	filename	\N	Filename	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
36	9	id	\N	ir.msg_ID	integer		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
37	9	language	ir.lang	Language	many2one		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
38	9	module	ir.module	Module	many2one		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
39	10	create_date	\N	ir.msg_created_at	timestamp		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
40	10	create_uid	res.user	ir.msg_created_by	many2one		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
41	10	id	\N	ir.msg_ID	integer		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
42	10	name	\N	Sequence Name	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
43	10	rec_name	\N	ir.msg_record_name	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
44	10	write_date	\N	ir.msg_edited_at	timestamp		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
45	10	write_uid	res.user	ir.msg_edited_by	many2one		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
46	11	active	\N	ir.msg_active	boolean	ir.msg_active_help	ir	f	2022-12-06 20:16:35.775817	0	\N	\N
47	11	create_date	\N	ir.msg_created_at	timestamp		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
48	11	create_uid	res.user	ir.msg_created_by	many2one		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
49	11	id	\N	ir.msg_ID	integer		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
50	11	last_timestamp	\N	Last Timestamp	integer		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
51	11	name	\N	Sequence Name	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
52	11	number_increment	\N	Increment Number	integer		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
53	11	number_next	\N	Next Number	integer		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
54	11	number_next_internal	\N	Next Number	integer		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
55	11	padding	\N	Number padding	integer		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
56	11	prefix	\N	Prefix	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
57	11	rec_name	\N	ir.msg_record_name	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
58	11	sequence_type	ir.sequence.type	Sequence Type	many2one		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
59	11	suffix	\N	Suffix	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
60	11	timestamp_offset	\N	Timestamp Offset	float		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
61	11	timestamp_rounding	\N	Timestamp Rounding	float		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
62	11	type	\N	Type	selection		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
63	11	write_date	\N	ir.msg_edited_at	timestamp		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
64	11	write_uid	res.user	ir.msg_edited_by	many2one		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
320	30	help	\N	Help	text		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
65	12	active	\N	ir.msg_active	boolean	ir.msg_active_help	ir	f	2022-12-06 20:16:35.775817	0	\N	\N
66	12	create_date	\N	ir.msg_created_at	timestamp		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
67	12	create_uid	res.user	ir.msg_created_by	many2one		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
68	12	id	\N	ir.msg_ID	integer		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
69	12	last_timestamp	\N	Last Timestamp	integer		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
70	12	name	\N	Sequence Name	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
71	12	number_increment	\N	Increment Number	integer		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
72	12	number_next	\N	Next Number	integer		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
73	12	number_next_internal	\N	Next Number	integer		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
74	12	padding	\N	Number padding	integer		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
75	12	prefix	\N	Prefix	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
76	12	rec_name	\N	ir.msg_record_name	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
77	12	sequence_type	ir.sequence.type	Sequence Type	many2one		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
78	12	suffix	\N	Suffix	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
79	12	timestamp_offset	\N	Timestamp Offset	float		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
80	12	timestamp_rounding	\N	Timestamp Rounding	float		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
81	12	type	\N	Type	selection		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
82	12	write_date	\N	ir.msg_edited_at	timestamp		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
83	12	write_uid	res.user	ir.msg_edited_by	many2one		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
84	13	action	\N	Action	reference		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
85	13	action_keywords	ir.action.keyword	Action Keywords	one2many		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
86	13	active	\N	ir.msg_active	boolean	ir.msg_active_help	ir	f	2022-12-06 20:16:35.775817	0	\N	\N
87	13	childs	ir.ui.menu	Children	one2many		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
88	13	complete_name	\N	Complete Name	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
89	13	create_date	\N	ir.msg_created_at	timestamp		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
90	13	create_uid	res.user	ir.msg_created_by	many2one		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
91	13	favorite	\N	Favorite	boolean		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
92	13	groups	ir.ui.menu-res.group	Groups	many2many		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
93	13	icon	\N	Icon	selection		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
94	13	id	\N	ir.msg_ID	integer		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
95	13	name	\N	Menu	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
96	13	parent	ir.ui.menu	Parent Menu	many2one		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
97	13	rec_name	\N	ir.msg_record_name	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
98	13	sequence	\N	ir.msg_sequence	integer		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
99	13	write_date	\N	ir.msg_edited_at	timestamp		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
100	13	write_uid	res.user	ir.msg_edited_by	many2one		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
101	14	create_date	\N	ir.msg_created_at	timestamp		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
102	14	create_uid	res.user	ir.msg_created_by	many2one		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
103	14	id	\N	ir.msg_ID	integer		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
104	14	menu	ir.ui.menu	Menu	many2one		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
105	14	rec_name	\N	ir.msg_record_name	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
106	14	sequence	\N	ir.msg_sequence	integer		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
107	14	user	res.user	User	many2one		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
108	14	write_date	\N	ir.msg_edited_at	timestamp		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
109	14	write_uid	res.user	ir.msg_edited_by	many2one		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
110	15	arch	\N	View Architecture	text		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
111	15	create_date	\N	ir.msg_created_at	timestamp		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
112	15	create_uid	res.user	ir.msg_created_by	many2one		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
113	15	data	\N	Data	text		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
114	15	domain	\N	Domain	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
115	15	field_childs	\N	Children Field	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
116	15	id	\N	ir.msg_ID	integer		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
117	15	inherit	ir.ui.view	Inherited View	many2one		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
118	15	model	\N	Model	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
119	15	module	\N	Module	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
120	15	name	\N	Name	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
121	15	priority	\N	Priority	integer		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
122	15	rec_name	\N	ir.msg_record_name	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
123	15	type	\N	View Type	selection		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
124	15	write_date	\N	ir.msg_edited_at	timestamp		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
125	15	write_uid	res.user	ir.msg_edited_by	many2one		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
126	16	id	\N	ir.msg_ID	integer		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
127	17	create_date	\N	ir.msg_created_at	timestamp		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
128	17	create_uid	res.user	ir.msg_created_by	many2one		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
129	17	field	\N	Field	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
130	17	id	\N	ir.msg_ID	integer		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
131	17	model	\N	Model	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
132	17	rec_name	\N	ir.msg_record_name	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
133	17	user	res.user	User	many2one		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
134	17	width	\N	Width	integer		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
135	17	write_date	\N	ir.msg_edited_at	timestamp		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
136	17	write_uid	res.user	ir.msg_edited_by	many2one		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
137	18	child_name	\N	Child Name	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
138	18	create_date	\N	ir.msg_created_at	timestamp		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
139	18	create_uid	res.user	ir.msg_created_by	many2one		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
140	18	domain	\N	Domain	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
141	18	id	\N	ir.msg_ID	integer		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
142	18	model	\N	Model	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
143	18	nodes	\N	Expanded Nodes	text		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
144	18	rec_name	\N	ir.msg_record_name	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
145	18	selected_nodes	\N	Selected Nodes	text		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
146	18	user	res.user	User	many2one		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
147	18	write_date	\N	ir.msg_edited_at	timestamp		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
148	18	write_uid	res.user	ir.msg_edited_by	many2one		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
149	19	create_date	\N	ir.msg_created_at	timestamp		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
150	19	create_uid	res.user	ir.msg_created_by	many2one		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
151	19	domain	\N	Domain	char	The PYSON domain.	ir	f	2022-12-06 20:16:35.775817	0	\N	\N
152	19	id	\N	ir.msg_ID	integer		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
153	19	model	\N	Model	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
154	19	name	\N	Name	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
155	19	rec_name	\N	ir.msg_record_name	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
156	19	user	res.user	User	many2one		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
157	19	write_date	\N	ir.msg_edited_at	timestamp		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
158	19	write_uid	res.user	ir.msg_edited_by	many2one		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
159	20	create_date	\N	ir.msg_created_at	timestamp		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
160	20	create_uid	res.user	ir.msg_created_by	many2one		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
161	20	icon	\N	Icon	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
162	20	id	\N	ir.msg_ID	integer		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
163	20	module	\N	Module	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
164	20	name	\N	Name	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
165	20	path	\N	SVG Path	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
166	20	rec_name	\N	ir.msg_record_name	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
167	20	sequence	\N	ir.msg_sequence	integer		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
168	20	write_date	\N	ir.msg_edited_at	timestamp		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
169	20	write_uid	res.user	ir.msg_edited_by	many2one		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
170	21	active	\N	ir.msg_active	boolean	ir.msg_active_help	ir	f	2022-12-06 20:16:35.775817	0	\N	\N
171	21	create_date	\N	ir.msg_created_at	timestamp		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
172	21	create_uid	res.user	ir.msg_created_by	many2one		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
173	21	icon	ir.ui.icon	Icon	many2one		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
174	21	id	\N	ir.msg_ID	integer		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
175	21	keywords	ir.action.keyword	Keywords	one2many		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
176	21	name	\N	Name	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
177	21	rec_name	\N	ir.msg_record_name	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
178	21	records	\N	Records	selection	The records on which the action runs.	ir	f	2022-12-06 20:16:35.775817	0	\N	\N
179	21	type	\N	Type	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
180	21	usage	\N	Usage	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
181	21	write_date	\N	ir.msg_edited_at	timestamp		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
182	21	write_uid	res.user	ir.msg_edited_by	many2one		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
183	22	action	ir.action	Action	many2one		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
184	22	create_date	\N	ir.msg_created_at	timestamp		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
185	22	create_uid	res.user	ir.msg_created_by	many2one		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
186	22	id	\N	ir.msg_ID	integer		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
187	22	keyword	\N	Keyword	selection		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
188	22	model	\N	Model	reference		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
189	22	rec_name	\N	ir.msg_record_name	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
190	22	write_date	\N	ir.msg_edited_at	timestamp		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
191	22	write_uid	res.user	ir.msg_edited_by	many2one		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
192	23	action	ir.action	Action	many2one		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
193	23	active	\N	ir.msg_active	boolean	ir.msg_active_help	ir	f	2022-12-06 20:16:35.775817	0	\N	\N
194	23	create_date	\N	ir.msg_created_at	timestamp		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
195	23	create_uid	res.user	ir.msg_created_by	many2one		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
196	23	direct_print	\N	Direct Print	boolean		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
197	23	extension	\N	Extension	selection	Leave empty for the same as template, see LibreOffice documentation for compatible format.	ir	f	2022-12-06 20:16:35.775817	0	\N	\N
198	23	icon	ir.ui.icon	Icon	many2one		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
199	23	id	\N	ir.msg_ID	integer		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
200	23	is_custom	\N	Is Custom	boolean		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
201	23	keywords	ir.action.keyword	Keywords	one2many		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
203	23	module	\N	Module	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
204	23	name	\N	Name	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
205	23	rec_name	\N	ir.msg_record_name	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
206	23	records	\N	Records	selection	The records on which the action runs.	ir	f	2022-12-06 20:16:35.775817	0	\N	\N
207	23	report	\N	Path	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
208	23	report_content	\N	Content	binary		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
209	23	report_content_custom	\N	Content	binary		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
210	23	report_content_html	\N	Content HTML	binary		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
211	23	report_content_name	\N	Content Name	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
212	23	report_name	\N	Internal Name	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
213	23	single	\N	Single	boolean	Check if the template works only for one record.	ir	f	2022-12-06 20:16:35.775817	0	\N	\N
214	23	template_extension	\N	Template Extension	selection		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
215	23	translatable	\N	Translatable	boolean	Uncheck to disable translations for this report.	ir	f	2022-12-06 20:16:35.775817	0	\N	\N
216	23	type	\N	Type	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
217	23	usage	\N	Usage	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
218	23	write_date	\N	ir.msg_edited_at	timestamp		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
219	23	write_uid	res.user	ir.msg_edited_by	many2one		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
220	24	act_window_domains	ir.action.act_window.domain	Domains	one2many		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
221	24	act_window_views	ir.action.act_window.view	Views	one2many		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
222	24	action	ir.action	Action	many2one		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
223	24	active	\N	ir.msg_active	boolean	ir.msg_active_help	ir	f	2022-12-06 20:16:35.775817	0	\N	\N
224	24	context	\N	Context Value	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
225	24	context_domain	\N	Context Domain	char	Part of the domain that will be evaluated on each refresh.	ir	f	2022-12-06 20:16:35.775817	0	\N	\N
226	24	context_model	\N	Context Model	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
227	24	create_date	\N	ir.msg_created_at	timestamp		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
228	24	create_uid	res.user	ir.msg_created_by	many2one		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
229	24	domain	\N	Domain Value	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
230	24	domains	\N	Domains	binary		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
231	24	icon	ir.ui.icon	Icon	many2one		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
232	24	id	\N	ir.msg_ID	integer		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
233	24	keywords	ir.action.keyword	Keywords	one2many		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
234	24	limit	\N	Limit	integer	Default limit for the list view.	ir	f	2022-12-06 20:16:35.775817	0	\N	\N
235	24	name	\N	Name	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
236	24	order	\N	Order Value	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
237	24	pyson_context	\N	PySON Context	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
238	24	pyson_domain	\N	PySON Domain	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
239	24	pyson_order	\N	PySON Order	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
240	24	pyson_search_value	\N	PySON Search Criteria	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
241	24	rec_name	\N	ir.msg_record_name	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
242	24	records	\N	Records	selection	The records on which the action runs.	ir	f	2022-12-06 20:16:35.775817	0	\N	\N
243	24	res_model	\N	Model	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
244	24	search_value	\N	Search Criteria	char	Default search criteria for the list view.	ir	f	2022-12-06 20:16:35.775817	0	\N	\N
245	24	type	\N	Type	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
246	24	usage	\N	Usage	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
247	24	views	\N	Views	binary		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
248	24	write_date	\N	ir.msg_edited_at	timestamp		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
249	24	write_uid	res.user	ir.msg_edited_by	many2one		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
250	25	act_window	ir.action.act_window	Action	many2one		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
251	25	active	\N	ir.msg_active	boolean	ir.msg_active_help	ir	f	2022-12-06 20:16:35.775817	0	\N	\N
252	25	create_date	\N	ir.msg_created_at	timestamp		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
253	25	create_uid	res.user	ir.msg_created_by	many2one		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
254	25	id	\N	ir.msg_ID	integer		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
255	25	rec_name	\N	ir.msg_record_name	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
256	25	sequence	\N	ir.msg_sequence	integer		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
257	25	view	ir.ui.view	View	many2one		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
258	25	write_date	\N	ir.msg_edited_at	timestamp		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
259	25	write_uid	res.user	ir.msg_edited_by	many2one		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
260	26	act_window	ir.action.act_window	Action	many2one		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
261	26	active	\N	ir.msg_active	boolean	ir.msg_active_help	ir	f	2022-12-06 20:16:35.775817	0	\N	\N
262	26	count	\N	Count	boolean		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
263	26	create_date	\N	ir.msg_created_at	timestamp		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
264	26	create_uid	res.user	ir.msg_created_by	many2one		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
265	26	domain	\N	Domain	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
266	26	id	\N	ir.msg_ID	integer		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
267	26	name	\N	Name	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
268	26	rec_name	\N	ir.msg_record_name	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
269	26	sequence	\N	ir.msg_sequence	integer		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
270	26	write_date	\N	ir.msg_edited_at	timestamp		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
271	26	write_uid	res.user	ir.msg_edited_by	many2one		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
272	27	action	ir.action	Action	many2one		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
273	27	active	\N	ir.msg_active	boolean	ir.msg_active_help	ir	f	2022-12-06 20:16:35.775817	0	\N	\N
274	27	create_date	\N	ir.msg_created_at	timestamp		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
275	27	create_uid	res.user	ir.msg_created_by	many2one		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
276	27	icon	ir.ui.icon	Icon	many2one		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
277	27	id	\N	ir.msg_ID	integer		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
278	27	keywords	ir.action.keyword	Keywords	one2many		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
279	27	model	\N	Model	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
280	27	name	\N	Name	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
281	27	rec_name	\N	ir.msg_record_name	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
282	27	records	\N	Records	selection	The records on which the action runs.	ir	f	2022-12-06 20:16:35.775817	0	\N	\N
283	27	type	\N	Type	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
284	27	usage	\N	Usage	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
285	27	window	\N	Window	boolean	Run wizard in a new window.	ir	f	2022-12-06 20:16:35.775817	0	\N	\N
286	27	wiz_name	\N	Wizard name	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
287	27	write_date	\N	ir.msg_edited_at	timestamp		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
288	27	write_uid	res.user	ir.msg_edited_by	many2one		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
289	28	action	ir.action	Action	many2one		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
290	28	active	\N	ir.msg_active	boolean	ir.msg_active_help	ir	f	2022-12-06 20:16:35.775817	0	\N	\N
291	28	create_date	\N	ir.msg_created_at	timestamp		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
292	28	create_uid	res.user	ir.msg_created_by	many2one		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
293	28	icon	ir.ui.icon	Icon	many2one		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
294	28	id	\N	ir.msg_ID	integer		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
295	28	keywords	ir.action.keyword	Keywords	one2many		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
296	28	name	\N	Name	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
297	28	rec_name	\N	ir.msg_record_name	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
298	28	records	\N	Records	selection	The records on which the action runs.	ir	f	2022-12-06 20:16:35.775817	0	\N	\N
299	28	type	\N	Type	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
300	28	url	\N	Action Url	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
301	28	usage	\N	Usage	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
302	28	write_date	\N	ir.msg_edited_at	timestamp		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
303	28	write_uid	res.user	ir.msg_edited_by	many2one		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
304	29	create_date	\N	ir.msg_created_at	timestamp		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
305	29	create_uid	res.user	ir.msg_created_by	many2one		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
306	29	fields	ir.model.field	Fields	one2many		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
307	29	global_search_p	\N	Global Search	boolean		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
308	29	id	\N	ir.msg_ID	integer		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
309	29	info	\N	Information	text		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
310	29	model	\N	Model Name	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
311	29	module	\N	Module	char	Module in which this model is defined.	ir	f	2022-12-06 20:16:35.775817	0	\N	\N
312	29	name	\N	Model Description	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
313	29	rec_name	\N	ir.msg_record_name	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
314	29	write_date	\N	ir.msg_edited_at	timestamp		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
315	29	write_uid	res.user	ir.msg_edited_by	many2one		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
316	30	access	\N	Access	boolean	If checked, the access right on the model of the field is also tested against the relation of the field.	ir	f	2022-12-06 20:16:35.775817	0	\N	\N
317	30	create_date	\N	ir.msg_created_at	timestamp		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
318	30	create_uid	res.user	ir.msg_created_by	many2one		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
319	30	field_description	\N	Field Description	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
321	30	id	\N	ir.msg_ID	integer		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
322	30	model	ir.model	Model	many2one		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
323	30	module	\N	Module	char	Module in which this field is defined.	ir	f	2022-12-06 20:16:35.775817	0	\N	\N
324	30	name	\N	Name	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
325	30	rec_name	\N	ir.msg_record_name	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
326	30	relation	\N	Model Relation	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
327	30	ttype	\N	Field Type	char		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
328	30	write_date	\N	ir.msg_edited_at	timestamp		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
329	30	write_uid	res.user	ir.msg_edited_by	many2one		ir	f	2022-12-06 20:16:35.775817	0	\N	\N
330	31	active	\N	ir.msg_active	boolean	ir.msg_active_help	ir	f	\N	\N	\N	\N
331	31	create_date	\N	ir.msg_created_at	timestamp		ir	f	\N	\N	\N	\N
332	31	create_uid	res.user	ir.msg_created_by	many2one		ir	f	\N	\N	\N	\N
333	31	description	\N	Description	text		ir	f	\N	\N	\N	\N
334	31	group	res.group	Group	many2one		ir	f	\N	\N	\N	\N
335	31	id	\N	ir.msg_ID	integer		ir	f	\N	\N	\N	\N
336	31	model	ir.model	Model	many2one		ir	f	\N	\N	\N	\N
337	31	perm_create	\N	Create Access	boolean		ir	f	\N	\N	\N	\N
338	31	perm_delete	\N	Delete Access	boolean		ir	f	\N	\N	\N	\N
339	31	perm_read	\N	Read Access	boolean		ir	f	\N	\N	\N	\N
340	31	perm_write	\N	Write Access	boolean		ir	f	\N	\N	\N	\N
341	31	rec_name	\N	ir.msg_record_name	char		ir	f	\N	\N	\N	\N
342	31	write_date	\N	ir.msg_edited_at	timestamp		ir	f	\N	\N	\N	\N
343	31	write_uid	res.user	ir.msg_edited_by	many2one		ir	f	\N	\N	\N	\N
344	32	active	\N	ir.msg_active	boolean	ir.msg_active_help	ir	f	\N	\N	\N	\N
345	32	create_date	\N	ir.msg_created_at	timestamp		ir	f	\N	\N	\N	\N
346	32	create_uid	res.user	ir.msg_created_by	many2one		ir	f	\N	\N	\N	\N
347	32	description	\N	Description	text		ir	f	\N	\N	\N	\N
348	32	field	ir.model.field	Field	many2one		ir	f	\N	\N	\N	\N
349	32	group	res.group	Group	many2one		ir	f	\N	\N	\N	\N
350	32	id	\N	ir.msg_ID	integer		ir	f	\N	\N	\N	\N
351	32	perm_create	\N	Create Access	boolean		ir	f	\N	\N	\N	\N
352	32	perm_delete	\N	Delete Access	boolean		ir	f	\N	\N	\N	\N
353	32	perm_read	\N	Read Access	boolean		ir	f	\N	\N	\N	\N
354	32	perm_write	\N	Write Access	boolean		ir	f	\N	\N	\N	\N
355	32	rec_name	\N	ir.msg_record_name	char		ir	f	\N	\N	\N	\N
356	32	write_date	\N	ir.msg_edited_at	timestamp		ir	f	\N	\N	\N	\N
357	32	write_uid	res.user	ir.msg_edited_by	many2one		ir	f	\N	\N	\N	\N
358	33	clicks	ir.model.button.click	Clicks	one2many		ir	f	\N	\N	\N	\N
359	33	confirm	\N	Confirm	text	Text to ask user confirmation when clicking the button.	ir	f	\N	\N	\N	\N
360	33	create_date	\N	ir.msg_created_at	timestamp		ir	f	\N	\N	\N	\N
361	33	create_uid	res.user	ir.msg_created_by	many2one		ir	f	\N	\N	\N	\N
362	33	groups	ir.model.button-res.group	Groups	many2many		ir	f	\N	\N	\N	\N
363	33	help	\N	Help	text		ir	f	\N	\N	\N	\N
364	33	id	\N	ir.msg_ID	integer		ir	f	\N	\N	\N	\N
365	33	model	ir.model	Model	many2one		ir	f	\N	\N	\N	\N
366	33	name	\N	Name	char		ir	f	\N	\N	\N	\N
367	33	rec_name	\N	ir.msg_record_name	char		ir	f	\N	\N	\N	\N
368	33	reset	ir.model.button-button.reset	Reset	many2many		ir	f	\N	\N	\N	\N
369	33	reset_by	ir.model.button-button.reset	Reset by	many2many	Button that should reset the rules.	ir	f	\N	\N	\N	\N
370	33	rules	ir.model.button.rule	Rules	one2many		ir	f	\N	\N	\N	\N
371	33	string	\N	Label	char		ir	f	\N	\N	\N	\N
372	33	write_date	\N	ir.msg_edited_at	timestamp		ir	f	\N	\N	\N	\N
373	33	write_uid	res.user	ir.msg_edited_by	many2one		ir	f	\N	\N	\N	\N
374	34	button	ir.model.button	Button	many2one		ir	f	\N	\N	\N	\N
375	34	condition	\N	Condition	char	A PYSON statement evaluated with the record represented by "self"\nIt activate the rule if true.	ir	f	\N	\N	\N	\N
376	34	create_date	\N	ir.msg_created_at	timestamp		ir	f	\N	\N	\N	\N
377	34	create_uid	res.user	ir.msg_created_by	many2one		ir	f	\N	\N	\N	\N
378	34	description	\N	Description	char		ir	f	\N	\N	\N	\N
379	34	id	\N	ir.msg_ID	integer		ir	f	\N	\N	\N	\N
380	34	number_user	\N	Number of User	integer		ir	f	\N	\N	\N	\N
381	34	rec_name	\N	ir.msg_record_name	char		ir	f	\N	\N	\N	\N
382	34	write_date	\N	ir.msg_edited_at	timestamp		ir	f	\N	\N	\N	\N
383	34	write_uid	res.user	ir.msg_edited_by	many2one		ir	f	\N	\N	\N	\N
384	35	active	\N	ir.msg_active	boolean	ir.msg_active_help	ir	f	\N	\N	\N	\N
385	35	button	ir.model.button	Button	many2one		ir	f	\N	\N	\N	\N
386	35	create_date	\N	ir.msg_created_at	timestamp		ir	f	\N	\N	\N	\N
387	35	create_uid	res.user	ir.msg_created_by	many2one		ir	f	\N	\N	\N	\N
388	35	id	\N	ir.msg_ID	integer		ir	f	\N	\N	\N	\N
389	35	rec_name	\N	ir.msg_record_name	char		ir	f	\N	\N	\N	\N
390	35	record_id	\N	Record ID	integer		ir	f	\N	\N	\N	\N
391	35	write_date	\N	ir.msg_edited_at	timestamp		ir	f	\N	\N	\N	\N
392	35	write_uid	res.user	ir.msg_edited_by	many2one		ir	f	\N	\N	\N	\N
393	36	button	ir.model.button	Button	many2one		ir	f	\N	\N	\N	\N
394	36	button_ruled	ir.model.button	Button Ruled	many2one		ir	f	\N	\N	\N	\N
395	36	create_date	\N	ir.msg_created_at	timestamp		ir	f	\N	\N	\N	\N
396	36	create_uid	res.user	ir.msg_created_by	many2one		ir	f	\N	\N	\N	\N
397	36	id	\N	ir.msg_ID	integer		ir	f	\N	\N	\N	\N
398	36	rec_name	\N	ir.msg_record_name	char		ir	f	\N	\N	\N	\N
399	36	write_date	\N	ir.msg_edited_at	timestamp		ir	f	\N	\N	\N	\N
400	36	write_uid	res.user	ir.msg_edited_by	many2one		ir	f	\N	\N	\N	\N
401	37	create_date	\N	ir.msg_created_at	timestamp		ir	f	\N	\N	\N	\N
402	37	create_uid	res.user	ir.msg_created_by	many2one		ir	f	\N	\N	\N	\N
403	37	db_id	\N	Resource ID	integer	The id of the record in the database.	ir	f	\N	\N	\N	\N
404	37	fs_id	\N	Identifier on File System	char	The id of the record as known on the file system.	ir	f	\N	\N	\N	\N
405	37	fs_values	\N	Values on File System	text		ir	f	\N	\N	\N	\N
406	37	id	\N	ir.msg_ID	integer		ir	f	\N	\N	\N	\N
407	37	model	\N	Model	char		ir	f	\N	\N	\N	\N
408	37	module	\N	Module	char		ir	f	\N	\N	\N	\N
409	37	noupdate	\N	No Update	boolean		ir	f	\N	\N	\N	\N
410	37	out_of_sync	\N	Out of Sync	boolean		ir	f	\N	\N	\N	\N
411	37	rec_name	\N	ir.msg_record_name	char		ir	f	\N	\N	\N	\N
412	37	values	\N	Values	text		ir	f	\N	\N	\N	\N
413	37	write_date	\N	ir.msg_edited_at	timestamp		ir	f	\N	\N	\N	\N
414	37	write_uid	res.user	ir.msg_edited_by	many2one		ir	f	\N	\N	\N	\N
415	38	filter	\N	Filter	text	Entering a Python Regular Expression will exclude matching models from the graph.	ir	f	\N	\N	\N	\N
416	38	id	\N	ir.msg_ID	integer		ir	f	\N	\N	\N	\N
417	38	level	\N	Level	integer		ir	f	\N	\N	\N	\N
418	39	copy_to_resources	\N	Copy to Resources	multiselection		ir	f	\N	\N	\N	\N
419	39	copy_to_resources_visible	\N	Copy to Resources Visible	boolean		ir	f	\N	\N	\N	\N
420	39	create_date	\N	ir.msg_created_at	timestamp		ir	f	\N	\N	\N	\N
421	39	create_uid	res.user	ir.msg_created_by	many2one		ir	f	\N	\N	\N	\N
422	39	data	\N	Data	binary		ir	f	\N	\N	\N	\N
423	39	data_size	\N	Data size	integer		ir	f	\N	\N	\N	\N
424	39	description	\N	Description	text		ir	f	\N	\N	\N	\N
425	39	file_id	\N	File ID	char		ir	f	\N	\N	\N	\N
426	39	id	\N	ir.msg_ID	integer		ir	f	\N	\N	\N	\N
427	39	last_modification	\N	Last Modification	datetime		ir	f	\N	\N	\N	\N
428	39	last_user	\N	Last User	char		ir	f	\N	\N	\N	\N
429	39	link	\N	Link	char		ir	f	\N	\N	\N	\N
430	39	name	\N	Name	char		ir	f	\N	\N	\N	\N
431	39	rec_name	\N	ir.msg_record_name	char		ir	f	\N	\N	\N	\N
432	39	resource	\N	Resource	reference		ir	f	\N	\N	\N	\N
433	39	summary	\N	Summary	char		ir	f	\N	\N	\N	\N
434	39	type	\N	Type	selection		ir	f	\N	\N	\N	\N
435	39	write_date	\N	ir.msg_edited_at	timestamp		ir	f	\N	\N	\N	\N
436	39	write_uid	res.user	ir.msg_edited_by	many2one		ir	f	\N	\N	\N	\N
437	40	copy_to_resources	\N	Copy to Resources	multiselection		ir	f	\N	\N	\N	\N
438	40	copy_to_resources_visible	\N	Copy to Resources Visible	boolean		ir	f	\N	\N	\N	\N
439	40	create_date	\N	ir.msg_created_at	timestamp		ir	f	\N	\N	\N	\N
440	40	create_uid	res.user	ir.msg_created_by	many2one		ir	f	\N	\N	\N	\N
441	40	id	\N	ir.msg_ID	integer		ir	f	\N	\N	\N	\N
442	40	last_modification	\N	Last Modification	datetime		ir	f	\N	\N	\N	\N
443	40	last_user	\N	Last User	char		ir	f	\N	\N	\N	\N
444	40	message	\N	Message	text		ir	f	\N	\N	\N	\N
445	40	message_wrapped	\N	Message	text		ir	f	\N	\N	\N	\N
446	40	rec_name	\N	ir.msg_record_name	char		ir	f	\N	\N	\N	\N
447	40	resource	\N	Resource	reference		ir	f	\N	\N	\N	\N
448	40	unread	\N	Unread	boolean		ir	f	\N	\N	\N	\N
449	40	write_date	\N	ir.msg_edited_at	timestamp		ir	f	\N	\N	\N	\N
450	40	write_uid	res.user	ir.msg_edited_by	many2one		ir	f	\N	\N	\N	\N
451	41	create_date	\N	ir.msg_created_at	timestamp		ir	f	\N	\N	\N	\N
452	41	create_uid	res.user	ir.msg_created_by	many2one		ir	f	\N	\N	\N	\N
453	41	id	\N	ir.msg_ID	integer		ir	f	\N	\N	\N	\N
454	41	note	ir.note	Note	many2one		ir	f	\N	\N	\N	\N
455	41	rec_name	\N	ir.msg_record_name	char		ir	f	\N	\N	\N	\N
456	41	user	res.user	User	many2one		ir	f	\N	\N	\N	\N
457	41	write_date	\N	ir.msg_edited_at	timestamp		ir	f	\N	\N	\N	\N
458	41	write_uid	res.user	ir.msg_edited_by	many2one		ir	f	\N	\N	\N	\N
459	42	cache	ir.avatar.cache	Cache	one2many		ir	f	\N	\N	\N	\N
460	42	copy_to_resources	\N	Copy to Resources	multiselection		ir	f	\N	\N	\N	\N
461	42	copy_to_resources_visible	\N	Copy to Resources Visible	boolean		ir	f	\N	\N	\N	\N
462	42	create_date	\N	ir.msg_created_at	timestamp		ir	f	\N	\N	\N	\N
463	42	create_uid	res.user	ir.msg_created_by	many2one		ir	f	\N	\N	\N	\N
464	42	id	\N	ir.msg_ID	integer		ir	f	\N	\N	\N	\N
465	42	image	\N	Image	binary		ir	f	\N	\N	\N	\N
466	42	image_id	\N	Image ID	char		ir	f	\N	\N	\N	\N
467	42	last_modification	\N	Last Modification	datetime		ir	f	\N	\N	\N	\N
468	42	last_user	\N	Last User	char		ir	f	\N	\N	\N	\N
469	42	rec_name	\N	ir.msg_record_name	char		ir	f	\N	\N	\N	\N
470	42	resource	\N	Resource	reference		ir	f	\N	\N	\N	\N
471	42	uuid	\N	UUID	char		ir	f	\N	\N	\N	\N
472	42	write_date	\N	ir.msg_edited_at	timestamp		ir	f	\N	\N	\N	\N
473	42	write_uid	res.user	ir.msg_edited_by	many2one		ir	f	\N	\N	\N	\N
474	43	avatar	ir.avatar	Avatar	many2one		ir	f	\N	\N	\N	\N
475	43	create_date	\N	ir.msg_created_at	timestamp		ir	f	\N	\N	\N	\N
476	43	create_uid	res.user	ir.msg_created_by	many2one		ir	f	\N	\N	\N	\N
477	43	id	\N	ir.msg_ID	integer		ir	f	\N	\N	\N	\N
478	43	image	\N	Image	binary		ir	f	\N	\N	\N	\N
479	43	image_id	\N	Image ID	char		ir	f	\N	\N	\N	\N
480	43	rec_name	\N	ir.msg_record_name	char		ir	f	\N	\N	\N	\N
481	43	size	\N	Size	integer		ir	f	\N	\N	\N	\N
482	43	write_date	\N	ir.msg_edited_at	timestamp		ir	f	\N	\N	\N	\N
483	43	write_uid	res.user	ir.msg_edited_by	many2one		ir	f	\N	\N	\N	\N
484	44	active	\N	ir.msg_active	boolean	ir.msg_active_help	ir	f	\N	\N	\N	\N
485	44	create_date	\N	ir.msg_created_at	timestamp		ir	f	\N	\N	\N	\N
486	44	create_uid	res.user	ir.msg_created_by	many2one		ir	f	\N	\N	\N	\N
487	44	day	\N	Day	integer		ir	f	\N	\N	\N	\N
488	44	hour	\N	Hour	integer		ir	f	\N	\N	\N	\N
489	44	id	\N	ir.msg_ID	integer		ir	f	\N	\N	\N	\N
490	44	interval_number	\N	Interval Number	integer		ir	f	\N	\N	\N	\N
491	44	interval_type	\N	Interval Type	selection		ir	f	\N	\N	\N	\N
492	44	method	\N	Method	selection		ir	f	\N	\N	\N	\N
493	44	minute	\N	Minute	integer		ir	f	\N	\N	\N	\N
494	44	next_call	\N	Next Call	datetime		ir	f	\N	\N	\N	\N
495	44	rec_name	\N	ir.msg_record_name	char		ir	f	\N	\N	\N	\N
496	44	weekday	ir.calendar.day	Day of Week	many2one		ir	f	\N	\N	\N	\N
497	44	write_date	\N	ir.msg_edited_at	timestamp		ir	f	\N	\N	\N	\N
498	44	write_uid	res.user	ir.msg_edited_by	many2one		ir	f	\N	\N	\N	\N
499	45	active	\N	ir.msg_active	boolean	ir.msg_active_help	ir	f	\N	\N	\N	\N
500	45	am	\N	AM	char		ir	f	\N	\N	\N	\N
501	45	code	\N	Code	char	RFC 4646 tag: http://tools.ietf.org/html/rfc4646	ir	f	\N	\N	\N	\N
502	45	create_date	\N	ir.msg_created_at	timestamp		ir	f	\N	\N	\N	\N
503	45	create_uid	res.user	ir.msg_created_by	many2one		ir	f	\N	\N	\N	\N
504	45	date	\N	Date	char		ir	f	\N	\N	\N	\N
505	45	decimal_point	\N	Decimal Separator	char		ir	f	\N	\N	\N	\N
506	45	direction	\N	Direction	selection		ir	f	\N	\N	\N	\N
507	45	grouping	\N	Grouping	char		ir	f	\N	\N	\N	\N
508	45	id	\N	ir.msg_ID	integer		ir	f	\N	\N	\N	\N
509	45	mon_decimal_point	\N	Decimal Separator	char		ir	f	\N	\N	\N	\N
510	45	mon_grouping	\N	Grouping	char		ir	f	\N	\N	\N	\N
511	45	mon_thousands_sep	\N	Thousands Separator	char		ir	f	\N	\N	\N	\N
512	45	n_cs_precedes	\N	Negative Currency Symbol Precedes	boolean		ir	f	\N	\N	\N	\N
513	45	n_sep_by_space	\N	Negative Separate by Space	boolean		ir	f	\N	\N	\N	\N
514	45	n_sign_posn	\N	Negative Sign Position	integer		ir	f	\N	\N	\N	\N
515	45	name	\N	Name	char		ir	f	\N	\N	\N	\N
516	45	negative_sign	\N	Negative Sign	char		ir	f	\N	\N	\N	\N
517	45	p_cs_precedes	\N	Positive Currency Symbol Precedes	boolean		ir	f	\N	\N	\N	\N
518	45	p_sep_by_space	\N	Positive Separate by Space	boolean		ir	f	\N	\N	\N	\N
519	45	p_sign_posn	\N	Positive Sign Position	integer		ir	f	\N	\N	\N	\N
520	45	parent	\N	Parent Code	char	Code of the exceptional parent	ir	f	\N	\N	\N	\N
521	45	pg_text_search	\N	PostgreSQL Text Search Configuration	char		ir	f	\N	\N	\N	\N
522	45	pm	\N	PM	char		ir	f	\N	\N	\N	\N
523	45	positive_sign	\N	Positive Sign	char		ir	f	\N	\N	\N	\N
524	45	rec_name	\N	ir.msg_record_name	char		ir	f	\N	\N	\N	\N
525	45	thousands_sep	\N	Thousands Separator	char		ir	f	\N	\N	\N	\N
526	45	translatable	\N	Translatable	boolean		ir	f	\N	\N	\N	\N
527	45	write_date	\N	ir.msg_edited_at	timestamp		ir	f	\N	\N	\N	\N
528	45	write_uid	res.user	ir.msg_edited_by	many2one		ir	f	\N	\N	\N	\N
529	46	id	\N	ir.msg_ID	integer		ir	f	\N	\N	\N	\N
530	46	languages	ir.lang	Languages	many2many		ir	f	\N	\N	\N	\N
531	47	create_date	\N	ir.msg_created_at	timestamp		ir	f	\N	\N	\N	\N
532	47	create_uid	res.user	ir.msg_created_by	many2one		ir	f	\N	\N	\N	\N
533	47	export_fields	ir.export.line	Fields	one2many		ir	f	\N	\N	\N	\N
534	47	id	\N	ir.msg_ID	integer		ir	f	\N	\N	\N	\N
535	47	name	\N	Name	char		ir	f	\N	\N	\N	\N
536	47	rec_name	\N	ir.msg_record_name	char		ir	f	\N	\N	\N	\N
537	47	resource	\N	Resource	char		ir	f	\N	\N	\N	\N
538	47	write_date	\N	ir.msg_edited_at	timestamp		ir	f	\N	\N	\N	\N
539	47	write_uid	res.user	ir.msg_edited_by	many2one		ir	f	\N	\N	\N	\N
540	48	create_date	\N	ir.msg_created_at	timestamp		ir	f	\N	\N	\N	\N
541	48	create_uid	res.user	ir.msg_created_by	many2one		ir	f	\N	\N	\N	\N
542	48	export	ir.export	Export	many2one		ir	f	\N	\N	\N	\N
543	48	id	\N	ir.msg_ID	integer		ir	f	\N	\N	\N	\N
544	48	name	\N	Name	char		ir	f	\N	\N	\N	\N
545	48	rec_name	\N	ir.msg_record_name	char		ir	f	\N	\N	\N	\N
546	48	write_date	\N	ir.msg_edited_at	timestamp		ir	f	\N	\N	\N	\N
547	48	write_uid	res.user	ir.msg_edited_by	many2one		ir	f	\N	\N	\N	\N
548	49	create_date	\N	ir.msg_created_at	timestamp		ir	f	\N	\N	\N	\N
549	49	create_uid	res.user	ir.msg_created_by	many2one		ir	f	\N	\N	\N	\N
550	49	default_p	\N	Default	boolean	Add this rule to all users by default.	ir	f	\N	\N	\N	\N
551	49	global_p	\N	Global	boolean	Make the rule global \nso every users must follow this rule.	ir	f	\N	\N	\N	\N
552	49	groups	ir.rule.group-res.group	Groups	many2many		ir	f	\N	\N	\N	\N
553	49	id	\N	ir.msg_ID	integer		ir	f	\N	\N	\N	\N
554	49	model	ir.model	Model	many2one		ir	f	\N	\N	\N	\N
555	49	name	\N	Name	char	Displayed to users when access error is raised for this rule.	ir	f	\N	\N	\N	\N
556	49	perm_create	\N	Create Access	boolean		ir	f	\N	\N	\N	\N
557	49	perm_delete	\N	Delete Access	boolean		ir	f	\N	\N	\N	\N
558	49	perm_read	\N	Read Access	boolean		ir	f	\N	\N	\N	\N
559	49	perm_write	\N	Write Access	boolean		ir	f	\N	\N	\N	\N
560	49	rec_name	\N	ir.msg_record_name	char		ir	f	\N	\N	\N	\N
561	49	rules	ir.rule	Tests	one2many	The rule is satisfied if at least one test is True.	ir	f	\N	\N	\N	\N
562	49	write_date	\N	ir.msg_edited_at	timestamp		ir	f	\N	\N	\N	\N
563	49	write_uid	res.user	ir.msg_edited_by	many2one		ir	f	\N	\N	\N	\N
564	50	create_date	\N	ir.msg_created_at	timestamp		ir	f	\N	\N	\N	\N
565	50	create_uid	res.user	ir.msg_created_by	many2one		ir	f	\N	\N	\N	\N
566	50	domain	\N	Domain	char	Domain is evaluated with a PYSON context containing:\n- "user" as the current user	ir	f	\N	\N	\N	\N
567	50	id	\N	ir.msg_ID	integer		ir	f	\N	\N	\N	\N
568	50	rec_name	\N	ir.msg_record_name	char		ir	f	\N	\N	\N	\N
569	50	rule_group	ir.rule.group	Group	many2one		ir	f	\N	\N	\N	\N
570	50	write_date	\N	ir.msg_edited_at	timestamp		ir	f	\N	\N	\N	\N
571	50	write_uid	res.user	ir.msg_edited_by	many2one		ir	f	\N	\N	\N	\N
572	51	childs	ir.module	Childs	one2many		ir	f	\N	\N	\N	\N
573	51	create_date	\N	ir.msg_created_at	timestamp		ir	f	\N	\N	\N	\N
574	51	create_uid	res.user	ir.msg_created_by	many2one		ir	f	\N	\N	\N	\N
575	51	dependencies	ir.module.dependency	Dependencies	one2many		ir	f	\N	\N	\N	\N
576	51	id	\N	ir.msg_ID	integer		ir	f	\N	\N	\N	\N
577	51	name	\N	Name	char		ir	f	\N	\N	\N	\N
578	51	parents	ir.module	Parents	one2many		ir	f	\N	\N	\N	\N
579	51	rec_name	\N	ir.msg_record_name	char		ir	f	\N	\N	\N	\N
580	51	state	\N	State	selection		ir	f	\N	\N	\N	\N
581	51	version	\N	Version	char		ir	f	\N	\N	\N	\N
582	51	write_date	\N	ir.msg_edited_at	timestamp		ir	f	\N	\N	\N	\N
583	51	write_uid	res.user	ir.msg_edited_by	many2one		ir	f	\N	\N	\N	\N
584	52	create_date	\N	ir.msg_created_at	timestamp		ir	f	\N	\N	\N	\N
585	52	create_uid	res.user	ir.msg_created_by	many2one		ir	f	\N	\N	\N	\N
586	52	id	\N	ir.msg_ID	integer		ir	f	\N	\N	\N	\N
587	52	module	ir.module	Module	many2one		ir	f	\N	\N	\N	\N
588	52	name	\N	Name	char		ir	f	\N	\N	\N	\N
589	52	rec_name	\N	ir.msg_record_name	char		ir	f	\N	\N	\N	\N
590	52	state	\N	State	selection		ir	f	\N	\N	\N	\N
591	52	write_date	\N	ir.msg_edited_at	timestamp		ir	f	\N	\N	\N	\N
592	52	write_uid	res.user	ir.msg_edited_by	many2one		ir	f	\N	\N	\N	\N
593	53	action	ir.action	Action	many2one		ir	f	\N	\N	\N	\N
594	53	create_date	\N	ir.msg_created_at	timestamp		ir	f	\N	\N	\N	\N
595	53	create_uid	res.user	ir.msg_created_by	many2one		ir	f	\N	\N	\N	\N
596	53	id	\N	ir.msg_ID	integer		ir	f	\N	\N	\N	\N
597	53	rec_name	\N	ir.msg_record_name	char		ir	f	\N	\N	\N	\N
598	53	sequence	\N	ir.msg_sequence	integer		ir	f	\N	\N	\N	\N
599	53	state	\N	State	selection		ir	f	\N	\N	\N	\N
600	53	write_date	\N	ir.msg_edited_at	timestamp		ir	f	\N	\N	\N	\N
601	53	write_uid	res.user	ir.msg_edited_by	many2one		ir	f	\N	\N	\N	\N
602	54	id	\N	ir.msg_ID	integer		ir	f	\N	\N	\N	\N
603	55	id	\N	ir.msg_ID	integer		ir	f	\N	\N	\N	\N
604	55	percentage	\N	Percentage	float		ir	f	\N	\N	\N	\N
605	56	id	\N	ir.msg_ID	integer		ir	f	\N	\N	\N	\N
606	57	id	\N	ir.msg_ID	integer		ir	f	\N	\N	\N	\N
607	57	module_info	\N	Modules to update	text		ir	f	\N	\N	\N	\N
608	58	id	\N	ir.msg_ID	integer		ir	f	\N	\N	\N	\N
609	59	create_date	\N	ir.msg_created_at	timestamp		ir	f	\N	\N	\N	\N
610	59	create_uid	res.user	ir.msg_created_by	many2one		ir	f	\N	\N	\N	\N
611	59	id	\N	ir.msg_ID	integer		ir	f	\N	\N	\N	\N
612	59	name	\N	Name	char		ir	f	\N	\N	\N	\N
613	59	rec_name	\N	ir.msg_record_name	char		ir	f	\N	\N	\N	\N
614	59	timestamp	\N	Timestamp	timestamp		ir	f	\N	\N	\N	\N
615	59	write_date	\N	ir.msg_edited_at	timestamp		ir	f	\N	\N	\N	\N
616	59	write_uid	res.user	ir.msg_edited_by	many2one		ir	f	\N	\N	\N	\N
617	60	id	\N	ir.msg_ID	integer		ir	f	\N	\N	\N	\N
618	61	action	\N	Action	selection		ir	f	\N	\N	\N	\N
619	61	active	\N	ir.msg_active	boolean	ir.msg_active_help	ir	f	\N	\N	\N	\N
620	61	condition	\N	Condition	char	A PYSON statement evaluated with record represented by "self"\nIt triggers the action if true.	ir	f	\N	\N	\N	\N
621	61	create_date	\N	ir.msg_created_at	timestamp		ir	f	\N	\N	\N	\N
622	61	create_uid	res.user	ir.msg_created_by	many2one		ir	f	\N	\N	\N	\N
623	61	id	\N	ir.msg_ID	integer		ir	f	\N	\N	\N	\N
624	61	limit_number	\N	Limit Number	integer	Limit the number of call to "Action Function" by records.\n0 for no limit.	ir	f	\N	\N	\N	\N
625	61	minimum_time_delay	\N	Minimum Delay	timedelta	Set a minimum time delay between call to "Action Function" for the same record.\nempty for no delay.	ir	f	\N	\N	\N	\N
626	61	model	ir.model	Model	many2one		ir	f	\N	\N	\N	\N
627	61	name	\N	Name	char		ir	f	\N	\N	\N	\N
628	61	on_create	\N	On Create	boolean		ir	f	\N	\N	\N	\N
629	61	on_delete	\N	On Delete	boolean		ir	f	\N	\N	\N	\N
630	61	on_time	\N	On Time	boolean		ir	f	\N	\N	\N	\N
631	61	on_write	\N	On Write	boolean		ir	f	\N	\N	\N	\N
632	61	rec_name	\N	ir.msg_record_name	char		ir	f	\N	\N	\N	\N
633	61	write_date	\N	ir.msg_edited_at	timestamp		ir	f	\N	\N	\N	\N
634	61	write_uid	res.user	ir.msg_edited_by	many2one		ir	f	\N	\N	\N	\N
635	62	create_date	\N	ir.msg_created_at	timestamp		ir	f	\N	\N	\N	\N
636	62	create_uid	res.user	ir.msg_created_by	many2one		ir	f	\N	\N	\N	\N
637	62	id	\N	ir.msg_ID	integer		ir	f	\N	\N	\N	\N
638	62	rec_name	\N	ir.msg_record_name	char		ir	f	\N	\N	\N	\N
639	62	record_id	\N	Record ID	integer		ir	f	\N	\N	\N	\N
640	62	trigger	ir.trigger	Trigger	many2one		ir	f	\N	\N	\N	\N
641	62	write_date	\N	ir.msg_edited_at	timestamp		ir	f	\N	\N	\N	\N
642	62	write_uid	res.user	ir.msg_edited_by	many2one		ir	f	\N	\N	\N	\N
643	63	create_date	\N	ir.msg_created_at	timestamp		ir	f	\N	\N	\N	\N
644	63	create_uid	res.user	ir.msg_created_by	many2one		ir	f	\N	\N	\N	\N
645	63	id	\N	ir.msg_ID	integer		ir	f	\N	\N	\N	\N
646	63	key	\N	Key	char		ir	f	\N	\N	\N	\N
647	63	rec_name	\N	ir.msg_record_name	char		ir	f	\N	\N	\N	\N
648	63	write_date	\N	ir.msg_edited_at	timestamp		ir	f	\N	\N	\N	\N
649	63	write_uid	res.user	ir.msg_edited_by	many2one		ir	f	\N	\N	\N	\N
650	64	create_date	\N	ir.msg_created_at	timestamp		ir	f	\N	\N	\N	\N
651	64	create_uid	res.user	ir.msg_created_by	many2one		ir	f	\N	\N	\N	\N
652	64	data	\N	Data	text		ir	f	\N	\N	\N	\N
653	64	id	\N	ir.msg_ID	integer		ir	f	\N	\N	\N	\N
654	64	rec_name	\N	ir.msg_record_name	char		ir	f	\N	\N	\N	\N
655	64	write_date	\N	ir.msg_edited_at	timestamp		ir	f	\N	\N	\N	\N
656	64	write_uid	res.user	ir.msg_edited_by	many2one		ir	f	\N	\N	\N	\N
657	65	create_date	\N	ir.msg_created_at	timestamp		ir	f	\N	\N	\N	\N
658	65	create_uid	res.user	ir.msg_created_by	many2one		ir	f	\N	\N	\N	\N
659	65	data	\N	Data	dict		ir	f	\N	\N	\N	\N
660	65	dequeued_at	\N	Dequeued at	timestamp		ir	f	\N	\N	\N	\N
661	65	enqueued_at	\N	Enqueued at	timestamp		ir	f	\N	\N	\N	\N
662	65	expected_at	\N	Expected at	timestamp	When the task should be done.	ir	f	\N	\N	\N	\N
663	65	finished_at	\N	Finished at	timestamp		ir	f	\N	\N	\N	\N
664	65	id	\N	ir.msg_ID	integer		ir	f	\N	\N	\N	\N
665	65	name	\N	Name	char		ir	f	\N	\N	\N	\N
666	65	rec_name	\N	ir.msg_record_name	char		ir	f	\N	\N	\N	\N
667	65	scheduled_at	\N	Scheduled at	timestamp	When the task can start.	ir	f	\N	\N	\N	\N
668	65	write_date	\N	ir.msg_edited_at	timestamp		ir	f	\N	\N	\N	\N
669	65	write_uid	res.user	ir.msg_edited_by	many2one		ir	f	\N	\N	\N	\N
670	66	abbreviation	\N	Abbreviation	char		ir	f	\N	\N	\N	\N
671	66	create_date	\N	ir.msg_created_at	timestamp		ir	f	\N	\N	\N	\N
672	66	create_uid	res.user	ir.msg_created_by	many2one		ir	f	\N	\N	\N	\N
673	66	id	\N	ir.msg_ID	integer		ir	f	\N	\N	\N	\N
674	66	index	\N	Index	integer		ir	f	\N	\N	\N	\N
675	66	name	\N	Name	char		ir	f	\N	\N	\N	\N
676	66	rec_name	\N	ir.msg_record_name	char		ir	f	\N	\N	\N	\N
677	66	write_date	\N	ir.msg_edited_at	timestamp		ir	f	\N	\N	\N	\N
678	66	write_uid	res.user	ir.msg_edited_by	many2one		ir	f	\N	\N	\N	\N
679	67	abbreviation	\N	Abbreviation	char		ir	f	\N	\N	\N	\N
680	67	create_date	\N	ir.msg_created_at	timestamp		ir	f	\N	\N	\N	\N
681	67	create_uid	res.user	ir.msg_created_by	many2one		ir	f	\N	\N	\N	\N
682	67	id	\N	ir.msg_ID	integer		ir	f	\N	\N	\N	\N
683	67	index	\N	Index	integer		ir	f	\N	\N	\N	\N
684	67	name	\N	Name	char		ir	f	\N	\N	\N	\N
685	67	rec_name	\N	ir.msg_record_name	char		ir	f	\N	\N	\N	\N
686	67	write_date	\N	ir.msg_edited_at	timestamp		ir	f	\N	\N	\N	\N
687	67	write_uid	res.user	ir.msg_edited_by	many2one		ir	f	\N	\N	\N	\N
688	68	create_date	\N	ir.msg_created_at	timestamp		ir	f	\N	\N	\N	\N
689	68	create_uid	res.user	ir.msg_created_by	many2one		ir	f	\N	\N	\N	\N
690	68	id	\N	ir.msg_ID	integer		ir	f	\N	\N	\N	\N
691	68	rec_name	\N	ir.msg_record_name	char		ir	f	\N	\N	\N	\N
692	68	text	\N	Text	text		ir	f	\N	\N	\N	\N
693	68	write_date	\N	ir.msg_edited_at	timestamp		ir	f	\N	\N	\N	\N
694	68	write_uid	res.user	ir.msg_edited_by	many2one		ir	f	\N	\N	\N	\N
695	69	addresses	ir.email.address	Addresses	one2many		ir	f	\N	\N	\N	\N
696	69	at	\N	At	datetime		ir	f	\N	\N	\N	\N
697	69	body	\N	Body	text		ir	f	\N	\N	\N	\N
698	69	create_date	\N	ir.msg_created_at	timestamp		ir	f	\N	\N	\N	\N
699	69	create_uid	res.user	ir.msg_created_by	many2one		ir	f	\N	\N	\N	\N
700	69	id	\N	ir.msg_ID	integer		ir	f	\N	\N	\N	\N
701	69	rec_name	\N	ir.msg_record_name	char		ir	f	\N	\N	\N	\N
702	69	recipients	\N	Recipients	char		ir	f	\N	\N	\N	\N
703	69	recipients_hidden	\N	Hidden Recipients	char		ir	f	\N	\N	\N	\N
704	69	recipients_secondary	\N	Secondary Recipients	char		ir	f	\N	\N	\N	\N
705	69	resource	\N	Resource	reference		ir	f	\N	\N	\N	\N
706	69	subject	\N	Subject	char		ir	f	\N	\N	\N	\N
707	69	user	\N	User	char		ir	f	\N	\N	\N	\N
708	69	write_date	\N	ir.msg_edited_at	timestamp		ir	f	\N	\N	\N	\N
709	69	write_uid	res.user	ir.msg_edited_by	many2one		ir	f	\N	\N	\N	\N
710	70	address	\N	Address	char		ir	f	\N	\N	\N	\N
711	70	create_date	\N	ir.msg_created_at	timestamp		ir	f	\N	\N	\N	\N
712	70	create_uid	res.user	ir.msg_created_by	many2one		ir	f	\N	\N	\N	\N
713	70	email	ir.email	E-mail	many2one		ir	f	\N	\N	\N	\N
714	70	id	\N	ir.msg_ID	integer		ir	f	\N	\N	\N	\N
715	70	rec_name	\N	ir.msg_record_name	char		ir	f	\N	\N	\N	\N
716	70	write_date	\N	ir.msg_edited_at	timestamp		ir	f	\N	\N	\N	\N
717	70	write_uid	res.user	ir.msg_edited_by	many2one		ir	f	\N	\N	\N	\N
718	71	body	\N	Body	text		ir	f	\N	\N	\N	\N
719	71	create_date	\N	ir.msg_created_at	timestamp		ir	f	\N	\N	\N	\N
720	71	create_uid	res.user	ir.msg_created_by	many2one		ir	f	\N	\N	\N	\N
721	71	id	\N	ir.msg_ID	integer		ir	f	\N	\N	\N	\N
722	71	model	ir.model	Model	many2one		ir	f	\N	\N	\N	\N
723	71	model_name	\N	Model Name	char		ir	f	\N	\N	\N	\N
724	71	name	\N	Name	char		ir	f	\N	\N	\N	\N
725	71	rec_name	\N	ir.msg_record_name	char		ir	f	\N	\N	\N	\N
726	71	recipients	ir.model.field	Recipients	many2one	The field that contains the recipient(s).	ir	f	\N	\N	\N	\N
727	71	recipients_hidden	ir.model.field	Hidden Recipients	many2one	The field that contains the secondary recipient(s).	ir	f	\N	\N	\N	\N
728	71	recipients_hidden_pyson	\N	Hidden Recipients	char	A PYSON expression that generates a list of hidden recipients with the record represented by "self".	ir	f	\N	\N	\N	\N
729	71	recipients_pyson	\N	Recipients	char	A PYSON expression that generates a list of recipients with the record represented by "self".	ir	f	\N	\N	\N	\N
730	71	recipients_secondary	ir.model.field	Secondary Recipients	many2one	The field that contains the secondary recipient(s).	ir	f	\N	\N	\N	\N
731	71	recipients_secondary_pyson	\N	Secondary Recipients	char	A PYSON expression that generates a list of secondary recipients with the record represented by "self".	ir	f	\N	\N	\N	\N
732	71	reports	ir.email.template-ir.action.report	Reports	many2many		ir	f	\N	\N	\N	\N
733	71	subject	\N	Subject	char		ir	f	\N	\N	\N	\N
734	71	write_date	\N	ir.msg_edited_at	timestamp		ir	f	\N	\N	\N	\N
735	71	write_uid	res.user	ir.msg_edited_by	many2one		ir	f	\N	\N	\N	\N
736	72	create_date	\N	ir.msg_created_at	timestamp		ir	f	\N	\N	\N	\N
737	72	create_uid	res.user	ir.msg_created_by	many2one		ir	f	\N	\N	\N	\N
738	72	id	\N	ir.msg_ID	integer		ir	f	\N	\N	\N	\N
739	72	rec_name	\N	ir.msg_record_name	char		ir	f	\N	\N	\N	\N
740	72	report	ir.action.report	Report	many2one		ir	f	\N	\N	\N	\N
741	72	template	ir.email.template	Template	many2one		ir	f	\N	\N	\N	\N
742	72	write_date	\N	ir.msg_edited_at	timestamp		ir	f	\N	\N	\N	\N
743	72	write_uid	res.user	ir.msg_edited_by	many2one		ir	f	\N	\N	\N	\N
744	73	active	\N	ir.msg_active	boolean	ir.msg_active_help	res	f	\N	\N	\N	\N
745	73	buttons	ir.model.button-res.group	Buttons	many2many		res	f	\N	\N	\N	\N
746	73	create_date	\N	ir.msg_created_at	timestamp		res	f	\N	\N	\N	\N
747	73	create_uid	res.user	ir.msg_created_by	many2one		res	f	\N	\N	\N	\N
748	73	field_access	ir.model.field.access	Access Field	one2many		res	f	\N	\N	\N	\N
749	73	id	\N	ir.msg_ID	integer		res	f	\N	\N	\N	\N
750	73	menu_access	ir.ui.menu-res.group	Access Menu	many2many		res	f	\N	\N	\N	\N
751	73	model_access	ir.model.access	Access Model	one2many		res	f	\N	\N	\N	\N
752	73	name	\N	Name	char		res	f	\N	\N	\N	\N
753	73	parent	res.group	Parent	many2one	The group to inherit accesses from.	res	f	\N	\N	\N	\N
754	73	rec_name	\N	ir.msg_record_name	char		res	f	\N	\N	\N	\N
755	73	rule_groups	ir.rule.group-res.group	Rules	many2many		res	f	\N	\N	\N	\N
756	73	users	res.user-res.group	Users	many2many		res	f	\N	\N	\N	\N
757	73	write_date	\N	ir.msg_edited_at	timestamp		res	f	\N	\N	\N	\N
758	73	write_uid	res.user	ir.msg_edited_by	many2one		res	f	\N	\N	\N	\N
759	74	actions	res.user-ir.action	Actions	many2many	Actions that will be run at login.	res	f	\N	\N	\N	\N
760	74	active	\N	ir.msg_active	boolean	ir.msg_active_help	res	f	\N	\N	\N	\N
761	74	applications	res.user.application	Applications	one2many		res	f	\N	\N	\N	\N
762	74	avatar	\N	ir.msg_avatar	binary		res	f	\N	\N	\N	\N
763	74	avatar_badge_url	\N	Avatar Badge URL	char		res	f	\N	\N	\N	\N
764	74	avatar_url	\N	ir.msg_avatar_url	char		res	f	\N	\N	\N	\N
765	74	avatars	ir.avatar	ir.msg_avatars	one2many		res	f	\N	\N	\N	\N
766	74	create_date	\N	ir.msg_created_at	timestamp		res	f	\N	\N	\N	\N
767	74	create_uid	res.user	ir.msg_created_by	many2one		res	f	\N	\N	\N	\N
768	74	email	\N	Email	char		res	f	\N	\N	\N	\N
769	74	groups	res.user-res.group	Groups	many2many		res	f	\N	\N	\N	\N
770	74	id	\N	ir.msg_ID	integer		res	f	\N	\N	\N	\N
771	74	language	ir.lang	Language	many2one		res	f	\N	\N	\N	\N
772	74	language_direction	\N	Language Direction	char		res	f	\N	\N	\N	\N
773	74	login	\N	Login	char		res	f	\N	\N	\N	\N
774	74	menu	ir.action	Menu Action	many2one		res	f	\N	\N	\N	\N
775	74	name	\N	Name	char		res	f	\N	\N	\N	\N
776	74	password	\N	Password	char		res	f	\N	\N	\N	\N
777	74	password_hash	\N	Password Hash	char		res	f	\N	\N	\N	\N
778	74	password_reset	\N	Reset Password	char		res	f	\N	\N	\N	\N
779	74	password_reset_expire	\N	Reset Password Expire	timestamp		res	f	\N	\N	\N	\N
780	74	pyson_menu	\N	PySON Menu	char		res	f	\N	\N	\N	\N
781	74	rec_name	\N	ir.msg_record_name	char		res	f	\N	\N	\N	\N
782	74	sessions	\N	Sessions	integer		res	f	\N	\N	\N	\N
783	74	signature	\N	Signature	text		res	f	\N	\N	\N	\N
784	74	status_bar	\N	Status Bar	char		res	f	\N	\N	\N	\N
785	74	warnings	res.user.warning	Warnings	one2many		res	f	\N	\N	\N	\N
786	74	write_date	\N	ir.msg_edited_at	timestamp		res	f	\N	\N	\N	\N
787	74	write_uid	res.user	ir.msg_edited_by	many2one		res	f	\N	\N	\N	\N
788	75	create_date	\N	ir.msg_created_at	timestamp		res	f	\N	\N	\N	\N
789	75	create_uid	res.user	ir.msg_created_by	many2one		res	f	\N	\N	\N	\N
790	75	device_cookie	\N	Device Cookie	char		res	f	\N	\N	\N	\N
791	75	id	\N	ir.msg_ID	integer		res	f	\N	\N	\N	\N
792	75	ip_address	\N	IP Address	char		res	f	\N	\N	\N	\N
793	75	ip_network	\N	IP Network	char		res	f	\N	\N	\N	\N
794	75	login	\N	Login	char		res	f	\N	\N	\N	\N
795	75	rec_name	\N	ir.msg_record_name	char		res	f	\N	\N	\N	\N
796	75	write_date	\N	ir.msg_edited_at	timestamp		res	f	\N	\N	\N	\N
797	75	write_uid	res.user	ir.msg_edited_by	many2one		res	f	\N	\N	\N	\N
798	76	cookie	\N	Cookie	char		res	f	\N	\N	\N	\N
799	76	create_date	\N	ir.msg_created_at	timestamp		res	f	\N	\N	\N	\N
800	76	create_uid	res.user	ir.msg_created_by	many2one		res	f	\N	\N	\N	\N
801	76	id	\N	ir.msg_ID	integer		res	f	\N	\N	\N	\N
802	76	login	\N	Login	char		res	f	\N	\N	\N	\N
803	76	rec_name	\N	ir.msg_record_name	char		res	f	\N	\N	\N	\N
804	76	write_date	\N	ir.msg_edited_at	timestamp		res	f	\N	\N	\N	\N
805	76	write_uid	res.user	ir.msg_edited_by	many2one		res	f	\N	\N	\N	\N
806	77	action	ir.action	Action	many2one		res	f	\N	\N	\N	\N
807	77	create_date	\N	ir.msg_created_at	timestamp		res	f	\N	\N	\N	\N
808	77	create_uid	res.user	ir.msg_created_by	many2one		res	f	\N	\N	\N	\N
809	77	id	\N	ir.msg_ID	integer		res	f	\N	\N	\N	\N
810	77	rec_name	\N	ir.msg_record_name	char		res	f	\N	\N	\N	\N
811	77	user	res.user	User	many2one		res	f	\N	\N	\N	\N
812	77	write_date	\N	ir.msg_edited_at	timestamp		res	f	\N	\N	\N	\N
813	77	write_uid	res.user	ir.msg_edited_by	many2one		res	f	\N	\N	\N	\N
814	78	create_date	\N	ir.msg_created_at	timestamp		res	f	\N	\N	\N	\N
815	78	create_uid	res.user	ir.msg_created_by	many2one		res	f	\N	\N	\N	\N
816	78	group	res.group	Group	many2one		res	f	\N	\N	\N	\N
817	78	id	\N	ir.msg_ID	integer		res	f	\N	\N	\N	\N
818	78	rec_name	\N	ir.msg_record_name	char		res	f	\N	\N	\N	\N
819	78	user	res.user	User	many2one		res	f	\N	\N	\N	\N
820	78	write_date	\N	ir.msg_edited_at	timestamp		res	f	\N	\N	\N	\N
821	78	write_uid	res.user	ir.msg_edited_by	many2one		res	f	\N	\N	\N	\N
822	79	always	\N	Always	boolean		res	f	\N	\N	\N	\N
823	79	create_date	\N	ir.msg_created_at	timestamp		res	f	\N	\N	\N	\N
824	79	create_uid	res.user	ir.msg_created_by	many2one		res	f	\N	\N	\N	\N
825	79	id	\N	ir.msg_ID	integer		res	f	\N	\N	\N	\N
826	79	name	\N	Name	char		res	f	\N	\N	\N	\N
827	79	rec_name	\N	ir.msg_record_name	char		res	f	\N	\N	\N	\N
828	79	user	res.user	User	many2one		res	f	\N	\N	\N	\N
829	79	write_date	\N	ir.msg_edited_at	timestamp		res	f	\N	\N	\N	\N
830	79	write_uid	res.user	ir.msg_edited_by	many2one		res	f	\N	\N	\N	\N
831	80	application	\N	Application	selection		res	f	\N	\N	\N	\N
832	80	create_date	\N	ir.msg_created_at	timestamp		res	f	\N	\N	\N	\N
833	80	create_uid	res.user	ir.msg_created_by	many2one		res	f	\N	\N	\N	\N
834	80	id	\N	ir.msg_ID	integer		res	f	\N	\N	\N	\N
835	80	key	\N	Key	char		res	f	\N	\N	\N	\N
836	80	rec_name	\N	ir.msg_record_name	char		res	f	\N	\N	\N	\N
837	80	state	\N	State	selection		res	f	\N	\N	\N	\N
838	80	user	res.user	User	many2one		res	f	\N	\N	\N	\N
839	80	write_date	\N	ir.msg_edited_at	timestamp		res	f	\N	\N	\N	\N
840	80	write_uid	res.user	ir.msg_edited_by	many2one		res	f	\N	\N	\N	\N
841	81	id	\N	ir.msg_ID	integer		res	f	\N	\N	\N	\N
842	82	create_date	\N	ir.msg_created_at	timestamp		res	f	\N	\N	\N	\N
843	82	create_uid	res.user	ir.msg_created_by	many2one		res	f	\N	\N	\N	\N
844	82	group	res.group	Group	many2one		res	f	\N	\N	\N	\N
845	82	id	\N	ir.msg_ID	integer		res	f	\N	\N	\N	\N
846	82	menu	ir.ui.menu	Menu	many2one		res	f	\N	\N	\N	\N
847	82	rec_name	\N	ir.msg_record_name	char		res	f	\N	\N	\N	\N
848	82	write_date	\N	ir.msg_edited_at	timestamp		res	f	\N	\N	\N	\N
849	82	write_uid	res.user	ir.msg_edited_by	many2one		res	f	\N	\N	\N	\N
850	83	action	ir.action	Action	many2one		res	f	\N	\N	\N	\N
851	83	create_date	\N	ir.msg_created_at	timestamp		res	f	\N	\N	\N	\N
852	83	create_uid	res.user	ir.msg_created_by	many2one		res	f	\N	\N	\N	\N
853	83	group	res.group	Group	many2one		res	f	\N	\N	\N	\N
854	83	id	\N	ir.msg_ID	integer		res	f	\N	\N	\N	\N
855	83	rec_name	\N	ir.msg_record_name	char		res	f	\N	\N	\N	\N
856	83	write_date	\N	ir.msg_edited_at	timestamp		res	f	\N	\N	\N	\N
857	83	write_uid	res.user	ir.msg_edited_by	many2one		res	f	\N	\N	\N	\N
858	21	groups	ir.action-res.group	Groups	many2many		res	f	\N	\N	\N	\N
859	23	groups	ir.action-res.group	Groups	many2many		res	f	\N	\N	\N	\N
860	24	groups	ir.action-res.group	Groups	many2many		res	f	\N	\N	\N	\N
861	27	groups	ir.action-res.group	Groups	many2many		res	f	\N	\N	\N	\N
862	28	groups	ir.action-res.group	Groups	many2many		res	f	\N	\N	\N	\N
\.


--
-- Data for Name: ir_model_field_access; Type: TABLE DATA; Schema: public; Owner: gnuhealth
--

COPY public.ir_model_field_access (id, active, create_date, create_uid, description, field, "group", perm_create, perm_delete, perm_read, perm_write, write_date, write_uid) FROM stdin;
\.


--
-- Data for Name: ir_module; Type: TABLE DATA; Schema: public; Owner: gnuhealth
--

COPY public.ir_module (id, create_uid, create_date, write_date, write_uid, name, state) FROM stdin;
1	0	2022-12-06 20:16:31.360808	\N	\N	ir	activated
2	0	2022-12-06 20:16:31.360808	\N	\N	res	activated
3	0	2022-12-06 20:16:53.135728	\N	\N	health_ntd_chagas	not activated
4	0	2022-12-06 20:16:53.135728	\N	\N	health_socioeconomics	not activated
5	0	2022-12-06 20:16:53.135728	\N	\N	health_insurance	not activated
6	0	2022-12-06 20:16:53.135728	\N	\N	health_icpm	not activated
7	0	2022-12-06 20:16:53.135728	\N	\N	country	not activated
8	0	2022-12-06 20:16:53.135728	\N	\N	health_dentistry	not activated
9	0	2022-12-06 20:16:53.135728	\N	\N	account_invoice_stock	not activated
10	0	2022-12-06 20:16:53.135728	\N	\N	health_webdav3_server	not activated
11	0	2022-12-06 20:16:53.135728	\N	\N	health_mdg6	not activated
12	0	2022-12-06 20:16:53.135728	\N	\N	health_icd10pcs	not activated
13	0	2022-12-06 20:16:53.135728	\N	\N	account	not activated
14	0	2022-12-06 20:16:53.135728	\N	\N	health_orthanc	not activated
15	0	2022-12-06 20:16:53.135728	\N	\N	health_icd10	not activated
16	0	2022-12-06 20:16:53.135728	\N	\N	account_product	not activated
17	0	2022-12-06 20:16:53.135728	\N	\N	health_iss	not activated
18	0	2022-12-06 20:16:53.135728	\N	\N	health_imaging	not activated
19	0	2022-12-06 20:16:53.135728	\N	\N	tests	not activated
20	0	2022-12-06 20:16:53.135728	\N	\N	health_profile	not activated
21	0	2022-12-06 20:16:53.135728	\N	\N	health_caldav	not activated
22	0	2022-12-06 20:16:53.135728	\N	\N	health_services_imaging	not activated
23	0	2022-12-06 20:16:53.135728	\N	\N	health_reporting	not activated
24	0	2022-12-06 20:16:53.135728	\N	\N	health_contact_tracing	not activated
25	0	2022-12-06 20:16:53.135728	\N	\N	health_stock	not activated
26	0	2022-12-06 20:16:53.135728	\N	\N	health_disability	not activated
27	0	2022-12-06 20:16:53.135728	\N	\N	account_invoice	not activated
28	0	2022-12-06 20:16:53.135728	\N	\N	health_ntd_dengue	not activated
29	0	2022-12-06 20:16:53.135728	\N	\N	health_calendar	not activated
30	0	2022-12-06 20:16:53.135728	\N	\N	health_lab	not activated
31	0	2022-12-06 20:16:53.135728	\N	\N	health_archives	not activated
32	0	2022-12-06 20:16:53.135728	\N	\N	health_history	not activated
33	0	2022-12-06 20:16:53.135728	\N	\N	health_icd9procs	not activated
34	0	2022-12-06 20:16:53.135728	\N	\N	stock_lot	not activated
35	0	2022-12-06 20:16:53.135728	\N	\N	health_genetics	not activated
36	0	2022-12-06 20:16:53.135728	\N	\N	health_inpatient_calendar	not activated
37	0	2022-12-06 20:16:53.135728	\N	\N	product	not activated
38	0	2022-12-06 20:16:53.135728	\N	\N	health_genetics_uniprot	not activated
39	0	2022-12-06 20:16:53.135728	\N	\N	purchase	not activated
40	0	2022-12-06 20:16:53.135728	\N	\N	health_nursing	not activated
41	0	2022-12-06 20:16:53.135728	\N	\N	health_icu	not activated
42	0	2022-12-06 20:16:53.135728	\N	\N	health_crypto	not activated
43	0	2022-12-06 20:16:53.135728	\N	\N	health_federation	not activated
44	0	2022-12-06 20:16:53.135728	\N	\N	health_ems	not activated
45	0	2022-12-06 20:16:53.135728	\N	\N	health_who_essential_medicines	not activated
46	0	2022-12-06 20:16:53.135728	\N	\N	health	not activated
47	0	2022-12-06 20:16:53.135728	\N	\N	currency	not activated
48	0	2022-12-06 20:16:53.135728	\N	\N	health_pediatrics_growth_charts_who	not activated
49	0	2022-12-06 20:16:53.135728	\N	\N	health_lifestyle	not activated
50	0	2022-12-06 20:16:53.135728	\N	\N	company	not activated
51	0	2022-12-06 20:16:53.135728	\N	\N	purchase_request	not activated
52	0	2022-12-06 20:16:53.135728	\N	\N	health_services	not activated
53	0	2022-12-06 20:16:53.135728	\N	\N	health_services_lab	not activated
54	0	2022-12-06 20:16:53.135728	\N	\N	health_crypto_lab	not activated
55	0	2022-12-06 20:16:53.135728	\N	\N	health_inpatient	not activated
56	0	2022-12-06 20:16:53.135728	\N	\N	party	not activated
57	0	2022-12-06 20:16:53.135728	\N	\N	health_ntd	not activated
58	0	2022-12-06 20:16:53.135728	\N	\N	health_pediatrics_growth_charts	not activated
59	0	2022-12-06 20:16:53.135728	\N	\N	health_icd11	not activated
60	0	2022-12-06 20:16:53.135728	\N	\N	stock_supply	not activated
61	0	2022-12-06 20:16:53.135728	\N	\N	health_gyneco	not activated
62	0	2022-12-06 20:16:53.135728	\N	\N	health_qrcodes	not activated
63	0	2022-12-06 20:16:53.135728	\N	\N	health_pediatrics	not activated
64	0	2022-12-06 20:16:53.135728	\N	\N	health_ophthalmology	not activated
65	0	2022-12-06 20:16:53.135728	\N	\N	health_surgery	not activated
66	0	2022-12-06 20:16:53.135728	\N	\N	stock	not activated
\.


--
-- Data for Name: ir_module_config_wizard_item; Type: TABLE DATA; Schema: public; Owner: gnuhealth
--

COPY public.ir_module_config_wizard_item (id, action, create_date, create_uid, sequence, state, write_date, write_uid) FROM stdin;
1	33	2022-12-06 20:16:32.52404	0	10	open	\N	\N
2	47	2022-12-06 20:16:32.52404	0	10000	open	\N	\N
3	55	2022-12-06 20:16:47.746915	0	10	open	\N	\N
\.


--
-- Data for Name: ir_module_dependency; Type: TABLE DATA; Schema: public; Owner: gnuhealth
--

COPY public.ir_module_dependency (id, create_uid, create_date, write_date, write_uid, name, module) FROM stdin;
1	0	2022-12-06 20:16:31.360808	\N	\N	ir	2
2	0	2022-12-06 20:16:53.135728	\N	\N	health_ntd	3
3	0	2022-12-06 20:16:53.135728	\N	\N	health	4
4	0	2022-12-06 20:16:53.135728	\N	\N	health	5
5	0	2022-12-06 20:16:53.135728	\N	\N	health_services	5
6	0	2022-12-06 20:16:53.135728	\N	\N	health	6
7	0	2022-12-06 20:16:53.135728	\N	\N	ir	7
8	0	2022-12-06 20:16:53.135728	\N	\N	res	7
9	0	2022-12-06 20:16:53.135728	\N	\N	health	8
10	0	2022-12-06 20:16:53.135728	\N	\N	account_invoice	9
11	0	2022-12-06 20:16:53.135728	\N	\N	stock	9
12	0	2022-12-06 20:16:53.135728	\N	\N	ir	9
13	0	2022-12-06 20:16:53.135728	\N	\N	product	9
14	0	2022-12-06 20:16:53.135728	\N	\N	ir	10
15	0	2022-12-06 20:16:53.135728	\N	\N	res	10
16	0	2022-12-06 20:16:53.135728	\N	\N	health	11
17	0	2022-12-06 20:16:53.135728	\N	\N	health_lab	11
18	0	2022-12-06 20:16:53.135728	\N	\N	health	12
19	0	2022-12-06 20:16:53.135728	\N	\N	company	13
20	0	2022-12-06 20:16:53.135728	\N	\N	currency	13
21	0	2022-12-06 20:16:53.135728	\N	\N	ir	13
22	0	2022-12-06 20:16:53.135728	\N	\N	party	13
23	0	2022-12-06 20:16:53.135728	\N	\N	res	13
24	0	2022-12-06 20:16:53.135728	\N	\N	health_imaging	14
25	0	2022-12-06 20:16:53.135728	\N	\N	health	15
26	0	2022-12-06 20:16:53.135728	\N	\N	account	16
27	0	2022-12-06 20:16:53.135728	\N	\N	company	16
28	0	2022-12-06 20:16:53.135728	\N	\N	ir	16
29	0	2022-12-06 20:16:53.135728	\N	\N	product	16
30	0	2022-12-06 20:16:53.135728	\N	\N	health	17
31	0	2022-12-06 20:16:53.135728	\N	\N	health	18
32	0	2022-12-06 20:16:53.135728	\N	\N	ir	19
33	0	2022-12-06 20:16:53.135728	\N	\N	res	19
34	0	2022-12-06 20:16:53.135728	\N	\N	health	20
35	0	2022-12-06 20:16:53.135728	\N	\N	health_socioeconomics	20
36	0	2022-12-06 20:16:53.135728	\N	\N	health_lifestyle	20
37	0	2022-12-06 20:16:53.135728	\N	\N	health_genetics	20
38	0	2022-12-06 20:16:53.135728	\N	\N	health_icd10	20
39	0	2022-12-06 20:16:53.135728	\N	\N	health_gyneco	20
40	0	2022-12-06 20:16:53.135728	\N	\N	health_pediatrics	20
41	0	2022-12-06 20:16:53.135728	\N	\N	health_surgery	20
42	0	2022-12-06 20:16:53.135728	\N	\N	health_lab	20
43	0	2022-12-06 20:16:53.135728	\N	\N	health_inpatient	20
44	0	2022-12-06 20:16:53.135728	\N	\N	health_webdav3_server	21
45	0	2022-12-06 20:16:53.135728	\N	\N	health_imaging	22
46	0	2022-12-06 20:16:53.135728	\N	\N	health_services	22
47	0	2022-12-06 20:16:53.135728	\N	\N	health	23
48	0	2022-12-06 20:16:53.135728	\N	\N	health	24
49	0	2022-12-06 20:16:53.135728	\N	\N	health_nursing	25
50	0	2022-12-06 20:16:53.135728	\N	\N	stock_lot	25
51	0	2022-12-06 20:16:53.135728	\N	\N	health	26
52	0	2022-12-06 20:16:53.135728	\N	\N	health_socioeconomics	26
53	0	2022-12-06 20:16:53.135728	\N	\N	account	27
54	0	2022-12-06 20:16:53.135728	\N	\N	account_product	27
55	0	2022-12-06 20:16:53.135728	\N	\N	company	27
56	0	2022-12-06 20:16:53.135728	\N	\N	currency	27
57	0	2022-12-06 20:16:53.135728	\N	\N	ir	27
58	0	2022-12-06 20:16:53.135728	\N	\N	party	27
59	0	2022-12-06 20:16:53.135728	\N	\N	product	27
60	0	2022-12-06 20:16:53.135728	\N	\N	res	27
61	0	2022-12-06 20:16:53.135728	\N	\N	health_ntd	28
62	0	2022-12-06 20:16:53.135728	\N	\N	health	29
63	0	2022-12-06 20:16:53.135728	\N	\N	health_caldav	29
64	0	2022-12-06 20:16:53.135728	\N	\N	health	30
65	0	2022-12-06 20:16:53.135728	\N	\N	health	31
66	0	2022-12-06 20:16:53.135728	\N	\N	health	32
67	0	2022-12-06 20:16:53.135728	\N	\N	health_genetics	32
68	0	2022-12-06 20:16:53.135728	\N	\N	health_socioeconomics	32
69	0	2022-12-06 20:16:53.135728	\N	\N	health_surgery	32
70	0	2022-12-06 20:16:53.135728	\N	\N	health_gyneco	32
71	0	2022-12-06 20:16:53.135728	\N	\N	health_lifestyle	32
72	0	2022-12-06 20:16:53.135728	\N	\N	health_crypto	32
73	0	2022-12-06 20:16:53.135728	\N	\N	health	33
74	0	2022-12-06 20:16:53.135728	\N	\N	ir	34
75	0	2022-12-06 20:16:53.135728	\N	\N	product	34
76	0	2022-12-06 20:16:53.135728	\N	\N	stock	34
77	0	2022-12-06 20:16:53.135728	\N	\N	health	35
78	0	2022-12-06 20:16:53.135728	\N	\N	health_inpatient	36
79	0	2022-12-06 20:16:53.135728	\N	\N	health_calendar	36
80	0	2022-12-06 20:16:53.135728	\N	\N	company	37
81	0	2022-12-06 20:16:53.135728	\N	\N	ir	37
82	0	2022-12-06 20:16:53.135728	\N	\N	res	37
83	0	2022-12-06 20:16:53.135728	\N	\N	health_genetics	38
84	0	2022-12-06 20:16:53.135728	\N	\N	account	39
85	0	2022-12-06 20:16:53.135728	\N	\N	account_invoice	39
86	0	2022-12-06 20:16:53.135728	\N	\N	account_invoice_stock	39
87	0	2022-12-06 20:16:53.135728	\N	\N	account_product	39
88	0	2022-12-06 20:16:53.135728	\N	\N	company	39
89	0	2022-12-06 20:16:53.135728	\N	\N	currency	39
90	0	2022-12-06 20:16:53.135728	\N	\N	ir	39
91	0	2022-12-06 20:16:53.135728	\N	\N	party	39
92	0	2022-12-06 20:16:53.135728	\N	\N	product	39
93	0	2022-12-06 20:16:53.135728	\N	\N	res	39
94	0	2022-12-06 20:16:53.135728	\N	\N	stock	39
95	0	2022-12-06 20:16:53.135728	\N	\N	health	40
96	0	2022-12-06 20:16:53.135728	\N	\N	health_inpatient	40
97	0	2022-12-06 20:16:53.135728	\N	\N	health	41
98	0	2022-12-06 20:16:53.135728	\N	\N	health_inpatient	41
99	0	2022-12-06 20:16:53.135728	\N	\N	health_nursing	41
100	0	2022-12-06 20:16:53.135728	\N	\N	health	42
101	0	2022-12-06 20:16:53.135728	\N	\N	health	43
102	0	2022-12-06 20:16:53.135728	\N	\N	health	44
103	0	2022-12-06 20:16:53.135728	\N	\N	health	45
104	0	2022-12-06 20:16:53.135728	\N	\N	party	46
105	0	2022-12-06 20:16:53.135728	\N	\N	company	46
106	0	2022-12-06 20:16:53.135728	\N	\N	currency	46
107	0	2022-12-06 20:16:53.135728	\N	\N	product	46
108	0	2022-12-06 20:16:53.135728	\N	\N	ir	47
109	0	2022-12-06 20:16:53.135728	\N	\N	res	47
110	0	2022-12-06 20:16:53.135728	\N	\N	health_pediatrics_growth_charts	48
111	0	2022-12-06 20:16:53.135728	\N	\N	health	49
112	0	2022-12-06 20:16:53.135728	\N	\N	currency	50
113	0	2022-12-06 20:16:53.135728	\N	\N	ir	50
114	0	2022-12-06 20:16:53.135728	\N	\N	party	50
115	0	2022-12-06 20:16:53.135728	\N	\N	res	50
116	0	2022-12-06 20:16:53.135728	\N	\N	ir	51
117	0	2022-12-06 20:16:53.135728	\N	\N	purchase	51
118	0	2022-12-06 20:16:53.135728	\N	\N	product	51
119	0	2022-12-06 20:16:53.135728	\N	\N	health	52
120	0	2022-12-06 20:16:53.135728	\N	\N	account_invoice	52
121	0	2022-12-06 20:16:53.135728	\N	\N	health_lab	53
122	0	2022-12-06 20:16:53.135728	\N	\N	health_services	53
123	0	2022-12-06 20:16:53.135728	\N	\N	health_crypto	54
124	0	2022-12-06 20:16:53.135728	\N	\N	health_lab	54
125	0	2022-12-06 20:16:53.135728	\N	\N	health	55
126	0	2022-12-06 20:16:53.135728	\N	\N	health_lifestyle	55
127	0	2022-12-06 20:16:53.135728	\N	\N	country	56
128	0	2022-12-06 20:16:53.135728	\N	\N	ir	56
129	0	2022-12-06 20:16:53.135728	\N	\N	res	56
130	0	2022-12-06 20:16:53.135728	\N	\N	health	57
131	0	2022-12-06 20:16:53.135728	\N	\N	health_lab	57
132	0	2022-12-06 20:16:53.135728	\N	\N	health_pediatrics	58
133	0	2022-12-06 20:16:53.135728	\N	\N	health	59
134	0	2022-12-06 20:16:53.135728	\N	\N	account	60
135	0	2022-12-06 20:16:53.135728	\N	\N	ir	60
136	0	2022-12-06 20:16:53.135728	\N	\N	party	60
137	0	2022-12-06 20:16:53.135728	\N	\N	product	60
138	0	2022-12-06 20:16:53.135728	\N	\N	purchase	60
139	0	2022-12-06 20:16:53.135728	\N	\N	purchase_request	60
140	0	2022-12-06 20:16:53.135728	\N	\N	res	60
141	0	2022-12-06 20:16:53.135728	\N	\N	stock	60
142	0	2022-12-06 20:16:53.135728	\N	\N	health	61
143	0	2022-12-06 20:16:53.135728	\N	\N	health	62
144	0	2022-12-06 20:16:53.135728	\N	\N	health_pediatrics	62
145	0	2022-12-06 20:16:53.135728	\N	\N	health_lab	62
146	0	2022-12-06 20:16:53.135728	\N	\N	health	63
147	0	2022-12-06 20:16:53.135728	\N	\N	health	64
148	0	2022-12-06 20:16:53.135728	\N	\N	health	65
149	0	2022-12-06 20:16:53.135728	\N	\N	company	66
150	0	2022-12-06 20:16:53.135728	\N	\N	currency	66
151	0	2022-12-06 20:16:53.135728	\N	\N	ir	66
152	0	2022-12-06 20:16:53.135728	\N	\N	party	66
153	0	2022-12-06 20:16:53.135728	\N	\N	product	66
154	0	2022-12-06 20:16:53.135728	\N	\N	res	66
\.


--
-- Data for Name: ir_note; Type: TABLE DATA; Schema: public; Owner: gnuhealth
--

COPY public.ir_note (id, copy_to_resources, create_date, create_uid, message, resource, write_date, write_uid) FROM stdin;
\.


--
-- Data for Name: ir_note_read; Type: TABLE DATA; Schema: public; Owner: gnuhealth
--

COPY public.ir_note_read (id, create_date, create_uid, note, "user", write_date, write_uid) FROM stdin;
\.


--
-- Data for Name: ir_queue; Type: TABLE DATA; Schema: public; Owner: gnuhealth
--

COPY public.ir_queue (id, create_date, create_uid, data, dequeued_at, enqueued_at, expected_at, finished_at, name, scheduled_at, write_date, write_uid) FROM stdin;
\.


--
-- Data for Name: ir_rule; Type: TABLE DATA; Schema: public; Owner: gnuhealth
--

COPY public.ir_rule (id, create_date, create_uid, domain, rule_group, write_date, write_uid) FROM stdin;
1	2022-12-06 20:16:47.746915	0	[["user", "=", {"__class__": "Get", "d": -1, "k": "id", "v": {"__class__": "Eval", "d": {}, "v": "user"}}]]	1	\N	\N
2	2022-12-06 20:16:47.746915	0	[["user", "=", {"__class__": "Get", "d": -1, "k": "id", "v": {"__class__": "Eval", "d": {}, "v": "user"}}]]	2	\N	\N
3	2022-12-06 20:16:47.746915	0	[]	3	\N	\N
4	2022-12-06 20:16:47.746915	0	[["groups", "in", {"__class__": "Eval", "d": [], "v": "groups"}]]	4	\N	\N
5	2022-12-06 20:16:47.746915	0	[["groups", "=", null]]	4	\N	\N
6	2022-12-06 20:16:47.746915	0	[["groups", "in", {"__class__": "Eval", "d": [], "v": "groups"}]]	5	\N	\N
7	2022-12-06 20:16:47.746915	0	[["groups", "=", null]]	5	\N	\N
8	2022-12-06 20:16:47.746915	0	[["groups", "in", {"__class__": "Eval", "d": [], "v": "groups"}]]	6	\N	\N
9	2022-12-06 20:16:47.746915	0	[["groups", "=", null]]	6	\N	\N
10	2022-12-06 20:16:47.746915	0	[["groups", "in", {"__class__": "Eval", "d": [], "v": "groups"}]]	7	\N	\N
11	2022-12-06 20:16:47.746915	0	[["groups", "=", null]]	7	\N	\N
12	2022-12-06 20:16:47.746915	0	[["groups", "in", {"__class__": "Eval", "d": [], "v": "groups"}]]	8	\N	\N
13	2022-12-06 20:16:47.746915	0	[["groups", "=", null]]	8	\N	\N
14	2022-12-06 20:16:47.746915	0	[["groups", "in", {"__class__": "Eval", "d": [], "v": "groups"}]]	9	\N	\N
15	2022-12-06 20:16:47.746915	0	[["groups", "=", null]]	9	\N	\N
16	2022-12-06 20:16:47.746915	0	[["groups", "in", {"__class__": "Eval", "d": [], "v": "groups"}]]	10	\N	\N
17	2022-12-06 20:16:47.746915	0	[["groups", "=", null]]	10	\N	\N
18	2022-12-06 20:16:47.746915	0	[["sequence_type.groups", "in", {"__class__": "Eval", "d": [], "v": "groups"}]]	11	\N	\N
19	2022-12-06 20:16:47.746915	0	[["sequence_type.groups", "in", {"__class__": "Eval", "d": [], "v": "groups"}]]	12	\N	\N
20	2022-12-06 20:16:47.746915	0	[["user", "=", {"__class__": "Get", "d": -1, "k": "id", "v": {"__class__": "Eval", "d": {}, "v": "user"}}]]	13	\N	\N
21	2022-12-06 20:16:47.746915	0	[["user", "=", null]]	14	\N	\N
22	2022-12-06 20:16:47.746915	0	[["create_uid", "=", {"__class__": "Get", "d": -1, "k": "id", "v": {"__class__": "Eval", "d": {}, "v": "user"}}]]	16	\N	\N
23	2022-12-06 20:16:47.746915	0	[["create_uid", "=", {"__class__": "Get", "d": -1, "k": "id", "v": {"__class__": "Eval", "d": {}, "v": "user"}}]]	17	\N	\N
24	2022-12-06 20:16:47.746915	0	[["create_uid", "=", {"__class__": "Get", "d": -1, "k": "id", "v": {"__class__": "Eval", "d": {}, "v": "user"}}]]	18	\N	\N
25	2022-12-06 20:16:47.746915	0	[["groups", "in", {"__class__": "Eval", "d": [], "v": "groups"}]]	19	\N	\N
26	2022-12-06 20:16:47.746915	0	[["create_uid", "=", {"__class__": "Eval", "d": -1, "v": "user.id"}]]	19	\N	\N
27	2022-12-06 20:16:47.746915	0	[["write_groups", "in", {"__class__": "Eval", "d": [], "v": "groups"}]]	20	\N	\N
28	2022-12-06 20:16:47.746915	0	[["create_uid", "=", {"__class__": "Eval", "d": -1, "v": "user.id"}]]	20	\N	\N
29	2022-12-06 20:16:47.746915	0	[]	21	\N	\N
30	2022-12-06 20:16:47.746915	0	[["export.groups", "in", {"__class__": "Eval", "d": [], "v": "groups"}]]	22	\N	\N
31	2022-12-06 20:16:47.746915	0	[["export.create_uid", "=", {"__class__": "Eval", "d": -1, "v": "user.id"}]]	22	\N	\N
32	2022-12-06 20:16:47.746915	0	[["export.write_groups", "in", {"__class__": "Eval", "d": [], "v": "groups"}]]	23	\N	\N
33	2022-12-06 20:16:47.746915	0	[["export.create_uid", "=", {"__class__": "Eval", "d": -1, "v": "user.id"}]]	23	\N	\N
34	2022-12-06 20:16:47.746915	0	[]	24	\N	\N
\.


--
-- Data for Name: ir_rule_group; Type: TABLE DATA; Schema: public; Owner: gnuhealth
--

COPY public.ir_rule_group (id, create_date, create_uid, default_p, global_p, model, name, perm_create, perm_delete, perm_read, perm_write, write_date, write_uid) FROM stdin;
1	2022-12-06 20:16:47.746915	0	f	t	79	Own warning	t	t	t	t	\N	\N
2	2022-12-06 20:16:47.746915	0	t	f	80	Own user application	t	t	t	t	\N	\N
3	2022-12-06 20:16:47.746915	0	f	f	80	Any user application	t	t	t	t	\N	\N
4	2022-12-06 20:16:47.746915	0	f	t	13	User in groups	t	t	t	t	\N	\N
5	2022-12-06 20:16:47.746915	0	f	t	21	User in groups	t	t	t	t	\N	\N
6	2022-12-06 20:16:47.746915	0	f	t	22	User in groups	t	t	t	t	\N	\N
7	2022-12-06 20:16:47.746915	0	f	t	23	User in groups	t	t	t	t	\N	\N
8	2022-12-06 20:16:47.746915	0	f	t	24	User in groups	t	t	t	t	\N	\N
9	2022-12-06 20:16:47.746915	0	f	t	27	User in groups	t	t	t	t	\N	\N
10	2022-12-06 20:16:47.746915	0	f	t	28	User in groups	t	t	t	t	\N	\N
11	2022-12-06 20:16:47.746915	0	f	t	11	User in groups	t	t	f	t	\N	\N
12	2022-12-06 20:16:47.746915	0	f	t	12	User in groups	t	t	f	t	\N	\N
13	2022-12-06 20:16:47.746915	0	t	f	19	Own view search	t	t	t	t	\N	\N
14	2022-12-06 20:16:47.746915	0	t	f	19	Common view search	f	f	t	f	\N	\N
15	2022-12-06 20:16:47.746915	0	f	f	19	Any view search	t	t	t	t	\N	\N
16	2022-12-06 20:16:47.746915	0	f	t	63	Own session	t	t	t	t	\N	\N
17	2022-12-06 20:16:47.746915	0	f	t	64	Own session	t	t	t	t	\N	\N
18	2022-12-06 20:16:47.746915	0	f	t	14	Own favorite	t	t	t	t	\N	\N
19	2022-12-06 20:16:47.746915	0	t	f	47	User in groups	f	f	t	f	\N	\N
20	2022-12-06 20:16:47.746915	0	t	f	47	User in modification groups	t	t	t	t	\N	\N
21	2022-12-06 20:16:47.746915	0	f	f	47	Any export	t	t	t	t	\N	\N
22	2022-12-06 20:16:47.746915	0	t	f	48	User in groups	f	f	t	f	\N	\N
23	2022-12-06 20:16:47.746915	0	t	f	48	User in modification groups	t	t	t	t	\N	\N
24	2022-12-06 20:16:47.746915	0	f	f	48	Any export	t	t	t	t	\N	\N
\.


--
-- Data for Name: ir_rule_group-res_group; Type: TABLE DATA; Schema: public; Owner: gnuhealth
--

COPY public."ir_rule_group-res_group" (id, create_date, create_uid, "group", rule_group, write_date, write_uid) FROM stdin;
1	2022-12-06 20:16:47.746915	0	1	3	\N	\N
2	2022-12-06 20:16:47.746915	0	1	15	\N	\N
3	2022-12-06 20:16:47.746915	0	1	21	\N	\N
4	2022-12-06 20:16:47.746915	0	1	24	\N	\N
\.


--
-- Data for Name: ir_sequence; Type: TABLE DATA; Schema: public; Owner: gnuhealth
--

COPY public.ir_sequence (id, active, create_date, create_uid, last_timestamp, name, number_increment, number_next_internal, padding, prefix, sequence_type, suffix, timestamp_offset, timestamp_rounding, type, write_date, write_uid) FROM stdin;
\.


--
-- Data for Name: ir_sequence_strict; Type: TABLE DATA; Schema: public; Owner: gnuhealth
--

COPY public.ir_sequence_strict (id, active, create_date, create_uid, last_timestamp, name, number_increment, number_next_internal, padding, prefix, sequence_type, suffix, timestamp_offset, timestamp_rounding, type, write_date, write_uid) FROM stdin;
\.


--
-- Data for Name: ir_sequence_type; Type: TABLE DATA; Schema: public; Owner: gnuhealth
--

COPY public.ir_sequence_type (id, create_date, create_uid, name, write_date, write_uid) FROM stdin;
\.


--
-- Data for Name: ir_sequence_type-res_group; Type: TABLE DATA; Schema: public; Owner: gnuhealth
--

COPY public."ir_sequence_type-res_group" (id, create_date, create_uid, "group", sequence_type, write_date, write_uid) FROM stdin;
\.


--
-- Data for Name: ir_session; Type: TABLE DATA; Schema: public; Owner: gnuhealth
--

COPY public.ir_session (id, create_date, create_uid, key, write_date, write_uid) FROM stdin;
\.


--
-- Data for Name: ir_session_wizard; Type: TABLE DATA; Schema: public; Owner: gnuhealth
--

COPY public.ir_session_wizard (id, create_date, create_uid, data, write_date, write_uid) FROM stdin;
\.


--
-- Data for Name: ir_translation; Type: TABLE DATA; Schema: public; Owner: gnuhealth
--

COPY public.ir_translation (id, lang, src, name, res_id, value, type, module, fuzzy, create_date, create_uid, overriding_module, write_date, write_uid) FROM stdin;
913	en	Groups	ir.action.act_window,groups	-1		field	res	f	\N	\N	\N	\N	\N
914	en	Groups	ir.action.wizard,groups	-1		field	res	f	\N	\N	\N	\N	\N
915	en	Groups	ir.action.url,groups	-1		field	res	f	\N	\N	\N	\N	\N
916	en	Groups	ir.action.keyword,groups	-1		field	res	f	\N	\N	\N	\N	\N
917	en	Model Button - Group	ir.model.button-res.group,name	-1		model	res	f	\N	\N	\N	\N	\N
918	en	Button	ir.model.button-res.group,button	-1		field	res	f	\N	\N	\N	\N	\N
919	en	Group	ir.model.button-res.group,group	-1		field	res	f	\N	\N	\N	\N	\N
920	en	Group	ir.model.button.rule,group	-1		field	res	f	\N	\N	\N	\N	\N
921	en	User	ir.model.button.click,user	-1		field	res	f	\N	\N	\N	\N	\N
922	en	Rule Group - Group	ir.rule.group-res.group,name	-1		model	res	f	\N	\N	\N	\N	\N
923	en	Group	ir.rule.group-res.group,group	-1		field	res	f	\N	\N	\N	\N	\N
924	en	Rule Group	ir.rule.group-res.group,rule_group	-1		field	res	f	\N	\N	\N	\N	\N
925	en	User Groups	ir.sequence.type,groups	-1		field	res	f	\N	\N	\N	\N	\N
926	en	Groups allowed to edit the sequences of this type.	ir.sequence.type,groups	-1		help	res	f	\N	\N	\N	\N	\N
927	en	Sequence Type - Group	ir.sequence.type-res.group,name	-1		model	res	f	\N	\N	\N	\N	\N
928	en	User Groups	ir.sequence.type-res.group,group	-1		field	res	f	\N	\N	\N	\N	\N
929	en	Sequence Type	ir.sequence.type-res.group,sequence_type	-1		field	res	f	\N	\N	\N	\N	\N
930	en	Groups	ir.export,groups	-1		field	res	f	\N	\N	\N	\N	\N
931	en	The user groups that can use the export.	ir.export,groups	-1		help	res	f	\N	\N	\N	\N	\N
932	en	Modification Groups	ir.export,write_groups	-1		field	res	f	\N	\N	\N	\N	\N
933	en	The user groups that can modify the export.	ir.export,write_groups	-1		help	res	f	\N	\N	\N	\N	\N
1	en	Configuration	ir.configuration,name	-1		model	ir	f	2022-12-06 20:16:32.7838	0	\N	\N	\N
2	en	Hostname	ir.configuration,hostname	-1		field	ir	f	2022-12-06 20:16:32.7838	0	\N	\N	\N
3	en	language	ir.configuration,language	-1		field	ir	f	2022-12-06 20:16:32.7838	0	\N	\N	\N
4	en	Translation	ir.translation,name	-1		model	ir	f	2022-12-06 20:16:32.7838	0	\N	\N	\N
5	en	Fuzzy	ir.translation,fuzzy	-1		field	ir	f	2022-12-06 20:16:32.7838	0	\N	\N	\N
6	en	Language	ir.translation,lang	-1		field	ir	f	2022-12-06 20:16:32.7838	0	\N	\N	\N
7	en	Model	ir.translation,model	-1		field	ir	f	2022-12-06 20:16:32.7838	0	\N	\N	\N
8	en	Module	ir.translation,module	-1		field	ir	f	2022-12-06 20:16:32.7838	0	\N	\N	\N
9	en	Field Name	ir.translation,name	-1		field	ir	f	2022-12-06 20:16:32.7838	0	\N	\N	\N
10	en	Overriding Module	ir.translation,overriding_module	-1		field	ir	f	2022-12-06 20:16:32.7838	0	\N	\N	\N
11	en	Resource ID	ir.translation,res_id	-1		field	ir	f	2022-12-06 20:16:32.7838	0	\N	\N	\N
12	en	Source	ir.translation,src	-1		field	ir	f	2022-12-06 20:16:32.7838	0	\N	\N	\N
13	en	Type	ir.translation,type	-1		field	ir	f	2022-12-06 20:16:32.7838	0	\N	\N	\N
14	en	Field	ir.translation,type	-1		selection	ir	f	2022-12-06 20:16:32.7838	0	\N	\N	\N
15	en	Model	ir.translation,type	-1		selection	ir	f	2022-12-06 20:16:32.7838	0	\N	\N	\N
16	en	Report	ir.translation,type	-1		selection	ir	f	2022-12-06 20:16:32.7838	0	\N	\N	\N
17	en	Selection	ir.translation,type	-1		selection	ir	f	2022-12-06 20:16:32.7838	0	\N	\N	\N
18	en	View	ir.translation,type	-1		selection	ir	f	2022-12-06 20:16:32.7838	0	\N	\N	\N
19	en	Wizard Button	ir.translation,type	-1		selection	ir	f	2022-12-06 20:16:32.7838	0	\N	\N	\N
20	en	Help	ir.translation,type	-1		selection	ir	f	2022-12-06 20:16:32.7838	0	\N	\N	\N
21	en	Translation Value	ir.translation,value	-1		field	ir	f	2022-12-06 20:16:32.7838	0	\N	\N	\N
22	en	Set Translation	ir.translation.set.start,name	-1		model	ir	f	\N	\N	\N	\N	\N
23	en	Set Translation	ir.translation.set.succeed,name	-1		model	ir	f	\N	\N	\N	\N	\N
24	en	Clean translation	ir.translation.clean.start,name	-1		model	ir	f	\N	\N	\N	\N	\N
25	en	Clean translation	ir.translation.clean.succeed,name	-1		model	ir	f	\N	\N	\N	\N	\N
26	en	Update translation	ir.translation.update.start,name	-1		model	ir	f	\N	\N	\N	\N	\N
27	en	Language	ir.translation.update.start,language	-1		field	ir	f	\N	\N	\N	\N	\N
28	en	Export translation	ir.translation.export.start,name	-1		model	ir	f	\N	\N	\N	\N	\N
29	en	Language	ir.translation.export.start,language	-1		field	ir	f	\N	\N	\N	\N	\N
30	en	Module	ir.translation.export.start,module	-1		field	ir	f	\N	\N	\N	\N	\N
31	en	Export translation	ir.translation.export.result,name	-1		model	ir	f	\N	\N	\N	\N	\N
32	en	File	ir.translation.export.result,file	-1		field	ir	f	\N	\N	\N	\N	\N
33	en	Filename	ir.translation.export.result,filename	-1		field	ir	f	\N	\N	\N	\N	\N
34	en	Language	ir.translation.export.result,language	-1		field	ir	f	\N	\N	\N	\N	\N
35	en	Module	ir.translation.export.result,module	-1		field	ir	f	\N	\N	\N	\N	\N
36	en	Sequence type	ir.sequence.type,name	-1		model	ir	f	\N	\N	\N	\N	\N
37	en	Sequence Name	ir.sequence.type,name	-1		field	ir	f	\N	\N	\N	\N	\N
38	en	Sequence	ir.sequence,name	-1		model	ir	f	\N	\N	\N	\N	\N
39	en	Last Timestamp	ir.sequence,last_timestamp	-1		field	ir	f	\N	\N	\N	\N	\N
40	en	Sequence Name	ir.sequence,name	-1		field	ir	f	\N	\N	\N	\N	\N
41	en	Increment Number	ir.sequence,number_increment	-1		field	ir	f	\N	\N	\N	\N	\N
934	en	Export Group	ir.export-res.group,name	-1		model	res	f	\N	\N	\N	\N	\N
935	en	Export	ir.export-res.group,export	-1		field	res	f	\N	\N	\N	\N	\N
936	en	Group	ir.export-res.group,group	-1		field	res	f	\N	\N	\N	\N	\N
937	en	Export Modification Group	ir.export-write-res.group,name	-1		model	res	f	\N	\N	\N	\N	\N
938	en	Export	ir.export-write-res.group,export	-1		field	res	f	\N	\N	\N	\N	\N
939	en	Group	ir.export-write-res.group,group	-1		field	res	f	\N	\N	\N	\N	\N
940	en	Cancel	res.user.config,start,end	-1		wizard_button	res	f	\N	\N	\N	\N	\N
941	en	OK	res.user.config,start,user	-1		wizard_button	res	f	\N	\N	\N	\N	\N
942	en	End	res.user.config,user,end	-1		wizard_button	res	f	\N	\N	\N	\N	\N
943	en	Add	res.user.config,user,add	-1		wizard_button	res	f	\N	\N	\N	\N	\N
944	en	Users	ir.ui.menu,name	47	Users	model	res	f	2022-12-06 20:16:47.746915	0	\N	\N	\N
945	en	Administration	res.group,name	1	Administration	model	res	f	2022-12-06 20:16:47.746915	0	\N	\N	\N
946	en	Groups	ir.action,name	53	Groups	model	res	f	2022-12-06 20:16:47.746915	0	\N	2022-12-06 20:16:47.746915	0
42	en	Next Number	ir.sequence,number_next	-1		field	ir	f	\N	\N	\N	\N	\N
43	en	Next Number	ir.sequence,number_next_internal	-1		field	ir	f	\N	\N	\N	\N	\N
44	en	Number padding	ir.sequence,padding	-1		field	ir	f	\N	\N	\N	\N	\N
45	en	Prefix	ir.sequence,prefix	-1		field	ir	f	\N	\N	\N	\N	\N
46	en	Sequence Type	ir.sequence,sequence_type	-1		field	ir	f	\N	\N	\N	\N	\N
47	en	Suffix	ir.sequence,suffix	-1		field	ir	f	\N	\N	\N	\N	\N
48	en	Timestamp Offset	ir.sequence,timestamp_offset	-1		field	ir	f	\N	\N	\N	\N	\N
49	en	Timestamp Rounding	ir.sequence,timestamp_rounding	-1		field	ir	f	\N	\N	\N	\N	\N
50	en	Type	ir.sequence,type	-1		field	ir	f	\N	\N	\N	\N	\N
51	en	Incremental	ir.sequence,type	-1		selection	ir	f	\N	\N	\N	\N	\N
52	en	Decimal Timestamp	ir.sequence,type	-1		selection	ir	f	\N	\N	\N	\N	\N
53	en	Hexadecimal Timestamp	ir.sequence,type	-1		selection	ir	f	\N	\N	\N	\N	\N
54	en	Sequence Strict	ir.sequence.strict,name	-1		model	ir	f	\N	\N	\N	\N	\N
55	en	Last Timestamp	ir.sequence.strict,last_timestamp	-1		field	ir	f	\N	\N	\N	\N	\N
56	en	Sequence Name	ir.sequence.strict,name	-1		field	ir	f	\N	\N	\N	\N	\N
57	en	Increment Number	ir.sequence.strict,number_increment	-1		field	ir	f	\N	\N	\N	\N	\N
58	en	Next Number	ir.sequence.strict,number_next	-1		field	ir	f	\N	\N	\N	\N	\N
59	en	Next Number	ir.sequence.strict,number_next_internal	-1		field	ir	f	\N	\N	\N	\N	\N
60	en	Number padding	ir.sequence.strict,padding	-1		field	ir	f	\N	\N	\N	\N	\N
61	en	Prefix	ir.sequence.strict,prefix	-1		field	ir	f	\N	\N	\N	\N	\N
62	en	Sequence Type	ir.sequence.strict,sequence_type	-1		field	ir	f	\N	\N	\N	\N	\N
63	en	Suffix	ir.sequence.strict,suffix	-1		field	ir	f	\N	\N	\N	\N	\N
64	en	Timestamp Offset	ir.sequence.strict,timestamp_offset	-1		field	ir	f	\N	\N	\N	\N	\N
65	en	Timestamp Rounding	ir.sequence.strict,timestamp_rounding	-1		field	ir	f	\N	\N	\N	\N	\N
66	en	Type	ir.sequence.strict,type	-1		field	ir	f	\N	\N	\N	\N	\N
67	en	Incremental	ir.sequence.strict,type	-1		selection	ir	f	\N	\N	\N	\N	\N
68	en	Decimal Timestamp	ir.sequence.strict,type	-1		selection	ir	f	\N	\N	\N	\N	\N
69	en	Hexadecimal Timestamp	ir.sequence.strict,type	-1		selection	ir	f	\N	\N	\N	\N	\N
70	en	UI menu	ir.ui.menu,name	-1		model	ir	f	\N	\N	\N	\N	\N
71	en	Action	ir.ui.menu,action	-1		field	ir	f	\N	\N	\N	\N	\N
72	en	Action Keywords	ir.ui.menu,action_keywords	-1		field	ir	f	\N	\N	\N	\N	\N
73	en	Children	ir.ui.menu,childs	-1		field	ir	f	\N	\N	\N	\N	\N
74	en	Complete Name	ir.ui.menu,complete_name	-1		field	ir	f	\N	\N	\N	\N	\N
75	en	Favorite	ir.ui.menu,favorite	-1		field	ir	f	\N	\N	\N	\N	\N
76	en	Groups	ir.ui.menu,groups	-1		field	ir	f	\N	\N	\N	\N	\N
77	en	Icon	ir.ui.menu,icon	-1		field	ir	f	\N	\N	\N	\N	\N
78	en	Menu	ir.ui.menu,name	-1		field	ir	f	\N	\N	\N	\N	\N
79	en	Parent Menu	ir.ui.menu,parent	-1		field	ir	f	\N	\N	\N	\N	\N
80	en	Menu Favorite	ir.ui.menu.favorite,name	-1		model	ir	f	\N	\N	\N	\N	\N
81	en	Menu	ir.ui.menu.favorite,menu	-1		field	ir	f	\N	\N	\N	\N	\N
82	en	User	ir.ui.menu.favorite,user	-1		field	ir	f	\N	\N	\N	\N	\N
83	en	View	ir.ui.view,name	-1		model	ir	f	\N	\N	\N	\N	\N
84	en	View Architecture	ir.ui.view,arch	-1		field	ir	f	\N	\N	\N	\N	\N
85	en	Data	ir.ui.view,data	-1		field	ir	f	\N	\N	\N	\N	\N
86	en	Domain	ir.ui.view,domain	-1		field	ir	f	\N	\N	\N	\N	\N
87	en	Children Field	ir.ui.view,field_childs	-1		field	ir	f	\N	\N	\N	\N	\N
88	en	Inherited View	ir.ui.view,inherit	-1		field	ir	f	\N	\N	\N	\N	\N
89	en	Model	ir.ui.view,model	-1		field	ir	f	\N	\N	\N	\N	\N
90	en	Module	ir.ui.view,module	-1		field	ir	f	\N	\N	\N	\N	\N
91	en	Name	ir.ui.view,name	-1		field	ir	f	\N	\N	\N	\N	\N
92	en	Priority	ir.ui.view,priority	-1		field	ir	f	\N	\N	\N	\N	\N
93	en	View Type	ir.ui.view,type	-1		field	ir	f	\N	\N	\N	\N	\N
94	en	Tree	ir.ui.view,type	-1		selection	ir	f	\N	\N	\N	\N	\N
95	en	Form	ir.ui.view,type	-1		selection	ir	f	\N	\N	\N	\N	\N
96	en	Graph	ir.ui.view,type	-1		selection	ir	f	\N	\N	\N	\N	\N
97	en	Calendar	ir.ui.view,type	-1		selection	ir	f	\N	\N	\N	\N	\N
98	en	Board	ir.ui.view,type	-1		selection	ir	f	\N	\N	\N	\N	\N
99	en	List Form	ir.ui.view,type	-1		selection	ir	f	\N	\N	\N	\N	\N
100	en	Show view	ir.ui.view.show.start,name	-1		model	ir	f	\N	\N	\N	\N	\N
101	en	View Tree Width	ir.ui.view_tree_width,name	-1		model	ir	f	\N	\N	\N	\N	\N
102	en	Field	ir.ui.view_tree_width,field	-1		field	ir	f	\N	\N	\N	\N	\N
103	en	Model	ir.ui.view_tree_width,model	-1		field	ir	f	\N	\N	\N	\N	\N
104	en	User	ir.ui.view_tree_width,user	-1		field	ir	f	\N	\N	\N	\N	\N
105	en	Width	ir.ui.view_tree_width,width	-1		field	ir	f	\N	\N	\N	\N	\N
106	en	View Tree State	ir.ui.view_tree_state,name	-1		model	ir	f	\N	\N	\N	\N	\N
107	en	Child Name	ir.ui.view_tree_state,child_name	-1		field	ir	f	\N	\N	\N	\N	\N
108	en	Domain	ir.ui.view_tree_state,domain	-1		field	ir	f	\N	\N	\N	\N	\N
109	en	Model	ir.ui.view_tree_state,model	-1		field	ir	f	\N	\N	\N	\N	\N
110	en	Expanded Nodes	ir.ui.view_tree_state,nodes	-1		field	ir	f	\N	\N	\N	\N	\N
111	en	Selected Nodes	ir.ui.view_tree_state,selected_nodes	-1		field	ir	f	\N	\N	\N	\N	\N
112	en	User	ir.ui.view_tree_state,user	-1		field	ir	f	\N	\N	\N	\N	\N
113	en	View Search	ir.ui.view_search,name	-1		model	ir	f	\N	\N	\N	\N	\N
114	en	Domain	ir.ui.view_search,domain	-1		field	ir	f	\N	\N	\N	\N	\N
115	en	The PYSON domain.	ir.ui.view_search,domain	-1		help	ir	f	\N	\N	\N	\N	\N
116	en	Model	ir.ui.view_search,model	-1		field	ir	f	\N	\N	\N	\N	\N
117	en	Name	ir.ui.view_search,name	-1		field	ir	f	\N	\N	\N	\N	\N
118	en	User	ir.ui.view_search,user	-1		field	ir	f	\N	\N	\N	\N	\N
119	en	Icon	ir.ui.icon,name	-1		model	ir	f	\N	\N	\N	\N	\N
120	en	Icon	ir.ui.icon,icon	-1		field	ir	f	\N	\N	\N	\N	\N
121	en	Module	ir.ui.icon,module	-1		field	ir	f	\N	\N	\N	\N	\N
122	en	Name	ir.ui.icon,name	-1		field	ir	f	\N	\N	\N	\N	\N
123	en	SVG Path	ir.ui.icon,path	-1		field	ir	f	\N	\N	\N	\N	\N
124	en	Action	ir.action,name	-1		model	ir	f	\N	\N	\N	\N	\N
125	en	Icon	ir.action,icon	-1		field	ir	f	\N	\N	\N	\N	\N
126	en	Keywords	ir.action,keywords	-1		field	ir	f	\N	\N	\N	\N	\N
127	en	Name	ir.action,name	-1		field	ir	f	\N	\N	\N	\N	\N
128	en	Records	ir.action,records	-1		field	ir	f	\N	\N	\N	\N	\N
129	en	The records on which the action runs.	ir.action,records	-1		help	ir	f	\N	\N	\N	\N	\N
130	en	Selected	ir.action,records	-1		selection	ir	f	\N	\N	\N	\N	\N
131	en	Listed	ir.action,records	-1		selection	ir	f	\N	\N	\N	\N	\N
132	en	Type	ir.action,type	-1		field	ir	f	\N	\N	\N	\N	\N
133	en	Usage	ir.action,usage	-1		field	ir	f	\N	\N	\N	\N	\N
134	en	Action keyword	ir.action.keyword,name	-1		model	ir	f	\N	\N	\N	\N	\N
135	en	Action	ir.action.keyword,action	-1		field	ir	f	\N	\N	\N	\N	\N
136	en	Keyword	ir.action.keyword,keyword	-1		field	ir	f	\N	\N	\N	\N	\N
137	en	Open tree	ir.action.keyword,keyword	-1		selection	ir	f	\N	\N	\N	\N	\N
138	en	Print form	ir.action.keyword,keyword	-1		selection	ir	f	\N	\N	\N	\N	\N
139	en	Action form	ir.action.keyword,keyword	-1		selection	ir	f	\N	\N	\N	\N	\N
140	en	Form relate	ir.action.keyword,keyword	-1		selection	ir	f	\N	\N	\N	\N	\N
141	en	Open Graph	ir.action.keyword,keyword	-1		selection	ir	f	\N	\N	\N	\N	\N
142	en	Model	ir.action.keyword,model	-1		field	ir	f	\N	\N	\N	\N	\N
143	en	Action report	ir.action.report,name	-1		model	ir	f	\N	\N	\N	\N	\N
144	en	Action	ir.action.report,action	-1		field	ir	f	\N	\N	\N	\N	\N
145	en	Direct Print	ir.action.report,direct_print	-1		field	ir	f	\N	\N	\N	\N	\N
146	en	Extension	ir.action.report,extension	-1		field	ir	f	\N	\N	\N	\N	\N
147	en	Leave empty for the same as template, see LibreOffice documentation for compatible format.	ir.action.report,extension	-1		help	ir	f	\N	\N	\N	\N	\N
148	en	Icon	ir.action.report,icon	-1		field	ir	f	\N	\N	\N	\N	\N
149	en	Is Custom	ir.action.report,is_custom	-1		field	ir	f	\N	\N	\N	\N	\N
150	en	Keywords	ir.action.report,keywords	-1		field	ir	f	\N	\N	\N	\N	\N
151	en	Model	ir.action.report,model	-1		field	ir	f	\N	\N	\N	\N	\N
152	en	Module	ir.action.report,module	-1		field	ir	f	\N	\N	\N	\N	\N
153	en	Name	ir.action.report,name	-1		field	ir	f	\N	\N	\N	\N	\N
154	en	Records	ir.action.report,records	-1		field	ir	f	\N	\N	\N	\N	\N
155	en	The records on which the action runs.	ir.action.report,records	-1		help	ir	f	\N	\N	\N	\N	\N
156	en	Selected	ir.action.report,records	-1		selection	ir	f	\N	\N	\N	\N	\N
157	en	Listed	ir.action.report,records	-1		selection	ir	f	\N	\N	\N	\N	\N
158	en	Path	ir.action.report,report	-1		field	ir	f	\N	\N	\N	\N	\N
159	en	Content	ir.action.report,report_content	-1		field	ir	f	\N	\N	\N	\N	\N
160	en	Content	ir.action.report,report_content_custom	-1		field	ir	f	\N	\N	\N	\N	\N
161	en	Content HTML	ir.action.report,report_content_html	-1		field	ir	f	\N	\N	\N	\N	\N
162	en	Content Name	ir.action.report,report_content_name	-1		field	ir	f	\N	\N	\N	\N	\N
163	en	Internal Name	ir.action.report,report_name	-1		field	ir	f	\N	\N	\N	\N	\N
164	en	Single	ir.action.report,single	-1		field	ir	f	\N	\N	\N	\N	\N
165	en	Check if the template works only for one record.	ir.action.report,single	-1		help	ir	f	\N	\N	\N	\N	\N
166	en	Template Extension	ir.action.report,template_extension	-1		field	ir	f	\N	\N	\N	\N	\N
167	en	Translatable	ir.action.report,translatable	-1		field	ir	f	\N	\N	\N	\N	\N
168	en	Uncheck to disable translations for this report.	ir.action.report,translatable	-1		help	ir	f	\N	\N	\N	\N	\N
169	en	Type	ir.action.report,type	-1		field	ir	f	\N	\N	\N	\N	\N
170	en	Usage	ir.action.report,usage	-1		field	ir	f	\N	\N	\N	\N	\N
171	en	Action act window	ir.action.act_window,name	-1		model	ir	f	\N	\N	\N	\N	\N
172	en	Domains	ir.action.act_window,act_window_domains	-1		field	ir	f	\N	\N	\N	\N	\N
173	en	Views	ir.action.act_window,act_window_views	-1		field	ir	f	\N	\N	\N	\N	\N
174	en	Action	ir.action.act_window,action	-1		field	ir	f	\N	\N	\N	\N	\N
175	en	Context Value	ir.action.act_window,context	-1		field	ir	f	\N	\N	\N	\N	\N
176	en	Context Domain	ir.action.act_window,context_domain	-1		field	ir	f	\N	\N	\N	\N	\N
177	en	Part of the domain that will be evaluated on each refresh.	ir.action.act_window,context_domain	-1		help	ir	f	\N	\N	\N	\N	\N
178	en	Context Model	ir.action.act_window,context_model	-1		field	ir	f	\N	\N	\N	\N	\N
179	en	Domain Value	ir.action.act_window,domain	-1		field	ir	f	\N	\N	\N	\N	\N
180	en	Domains	ir.action.act_window,domains	-1		field	ir	f	\N	\N	\N	\N	\N
181	en	Icon	ir.action.act_window,icon	-1		field	ir	f	\N	\N	\N	\N	\N
182	en	Keywords	ir.action.act_window,keywords	-1		field	ir	f	\N	\N	\N	\N	\N
183	en	Limit	ir.action.act_window,limit	-1		field	ir	f	\N	\N	\N	\N	\N
184	en	Default limit for the list view.	ir.action.act_window,limit	-1		help	ir	f	\N	\N	\N	\N	\N
185	en	Name	ir.action.act_window,name	-1		field	ir	f	\N	\N	\N	\N	\N
186	en	Order Value	ir.action.act_window,order	-1		field	ir	f	\N	\N	\N	\N	\N
187	en	PySON Context	ir.action.act_window,pyson_context	-1		field	ir	f	\N	\N	\N	\N	\N
188	en	PySON Domain	ir.action.act_window,pyson_domain	-1		field	ir	f	\N	\N	\N	\N	\N
189	en	PySON Order	ir.action.act_window,pyson_order	-1		field	ir	f	\N	\N	\N	\N	\N
190	en	PySON Search Criteria	ir.action.act_window,pyson_search_value	-1		field	ir	f	\N	\N	\N	\N	\N
191	en	Records	ir.action.act_window,records	-1		field	ir	f	\N	\N	\N	\N	\N
192	en	The records on which the action runs.	ir.action.act_window,records	-1		help	ir	f	\N	\N	\N	\N	\N
193	en	Selected	ir.action.act_window,records	-1		selection	ir	f	\N	\N	\N	\N	\N
194	en	Listed	ir.action.act_window,records	-1		selection	ir	f	\N	\N	\N	\N	\N
195	en	Model	ir.action.act_window,res_model	-1		field	ir	f	\N	\N	\N	\N	\N
196	en	Search Criteria	ir.action.act_window,search_value	-1		field	ir	f	\N	\N	\N	\N	\N
197	en	Default search criteria for the list view.	ir.action.act_window,search_value	-1		help	ir	f	\N	\N	\N	\N	\N
198	en	Type	ir.action.act_window,type	-1		field	ir	f	\N	\N	\N	\N	\N
199	en	Usage	ir.action.act_window,usage	-1		field	ir	f	\N	\N	\N	\N	\N
200	en	Views	ir.action.act_window,views	-1		field	ir	f	\N	\N	\N	\N	\N
201	en	Action act window view	ir.action.act_window.view,name	-1		model	ir	f	\N	\N	\N	\N	\N
202	en	Action	ir.action.act_window.view,act_window	-1		field	ir	f	\N	\N	\N	\N	\N
203	en	View	ir.action.act_window.view,view	-1		field	ir	f	\N	\N	\N	\N	\N
204	en	Action act window domain	ir.action.act_window.domain,name	-1		model	ir	f	\N	\N	\N	\N	\N
205	en	Action	ir.action.act_window.domain,act_window	-1		field	ir	f	\N	\N	\N	\N	\N
206	en	Count	ir.action.act_window.domain,count	-1		field	ir	f	\N	\N	\N	\N	\N
207	en	Domain	ir.action.act_window.domain,domain	-1		field	ir	f	\N	\N	\N	\N	\N
208	en	Name	ir.action.act_window.domain,name	-1		field	ir	f	\N	\N	\N	\N	\N
209	en	Action wizard	ir.action.wizard,name	-1		model	ir	f	\N	\N	\N	\N	\N
210	en	Action	ir.action.wizard,action	-1		field	ir	f	\N	\N	\N	\N	\N
211	en	Icon	ir.action.wizard,icon	-1		field	ir	f	\N	\N	\N	\N	\N
212	en	Keywords	ir.action.wizard,keywords	-1		field	ir	f	\N	\N	\N	\N	\N
213	en	Model	ir.action.wizard,model	-1		field	ir	f	\N	\N	\N	\N	\N
214	en	Name	ir.action.wizard,name	-1		field	ir	f	\N	\N	\N	\N	\N
215	en	Records	ir.action.wizard,records	-1		field	ir	f	\N	\N	\N	\N	\N
216	en	The records on which the action runs.	ir.action.wizard,records	-1		help	ir	f	\N	\N	\N	\N	\N
217	en	Selected	ir.action.wizard,records	-1		selection	ir	f	\N	\N	\N	\N	\N
218	en	Listed	ir.action.wizard,records	-1		selection	ir	f	\N	\N	\N	\N	\N
219	en	Type	ir.action.wizard,type	-1		field	ir	f	\N	\N	\N	\N	\N
220	en	Usage	ir.action.wizard,usage	-1		field	ir	f	\N	\N	\N	\N	\N
221	en	Window	ir.action.wizard,window	-1		field	ir	f	\N	\N	\N	\N	\N
222	en	Run wizard in a new window.	ir.action.wizard,window	-1		help	ir	f	\N	\N	\N	\N	\N
223	en	Wizard name	ir.action.wizard,wiz_name	-1		field	ir	f	\N	\N	\N	\N	\N
224	en	Action URL	ir.action.url,name	-1		model	ir	f	\N	\N	\N	\N	\N
225	en	Action	ir.action.url,action	-1		field	ir	f	\N	\N	\N	\N	\N
226	en	Icon	ir.action.url,icon	-1		field	ir	f	\N	\N	\N	\N	\N
227	en	Keywords	ir.action.url,keywords	-1		field	ir	f	\N	\N	\N	\N	\N
228	en	Name	ir.action.url,name	-1		field	ir	f	\N	\N	\N	\N	\N
229	en	Records	ir.action.url,records	-1		field	ir	f	\N	\N	\N	\N	\N
230	en	The records on which the action runs.	ir.action.url,records	-1		help	ir	f	\N	\N	\N	\N	\N
231	en	Selected	ir.action.url,records	-1		selection	ir	f	\N	\N	\N	\N	\N
232	en	Listed	ir.action.url,records	-1		selection	ir	f	\N	\N	\N	\N	\N
233	en	Type	ir.action.url,type	-1		field	ir	f	\N	\N	\N	\N	\N
234	en	Action Url	ir.action.url,url	-1		field	ir	f	\N	\N	\N	\N	\N
235	en	Usage	ir.action.url,usage	-1		field	ir	f	\N	\N	\N	\N	\N
236	en	Model	ir.model,name	-1		model	ir	f	\N	\N	\N	\N	\N
237	en	Fields	ir.model,fields	-1		field	ir	f	\N	\N	\N	\N	\N
238	en	Global Search	ir.model,global_search_p	-1		field	ir	f	\N	\N	\N	\N	\N
239	en	Information	ir.model,info	-1		field	ir	f	\N	\N	\N	\N	\N
240	en	Model Name	ir.model,model	-1		field	ir	f	\N	\N	\N	\N	\N
241	en	Module	ir.model,module	-1		field	ir	f	\N	\N	\N	\N	\N
242	en	Module in which this model is defined.	ir.model,module	-1		help	ir	f	\N	\N	\N	\N	\N
243	en	Model Description	ir.model,name	-1		field	ir	f	\N	\N	\N	\N	\N
244	en	Model field	ir.model.field,name	-1		model	ir	f	\N	\N	\N	\N	\N
245	en	Access	ir.model.field,access	-1		field	ir	f	\N	\N	\N	\N	\N
246	en	If checked, the access right on the model of the field is also tested against the relation of the field.	ir.model.field,access	-1		help	ir	f	\N	\N	\N	\N	\N
247	en	Field Description	ir.model.field,field_description	-1		field	ir	f	\N	\N	\N	\N	\N
248	en	Help	ir.model.field,help	-1		field	ir	f	\N	\N	\N	\N	\N
249	en	Model	ir.model.field,model	-1		field	ir	f	\N	\N	\N	\N	\N
250	en	Module	ir.model.field,module	-1		field	ir	f	\N	\N	\N	\N	\N
251	en	Module in which this field is defined.	ir.model.field,module	-1		help	ir	f	\N	\N	\N	\N	\N
252	en	Name	ir.model.field,name	-1		field	ir	f	\N	\N	\N	\N	\N
253	en	Model Relation	ir.model.field,relation	-1		field	ir	f	\N	\N	\N	\N	\N
254	en	Field Type	ir.model.field,ttype	-1		field	ir	f	\N	\N	\N	\N	\N
255	en	Model access	ir.model.access,name	-1		model	ir	f	\N	\N	\N	\N	\N
256	en	Description	ir.model.access,description	-1		field	ir	f	\N	\N	\N	\N	\N
257	en	Group	ir.model.access,group	-1		field	ir	f	\N	\N	\N	\N	\N
258	en	Model	ir.model.access,model	-1		field	ir	f	\N	\N	\N	\N	\N
259	en	Create Access	ir.model.access,perm_create	-1		field	ir	f	\N	\N	\N	\N	\N
260	en	Delete Access	ir.model.access,perm_delete	-1		field	ir	f	\N	\N	\N	\N	\N
261	en	Read Access	ir.model.access,perm_read	-1		field	ir	f	\N	\N	\N	\N	\N
262	en	Write Access	ir.model.access,perm_write	-1		field	ir	f	\N	\N	\N	\N	\N
263	en	Model Field Access	ir.model.field.access,name	-1		model	ir	f	\N	\N	\N	\N	\N
264	en	Description	ir.model.field.access,description	-1		field	ir	f	\N	\N	\N	\N	\N
265	en	Field	ir.model.field.access,field	-1		field	ir	f	\N	\N	\N	\N	\N
266	en	Group	ir.model.field.access,group	-1		field	ir	f	\N	\N	\N	\N	\N
267	en	Create Access	ir.model.field.access,perm_create	-1		field	ir	f	\N	\N	\N	\N	\N
268	en	Delete Access	ir.model.field.access,perm_delete	-1		field	ir	f	\N	\N	\N	\N	\N
269	en	Read Access	ir.model.field.access,perm_read	-1		field	ir	f	\N	\N	\N	\N	\N
270	en	Write Access	ir.model.field.access,perm_write	-1		field	ir	f	\N	\N	\N	\N	\N
271	en	Model Button	ir.model.button,name	-1		model	ir	f	\N	\N	\N	\N	\N
272	en	Clicks	ir.model.button,clicks	-1		field	ir	f	\N	\N	\N	\N	\N
273	en	Confirm	ir.model.button,confirm	-1		field	ir	f	\N	\N	\N	\N	\N
274	en	Text to ask user confirmation when clicking the button.	ir.model.button,confirm	-1		help	ir	f	\N	\N	\N	\N	\N
275	en	Groups	ir.model.button,groups	-1		field	ir	f	\N	\N	\N	\N	\N
276	en	Help	ir.model.button,help	-1		field	ir	f	\N	\N	\N	\N	\N
277	en	Model	ir.model.button,model	-1		field	ir	f	\N	\N	\N	\N	\N
278	en	Name	ir.model.button,name	-1		field	ir	f	\N	\N	\N	\N	\N
279	en	Reset	ir.model.button,reset	-1		field	ir	f	\N	\N	\N	\N	\N
280	en	Reset by	ir.model.button,reset_by	-1		field	ir	f	\N	\N	\N	\N	\N
281	en	Button that should reset the rules.	ir.model.button,reset_by	-1		help	ir	f	\N	\N	\N	\N	\N
282	en	Rules	ir.model.button,rules	-1		field	ir	f	\N	\N	\N	\N	\N
283	en	Label	ir.model.button,string	-1		field	ir	f	\N	\N	\N	\N	\N
284	en	Model Button Rule	ir.model.button.rule,name	-1		model	ir	f	\N	\N	\N	\N	\N
285	en	Button	ir.model.button.rule,button	-1		field	ir	f	\N	\N	\N	\N	\N
286	en	Condition	ir.model.button.rule,condition	-1		field	ir	f	\N	\N	\N	\N	\N
287	en	A PYSON statement evaluated with the record represented by "self"\nIt activate the rule if true.	ir.model.button.rule,condition	-1		help	ir	f	\N	\N	\N	\N	\N
288	en	Description	ir.model.button.rule,description	-1		field	ir	f	\N	\N	\N	\N	\N
289	en	Number of User	ir.model.button.rule,number_user	-1		field	ir	f	\N	\N	\N	\N	\N
290	en	Model Button Click	ir.model.button.click,name	-1		model	ir	f	\N	\N	\N	\N	\N
291	en	Button	ir.model.button.click,button	-1		field	ir	f	\N	\N	\N	\N	\N
292	en	Record ID	ir.model.button.click,record_id	-1		field	ir	f	\N	\N	\N	\N	\N
293	en	Model Button Reset	ir.model.button-button.reset,name	-1		model	ir	f	\N	\N	\N	\N	\N
294	en	Button	ir.model.button-button.reset,button	-1		field	ir	f	\N	\N	\N	\N	\N
295	en	Button Ruled	ir.model.button-button.reset,button_ruled	-1		field	ir	f	\N	\N	\N	\N	\N
296	en	Model data	ir.model.data,name	-1		model	ir	f	\N	\N	\N	\N	\N
297	en	Resource ID	ir.model.data,db_id	-1		field	ir	f	\N	\N	\N	\N	\N
298	en	The id of the record in the database.	ir.model.data,db_id	-1		help	ir	f	\N	\N	\N	\N	\N
299	en	Identifier on File System	ir.model.data,fs_id	-1		field	ir	f	\N	\N	\N	\N	\N
300	en	The id of the record as known on the file system.	ir.model.data,fs_id	-1		help	ir	f	\N	\N	\N	\N	\N
301	en	Values on File System	ir.model.data,fs_values	-1		field	ir	f	\N	\N	\N	\N	\N
302	en	Model	ir.model.data,model	-1		field	ir	f	\N	\N	\N	\N	\N
303	en	Module	ir.model.data,module	-1		field	ir	f	\N	\N	\N	\N	\N
304	en	No Update	ir.model.data,noupdate	-1		field	ir	f	\N	\N	\N	\N	\N
305	en	Out of Sync	ir.model.data,out_of_sync	-1		field	ir	f	\N	\N	\N	\N	\N
306	en	Values	ir.model.data,values	-1		field	ir	f	\N	\N	\N	\N	\N
307	en	Print Model Graph	ir.model.print_model_graph.start,name	-1		model	ir	f	\N	\N	\N	\N	\N
308	en	Filter	ir.model.print_model_graph.start,filter	-1		field	ir	f	\N	\N	\N	\N	\N
309	en	Entering a Python Regular Expression will exclude matching models from the graph.	ir.model.print_model_graph.start,filter	-1		help	ir	f	\N	\N	\N	\N	\N
310	en	Level	ir.model.print_model_graph.start,level	-1		field	ir	f	\N	\N	\N	\N	\N
311	en	Attachment	ir.attachment,name	-1		model	ir	f	\N	\N	\N	\N	\N
312	en	Copy to Resources	ir.attachment,copy_to_resources	-1		field	ir	f	\N	\N	\N	\N	\N
313	en	Copy to Resources Visible	ir.attachment,copy_to_resources_visible	-1		field	ir	f	\N	\N	\N	\N	\N
314	en	Data	ir.attachment,data	-1		field	ir	f	\N	\N	\N	\N	\N
315	en	Data size	ir.attachment,data_size	-1		field	ir	f	\N	\N	\N	\N	\N
316	en	Description	ir.attachment,description	-1		field	ir	f	\N	\N	\N	\N	\N
317	en	File ID	ir.attachment,file_id	-1		field	ir	f	\N	\N	\N	\N	\N
318	en	Last Modification	ir.attachment,last_modification	-1		field	ir	f	\N	\N	\N	\N	\N
319	en	Last User	ir.attachment,last_user	-1		field	ir	f	\N	\N	\N	\N	\N
320	en	Link	ir.attachment,link	-1		field	ir	f	\N	\N	\N	\N	\N
321	en	Name	ir.attachment,name	-1		field	ir	f	\N	\N	\N	\N	\N
322	en	Resource	ir.attachment,resource	-1		field	ir	f	\N	\N	\N	\N	\N
323	en	Summary	ir.attachment,summary	-1		field	ir	f	\N	\N	\N	\N	\N
324	en	Type	ir.attachment,type	-1		field	ir	f	\N	\N	\N	\N	\N
325	en	Data	ir.attachment,type	-1		selection	ir	f	\N	\N	\N	\N	\N
326	en	Link	ir.attachment,type	-1		selection	ir	f	\N	\N	\N	\N	\N
327	en	Note	ir.note,name	-1		model	ir	f	\N	\N	\N	\N	\N
328	en	Copy to Resources	ir.note,copy_to_resources	-1		field	ir	f	\N	\N	\N	\N	\N
329	en	Copy to Resources Visible	ir.note,copy_to_resources_visible	-1		field	ir	f	\N	\N	\N	\N	\N
330	en	Last Modification	ir.note,last_modification	-1		field	ir	f	\N	\N	\N	\N	\N
331	en	Last User	ir.note,last_user	-1		field	ir	f	\N	\N	\N	\N	\N
332	en	Message	ir.note,message	-1		field	ir	f	\N	\N	\N	\N	\N
333	en	Message	ir.note,message_wrapped	-1		field	ir	f	\N	\N	\N	\N	\N
334	en	Resource	ir.note,resource	-1		field	ir	f	\N	\N	\N	\N	\N
335	en	Unread	ir.note,unread	-1		field	ir	f	\N	\N	\N	\N	\N
336	en	Note Read	ir.note.read,name	-1		model	ir	f	\N	\N	\N	\N	\N
337	en	Note	ir.note.read,note	-1		field	ir	f	\N	\N	\N	\N	\N
338	en	User	ir.note.read,user	-1		field	ir	f	\N	\N	\N	\N	\N
339	en	Avatar	ir.avatar,name	-1		model	ir	f	\N	\N	\N	\N	\N
340	en	Cache	ir.avatar,cache	-1		field	ir	f	\N	\N	\N	\N	\N
341	en	Copy to Resources	ir.avatar,copy_to_resources	-1		field	ir	f	\N	\N	\N	\N	\N
342	en	Copy to Resources Visible	ir.avatar,copy_to_resources_visible	-1		field	ir	f	\N	\N	\N	\N	\N
343	en	Image	ir.avatar,image	-1		field	ir	f	\N	\N	\N	\N	\N
344	en	Image ID	ir.avatar,image_id	-1		field	ir	f	\N	\N	\N	\N	\N
345	en	Last Modification	ir.avatar,last_modification	-1		field	ir	f	\N	\N	\N	\N	\N
346	en	Last User	ir.avatar,last_user	-1		field	ir	f	\N	\N	\N	\N	\N
347	en	Resource	ir.avatar,resource	-1		field	ir	f	\N	\N	\N	\N	\N
348	en	UUID	ir.avatar,uuid	-1		field	ir	f	\N	\N	\N	\N	\N
349	en	Avatar Cache	ir.avatar.cache,name	-1		model	ir	f	\N	\N	\N	\N	\N
350	en	Avatar	ir.avatar.cache,avatar	-1		field	ir	f	\N	\N	\N	\N	\N
351	en	Image	ir.avatar.cache,image	-1		field	ir	f	\N	\N	\N	\N	\N
352	en	Image ID	ir.avatar.cache,image_id	-1		field	ir	f	\N	\N	\N	\N	\N
353	en	Size	ir.avatar.cache,size	-1		field	ir	f	\N	\N	\N	\N	\N
354	en	Cron	ir.cron,name	-1		model	ir	f	\N	\N	\N	\N	\N
355	en	Day	ir.cron,day	-1		field	ir	f	\N	\N	\N	\N	\N
356	en	Hour	ir.cron,hour	-1		field	ir	f	\N	\N	\N	\N	\N
357	en	Interval Number	ir.cron,interval_number	-1		field	ir	f	\N	\N	\N	\N	\N
358	en	Interval Type	ir.cron,interval_type	-1		field	ir	f	\N	\N	\N	\N	\N
359	en	Minutes	ir.cron,interval_type	-1		selection	ir	f	\N	\N	\N	\N	\N
360	en	Hours	ir.cron,interval_type	-1		selection	ir	f	\N	\N	\N	\N	\N
361	en	Days	ir.cron,interval_type	-1		selection	ir	f	\N	\N	\N	\N	\N
362	en	Weeks	ir.cron,interval_type	-1		selection	ir	f	\N	\N	\N	\N	\N
363	en	Months	ir.cron,interval_type	-1		selection	ir	f	\N	\N	\N	\N	\N
364	en	Method	ir.cron,method	-1		field	ir	f	\N	\N	\N	\N	\N
365	en	Run On Time Triggers	ir.cron,method	-1		selection	ir	f	\N	\N	\N	\N	\N
366	en	Clean Task Queue	ir.cron,method	-1		selection	ir	f	\N	\N	\N	\N	\N
367	en	Minute	ir.cron,minute	-1		field	ir	f	\N	\N	\N	\N	\N
368	en	Next Call	ir.cron,next_call	-1		field	ir	f	\N	\N	\N	\N	\N
369	en	Day of Week	ir.cron,weekday	-1		field	ir	f	\N	\N	\N	\N	\N
370	en	Language	ir.lang,name	-1		model	ir	f	\N	\N	\N	\N	\N
371	en	AM	ir.lang,am	-1		field	ir	f	\N	\N	\N	\N	\N
372	en	Code	ir.lang,code	-1		field	ir	f	\N	\N	\N	\N	\N
373	en	RFC 4646 tag: http://tools.ietf.org/html/rfc4646	ir.lang,code	-1		help	ir	f	\N	\N	\N	\N	\N
374	en	Date	ir.lang,date	-1		field	ir	f	\N	\N	\N	\N	\N
375	en	Decimal Separator	ir.lang,decimal_point	-1		field	ir	f	\N	\N	\N	\N	\N
376	en	Direction	ir.lang,direction	-1		field	ir	f	\N	\N	\N	\N	\N
377	en	Left-to-right	ir.lang,direction	-1		selection	ir	f	\N	\N	\N	\N	\N
378	en	Right-to-left	ir.lang,direction	-1		selection	ir	f	\N	\N	\N	\N	\N
379	en	Grouping	ir.lang,grouping	-1		field	ir	f	\N	\N	\N	\N	\N
380	en	Decimal Separator	ir.lang,mon_decimal_point	-1		field	ir	f	\N	\N	\N	\N	\N
381	en	Grouping	ir.lang,mon_grouping	-1		field	ir	f	\N	\N	\N	\N	\N
382	en	Thousands Separator	ir.lang,mon_thousands_sep	-1		field	ir	f	\N	\N	\N	\N	\N
383	en	Negative Currency Symbol Precedes	ir.lang,n_cs_precedes	-1		field	ir	f	\N	\N	\N	\N	\N
384	en	Negative Separate by Space	ir.lang,n_sep_by_space	-1		field	ir	f	\N	\N	\N	\N	\N
385	en	Negative Sign Position	ir.lang,n_sign_posn	-1		field	ir	f	\N	\N	\N	\N	\N
386	en	Name	ir.lang,name	-1		field	ir	f	\N	\N	\N	\N	\N
387	en	Negative Sign	ir.lang,negative_sign	-1		field	ir	f	\N	\N	\N	\N	\N
388	en	Positive Currency Symbol Precedes	ir.lang,p_cs_precedes	-1		field	ir	f	\N	\N	\N	\N	\N
389	en	Positive Separate by Space	ir.lang,p_sep_by_space	-1		field	ir	f	\N	\N	\N	\N	\N
390	en	Positive Sign Position	ir.lang,p_sign_posn	-1		field	ir	f	\N	\N	\N	\N	\N
391	en	Parent Code	ir.lang,parent	-1		field	ir	f	\N	\N	\N	\N	\N
392	en	Code of the exceptional parent	ir.lang,parent	-1		help	ir	f	\N	\N	\N	\N	\N
393	en	PostgreSQL Text Search Configuration	ir.lang,pg_text_search	-1		field	ir	f	\N	\N	\N	\N	\N
394	en	PM	ir.lang,pm	-1		field	ir	f	\N	\N	\N	\N	\N
395	en	Positive Sign	ir.lang,positive_sign	-1		field	ir	f	\N	\N	\N	\N	\N
396	en	Thousands Separator	ir.lang,thousands_sep	-1		field	ir	f	\N	\N	\N	\N	\N
397	en	Translatable	ir.lang,translatable	-1		field	ir	f	\N	\N	\N	\N	\N
398	en	Language Configuration Start	ir.lang.config.start,name	-1		model	ir	f	\N	\N	\N	\N	\N
399	en	Languages	ir.lang.config.start,languages	-1		field	ir	f	\N	\N	\N	\N	\N
400	en	Export	ir.export,name	-1		model	ir	f	\N	\N	\N	\N	\N
401	en	Fields	ir.export,export_fields	-1		field	ir	f	\N	\N	\N	\N	\N
402	en	Name	ir.export,name	-1		field	ir	f	\N	\N	\N	\N	\N
403	en	Resource	ir.export,resource	-1		field	ir	f	\N	\N	\N	\N	\N
404	en	Export line	ir.export.line,name	-1		model	ir	f	\N	\N	\N	\N	\N
405	en	Export	ir.export.line,export	-1		field	ir	f	\N	\N	\N	\N	\N
406	en	Name	ir.export.line,name	-1		field	ir	f	\N	\N	\N	\N	\N
407	en	Rule group	ir.rule.group,name	-1		model	ir	f	\N	\N	\N	\N	\N
408	en	Default	ir.rule.group,default_p	-1		field	ir	f	\N	\N	\N	\N	\N
409	en	Add this rule to all users by default.	ir.rule.group,default_p	-1		help	ir	f	\N	\N	\N	\N	\N
410	en	Global	ir.rule.group,global_p	-1		field	ir	f	\N	\N	\N	\N	\N
411	en	Make the rule global \nso every users must follow this rule.	ir.rule.group,global_p	-1		help	ir	f	\N	\N	\N	\N	\N
412	en	Groups	ir.rule.group,groups	-1		field	ir	f	\N	\N	\N	\N	\N
413	en	Model	ir.rule.group,model	-1		field	ir	f	\N	\N	\N	\N	\N
414	en	Name	ir.rule.group,name	-1		field	ir	f	\N	\N	\N	\N	\N
415	en	Displayed to users when access error is raised for this rule.	ir.rule.group,name	-1		help	ir	f	\N	\N	\N	\N	\N
416	en	Create Access	ir.rule.group,perm_create	-1		field	ir	f	\N	\N	\N	\N	\N
417	en	Delete Access	ir.rule.group,perm_delete	-1		field	ir	f	\N	\N	\N	\N	\N
418	en	Read Access	ir.rule.group,perm_read	-1		field	ir	f	\N	\N	\N	\N	\N
419	en	Write Access	ir.rule.group,perm_write	-1		field	ir	f	\N	\N	\N	\N	\N
420	en	Tests	ir.rule.group,rules	-1		field	ir	f	\N	\N	\N	\N	\N
421	en	The rule is satisfied if at least one test is True.	ir.rule.group,rules	-1		help	ir	f	\N	\N	\N	\N	\N
422	en	Rule	ir.rule,name	-1		model	ir	f	\N	\N	\N	\N	\N
423	en	Domain	ir.rule,domain	-1		field	ir	f	\N	\N	\N	\N	\N
424	en	Domain is evaluated with a PYSON context containing:\n- "user" as the current user	ir.rule,domain	-1		help	ir	f	\N	\N	\N	\N	\N
425	en	Group	ir.rule,rule_group	-1		field	ir	f	\N	\N	\N	\N	\N
426	en	Module	ir.module,name	-1		model	ir	f	\N	\N	\N	\N	\N
427	en	Childs	ir.module,childs	-1		field	ir	f	\N	\N	\N	\N	\N
428	en	Dependencies	ir.module,dependencies	-1		field	ir	f	\N	\N	\N	\N	\N
429	en	Name	ir.module,name	-1		field	ir	f	\N	\N	\N	\N	\N
430	en	Parents	ir.module,parents	-1		field	ir	f	\N	\N	\N	\N	\N
431	en	State	ir.module,state	-1		field	ir	f	\N	\N	\N	\N	\N
432	en	Not Activated	ir.module,state	-1		selection	ir	f	\N	\N	\N	\N	\N
433	en	Activated	ir.module,state	-1		selection	ir	f	\N	\N	\N	\N	\N
434	en	To be upgraded	ir.module,state	-1		selection	ir	f	\N	\N	\N	\N	\N
435	en	To be removed	ir.module,state	-1		selection	ir	f	\N	\N	\N	\N	\N
436	en	To be activated	ir.module,state	-1		selection	ir	f	\N	\N	\N	\N	\N
437	en	Version	ir.module,version	-1		field	ir	f	\N	\N	\N	\N	\N
438	en	Module dependency	ir.module.dependency,name	-1		model	ir	f	\N	\N	\N	\N	\N
439	en	Module	ir.module.dependency,module	-1		field	ir	f	\N	\N	\N	\N	\N
440	en	Name	ir.module.dependency,name	-1		field	ir	f	\N	\N	\N	\N	\N
441	en	State	ir.module.dependency,state	-1		field	ir	f	\N	\N	\N	\N	\N
442	en	Not Activated	ir.module.dependency,state	-1		selection	ir	f	\N	\N	\N	\N	\N
443	en	Activated	ir.module.dependency,state	-1		selection	ir	f	\N	\N	\N	\N	\N
444	en	To be upgraded	ir.module.dependency,state	-1		selection	ir	f	\N	\N	\N	\N	\N
445	en	To be removed	ir.module.dependency,state	-1		selection	ir	f	\N	\N	\N	\N	\N
446	en	To be activated	ir.module.dependency,state	-1		selection	ir	f	\N	\N	\N	\N	\N
447	en	Unknown	ir.module.dependency,state	-1		selection	ir	f	\N	\N	\N	\N	\N
448	en	Config wizard to run after activating a module	ir.module.config_wizard.item,name	-1		model	ir	f	\N	\N	\N	\N	\N
449	en	Action	ir.module.config_wizard.item,action	-1		field	ir	f	\N	\N	\N	\N	\N
450	en	State	ir.module.config_wizard.item,state	-1		field	ir	f	\N	\N	\N	\N	\N
451	en	Open	ir.module.config_wizard.item,state	-1		selection	ir	f	\N	\N	\N	\N	\N
452	en	Done	ir.module.config_wizard.item,state	-1		selection	ir	f	\N	\N	\N	\N	\N
453	en	Module Config Wizard First	ir.module.config_wizard.first,name	-1		model	ir	f	\N	\N	\N	\N	\N
454	en	Module Config Wizard Other	ir.module.config_wizard.other,name	-1		model	ir	f	\N	\N	\N	\N	\N
455	en	Percentage	ir.module.config_wizard.other,percentage	-1		field	ir	f	\N	\N	\N	\N	\N
456	en	Module Config Wizard Done	ir.module.config_wizard.done,name	-1		model	ir	f	\N	\N	\N	\N	\N
457	en	Module Activate Upgrade Start	ir.module.activate_upgrade.start,name	-1		model	ir	f	\N	\N	\N	\N	\N
458	en	Modules to update	ir.module.activate_upgrade.start,module_info	-1		field	ir	f	\N	\N	\N	\N	\N
459	en	Module Activate Upgrade Done	ir.module.activate_upgrade.done,name	-1		model	ir	f	\N	\N	\N	\N	\N
460	en	Cache	ir.cache,name	-1		model	ir	f	\N	\N	\N	\N	\N
461	en	Name	ir.cache,name	-1		field	ir	f	\N	\N	\N	\N	\N
462	en	Timestamp	ir.cache,timestamp	-1		field	ir	f	\N	\N	\N	\N	\N
463	en	Date	ir.date,name	-1		model	ir	f	\N	\N	\N	\N	\N
464	en	Trigger	ir.trigger,name	-1		model	ir	f	\N	\N	\N	\N	\N
465	en	Action	ir.trigger,action	-1		field	ir	f	\N	\N	\N	\N	\N
466	en	Condition	ir.trigger,condition	-1		field	ir	f	\N	\N	\N	\N	\N
467	en	A PYSON statement evaluated with record represented by "self"\nIt triggers the action if true.	ir.trigger,condition	-1		help	ir	f	\N	\N	\N	\N	\N
468	en	Limit Number	ir.trigger,limit_number	-1		field	ir	f	\N	\N	\N	\N	\N
469	en	Limit the number of call to "Action Function" by records.\n0 for no limit.	ir.trigger,limit_number	-1		help	ir	f	\N	\N	\N	\N	\N
470	en	Minimum Delay	ir.trigger,minimum_time_delay	-1		field	ir	f	\N	\N	\N	\N	\N
471	en	Set a minimum time delay between call to "Action Function" for the same record.\nempty for no delay.	ir.trigger,minimum_time_delay	-1		help	ir	f	\N	\N	\N	\N	\N
472	en	Model	ir.trigger,model	-1		field	ir	f	\N	\N	\N	\N	\N
473	en	Name	ir.trigger,name	-1		field	ir	f	\N	\N	\N	\N	\N
474	en	On Create	ir.trigger,on_create	-1		field	ir	f	\N	\N	\N	\N	\N
475	en	On Delete	ir.trigger,on_delete	-1		field	ir	f	\N	\N	\N	\N	\N
476	en	On Time	ir.trigger,on_time	-1		field	ir	f	\N	\N	\N	\N	\N
477	en	On Write	ir.trigger,on_write	-1		field	ir	f	\N	\N	\N	\N	\N
478	en	Trigger Log	ir.trigger.log,name	-1		model	ir	f	\N	\N	\N	\N	\N
479	en	Record ID	ir.trigger.log,record_id	-1		field	ir	f	\N	\N	\N	\N	\N
480	en	Trigger	ir.trigger.log,trigger	-1		field	ir	f	\N	\N	\N	\N	\N
481	en	Session	ir.session,name	-1		model	ir	f	\N	\N	\N	\N	\N
482	en	Key	ir.session,key	-1		field	ir	f	\N	\N	\N	\N	\N
483	en	Session Wizard	ir.session.wizard,name	-1		model	ir	f	\N	\N	\N	\N	\N
484	en	Data	ir.session.wizard,data	-1		field	ir	f	\N	\N	\N	\N	\N
485	en	Queue	ir.queue,name	-1		model	ir	f	\N	\N	\N	\N	\N
486	en	Data	ir.queue,data	-1		field	ir	f	\N	\N	\N	\N	\N
487	en	Dequeued at	ir.queue,dequeued_at	-1		field	ir	f	\N	\N	\N	\N	\N
488	en	Enqueued at	ir.queue,enqueued_at	-1		field	ir	f	\N	\N	\N	\N	\N
489	en	Expected at	ir.queue,expected_at	-1		field	ir	f	\N	\N	\N	\N	\N
490	en	When the task should be done.	ir.queue,expected_at	-1		help	ir	f	\N	\N	\N	\N	\N
491	en	Finished at	ir.queue,finished_at	-1		field	ir	f	\N	\N	\N	\N	\N
492	en	Name	ir.queue,name	-1		field	ir	f	\N	\N	\N	\N	\N
493	en	Scheduled at	ir.queue,scheduled_at	-1		field	ir	f	\N	\N	\N	\N	\N
494	en	When the task can start.	ir.queue,scheduled_at	-1		help	ir	f	\N	\N	\N	\N	\N
495	en	Month	ir.calendar.month,name	-1		model	ir	f	\N	\N	\N	\N	\N
496	en	Abbreviation	ir.calendar.month,abbreviation	-1		field	ir	f	\N	\N	\N	\N	\N
497	en	Index	ir.calendar.month,index	-1		field	ir	f	\N	\N	\N	\N	\N
498	en	Name	ir.calendar.month,name	-1		field	ir	f	\N	\N	\N	\N	\N
499	en	Day	ir.calendar.day,name	-1		model	ir	f	\N	\N	\N	\N	\N
500	en	Abbreviation	ir.calendar.day,abbreviation	-1		field	ir	f	\N	\N	\N	\N	\N
501	en	Index	ir.calendar.day,index	-1		field	ir	f	\N	\N	\N	\N	\N
502	en	Name	ir.calendar.day,name	-1		field	ir	f	\N	\N	\N	\N	\N
503	en	Message	ir.message,name	-1		model	ir	f	\N	\N	\N	\N	\N
504	en	Text	ir.message,text	-1		field	ir	f	\N	\N	\N	\N	\N
505	en	Email	ir.email,name	-1		model	ir	f	\N	\N	\N	\N	\N
506	en	Addresses	ir.email,addresses	-1		field	ir	f	\N	\N	\N	\N	\N
507	en	At	ir.email,at	-1		field	ir	f	\N	\N	\N	\N	\N
508	en	Body	ir.email,body	-1		field	ir	f	\N	\N	\N	\N	\N
509	en	Recipients	ir.email,recipients	-1		field	ir	f	\N	\N	\N	\N	\N
510	en	Hidden Recipients	ir.email,recipients_hidden	-1		field	ir	f	\N	\N	\N	\N	\N
511	en	Secondary Recipients	ir.email,recipients_secondary	-1		field	ir	f	\N	\N	\N	\N	\N
512	en	Resource	ir.email,resource	-1		field	ir	f	\N	\N	\N	\N	\N
513	en	Subject	ir.email,subject	-1		field	ir	f	\N	\N	\N	\N	\N
514	en	User	ir.email,user	-1		field	ir	f	\N	\N	\N	\N	\N
515	en	Email Address	ir.email.address,name	-1		model	ir	f	\N	\N	\N	\N	\N
516	en	Address	ir.email.address,address	-1		field	ir	f	\N	\N	\N	\N	\N
517	en	E-mail	ir.email.address,email	-1		field	ir	f	\N	\N	\N	\N	\N
518	en	Email Template	ir.email.template,name	-1		model	ir	f	\N	\N	\N	\N	\N
519	en	Body	ir.email.template,body	-1		field	ir	f	\N	\N	\N	\N	\N
520	en	Model	ir.email.template,model	-1		field	ir	f	\N	\N	\N	\N	\N
521	en	Model Name	ir.email.template,model_name	-1		field	ir	f	\N	\N	\N	\N	\N
522	en	Name	ir.email.template,name	-1		field	ir	f	\N	\N	\N	\N	\N
523	en	Recipients	ir.email.template,recipients	-1		field	ir	f	\N	\N	\N	\N	\N
524	en	The field that contains the recipient(s).	ir.email.template,recipients	-1		help	ir	f	\N	\N	\N	\N	\N
525	en	Hidden Recipients	ir.email.template,recipients_hidden	-1		field	ir	f	\N	\N	\N	\N	\N
526	en	The field that contains the secondary recipient(s).	ir.email.template,recipients_hidden	-1		help	ir	f	\N	\N	\N	\N	\N
527	en	Hidden Recipients	ir.email.template,recipients_hidden_pyson	-1		field	ir	f	\N	\N	\N	\N	\N
528	en	A PYSON expression that generates a list of hidden recipients with the record represented by "self".	ir.email.template,recipients_hidden_pyson	-1		help	ir	f	\N	\N	\N	\N	\N
529	en	Recipients	ir.email.template,recipients_pyson	-1		field	ir	f	\N	\N	\N	\N	\N
530	en	A PYSON expression that generates a list of recipients with the record represented by "self".	ir.email.template,recipients_pyson	-1		help	ir	f	\N	\N	\N	\N	\N
531	en	Secondary Recipients	ir.email.template,recipients_secondary	-1		field	ir	f	\N	\N	\N	\N	\N
532	en	The field that contains the secondary recipient(s).	ir.email.template,recipients_secondary	-1		help	ir	f	\N	\N	\N	\N	\N
533	en	Secondary Recipients	ir.email.template,recipients_secondary_pyson	-1		field	ir	f	\N	\N	\N	\N	\N
534	en	A PYSON expression that generates a list of secondary recipients with the record represented by "self".	ir.email.template,recipients_secondary_pyson	-1		help	ir	f	\N	\N	\N	\N	\N
535	en	Reports	ir.email.template,reports	-1		field	ir	f	\N	\N	\N	\N	\N
536	en	Subject	ir.email.template,subject	-1		field	ir	f	\N	\N	\N	\N	\N
537	en	Email Template - Report	ir.email.template-ir.action.report,name	-1		model	ir	f	\N	\N	\N	\N	\N
538	en	Report	ir.email.template-ir.action.report,report	-1		field	ir	f	\N	\N	\N	\N	\N
539	en	Template	ir.email.template-ir.action.report,template	-1		field	ir	f	\N	\N	\N	\N	\N
540	en	Cancel	ir.translation.set,start,end	-1		wizard_button	ir	f	\N	\N	\N	\N	\N
541	en	Set	ir.translation.set,start,set_	-1		wizard_button	ir	f	\N	\N	\N	\N	\N
542	en	OK	ir.translation.set,succeed,end	-1		wizard_button	ir	f	\N	\N	\N	\N	\N
543	en	Cancel	ir.translation.clean,start,end	-1		wizard_button	ir	f	\N	\N	\N	\N	\N
544	en	Clean	ir.translation.clean,start,clean	-1		wizard_button	ir	f	\N	\N	\N	\N	\N
545	en	OK	ir.translation.clean,succeed,end	-1		wizard_button	ir	f	\N	\N	\N	\N	\N
546	en	Cancel	ir.translation.update,start,end	-1		wizard_button	ir	f	\N	\N	\N	\N	\N
547	en	Update	ir.translation.update,start,update	-1		wizard_button	ir	f	\N	\N	\N	\N	\N
548	en	Close	ir.translation.export,result,end	-1		wizard_button	ir	f	\N	\N	\N	\N	\N
549	en	Cancel	ir.translation.export,start,end	-1		wizard_button	ir	f	\N	\N	\N	\N	\N
550	en	Export	ir.translation.export,start,export	-1		wizard_button	ir	f	\N	\N	\N	\N	\N
551	en	Close	ir.ui.view.show,start,end	-1		wizard_button	ir	f	\N	\N	\N	\N	\N
552	en	Cancel	ir.model.print_model_graph,start,end	-1		wizard_button	ir	f	\N	\N	\N	\N	\N
553	en	Print	ir.model.print_model_graph,start,print_	-1		wizard_button	ir	f	\N	\N	\N	\N	\N
554	en	OK	ir.module.config_wizard,done,end	-1		wizard_button	ir	f	\N	\N	\N	\N	\N
555	en	Cancel	ir.module.config_wizard,first,end	-1		wizard_button	ir	f	\N	\N	\N	\N	\N
556	en	OK	ir.module.config_wizard,first,action	-1		wizard_button	ir	f	\N	\N	\N	\N	\N
557	en	Cancel	ir.module.config_wizard,other,end	-1		wizard_button	ir	f	\N	\N	\N	\N	\N
558	en	Next	ir.module.config_wizard,other,action	-1		wizard_button	ir	f	\N	\N	\N	\N	\N
559	en	OK	ir.module.activate_upgrade,done,config	-1		wizard_button	ir	f	\N	\N	\N	\N	\N
560	en	Cancel	ir.module.activate_upgrade,start,end	-1		wizard_button	ir	f	\N	\N	\N	\N	\N
561	en	Start Upgrade	ir.module.activate_upgrade,start,upgrade	-1		wizard_button	ir	f	\N	\N	\N	\N	\N
562	en	Cancel	ir.lang.config,start,end	-1		wizard_button	ir	f	\N	\N	\N	\N	\N
563	en	Load	ir.lang.config,start,load	-1		wizard_button	ir	f	\N	\N	\N	\N	\N
564	en	English	ir.lang,name	1	English	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
565	en	Administration	ir.ui.menu,name	1	Administration	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
566	en	User Interface	ir.ui.menu,name	2	User Interface	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
567	en	Icons	ir.action,name	1	Icons	model	ir	f	2022-12-06 20:16:32.52404	0	\N	2022-12-06 20:16:32.52404	0
568	en	Icons	ir.ui.menu,name	3	Icons	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
569	en	Menu	ir.action,name	2	Menu	model	ir	f	2022-12-06 20:16:32.52404	0	\N	2022-12-06 20:16:32.52404	0
570	en	Menu	ir.action,name	3	Menu	model	ir	f	2022-12-06 20:16:32.52404	0	\N	2022-12-06 20:16:32.52404	0
571	en	Menu	ir.ui.menu,name	4	Menu	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
572	en	Show View	ir.action,name	4	Show View	model	ir	f	2022-12-06 20:16:32.52404	0	\N	2022-12-06 20:16:32.52404	0
573	en	Views	ir.action,name	5	Views	model	ir	f	2022-12-06 20:16:32.52404	0	\N	2022-12-06 20:16:32.52404	0
574	en	Views	ir.ui.menu,name	5	Views	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
575	en	Show	ir.model.button,string	1	Show	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
576	en	View Tree Width	ir.action,name	6	View Tree Width	model	ir	f	2022-12-06 20:16:32.52404	0	\N	2022-12-06 20:16:32.52404	0
577	en	View Tree Width	ir.ui.menu,name	6	View Tree Width	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
578	en	Tree State	ir.action,name	7	Tree State	model	ir	f	2022-12-06 20:16:32.52404	0	\N	2022-12-06 20:16:32.52404	0
579	en	Tree State	ir.ui.menu,name	7	Tree State	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
580	en	View Search	ir.action,name	8	View Search	model	ir	f	2022-12-06 20:16:32.52404	0	\N	2022-12-06 20:16:32.52404	0
581	en	View Search	ir.ui.menu,name	8	View Search	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
582	en	Actions	ir.ui.menu,name	9	Actions	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
583	en	Actions	ir.action,name	9	Actions	model	ir	f	2022-12-06 20:16:32.52404	0	\N	2022-12-06 20:16:32.52404	0
584	en	Actions	ir.ui.menu,name	10	Actions	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
585	en	Reports	ir.action,name	10	Reports	model	ir	f	2022-12-06 20:16:32.52404	0	\N	2022-12-06 20:16:32.52404	0
586	en	Reports	ir.ui.menu,name	11	Reports	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
947	en	Groups	ir.ui.menu,name	48	Groups	model	res	f	2022-12-06 20:16:47.746915	0	\N	\N	\N
948	en	Users	ir.action,name	54	Users	model	res	f	2022-12-06 20:16:47.746915	0	\N	2022-12-06 20:16:47.746915	0
949	en	Users	ir.ui.menu,name	49	Users	model	res	f	2022-12-06 20:16:47.746915	0	\N	\N	\N
950	en	Reset Password	ir.model.button,string	12	Reset Password	model	res	f	2022-12-06 20:16:47.746915	0	\N	\N	\N
951	en	Send by email a new temporary password to the user	ir.model.button,help	12	Send by email a new temporary password to the user	model	res	f	2022-12-06 20:16:47.746915	0	\N	\N	\N
952	en	Configure Users	ir.action,name	55	Configure Users	model	res	f	2022-12-06 20:16:47.746915	0	\N	2022-12-06 20:16:47.746915	0
587	en	Window Actions	ir.action,name	11	Window Actions	model	ir	f	2022-12-06 20:16:32.52404	0	\N	2022-12-06 20:16:32.52404	0
588	en	Window Actions	ir.ui.menu,name	12	Window Actions	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
589	en	Wizards	ir.action,name	12	Wizards	model	ir	f	2022-12-06 20:16:32.52404	0	\N	2022-12-06 20:16:32.52404	0
590	en	Wizards	ir.ui.menu,name	13	Wizards	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
591	en	URLs	ir.action,name	13	URLs	model	ir	f	2022-12-06 20:16:32.52404	0	\N	2022-12-06 20:16:32.52404	0
592	en	URLs	ir.ui.menu,name	14	URLs	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
593	en	Models	ir.ui.menu,name	15	Models	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
594	en	Models	ir.action,name	14	Models	model	ir	f	2022-12-06 20:16:32.52404	0	\N	2022-12-06 20:16:32.52404	0
595	en	Models	ir.ui.menu,name	16	Models	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
596	en	Fields	ir.action,name	15	Fields	model	ir	f	2022-12-06 20:16:32.52404	0	\N	2022-12-06 20:16:32.52404	0
597	en	Fields	ir.ui.menu,name	17	Fields	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
598	en	Models Access	ir.action,name	16	Models Access	model	ir	f	2022-12-06 20:16:32.52404	0	\N	2022-12-06 20:16:32.52404	0
599	en	Models Access	ir.ui.menu,name	18	Models Access	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
600	en	Access	ir.action,name	17	Access	model	ir	f	2022-12-06 20:16:32.52404	0	\N	2022-12-06 20:16:32.52404	0
601	en	Fields Access	ir.action,name	18	Fields Access	model	ir	f	2022-12-06 20:16:32.52404	0	\N	2022-12-06 20:16:32.52404	0
602	en	Fields Access	ir.ui.menu,name	19	Fields Access	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
603	en	Access	ir.action,name	19	Access	model	ir	f	2022-12-06 20:16:32.52404	0	\N	2022-12-06 20:16:32.52404	0
604	en	Graph	ir.action,name	20	Graph	model	ir	f	2022-12-06 20:16:32.52404	0	\N	2022-12-06 20:16:32.52404	0
605	en	Graph	ir.action,name	21	Graph	model	ir	f	2022-12-06 20:16:32.52404	0	\N	2022-12-06 20:16:32.52404	0
606	en	Workflow Graph	ir.action,name	22	Workflow Graph	model	ir	f	2022-12-06 20:16:32.52404	0	\N	2022-12-06 20:16:32.52404	0
607	en	Buttons	ir.action,name	23	Buttons	model	ir	f	2022-12-06 20:16:32.52404	0	\N	2022-12-06 20:16:32.52404	0
608	en	Buttons	ir.ui.menu,name	20	Buttons	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
609	en	Clicks	ir.action,name	24	Clicks	model	ir	f	2022-12-06 20:16:32.52404	0	\N	2022-12-06 20:16:32.52404	0
610	en	Data	ir.action,name	25	Data	model	ir	f	2022-12-06 20:16:32.52404	0	\N	2022-12-06 20:16:32.52404	0
611	en	Out of Sync	ir.action.act_window.domain,name	1	Out of Sync	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
612	en	All	ir.action.act_window.domain,name	2	All	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
613	en	Data	ir.ui.menu,name	21	Data	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
614	en	Sync	ir.model.button,string	2	Sync	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
615	en	Sequences	ir.ui.menu,name	22	Sequences	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
616	en	Sequences	ir.action,name	26	Sequences	model	ir	f	2022-12-06 20:16:32.52404	0	\N	2022-12-06 20:16:32.52404	0
617	en	Sequences	ir.ui.menu,name	23	Sequences	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
618	en	Sequences Strict	ir.action,name	27	Sequences Strict	model	ir	f	2022-12-06 20:16:32.52404	0	\N	2022-12-06 20:16:32.52404	0
619	en	Sequences Strict	ir.ui.menu,name	24	Sequences Strict	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
620	en	Types	ir.action,name	28	Types	model	ir	f	2022-12-06 20:16:32.52404	0	\N	2022-12-06 20:16:32.52404	0
621	en	Types	ir.ui.menu,name	25	Types	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
622	en	Attachments	ir.action,name	29	Attachments	model	ir	f	2022-12-06 20:16:32.52404	0	\N	2022-12-06 20:16:32.52404	0
623	en	Attachments	ir.ui.menu,name	26	Attachments	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
624	en	Notes	ir.action,name	30	Notes	model	ir	f	2022-12-06 20:16:32.52404	0	\N	2022-12-06 20:16:32.52404	0
625	en	Notes	ir.ui.menu,name	27	Notes	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
626	en	Scheduler	ir.ui.menu,name	28	Scheduler	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
627	en	Actions	ir.action,name	31	Actions	model	ir	f	2022-12-06 20:16:32.52404	0	\N	2022-12-06 20:16:32.52404	0
628	en	Actions	ir.ui.menu,name	29	Actions	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
629	en	Run Once	ir.model.button,string	3	Run Once	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
630	en	Localization	ir.ui.menu,name	30	Localization	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
631	en	Bulgarian	ir.lang,name	2	Bulgarian	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
632	en	Català	ir.lang,name	3	Català	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
633	en	Czech	ir.lang,name	4	Czech	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
634	en	German	ir.lang,name	5	German	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
635	en	Spanish	ir.lang,name	6	Spanish	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
750	en	Char	ir.message,text	15	Char	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
953	en	Own warning	ir.rule.group,name	1	Own warning	model	res	f	2022-12-06 20:16:47.746915	0	\N	\N	\N
954	en	Own user application	ir.rule.group,name	2	Own user application	model	res	f	2022-12-06 20:16:47.746915	0	\N	\N	\N
955	en	Any user application	ir.rule.group,name	3	Any user application	model	res	f	2022-12-06 20:16:47.746915	0	\N	\N	\N
956	en	Reset Password	ir.action,name	56	Reset Password	model	res	f	2022-12-06 20:16:47.746915	0	\N	2022-12-06 20:16:47.746915	0
957	en	Validate	ir.model.button,string	13	Validate	model	res	f	2022-12-06 20:16:47.746915	0	\N	\N	\N
958	en	Cancel	ir.model.button,string	14	Cancel	model	res	f	2022-12-06 20:16:47.746915	0	\N	\N	\N
959	en	User in groups	ir.rule.group,name	4	User in groups	model	res	f	2022-12-06 20:16:47.746915	0	\N	\N	\N
960	en	User in groups	ir.rule.group,name	5	User in groups	model	res	f	2022-12-06 20:16:47.746915	0	\N	\N	\N
961	en	User in groups	ir.rule.group,name	6	User in groups	model	res	f	2022-12-06 20:16:47.746915	0	\N	\N	\N
962	en	User in groups	ir.rule.group,name	7	User in groups	model	res	f	2022-12-06 20:16:47.746915	0	\N	\N	\N
963	en	User in groups	ir.rule.group,name	8	User in groups	model	res	f	2022-12-06 20:16:47.746915	0	\N	\N	\N
964	en	User in groups	ir.rule.group,name	9	User in groups	model	res	f	2022-12-06 20:16:47.746915	0	\N	\N	\N
965	en	User in groups	ir.rule.group,name	10	User in groups	model	res	f	2022-12-06 20:16:47.746915	0	\N	\N	\N
966	en	User in groups	ir.rule.group,name	11	User in groups	model	res	f	2022-12-06 20:16:47.746915	0	\N	\N	\N
967	en	User in groups	ir.rule.group,name	12	User in groups	model	res	f	2022-12-06 20:16:47.746915	0	\N	\N	\N
636	en	Spanish (Latin American)	ir.lang,name	7	Spanish (Latin American)	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
637	en	Estonian	ir.lang,name	8	Estonian	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
638	en	Persian	ir.lang,name	9	Persian	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
639	en	Finnish	ir.lang,name	10	Finnish	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
640	en	French	ir.lang,name	11	French	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
641	en	Hungarian	ir.lang,name	12	Hungarian	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
642	en	Indonesian	ir.lang,name	13	Indonesian	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
643	en	Italian	ir.lang,name	14	Italian	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
644	en	Lao	ir.lang,name	15	Lao	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
645	en	Lithuanian	ir.lang,name	16	Lithuanian	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
646	en	Dutch	ir.lang,name	17	Dutch	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
647	en	Polish	ir.lang,name	18	Polish	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
648	en	Portuguese	ir.lang,name	19	Portuguese	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
649	en	Romanian	ir.lang,name	20	Romanian	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
650	en	Russian	ir.lang,name	21	Russian	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
651	en	Slovenian	ir.lang,name	22	Slovenian	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
652	en	Turkish	ir.lang,name	23	Turkish	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
653	en	Chinese Simplified	ir.lang,name	24	Chinese Simplified	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
654	en	Languages	ir.action,name	32	Languages	model	ir	f	2022-12-06 20:16:32.52404	0	\N	2022-12-06 20:16:32.52404	0
655	en	Languages	ir.ui.menu,name	31	Languages	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
656	en	Load translations	ir.model.button,string	4	Load translations	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
657	en	Are you sure you want to load languages' translations?	ir.model.button,confirm	4	Are you sure you want to load languages' translations?	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
658	en	Unload translations	ir.model.button,string	5	Unload translations	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
659	en	Are you sure you want to remove languages' translations?	ir.model.button,confirm	5	Are you sure you want to remove languages' translations?	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
660	en	Configure Languages	ir.action,name	33	Configure Languages	model	ir	f	2022-12-06 20:16:32.52404	0	\N	2022-12-06 20:16:32.52404	0
661	en	Translations	ir.action,name	34	Translations	model	ir	f	2022-12-06 20:16:32.52404	0	\N	2022-12-06 20:16:32.52404	0
662	en	Modules	ir.action.act_window.domain,name	3	Modules	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
663	en	Local	ir.action.act_window.domain,name	4	Local	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
664	en	Translations	ir.ui.menu,name	32	Translations	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
665	en	Translations	ir.action,name	35	Translations	model	ir	f	2022-12-06 20:16:32.52404	0	\N	2022-12-06 20:16:32.52404	0
666	en	Translations	ir.action,name	36	Translations	model	ir	f	2022-12-06 20:16:32.52404	0	\N	2022-12-06 20:16:32.52404	0
667	en	Set Translations	ir.action,name	37	Set Translations	model	ir	f	2022-12-06 20:16:32.52404	0	\N	2022-12-06 20:16:32.52404	0
668	en	Set Translations	ir.ui.menu,name	33	Set Translations	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
669	en	Clean Translations	ir.action,name	38	Clean Translations	model	ir	f	2022-12-06 20:16:32.52404	0	\N	2022-12-06 20:16:32.52404	0
670	en	Clean Translations	ir.ui.menu,name	34	Clean Translations	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
671	en	Synchronize Translations	ir.action,name	39	Synchronize Translations	model	ir	f	2022-12-06 20:16:32.52404	0	\N	2022-12-06 20:16:32.52404	0
672	en	Synchronize Translations	ir.ui.menu,name	35	Synchronize Translations	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
673	en	Export Translations	ir.action,name	40	Export Translations	model	ir	f	2022-12-06 20:16:32.52404	0	\N	2022-12-06 20:16:32.52404	0
674	en	Export Translations	ir.ui.menu,name	36	Export Translations	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
675	en	Exports	ir.action,name	41	Exports	model	ir	f	2022-12-06 20:16:32.52404	0	\N	2022-12-06 20:16:32.52404	0
676	en	Exports	ir.ui.menu,name	37	Exports	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
677	en	Record Rules	ir.action,name	42	Record Rules	model	ir	f	2022-12-06 20:16:32.52404	0	\N	2022-12-06 20:16:32.52404	0
678	en	Record Rules	ir.ui.menu,name	38	Record Rules	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
679	en	Modules	ir.ui.menu,name	39	Modules	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
680	en	Modules	ir.action,name	43	Modules	model	ir	f	2022-12-06 20:16:32.52404	0	\N	2022-12-06 20:16:32.52404	0
681	en	Modules	ir.ui.menu,name	40	Modules	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
682	en	Mark for Activation	ir.model.button,string	6	Mark for Activation	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
683	en	Cancel Activation	ir.model.button,string	7	Cancel Activation	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
684	en	Mark for Deactivation (beta)	ir.model.button,string	8	Mark for Deactivation (beta)	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
685	en	Cancel Deactivation	ir.model.button,string	9	Cancel Deactivation	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
686	en	Mark for Upgrade	ir.model.button,string	10	Mark for Upgrade	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
687	en	Cancel Upgrade	ir.model.button,string	11	Cancel Upgrade	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
968	en	Own view search	ir.rule.group,name	13	Own view search	model	res	f	2022-12-06 20:16:47.746915	0	\N	\N	\N
969	en	Common view search	ir.rule.group,name	14	Common view search	model	res	f	2022-12-06 20:16:47.746915	0	\N	\N	\N
970	en	Any view search	ir.rule.group,name	15	Any view search	model	res	f	2022-12-06 20:16:47.746915	0	\N	\N	\N
971	en	Own session	ir.rule.group,name	16	Own session	model	res	f	2022-12-06 20:16:47.746915	0	\N	\N	\N
972	en	Own session	ir.rule.group,name	17	Own session	model	res	f	2022-12-06 20:16:47.746915	0	\N	\N	\N
973	en	Own favorite	ir.rule.group,name	18	Own favorite	model	res	f	2022-12-06 20:16:47.746915	0	\N	\N	\N
974	en	User in groups	ir.rule.group,name	19	User in groups	model	res	f	2022-12-06 20:16:47.746915	0	\N	\N	\N
975	en	User in modification groups	ir.rule.group,name	20	User in modification groups	model	res	f	2022-12-06 20:16:47.746915	0	\N	\N	\N
976	en	Any export	ir.rule.group,name	21	Any export	model	res	f	2022-12-06 20:16:47.746915	0	\N	\N	\N
977	en	User in groups	ir.rule.group,name	22	User in groups	model	res	f	2022-12-06 20:16:47.746915	0	\N	\N	\N
978	en	User in modification groups	ir.rule.group,name	23	User in modification groups	model	res	f	2022-12-06 20:16:47.746915	0	\N	\N	\N
688	en	Config Wizard Items	ir.action,name	44	Config Wizard Items	model	ir	f	2022-12-06 20:16:32.52404	0	\N	2022-12-06 20:16:32.52404	0
689	en	Config Wizard Items	ir.ui.menu,name	41	Config Wizard Items	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
690	en	Module Configuration	ir.action,name	45	Module Configuration	model	ir	f	2022-12-06 20:16:32.52404	0	\N	2022-12-06 20:16:32.52404	0
691	en	Perform Pending Activation/Upgrade	ir.action,name	46	Perform Pending Activation/Upgrade	model	ir	f	2022-12-06 20:16:32.52404	0	\N	2022-12-06 20:16:32.52404	0
692	en	Perform Pending Activation/Upgrade	ir.ui.menu,name	42	Perform Pending Activation/Upgrade	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
693	en	Configure Modules	ir.action,name	47	Configure Modules	model	ir	f	2022-12-06 20:16:32.52404	0	\N	2022-12-06 20:16:32.52404	0
694	en	Triggers	ir.action,name	48	Triggers	model	ir	f	2022-12-06 20:16:32.52404	0	\N	2022-12-06 20:16:32.52404	0
695	en	Triggers	ir.ui.menu,name	43	Triggers	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
696	en	January	ir.calendar.month,name	1	January	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
697	en	February	ir.calendar.month,name	2	February	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
698	en	March	ir.calendar.month,name	3	March	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
699	en	April	ir.calendar.month,name	4	April	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
700	en	May	ir.calendar.month,name	5	May	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
701	en	June	ir.calendar.month,name	6	June	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
702	en	July	ir.calendar.month,name	7	July	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
703	en	August	ir.calendar.month,name	8	August	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
704	en	September	ir.calendar.month,name	9	September	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
705	en	October	ir.calendar.month,name	10	October	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
706	en	November	ir.calendar.month,name	11	November	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
707	en	December	ir.calendar.month,name	12	December	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
708	en	Jan	ir.calendar.month,abbreviation	1	Jan	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
709	en	Feb	ir.calendar.month,abbreviation	2	Feb	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
710	en	Mar	ir.calendar.month,abbreviation	3	Mar	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
711	en	Apr	ir.calendar.month,abbreviation	4	Apr	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
712	en	May	ir.calendar.month,abbreviation	5	May	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
713	en	Jun	ir.calendar.month,abbreviation	6	Jun	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
714	en	Jul	ir.calendar.month,abbreviation	7	Jul	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
715	en	Aug	ir.calendar.month,abbreviation	8	Aug	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
716	en	Sep	ir.calendar.month,abbreviation	9	Sep	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
717	en	Oct	ir.calendar.month,abbreviation	10	Oct	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
718	en	Nov	ir.calendar.month,abbreviation	11	Nov	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
719	en	Dec	ir.calendar.month,abbreviation	12	Dec	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
720	en	Monday	ir.calendar.day,name	1	Monday	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
721	en	Tuesday	ir.calendar.day,name	2	Tuesday	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
722	en	Wednesday	ir.calendar.day,name	3	Wednesday	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
723	en	Thursday	ir.calendar.day,name	4	Thursday	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
724	en	Friday	ir.calendar.day,name	5	Friday	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
725	en	Saturday	ir.calendar.day,name	6	Saturday	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
726	en	Sunday	ir.calendar.day,name	7	Sunday	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
727	en	Mon	ir.calendar.day,abbreviation	1	Mon	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
728	en	Tue	ir.calendar.day,abbreviation	2	Tue	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
729	en	Wed	ir.calendar.day,abbreviation	3	Wed	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
730	en	Thu	ir.calendar.day,abbreviation	4	Thu	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
731	en	Fri	ir.calendar.day,abbreviation	5	Fri	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
732	en	Sat	ir.calendar.day,abbreviation	6	Sat	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
733	en	Sun	ir.calendar.day,abbreviation	7	Sun	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
734	en	Message	ir.action,name	49	Message	model	ir	f	2022-12-06 20:16:32.52404	0	\N	2022-12-06 20:16:32.52404	0
735	en	Message	ir.ui.menu,name	44	Message	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
736	en	ID	ir.message,text	1	ID	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
737	en	Created by	ir.message,text	2	Created by	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
738	en	Created at	ir.message,text	3	Created at	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
739	en	Edited by	ir.message,text	4	Edited by	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
740	en	Edited at	ir.message,text	5	Edited at	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
741	en	Record Name	ir.message,text	6	Record Name	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
742	en	Active	ir.message,text	7	Active	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
743	en	Uncheck to exclude from future use.	ir.message,text	8	Uncheck to exclude from future use.	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
744	en	Name	ir.message,text	9	Name	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
745	en	String	ir.message,text	10	String	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
746	en	Help	ir.message,text	11	Help	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
747	en	Type	ir.message,text	12	Type	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
748	en	Boolean	ir.message,text	13	Boolean	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
749	en	Integer	ir.message,text	14	Integer	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
979	en	Any export	ir.rule.group,name	24	Any export	model	res	f	2022-12-06 20:16:47.746915	0	\N	\N	\N
980	en	The password is too short.	ir.message,text	107	The password is too short.	model	res	f	2022-12-06 20:16:47.746915	0	\N	\N	\N
981	en	The password is forbidden.	ir.message,text	108	The password is forbidden.	model	res	f	2022-12-06 20:16:47.746915	0	\N	\N	\N
982	en	The same characters appear in the password too many times.	ir.message,text	109	The same characters appear in the password too many times.	model	res	f	2022-12-06 20:16:47.746915	0	\N	\N	\N
983	en	The password cannot be the same as user's name.	ir.message,text	110	The password cannot be the same as user's name.	model	res	f	2022-12-06 20:16:47.746915	0	\N	\N	\N
751	en	Float	ir.message,text	16	Float	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
752	en	Numeric	ir.message,text	17	Numeric	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
753	en	Date	ir.message,text	18	Date	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
754	en	DateTime	ir.message,text	19	DateTime	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
755	en	Selection	ir.message,text	20	Selection	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
756	en	MultiSelection	ir.message,text	21	MultiSelection	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
757	en	Digits	ir.message,text	22	Digits	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
758	en	Domain	ir.message,text	23	Domain	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
759	en	A couple of key and label separated by ":" per line.	ir.message,text	24	A couple of key and label separated by ":" per line.	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
760	en	Selection Sorted	ir.message,text	25	Selection Sorted	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
761	en	If the selection must be sorted on label.	ir.message,text	26	If the selection must be sorted on label.	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
762	en	Help Selection	ir.message,text	27	Help Selection	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
763	en	The key followed by the help text separated by a ":", one per line.	ir.message,text	28	The key followed by the help text separated by a ":", one per line.	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
764	en	Selection JSON	ir.message,text	29	Selection JSON	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
765	en	Help Selection JSON	ir.message,text	30	Help Selection JSON	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
766	en	Sequence	ir.message,text	31	Sequence	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
767	en	ID must be positive.	ir.message,text	32	ID must be positive.	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
768	en	You are not allowed to modify this record.	ir.message,text	33	You are not allowed to modify this record.	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
769	en	You are not allowed to delete this record.	ir.message,text	34	You are not allowed to delete this record.	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
770	en	This record is part of the base configuration.	ir.message,text	35	This record is part of the base configuration.	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
771	en	Relation not found: "%(value)r" in "%(model)s".	ir.message,text	36	Relation not found: "%(value)r" in "%(model)s".	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
772	en	Too many relations found: "%(value)r" in "%(model)s".	ir.message,text	37	Too many relations found: "%(value)r" in "%(model)s".	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
773	en	Syntax error for reference: "%(value)r" in "%(field)s".	ir.message,text	38	Syntax error for reference: "%(value)r" in "%(field)s".	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
774	en	Syntax error for XML id: "%(value)r" in "%(field)s".	ir.message,text	39	Syntax error for XML id: "%(value)r" in "%(field)s".	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
775	en	The value for field "%(field)s" in "%(model)s" is not valid according to its domain.	ir.message,text	40	The value for field "%(field)s" in "%(model)s" is not valid according to its domain.	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
776	en	A value is required for field "%(field)s" in "%(model)s".	ir.message,text	41	A value is required for field "%(field)s" in "%(model)s".	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
777	en	The value for field "%(field)s" in "%(model)s" is too long (%(size)i > %(max_size)i).	ir.message,text	42	The value for field "%(field)s" in "%(model)s" is too long (%(size)i > %(max_size)i).	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
778	en	The number of digits in the value "%(value)s" for field "%(field)s" in "%(model)s" exceeds the limit of "%(digits)i".	ir.message,text	43	The number of digits in the value "%(value)s" for field "%(field)s" in "%(model)s" exceeds the limit of "%(digits)i".	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
779	en	The value "%(value)s" for field "%(field)s" in "%(model)s" contains some invalid chars "%(chars)s".	ir.message,text	44	The value "%(value)s" for field "%(field)s" in "%(model)s" contains some invalid chars "%(chars)s".	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
780	en	The value "%(value)s" for field "%(field)s" in "%(model)s" is not one of the allowed options.	ir.message,text	45	The value "%(value)s" for field "%(field)s" in "%(model)s" is not one of the allowed options.	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
781	en	The time value "%(value)s" for field "%(field)s" in "%(model)s" is not valid.	ir.message,text	46	The time value "%(value)s" for field "%(field)s" in "%(model)s" is not valid.	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
782	en	The value "%(value)s" for field "%(field)s" in "%(model)s" does not exist.	ir.message,text	47	The value "%(value)s" for field "%(field)s" in "%(model)s" does not exist.	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
783	en	The records could not be deleted because they are used by field "%(field)s" of "%(model)s".	ir.message,text	48	The records could not be deleted because they are used by field "%(field)s" of "%(model)s".	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
784	en	You are not allowed to access "%(model)s".	ir.message,text	49	You are not allowed to access "%(model)s".	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
785	en	You are not allowed to access "%(model)s.%(field)s".	ir.message,text	50	You are not allowed to access "%(model)s.%(field)s".	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
786	en	You are not allowed to create records of "%(model)s" because they fail on at least one of these rules:\n%(rules)s	ir.message,text	51	You are not allowed to create records of "%(model)s" because they fail on at least one of these rules:\n%(rules)s	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
787	en	You are not allowed to read records "%(ids)s" of "%(model)s" because of at least one of these rules:\n%(rules)s	ir.message,text	52	You are not allowed to read records "%(ids)s" of "%(model)s" because of at least one of these rules:\n%(rules)s	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
788	en	You are trying to read records "%(ids)s" of "%(model)s" that don't exist anymore.	ir.message,text	53	You are trying to read records "%(ids)s" of "%(model)s" that don't exist anymore.	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
789	en	You are not allowed to write to records "%(ids)s" of "%(model)s" because of at least one of these rules:\n%(rules)s	ir.message,text	54	You are not allowed to write to records "%(ids)s" of "%(model)s" because of at least one of these rules:\n%(rules)s	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
790	en	You are trying to write to records "%(ids)s" of "%(model)s" that don't exist anymore.	ir.message,text	55	You are trying to write to records "%(ids)s" of "%(model)s" that don't exist anymore.	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
791	en	You are not allowed to delete records "%(ids)s" of "%(model)s" because of at lease one of those rules:\n%(rules)s	ir.message,text	56	You are not allowed to delete records "%(ids)s" of "%(model)s" because of at lease one of those rules:\n%(rules)s	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
792	en	Invalid domain in schema "%(schema)s".	ir.message,text	57	Invalid domain in schema "%(schema)s".	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
793	en	Invalid selection in schema "%(schema)s".	ir.message,text	58	Invalid selection in schema "%(schema)s".	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
794	en	Invalid help selection in schema "%(schema)s".	ir.message,text	59	Invalid help selection in schema "%(schema)s".	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
795	en	Recursion error: Record "%(rec_name)s" with parent "%(parent_rec_name)s" was configured as ancestor of itself.	ir.message,text	60	Recursion error: Record "%(rec_name)s" with parent "%(parent_rec_name)s" was configured as ancestor of itself.	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
796	en	Missing search function for field "%(field)s" in "%(model)s".	ir.message,text	61	Missing search function for field "%(field)s" in "%(model)s".	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
797	en	Missing setter function for field "%(field)s" in "%(model)s".	ir.message,text	62	Missing setter function for field "%(field)s" in "%(model)s".	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
798	en	Calling button "%(button)s on "%(model)s" is not allowed.	ir.message,text	63	Calling button "%(button)s on "%(model)s" is not allowed.	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
799	en	Invalid XML for view "%(name)s".	ir.message,text	64	Invalid XML for view "%(name)s".	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
800	en	Wrong wizard model in keyword action "%(name)s".	ir.message,text	65	Wrong wizard model in keyword action "%(name)s".	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
801	en	Invalid email definition for report "%(name)s".	ir.message,text	66	Invalid email definition for report "%(name)s".	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
802	en	Invalid view "%(view)s" for action "%(action)s".	ir.message,text	67	Invalid view "%(view)s" for action "%(action)s".	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
803	en	Invalid domain or search criteria "%(domain)s" for action "%(action)s".	ir.message,text	68	Invalid domain or search criteria "%(domain)s" for action "%(action)s".	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
804	en	Invalid context "%(context)s" for action "%(action)s".	ir.message,text	69	Invalid context "%(context)s" for action "%(action)s".	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
805	en	The condition "%(condition)s" is not a valid PYSON expression for button rule "%(rule)s".	ir.message,text	70	The condition "%(condition)s" is not a valid PYSON expression for button rule "%(rule)s".	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
806	en	Missing sequence.	ir.message,text	71	Missing sequence.	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
807	en	Invalid prefix "%(affix)s" for sequence "%(sequence)s".	ir.message,text	72	Invalid prefix "%(affix)s" for sequence "%(sequence)s".	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
808	en	Invalid suffix "%(affix)s" for sequence "%(sequence)s".	ir.message,text	73	Invalid suffix "%(affix)s" for sequence "%(sequence)s".	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
809	en	The "Last Timestamp" cannot be in the future for sequence "%s".	ir.message,text	74	The "Last Timestamp" cannot be in the future for sequence "%s".	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
810	en	You cannot change the sequence type of a sequence instead create a new sequence.	ir.message,text	75	You cannot change the sequence type of a sequence instead create a new sequence.	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
811	en	Invalid grouping "%(grouping)s" for language "%(language)s".	ir.message,text	76	Invalid grouping "%(grouping)s" for language "%(language)s".	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
812	en	Invalid date format "%(format)s" for language "%(language)s".	ir.message,text	77	Invalid date format "%(format)s" for language "%(language)s".	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
813	en	The default language "%(language)s" must be translatable.	ir.message,text	78	The default language "%(language)s" must be translatable.	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
814	en	The default language "%(language)s" can not be deleted.	ir.message,text	79	The default language "%(language)s" can not be deleted.	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
815	en	Invalid domain in rule "%(name)s".	ir.message,text	80	Invalid domain in rule "%(name)s".	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
816	en	You can not export translation "%(name)s" because it has been overridden by module "%(overriding_module)s".	ir.message,text	81	You can not export translation "%(name)s" because it has been overridden by module "%(overriding_module)s".	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
817	en	You can not remove a module that is activated or that is about to be activated.	ir.message,text	82	You can not remove a module that is activated or that is about to be activated.	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
818	en	Some activated modules depend on the ones you are trying to deactivate:	ir.message,text	83	Some activated modules depend on the ones you are trying to deactivate:	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
819	en	Condition "%(condition)s" is not a valid PYSON expression for trigger "%(trigger)s".	ir.message,text	84	Condition "%(condition)s" is not a valid PYSON expression for trigger "%(trigger)s".	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
820	en	Failed to save, please retry.	ir.message,text	85	Failed to save, please retry.	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
821	en	Y	ir.message,text	86	Y	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
822	en	M	ir.message,text	87	M	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
823	en	w	ir.message,text	88	w	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
824	en	d	ir.message,text	89	d	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
825	en	h	ir.message,text	90	h	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
826	en	m	ir.message,text	91	m	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
827	en	s	ir.message,text	92	s	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
828	en	The resources to which this record must be copied.	ir.message,text	93	The resources to which this record must be copied.	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
829	en	Attachments	ir.message,text	94	Attachments	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
830	en	Notes	ir.message,text	95	Notes	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
831	en	You are not allowed to execute wizard "%(wizard)s".	ir.message,text	96	You are not allowed to execute wizard "%(wizard)s".	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
832	en	You are not allowed to execute wizard "%(wizard)s" on "%(model)s".	ir.message,text	97	You are not allowed to execute wizard "%(wizard)s" on "%(model)s".	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
833	en	Invalid subject in e-mail template "%(template)s" with exception "%(exception)s".	ir.message,text	98	Invalid subject in e-mail template "%(template)s" with exception "%(exception)s".	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
909	en	Action	ir.action-res.group,action	-1		field	res	f	\N	\N	\N	\N	\N
834	en	Invalid body in e-mail template "%(template)s" with exception "%(exception)s".	ir.message,text	99	Invalid body in e-mail template "%(template)s" with exception "%(exception)s".	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
835	en	Invalid PYSON %(field)s in e-mail template "%(template)s" with exception "%(exception)s".	ir.message,text	100	Invalid PYSON %(field)s in e-mail template "%(template)s" with exception "%(exception)s".	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
836	en	The PYSON %(field)s in e-mail template "%(template)s" must generate a list.	ir.message,text	101	The PYSON %(field)s in e-mail template "%(template)s" must generate a list.	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
837	en	Only one avatar is allowed per resource.	ir.message,text	102	Only one avatar is allowed per resource.	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
838	en	The size of an avatar must be unique.	ir.message,text	103	The size of an avatar must be unique.	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
839	en	Avatar	ir.message,text	104	Avatar	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
840	en	Avatars	ir.message,text	105	Avatars	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
841	en	Avatar URL	ir.message,text	106	Avatar URL	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
842	en	E-mails	ir.action,name	50	E-mails	model	ir	f	2022-12-06 20:16:32.52404	0	\N	2022-12-06 20:16:32.52404	0
843	en	E-mails	ir.ui.menu,name	45	E-mails	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
844	en	E-mail Archives	ir.action,name	51	E-mail Archives	model	ir	f	2022-12-06 20:16:32.52404	0	\N	2022-12-06 20:16:32.52404	0
845	en	E-mail Templates	ir.action,name	52	E-mail Templates	model	ir	f	2022-12-06 20:16:32.52404	0	\N	2022-12-06 20:16:32.52404	0
846	en	E-mail Templates	ir.ui.menu,name	46	E-mail Templates	model	ir	f	2022-12-06 20:16:32.52404	0	\N	\N	\N
847	en	Group	res.group,name	-1		model	res	f	\N	\N	\N	\N	\N
848	en	Buttons	res.group,buttons	-1		field	res	f	\N	\N	\N	\N	\N
849	en	Access Field	res.group,field_access	-1		field	res	f	\N	\N	\N	\N	\N
850	en	Access Menu	res.group,menu_access	-1		field	res	f	\N	\N	\N	\N	\N
851	en	Access Model	res.group,model_access	-1		field	res	f	\N	\N	\N	\N	\N
852	en	Name	res.group,name	-1		field	res	f	\N	\N	\N	\N	\N
853	en	Parent	res.group,parent	-1		field	res	f	\N	\N	\N	\N	\N
854	en	The group to inherit accesses from.	res.group,parent	-1		help	res	f	\N	\N	\N	\N	\N
855	en	Rules	res.group,rule_groups	-1		field	res	f	\N	\N	\N	\N	\N
856	en	Users	res.group,users	-1		field	res	f	\N	\N	\N	\N	\N
857	en	User	res.user,name	-1		model	res	f	\N	\N	\N	\N	\N
858	en	Actions	res.user,actions	-1		field	res	f	\N	\N	\N	\N	\N
859	en	Actions that will be run at login.	res.user,actions	-1		help	res	f	\N	\N	\N	\N	\N
860	en	Applications	res.user,applications	-1		field	res	f	\N	\N	\N	\N	\N
861	en	Avatar Badge URL	res.user,avatar_badge_url	-1		field	res	f	\N	\N	\N	\N	\N
862	en	Email	res.user,email	-1		field	res	f	\N	\N	\N	\N	\N
863	en	Groups	res.user,groups	-1		field	res	f	\N	\N	\N	\N	\N
864	en	Language	res.user,language	-1		field	res	f	\N	\N	\N	\N	\N
865	en	Language Direction	res.user,language_direction	-1		field	res	f	\N	\N	\N	\N	\N
866	en	Login	res.user,login	-1		field	res	f	\N	\N	\N	\N	\N
867	en	Menu Action	res.user,menu	-1		field	res	f	\N	\N	\N	\N	\N
868	en	Name	res.user,name	-1		field	res	f	\N	\N	\N	\N	\N
869	en	Password	res.user,password	-1		field	res	f	\N	\N	\N	\N	\N
870	en	Password Hash	res.user,password_hash	-1		field	res	f	\N	\N	\N	\N	\N
871	en	Reset Password	res.user,password_reset	-1		field	res	f	\N	\N	\N	\N	\N
872	en	Reset Password Expire	res.user,password_reset_expire	-1		field	res	f	\N	\N	\N	\N	\N
873	en	PySON Menu	res.user,pyson_menu	-1		field	res	f	\N	\N	\N	\N	\N
874	en	Sessions	res.user,sessions	-1		field	res	f	\N	\N	\N	\N	\N
875	en	Signature	res.user,signature	-1		field	res	f	\N	\N	\N	\N	\N
876	en	Status Bar	res.user,status_bar	-1		field	res	f	\N	\N	\N	\N	\N
877	en	Warnings	res.user,warnings	-1		field	res	f	\N	\N	\N	\N	\N
878	en	Login Attempt	res.user.login.attempt,name	-1		model	res	f	\N	\N	\N	\N	\N
879	en	Device Cookie	res.user.login.attempt,device_cookie	-1		field	res	f	\N	\N	\N	\N	\N
880	en	IP Address	res.user.login.attempt,ip_address	-1		field	res	f	\N	\N	\N	\N	\N
881	en	IP Network	res.user.login.attempt,ip_network	-1		field	res	f	\N	\N	\N	\N	\N
882	en	Login	res.user.login.attempt,login	-1		field	res	f	\N	\N	\N	\N	\N
883	en	User Device	res.user.device,name	-1		model	res	f	\N	\N	\N	\N	\N
884	en	Cookie	res.user.device,cookie	-1		field	res	f	\N	\N	\N	\N	\N
885	en	Login	res.user.device,login	-1		field	res	f	\N	\N	\N	\N	\N
886	en	User - Action	res.user-ir.action,name	-1		model	res	f	\N	\N	\N	\N	\N
887	en	Action	res.user-ir.action,action	-1		field	res	f	\N	\N	\N	\N	\N
888	en	User	res.user-ir.action,user	-1		field	res	f	\N	\N	\N	\N	\N
889	en	User - Group	res.user-res.group,name	-1		model	res	f	\N	\N	\N	\N	\N
890	en	Group	res.user-res.group,group	-1		field	res	f	\N	\N	\N	\N	\N
891	en	User	res.user-res.group,user	-1		field	res	f	\N	\N	\N	\N	\N
892	en	User Warning	res.user.warning,name	-1		model	res	f	\N	\N	\N	\N	\N
893	en	Always	res.user.warning,always	-1		field	res	f	\N	\N	\N	\N	\N
894	en	Name	res.user.warning,name	-1		field	res	f	\N	\N	\N	\N	\N
895	en	User	res.user.warning,user	-1		field	res	f	\N	\N	\N	\N	\N
896	en	User Application	res.user.application,name	-1		model	res	f	\N	\N	\N	\N	\N
897	en	Application	res.user.application,application	-1		field	res	f	\N	\N	\N	\N	\N
898	en	Key	res.user.application,key	-1		field	res	f	\N	\N	\N	\N	\N
899	en	State	res.user.application,state	-1		field	res	f	\N	\N	\N	\N	\N
900	en	Requested	res.user.application,state	-1		selection	res	f	\N	\N	\N	\N	\N
901	en	Validated	res.user.application,state	-1		selection	res	f	\N	\N	\N	\N	\N
902	en	Cancelled	res.user.application,state	-1		selection	res	f	\N	\N	\N	\N	\N
903	en	User	res.user.application,user	-1		field	res	f	\N	\N	\N	\N	\N
904	en	User Config Init	res.user.config.start,name	-1		model	res	f	\N	\N	\N	\N	\N
905	en	UI Menu - Group	ir.ui.menu-res.group,name	-1		model	res	f	\N	\N	\N	\N	\N
906	en	Group	ir.ui.menu-res.group,group	-1		field	res	f	\N	\N	\N	\N	\N
907	en	Menu	ir.ui.menu-res.group,menu	-1		field	res	f	\N	\N	\N	\N	\N
908	en	Action - Group	ir.action-res.group,name	-1		model	res	f	\N	\N	\N	\N	\N
910	en	Group	ir.action-res.group,group	-1		field	res	f	\N	\N	\N	\N	\N
911	en	Groups	ir.action,groups	-1		field	res	f	\N	\N	\N	\N	\N
912	en	Groups	ir.action.report,groups	-1		field	res	f	\N	\N	\N	\N	\N
984	en	The password cannot be the same as user's login.	ir.message,text	111	The password cannot be the same as user's login.	model	res	f	2022-12-06 20:16:47.746915	0	\N	\N	\N
985	en	The password cannot be the same as user's email address.	ir.message,text	112	The password cannot be the same as user's email address.	model	res	f	2022-12-06 20:16:47.746915	0	\N	\N	\N
986	en	For logging purposes users cannot be deleted, instead they should be deactivated.	ir.message,text	113	For logging purposes users cannot be deleted, instead they should be deactivated.	model	res	f	2022-12-06 20:16:47.746915	0	\N	\N	\N
987	en	Password for %(login)s	ir.message,text	114	Password for %(login)s	model	res	f	2022-12-06 20:16:47.746915	0	\N	\N	\N
\.


--
-- Data for Name: ir_trigger; Type: TABLE DATA; Schema: public; Owner: gnuhealth
--

COPY public.ir_trigger (id, action, active, condition, create_date, create_uid, limit_number, minimum_time_delay, model, name, on_create, on_delete, on_time, on_write, write_date, write_uid) FROM stdin;
\.


--
-- Data for Name: ir_trigger__history; Type: TABLE DATA; Schema: public; Owner: gnuhealth
--

COPY public.ir_trigger__history (id, __id) FROM stdin;
\.


--
-- Data for Name: ir_trigger_log; Type: TABLE DATA; Schema: public; Owner: gnuhealth
--

COPY public.ir_trigger_log (id, create_date, create_uid, record_id, trigger, write_date, write_uid) FROM stdin;
\.


--
-- Data for Name: ir_ui_icon; Type: TABLE DATA; Schema: public; Owner: gnuhealth
--

COPY public.ir_ui_icon (id, create_date, create_uid, module, name, path, sequence, write_date, write_uid) FROM stdin;
1	2022-12-06 20:16:32.52404	0	ir	tryton-board	ui/icons/tryton-board.svg	10	\N	\N
2	2022-12-06 20:16:32.52404	0	ir	tryton-calendar	ui/icons/tryton-calendar.svg	10	\N	\N
3	2022-12-06 20:16:32.52404	0	ir	tryton-folder	ui/icons/tryton-folder.svg	10	\N	\N
4	2022-12-06 20:16:32.52404	0	ir	tryton-form	ui/icons/tryton-form.svg	10	\N	\N
5	2022-12-06 20:16:32.52404	0	ir	tryton-graph	ui/icons/tryton-graph.svg	10	\N	\N
6	2022-12-06 20:16:32.52404	0	ir	tryton-list	ui/icons/tryton-list.svg	10	\N	\N
7	2022-12-06 20:16:32.52404	0	ir	tryton-settings	ui/icons/tryton-settings.svg	10	\N	\N
8	2022-12-06 20:16:32.52404	0	ir	tryton-tree	ui/icons/tryton-tree.svg	10	\N	\N
\.


--
-- Data for Name: ir_ui_menu; Type: TABLE DATA; Schema: public; Owner: gnuhealth
--

COPY public.ir_ui_menu (id, parent, name, icon, active, create_date, create_uid, sequence, write_date, write_uid) FROM stdin;
1	\N	Administration	tryton-settings	t	2022-12-06 20:16:32.52404	0	9999	\N	\N
2	1	User Interface	tryton-folder	t	2022-12-06 20:16:32.52404	0	50	\N	\N
3	2	Icons	tryton-list	t	2022-12-06 20:16:32.52404	0	20	\N	\N
4	2	Menu	tryton-list	t	2022-12-06 20:16:32.52404	0	10	\N	\N
5	2	Views	tryton-list	t	2022-12-06 20:16:32.52404	0	10	\N	\N
6	2	View Tree Width	tryton-list	t	2022-12-06 20:16:32.52404	0	50	\N	\N
7	2	Tree State	tryton-list	t	2022-12-06 20:16:32.52404	0	50	\N	\N
8	2	View Search	tryton-list	t	2022-12-06 20:16:32.52404	0	50	\N	\N
9	2	Actions	tryton-folder	t	2022-12-06 20:16:32.52404	0	50	\N	\N
10	9	Actions	tryton-list	t	2022-12-06 20:16:32.52404	0	10	\N	\N
11	9	Reports	tryton-list	t	2022-12-06 20:16:32.52404	0	20	\N	\N
12	9	Window Actions	tryton-list	t	2022-12-06 20:16:32.52404	0	20	\N	\N
13	9	Wizards	tryton-list	t	2022-12-06 20:16:32.52404	0	50	\N	\N
14	9	URLs	tryton-list	t	2022-12-06 20:16:32.52404	0	20	\N	\N
15	1	Models	tryton-folder	t	2022-12-06 20:16:32.52404	0	50	\N	\N
16	15	Models	tryton-list	t	2022-12-06 20:16:32.52404	0	10	\N	\N
17	16	Fields	tryton-list	t	2022-12-06 20:16:32.52404	0	20	\N	\N
18	15	Models Access	tryton-list	t	2022-12-06 20:16:32.52404	0	30	\N	\N
19	18	Fields Access	tryton-list	t	2022-12-06 20:16:32.52404	0	10	\N	\N
20	18	Buttons	tryton-list	t	2022-12-06 20:16:32.52404	0	20	\N	\N
21	16	Data	tryton-list	t	2022-12-06 20:16:32.52404	0	50	\N	\N
22	1	Sequences	tryton-folder	t	2022-12-06 20:16:32.52404	0	20	\N	\N
23	22	Sequences	tryton-list	t	2022-12-06 20:16:32.52404	0	10	\N	\N
24	22	Sequences Strict	tryton-list	t	2022-12-06 20:16:32.52404	0	10	\N	\N
25	22	Types	tryton-list	t	2022-12-06 20:16:32.52404	0	20	\N	\N
26	15	Attachments	tryton-list	t	2022-12-06 20:16:32.52404	0	50	\N	\N
27	15	Notes	tryton-list	t	2022-12-06 20:16:32.52404	0	50	\N	\N
28	1	Scheduler	tryton-folder	t	2022-12-06 20:16:32.52404	0	50	\N	\N
29	28	Actions	tryton-list	t	2022-12-06 20:16:32.52404	0	10	\N	\N
30	1	Localization	tryton-folder	t	2022-12-06 20:16:32.52404	0	30	\N	\N
31	30	Languages	tryton-list	t	2022-12-06 20:16:32.52404	0	10	\N	\N
32	30	Translations	tryton-list	t	2022-12-06 20:16:32.52404	0	20	\N	\N
33	30	Set Translations	tryton-launch	t	2022-12-06 20:16:32.52404	0	90	\N	\N
34	30	Clean Translations	tryton-launch	t	2022-12-06 20:16:32.52404	0	91	\N	\N
35	30	Synchronize Translations	tryton-launch	t	2022-12-06 20:16:32.52404	0	92	\N	\N
36	30	Export Translations	tryton-launch	t	2022-12-06 20:16:32.52404	0	93	\N	\N
37	15	Exports	tryton-list	t	2022-12-06 20:16:32.52404	0	50	\N	\N
38	15	Record Rules	tryton-list	t	2022-12-06 20:16:32.52404	0	30	\N	\N
39	1	Modules	tryton-folder	t	2022-12-06 20:16:32.52404	0	20	\N	\N
40	39	Modules	tryton-list	t	2022-12-06 20:16:32.52404	0	10	\N	\N
41	39	Config Wizard Items	tryton-list	t	2022-12-06 20:16:32.52404	0	50	\N	\N
42	39	Perform Pending Activation/Upgrade	tryton-launch	t	2022-12-06 20:16:32.52404	0	90	\N	\N
43	15	Triggers	tryton-list	t	2022-12-06 20:16:32.52404	0	50	\N	\N
44	30	Message	tryton-list	t	2022-12-06 20:16:32.52404	0	20	\N	\N
45	15	E-mails	tryton-list	t	2022-12-06 20:16:32.52404	0	50	\N	\N
46	9	E-mail Templates	tryton-list	t	2022-12-06 20:16:32.52404	0	50	\N	\N
47	1	Users	tryton-folder	t	2022-12-06 20:16:47.746915	0	10	\N	\N
48	47	Groups	tryton-list	t	2022-12-06 20:16:47.746915	0	20	\N	\N
49	47	Users	tryton-list	t	2022-12-06 20:16:47.746915	0	10	\N	\N
\.


--
-- Data for Name: ir_ui_menu-res_group; Type: TABLE DATA; Schema: public; Owner: gnuhealth
--

COPY public."ir_ui_menu-res_group" (id, create_date, create_uid, "group", menu, write_date, write_uid) FROM stdin;
1	2022-12-06 20:16:47.746915	0	1	48	\N	\N
2	2022-12-06 20:16:47.746915	0	1	49	\N	\N
3	2022-12-06 20:16:47.746915	0	1	1	\N	\N
4	2022-12-06 20:16:47.746915	0	1	2	\N	\N
5	2022-12-06 20:16:47.746915	0	1	3	\N	\N
6	2022-12-06 20:16:47.746915	0	1	4	\N	\N
7	2022-12-06 20:16:47.746915	0	1	5	\N	\N
8	2022-12-06 20:16:47.746915	0	1	6	\N	\N
9	2022-12-06 20:16:47.746915	0	1	9	\N	\N
10	2022-12-06 20:16:47.746915	0	1	10	\N	\N
11	2022-12-06 20:16:47.746915	0	1	11	\N	\N
12	2022-12-06 20:16:47.746915	0	1	12	\N	\N
13	2022-12-06 20:16:47.746915	0	1	13	\N	\N
14	2022-12-06 20:16:47.746915	0	1	14	\N	\N
15	2022-12-06 20:16:47.746915	0	1	15	\N	\N
16	2022-12-06 20:16:47.746915	0	1	16	\N	\N
17	2022-12-06 20:16:47.746915	0	1	17	\N	\N
18	2022-12-06 20:16:47.746915	0	1	18	\N	\N
19	2022-12-06 20:16:47.746915	0	1	19	\N	\N
20	2022-12-06 20:16:47.746915	0	1	22	\N	\N
21	2022-12-06 20:16:47.746915	0	1	23	\N	\N
22	2022-12-06 20:16:47.746915	0	1	24	\N	\N
23	2022-12-06 20:16:47.746915	0	1	25	\N	\N
24	2022-12-06 20:16:47.746915	0	1	26	\N	\N
25	2022-12-06 20:16:47.746915	0	1	28	\N	\N
26	2022-12-06 20:16:47.746915	0	1	29	\N	\N
27	2022-12-06 20:16:47.746915	0	1	30	\N	\N
28	2022-12-06 20:16:47.746915	0	1	31	\N	\N
29	2022-12-06 20:16:47.746915	0	1	32	\N	\N
30	2022-12-06 20:16:47.746915	0	1	33	\N	\N
31	2022-12-06 20:16:47.746915	0	1	34	\N	\N
32	2022-12-06 20:16:47.746915	0	1	35	\N	\N
33	2022-12-06 20:16:47.746915	0	1	36	\N	\N
34	2022-12-06 20:16:47.746915	0	1	37	\N	\N
35	2022-12-06 20:16:47.746915	0	1	38	\N	\N
36	2022-12-06 20:16:47.746915	0	1	39	\N	\N
37	2022-12-06 20:16:47.746915	0	1	40	\N	\N
38	2022-12-06 20:16:47.746915	0	1	41	\N	\N
39	2022-12-06 20:16:47.746915	0	1	42	\N	\N
40	2022-12-06 20:16:47.746915	0	1	43	\N	\N
\.


--
-- Data for Name: ir_ui_menu_favorite; Type: TABLE DATA; Schema: public; Owner: gnuhealth
--

COPY public.ir_ui_menu_favorite (id, create_date, create_uid, menu, sequence, "user", write_date, write_uid) FROM stdin;
\.


--
-- Data for Name: ir_ui_view; Type: TABLE DATA; Schema: public; Owner: gnuhealth
--

COPY public.ir_ui_view (id, model, type, data, field_childs, priority, create_date, create_uid, domain, inherit, module, name, write_date, write_uid) FROM stdin;
1	ir.ui.icon	tree	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	icon_view_list	\N	\N
2	ir.ui.icon	form	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	icon_view_form	\N	\N
3	ir.ui.menu	tree	\N	childs	20	2022-12-06 20:16:32.52404	0	\N	\N	ir	ui_menu_tree	\N	\N
4	ir.ui.menu	tree	\N	\N	10	2022-12-06 20:16:32.52404	0	\N	\N	ir	ui_menu_list	\N	\N
5	ir.ui.menu	form	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	ui_menu_form	\N	\N
6	ir.ui.menu.favorite	tree	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	ui_menu_favorite_list	\N	\N
7	ir.ui.menu.favorite	form	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	ui_menu_favorite_form	\N	\N
8	ir.ui.view	form	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	ui_view_form	\N	\N
9	ir.ui.view	tree	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	ui_view_list	\N	\N
10	ir.ui.view_tree_width	form	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	ui_view_tree_width_form	\N	\N
11	ir.ui.view_tree_width	tree	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	ui_view_tree_width_list	\N	\N
12	ir.ui.view_tree_state	form	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	ui_view_tree_state_form	\N	\N
13	ir.ui.view_tree_state	tree	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	ui_view_tree_state_list	\N	\N
14	ir.ui.view_search	form	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	ui_view_search_form	\N	\N
15	ir.ui.view_search	tree	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	ui_view_search_list	\N	\N
16	ir.action	form	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	action_form	\N	\N
17	ir.action	tree	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	action_list	\N	\N
18	ir.action.keyword	tree	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	action_keyword_list	\N	\N
19	ir.action.keyword	form	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	action_keyword_form	\N	\N
20	ir.action.report	form	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	action_report_form	\N	\N
21	ir.action.report	tree	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	action_report_list	\N	\N
22	ir.action.act_window	form	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	action_act_window_form	\N	\N
23	ir.action.act_window	tree	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	action_act_window_list	\N	\N
24	ir.action.act_window.view	form	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	action_act_window_view_form	\N	\N
25	ir.action.act_window.view	tree	\N	\N	10	2022-12-06 20:16:32.52404	0	\N	\N	ir	action_act_window_view_list	\N	\N
26	ir.action.act_window.view	tree	\N	\N	20	2022-12-06 20:16:32.52404	0	\N	\N	ir	action_act_window_view_list2	\N	\N
27	ir.action.act_window.domain	form	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	action_act_window_domain_form	\N	\N
28	ir.action.act_window.domain	tree	\N	\N	10	2022-12-06 20:16:32.52404	0	\N	\N	ir	action_act_window_domain_list	\N	\N
29	ir.action.act_window.domain	tree	\N	\N	20	2022-12-06 20:16:32.52404	0	\N	\N	ir	action_act_window_domain_list2	\N	\N
30	ir.action.wizard	form	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	action_wizard_form	\N	\N
31	ir.action.wizard	tree	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	action_wizard_list	\N	\N
32	ir.action.url	form	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	action_url_form	\N	\N
33	ir.action.url	tree	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	action_url_list	\N	\N
34	ir.model	form	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	model_form	\N	\N
35	ir.model	tree	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	model_list	\N	\N
36	ir.model.field	form	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	model_field_form	\N	\N
37	ir.model.field	tree	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	model_field_list	\N	\N
38	ir.model.access	tree	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	model_access_list	\N	\N
39	ir.model.access	form	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	model_access_form	\N	\N
40	ir.model.field.access	tree	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	model_field_access_list	\N	\N
41	ir.model.field.access	form	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	model_field_access_form	\N	\N
42	ir.model.print_model_graph.start	form	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	model_print_model_graph_start_form	\N	\N
43	ir.model.button	tree	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	model_button_list	\N	\N
44	ir.model.button	form	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	model_button_form	\N	\N
45	ir.model.button.rule	tree	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	model_button_rule_list	\N	\N
46	ir.model.button.rule	form	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	model_button_rule_form	\N	\N
47	ir.model.button.click	tree	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	model_button_click_list	\N	\N
48	ir.model.button.click	form	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	model_button_click_form	\N	\N
49	ir.model.data	tree	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	model_data_list	\N	\N
50	ir.model.data	form	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	model_data_form	\N	\N
51	ir.sequence	form	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	sequence_form	\N	\N
52	ir.sequence	tree	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	sequence_list	\N	\N
53	ir.sequence.strict	\N	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	51	ir	\N	\N	\N
54	ir.sequence.strict	\N	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	52	ir	\N	\N	\N
55	ir.sequence.type	form	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	sequence_type_form	\N	\N
56	ir.sequence.type	tree	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	sequence_type_list	\N	\N
57	ir.attachment	form	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	attachment_form	\N	\N
58	ir.attachment	form	\N	\N	50	2022-12-06 20:16:32.52404	0	\N	\N	ir	attachment_form_preview	\N	\N
59	ir.attachment	tree	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	attachment_list	\N	\N
60	ir.note	form	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	note_form	\N	\N
61	ir.note	tree	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	note_list	\N	\N
62	ir.cron	tree	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	cron_list	\N	\N
63	ir.cron	form	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	cron_form	\N	\N
64	ir.lang	tree	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	lang_list	\N	\N
65	ir.lang	form	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	lang_form	\N	\N
66	ir.lang.config.start	form	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	lang_config_start_form	\N	\N
67	ir.translation	form	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	translation_form	\N	\N
68	ir.translation	tree	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	translation_list	\N	\N
69	ir.translation.set.start	form	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	translation_set_start_form	\N	\N
70	ir.translation.set.succeed	form	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	translation_set_succeed_form	\N	\N
71	ir.translation.clean.start	form	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	translation_clean_start_form	\N	\N
72	ir.translation.clean.succeed	form	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	translation_clean_succeed_form	\N	\N
73	ir.translation.update.start	form	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	translation_update_start_form	\N	\N
74	ir.translation.export.start	form	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	translation_export_start_form	\N	\N
75	ir.translation.export.result	form	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	translation_export_result_form	\N	\N
76	ir.export	form	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	export_form	\N	\N
77	ir.export	tree	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	export_list	\N	\N
78	ir.export.line	form	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	export_line_form	\N	\N
79	ir.export.line	tree	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	export_line_list	\N	\N
80	ir.rule.group	form	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	rule_group_form	\N	\N
81	ir.rule.group	tree	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	rule_group_list	\N	\N
82	ir.rule	form	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	rule_form	\N	\N
83	ir.rule	tree	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	rule_list	\N	\N
84	ir.module	form	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	module_form	\N	\N
85	ir.module	tree	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	module_list	\N	\N
86	ir.module.dependency	form	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	module_dependency_form	\N	\N
87	ir.module.dependency	tree	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	module_dependency_list	\N	\N
88	ir.module.config_wizard.item	tree	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	module_config_wizard_item_list	\N	\N
89	ir.module.config_wizard.first	form	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	module_config_wizard_first_form	\N	\N
90	ir.module.config_wizard.other	form	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	module_config_wizard_other_form	\N	\N
91	ir.module.config_wizard.done	form	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	module_config_wizard_done_form	\N	\N
92	ir.module.activate_upgrade.start	form	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	module_activate_upgrade_start_form	\N	\N
93	ir.module.activate_upgrade.done	form	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	module_activate_upgrade_done_form	\N	\N
94	ir.trigger	form	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	trigger_form	\N	\N
95	ir.trigger	tree	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	trigger_list	\N	\N
96	ir.message	tree	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	message_list	\N	\N
97	ir.message	form	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	message_form	\N	\N
98	ir.email	form	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	email_form	\N	\N
99	ir.email	tree	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	email_list	\N	\N
100	ir.email.template	form	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	email_template_form	\N	\N
101	ir.email.template	tree	\N	\N	16	2022-12-06 20:16:32.52404	0	\N	\N	ir	email_template_list	\N	\N
102	res.group	form	\N	\N	16	2022-12-06 20:16:47.746915	0	\N	\N	res	group_form	\N	\N
103	res.group	tree	\N	\N	16	2022-12-06 20:16:47.746915	0	\N	\N	res	group_list	\N	\N
104	res.user	form	\N	\N	16	2022-12-06 20:16:47.746915	0	\N	\N	res	user_form	\N	\N
105	res.user	form	\N	\N	20	2022-12-06 20:16:47.746915	0	\N	\N	res	user_form_preferences	\N	\N
106	res.user	tree	\N	\N	16	2022-12-06 20:16:47.746915	0	\N	\N	res	user_list	\N	\N
107	res.user.config.start	form	\N	\N	16	2022-12-06 20:16:47.746915	0	\N	\N	res	user_config_start_form	\N	\N
108	res.user.warning	form	\N	\N	16	2022-12-06 20:16:47.746915	0	\N	\N	res	user_warning_form	\N	\N
109	res.user.warning	tree	\N	\N	16	2022-12-06 20:16:47.746915	0	\N	\N	res	user_warning_tree	\N	\N
110	res.user.application	form	\N	\N	16	2022-12-06 20:16:47.746915	0	\N	\N	res	user_application_form	\N	\N
111	res.user.application	tree	\N	\N	16	2022-12-06 20:16:47.746915	0	\N	\N	res	user_application_list	\N	\N
112	ir.sequence.type	\N	\N	\N	16	2022-12-06 20:16:47.746915	0	\N	55	res	sequence_type_form	\N	\N
113	ir.export	\N	\N	\N	16	2022-12-06 20:16:47.746915	0	\N	76	res	export_form	\N	\N
114	ir.export	\N	\N	\N	16	2022-12-06 20:16:47.746915	0	\N	77	res	export_list	\N	\N
\.


--
-- Data for Name: ir_ui_view_search; Type: TABLE DATA; Schema: public; Owner: gnuhealth
--

COPY public.ir_ui_view_search (id, create_date, create_uid, domain, model, name, "user", write_date, write_uid) FROM stdin;
\.


--
-- Data for Name: ir_ui_view_tree_state; Type: TABLE DATA; Schema: public; Owner: gnuhealth
--

COPY public.ir_ui_view_tree_state (id, child_name, create_date, create_uid, domain, model, nodes, selected_nodes, "user", write_date, write_uid) FROM stdin;
\.


--
-- Data for Name: ir_ui_view_tree_width; Type: TABLE DATA; Schema: public; Owner: gnuhealth
--

COPY public.ir_ui_view_tree_width (id, create_date, create_uid, field, model, "user", width, write_date, write_uid) FROM stdin;
\.


--
-- Data for Name: res_group; Type: TABLE DATA; Schema: public; Owner: gnuhealth
--

COPY public.res_group (id, name, active, create_date, create_uid, parent, write_date, write_uid) FROM stdin;
1	Administration	t	2022-12-06 20:16:47.746915	0	\N	\N	\N
\.


--
-- Data for Name: res_user; Type: TABLE DATA; Schema: public; Owner: gnuhealth
--

COPY public.res_user (id, name, active, login, password, create_date, create_uid, email, language, menu, password_hash, password_reset, password_reset_expire, signature, write_date, write_uid) FROM stdin;
0	Root	f	root	\N	2022-12-06 20:16:48.104317	0	\N	\N	2	\N	\N	\N	\N	\N	\N
1	Administrator	t	admin	\N	2022-12-06 20:16:47.746915	0	admin	\N	2	$2b$12$YIVUsIR7Wty7vhJseg/nquIMDdUlv8NteQzIFkywSTZzyQcKs.b9a	\N	\N	\N	2022-12-06 20:16:53.641846	0
\.


--
-- Data for Name: res_user-ir_action; Type: TABLE DATA; Schema: public; Owner: gnuhealth
--

COPY public."res_user-ir_action" (id, action, create_date, create_uid, "user", write_date, write_uid) FROM stdin;
\.


--
-- Data for Name: res_user-res_group; Type: TABLE DATA; Schema: public; Owner: gnuhealth
--

COPY public."res_user-res_group" (id, "user", "group", create_date, create_uid, write_date, write_uid) FROM stdin;
1	1	1	2022-12-06 20:16:47.746915	0	\N	\N
\.


--
-- Data for Name: res_user_application; Type: TABLE DATA; Schema: public; Owner: gnuhealth
--

COPY public.res_user_application (id, application, create_date, create_uid, key, state, "user", write_date, write_uid) FROM stdin;
\.


--
-- Data for Name: res_user_device; Type: TABLE DATA; Schema: public; Owner: gnuhealth
--

COPY public.res_user_device (id, cookie, create_date, create_uid, login, write_date, write_uid) FROM stdin;
\.


--
-- Data for Name: res_user_login_attempt; Type: TABLE DATA; Schema: public; Owner: gnuhealth
--

COPY public.res_user_login_attempt (id, create_date, create_uid, device_cookie, ip_address, ip_network, login, write_date, write_uid) FROM stdin;
\.


--
-- Data for Name: res_user_warning; Type: TABLE DATA; Schema: public; Owner: gnuhealth
--

COPY public.res_user_warning (id, always, create_date, create_uid, name, "user", write_date, write_uid) FROM stdin;
\.


--
-- Name: ir_action-res_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gnuhealth
--

SELECT pg_catalog.setval('public."ir_action-res_group_id_seq"', 4, true);


--
-- Name: ir_action_act_window_domain_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gnuhealth
--

SELECT pg_catalog.setval('public.ir_action_act_window_domain_id_seq', 4, true);


--
-- Name: ir_action_act_window_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gnuhealth
--

SELECT pg_catalog.setval('public.ir_action_act_window_id_seq', 54, true);


--
-- Name: ir_action_act_window_view_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gnuhealth
--

SELECT pg_catalog.setval('public.ir_action_act_window_view_id_seq', 72, true);


--
-- Name: ir_action_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gnuhealth
--

SELECT pg_catalog.setval('public.ir_action_id_seq', 56, true);


--
-- Name: ir_action_keyword_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gnuhealth
--

SELECT pg_catalog.setval('public.ir_action_keyword_id_seq', 53, true);


--
-- Name: ir_action_report_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gnuhealth
--

SELECT pg_catalog.setval('public.ir_action_report_id_seq', 56, true);


--
-- Name: ir_action_url_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gnuhealth
--

SELECT pg_catalog.setval('public.ir_action_url_id_seq', 1, false);


--
-- Name: ir_action_wizard_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gnuhealth
--

SELECT pg_catalog.setval('public.ir_action_wizard_id_seq', 55, true);


--
-- Name: ir_attachment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gnuhealth
--

SELECT pg_catalog.setval('public.ir_attachment_id_seq', 1, false);


--
-- Name: ir_avatar_cache_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gnuhealth
--

SELECT pg_catalog.setval('public.ir_avatar_cache_id_seq', 1, false);


--
-- Name: ir_avatar_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gnuhealth
--

SELECT pg_catalog.setval('public.ir_avatar_id_seq', 1, true);


--
-- Name: ir_cache_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gnuhealth
--

SELECT pg_catalog.setval('public.ir_cache_id_seq', 35, true);


--
-- Name: ir_calendar_day_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gnuhealth
--

SELECT pg_catalog.setval('public.ir_calendar_day_id_seq', 7, true);


--
-- Name: ir_calendar_month_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gnuhealth
--

SELECT pg_catalog.setval('public.ir_calendar_month_id_seq', 12, true);


--
-- Name: ir_configuration_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gnuhealth
--

SELECT pg_catalog.setval('public.ir_configuration_id_seq', 1, true);


--
-- Name: ir_cron_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gnuhealth
--

SELECT pg_catalog.setval('public.ir_cron_id_seq', 2, true);


--
-- Name: ir_email_address_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gnuhealth
--

SELECT pg_catalog.setval('public.ir_email_address_id_seq', 1, false);


--
-- Name: ir_email_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gnuhealth
--

SELECT pg_catalog.setval('public.ir_email_id_seq', 1, false);


--
-- Name: ir_email_template-ir_action_report_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gnuhealth
--

SELECT pg_catalog.setval('public."ir_email_template-ir_action_report_id_seq"', 1, false);


--
-- Name: ir_email_template_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gnuhealth
--

SELECT pg_catalog.setval('public.ir_email_template_id_seq', 1, false);


--
-- Name: ir_export-res_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gnuhealth
--

SELECT pg_catalog.setval('public."ir_export-res_group_id_seq"', 1, false);


--
-- Name: ir_export-write-res_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gnuhealth
--

SELECT pg_catalog.setval('public."ir_export-write-res_group_id_seq"', 1, false);


--
-- Name: ir_export_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gnuhealth
--

SELECT pg_catalog.setval('public.ir_export_id_seq', 1, false);


--
-- Name: ir_export_line_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gnuhealth
--

SELECT pg_catalog.setval('public.ir_export_line_id_seq', 1, false);


--
-- Name: ir_lang_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gnuhealth
--

SELECT pg_catalog.setval('public.ir_lang_id_seq', 24, true);


--
-- Name: ir_message_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gnuhealth
--

SELECT pg_catalog.setval('public.ir_message_id_seq', 114, true);


--
-- Name: ir_model_access_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gnuhealth
--

SELECT pg_catalog.setval('public.ir_model_access_id_seq', 68, true);


--
-- Name: ir_model_button-button_reset_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gnuhealth
--

SELECT pg_catalog.setval('public."ir_model_button-button_reset_id_seq"', 1, false);


--
-- Name: ir_model_button-res_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gnuhealth
--

SELECT pg_catalog.setval('public."ir_model_button-res_group_id_seq"', 9, true);


--
-- Name: ir_model_button_click_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gnuhealth
--

SELECT pg_catalog.setval('public.ir_model_button_click_id_seq', 1, false);


--
-- Name: ir_model_button_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gnuhealth
--

SELECT pg_catalog.setval('public.ir_model_button_id_seq', 14, true);


--
-- Name: ir_model_button_rule_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gnuhealth
--

SELECT pg_catalog.setval('public.ir_model_button_rule_id_seq', 1, false);


--
-- Name: ir_model_data_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gnuhealth
--

SELECT pg_catalog.setval('public.ir_model_data_id_seq', 678, true);


--
-- Name: ir_model_field_access_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gnuhealth
--

SELECT pg_catalog.setval('public.ir_model_field_access_id_seq', 1, false);


--
-- Name: ir_model_field_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gnuhealth
--

SELECT pg_catalog.setval('public.ir_model_field_id_seq', 909, true);


--
-- Name: ir_model_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gnuhealth
--

SELECT pg_catalog.setval('public.ir_model_id_seq', 88, true);


--
-- Name: ir_module_config_wizard_item_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gnuhealth
--

SELECT pg_catalog.setval('public.ir_module_config_wizard_item_id_seq', 3, true);


--
-- Name: ir_module_dependency_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gnuhealth
--

SELECT pg_catalog.setval('public.ir_module_dependency_id_seq', 154, true);


--
-- Name: ir_module_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gnuhealth
--

SELECT pg_catalog.setval('public.ir_module_id_seq', 66, true);


--
-- Name: ir_note_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gnuhealth
--

SELECT pg_catalog.setval('public.ir_note_id_seq', 1, false);


--
-- Name: ir_note_read_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gnuhealth
--

SELECT pg_catalog.setval('public.ir_note_read_id_seq', 1, false);


--
-- Name: ir_queue_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gnuhealth
--

SELECT pg_catalog.setval('public.ir_queue_id_seq', 1, false);


--
-- Name: ir_rule_group-res_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gnuhealth
--

SELECT pg_catalog.setval('public."ir_rule_group-res_group_id_seq"', 4, true);


--
-- Name: ir_rule_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gnuhealth
--

SELECT pg_catalog.setval('public.ir_rule_group_id_seq', 24, true);


--
-- Name: ir_rule_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gnuhealth
--

SELECT pg_catalog.setval('public.ir_rule_id_seq', 34, true);


--
-- Name: ir_sequence_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gnuhealth
--

SELECT pg_catalog.setval('public.ir_sequence_id_seq', 1, false);


--
-- Name: ir_sequence_strict_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gnuhealth
--

SELECT pg_catalog.setval('public.ir_sequence_strict_id_seq', 1, false);


--
-- Name: ir_sequence_type-res_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gnuhealth
--

SELECT pg_catalog.setval('public."ir_sequence_type-res_group_id_seq"', 1, false);


--
-- Name: ir_sequence_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gnuhealth
--

SELECT pg_catalog.setval('public.ir_sequence_type_id_seq', 1, false);


--
-- Name: ir_session_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gnuhealth
--

SELECT pg_catalog.setval('public.ir_session_id_seq', 1, false);


--
-- Name: ir_session_wizard_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gnuhealth
--

SELECT pg_catalog.setval('public.ir_session_wizard_id_seq', 1, false);


--
-- Name: ir_translation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gnuhealth
--

SELECT pg_catalog.setval('public.ir_translation_id_seq', 987, true);


--
-- Name: ir_trigger__history___id_seq; Type: SEQUENCE SET; Schema: public; Owner: gnuhealth
--

SELECT pg_catalog.setval('public.ir_trigger__history___id_seq', 1, false);


--
-- Name: ir_trigger_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gnuhealth
--

SELECT pg_catalog.setval('public.ir_trigger_id_seq', 1, false);


--
-- Name: ir_trigger_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gnuhealth
--

SELECT pg_catalog.setval('public.ir_trigger_log_id_seq', 1, false);


--
-- Name: ir_ui_icon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gnuhealth
--

SELECT pg_catalog.setval('public.ir_ui_icon_id_seq', 8, true);


--
-- Name: ir_ui_menu-res_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gnuhealth
--

SELECT pg_catalog.setval('public."ir_ui_menu-res_group_id_seq"', 40, true);


--
-- Name: ir_ui_menu_favorite_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gnuhealth
--

SELECT pg_catalog.setval('public.ir_ui_menu_favorite_id_seq', 1, false);


--
-- Name: ir_ui_menu_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gnuhealth
--

SELECT pg_catalog.setval('public.ir_ui_menu_id_seq', 49, true);


--
-- Name: ir_ui_view_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gnuhealth
--

SELECT pg_catalog.setval('public.ir_ui_view_id_seq', 114, true);


--
-- Name: ir_ui_view_search_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gnuhealth
--

SELECT pg_catalog.setval('public.ir_ui_view_search_id_seq', 1, false);


--
-- Name: ir_ui_view_tree_state_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gnuhealth
--

SELECT pg_catalog.setval('public.ir_ui_view_tree_state_id_seq', 1, false);


--
-- Name: ir_ui_view_tree_width_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gnuhealth
--

SELECT pg_catalog.setval('public.ir_ui_view_tree_width_id_seq', 1, false);


--
-- Name: res_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gnuhealth
--

SELECT pg_catalog.setval('public.res_group_id_seq', 1, true);


--
-- Name: res_user-ir_action_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gnuhealth
--

SELECT pg_catalog.setval('public."res_user-ir_action_id_seq"', 1, false);


--
-- Name: res_user-res_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gnuhealth
--

SELECT pg_catalog.setval('public."res_user-res_group_id_seq"', 1, true);


--
-- Name: res_user_application_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gnuhealth
--

SELECT pg_catalog.setval('public.res_user_application_id_seq', 1, false);


--
-- Name: res_user_device_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gnuhealth
--

SELECT pg_catalog.setval('public.res_user_device_id_seq', 1, false);


--
-- Name: res_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gnuhealth
--

SELECT pg_catalog.setval('public.res_user_id_seq', 1, true);


--
-- Name: res_user_login_attempt_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gnuhealth
--

SELECT pg_catalog.setval('public.res_user_login_attempt_id_seq', 1, false);


--
-- Name: res_user_warning_id_seq; Type: SEQUENCE SET; Schema: public; Owner: gnuhealth
--

SELECT pg_catalog.setval('public.res_user_warning_id_seq', 1, false);


--
-- Name: ir_action-res_group ir_action-res_group_pkey; Type: CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public."ir_action-res_group"
    ADD CONSTRAINT "ir_action-res_group_pkey" PRIMARY KEY (id);


--
-- Name: ir_action_act_window_domain ir_action_act_window_domain_pkey; Type: CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_action_act_window_domain
    ADD CONSTRAINT ir_action_act_window_domain_pkey PRIMARY KEY (id);


--
-- Name: ir_action_act_window ir_action_act_window_pkey; Type: CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_action_act_window
    ADD CONSTRAINT ir_action_act_window_pkey PRIMARY KEY (id);


--
-- Name: ir_action_act_window_view ir_action_act_window_view_pkey; Type: CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_action_act_window_view
    ADD CONSTRAINT ir_action_act_window_view_pkey PRIMARY KEY (id);


--
-- Name: ir_action_keyword ir_action_keyword_pkey; Type: CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_action_keyword
    ADD CONSTRAINT ir_action_keyword_pkey PRIMARY KEY (id);


--
-- Name: ir_action ir_action_pkey; Type: CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_action
    ADD CONSTRAINT ir_action_pkey PRIMARY KEY (id);


--
-- Name: ir_action_report ir_action_report_pkey; Type: CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_action_report
    ADD CONSTRAINT ir_action_report_pkey PRIMARY KEY (id);


--
-- Name: ir_action_url ir_action_url_pkey; Type: CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_action_url
    ADD CONSTRAINT ir_action_url_pkey PRIMARY KEY (id);


--
-- Name: ir_action_wizard ir_action_wizard_pkey; Type: CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_action_wizard
    ADD CONSTRAINT ir_action_wizard_pkey PRIMARY KEY (id);


--
-- Name: ir_attachment ir_attachment_pkey; Type: CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_attachment
    ADD CONSTRAINT ir_attachment_pkey PRIMARY KEY (id);


--
-- Name: ir_avatar_cache ir_avatar_cache_pkey; Type: CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_avatar_cache
    ADD CONSTRAINT ir_avatar_cache_pkey PRIMARY KEY (id);


--
-- Name: ir_avatar_cache ir_avatar_cache_size_unique; Type: CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_avatar_cache
    ADD CONSTRAINT ir_avatar_cache_size_unique UNIQUE (avatar, size);


--
-- Name: ir_avatar ir_avatar_pkey; Type: CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_avatar
    ADD CONSTRAINT ir_avatar_pkey PRIMARY KEY (id);


--
-- Name: ir_avatar ir_avatar_resource_unique; Type: CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_avatar
    ADD CONSTRAINT ir_avatar_resource_unique UNIQUE (resource);


--
-- Name: ir_calendar_day ir_calendar_day_index_unique; Type: CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_calendar_day
    ADD CONSTRAINT ir_calendar_day_index_unique UNIQUE (index);


--
-- Name: ir_calendar_day ir_calendar_day_pkey; Type: CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_calendar_day
    ADD CONSTRAINT ir_calendar_day_pkey PRIMARY KEY (id);


--
-- Name: ir_calendar_month ir_calendar_month_index_unique; Type: CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_calendar_month
    ADD CONSTRAINT ir_calendar_month_index_unique UNIQUE (index);


--
-- Name: ir_calendar_month ir_calendar_month_pkey; Type: CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_calendar_month
    ADD CONSTRAINT ir_calendar_month_pkey PRIMARY KEY (id);


--
-- Name: ir_configuration ir_configuration_pkey; Type: CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_configuration
    ADD CONSTRAINT ir_configuration_pkey PRIMARY KEY (id);


--
-- Name: ir_cron ir_cron_pkey; Type: CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_cron
    ADD CONSTRAINT ir_cron_pkey PRIMARY KEY (id);


--
-- Name: ir_email_address ir_email_address_pkey; Type: CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_email_address
    ADD CONSTRAINT ir_email_address_pkey PRIMARY KEY (id);


--
-- Name: ir_email ir_email_pkey; Type: CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_email
    ADD CONSTRAINT ir_email_pkey PRIMARY KEY (id);


--
-- Name: ir_email_template-ir_action_report ir_email_template-ir_action_report_pkey; Type: CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public."ir_email_template-ir_action_report"
    ADD CONSTRAINT "ir_email_template-ir_action_report_pkey" PRIMARY KEY (id);


--
-- Name: ir_email_template ir_email_template_pkey; Type: CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_email_template
    ADD CONSTRAINT ir_email_template_pkey PRIMARY KEY (id);


--
-- Name: ir_export-res_group ir_export-res_group_pkey; Type: CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public."ir_export-res_group"
    ADD CONSTRAINT "ir_export-res_group_pkey" PRIMARY KEY (id);


--
-- Name: ir_export-write-res_group ir_export-write-res_group_pkey; Type: CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public."ir_export-write-res_group"
    ADD CONSTRAINT "ir_export-write-res_group_pkey" PRIMARY KEY (id);


--
-- Name: ir_export_line ir_export_line_pkey; Type: CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_export_line
    ADD CONSTRAINT ir_export_line_pkey PRIMARY KEY (id);


--
-- Name: ir_export ir_export_pkey; Type: CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_export
    ADD CONSTRAINT ir_export_pkey PRIMARY KEY (id);


--
-- Name: ir_lang ir_lang_pkey; Type: CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_lang
    ADD CONSTRAINT ir_lang_pkey PRIMARY KEY (id);


--
-- Name: ir_message ir_message_pkey; Type: CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_message
    ADD CONSTRAINT ir_message_pkey PRIMARY KEY (id);


--
-- Name: ir_model_access ir_model_access_pkey; Type: CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_model_access
    ADD CONSTRAINT ir_model_access_pkey PRIMARY KEY (id);


--
-- Name: ir_model_button-button_reset ir_model_button-button_reset_pkey; Type: CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public."ir_model_button-button_reset"
    ADD CONSTRAINT "ir_model_button-button_reset_pkey" PRIMARY KEY (id);


--
-- Name: ir_model_button-res_group ir_model_button-res_group_pkey; Type: CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public."ir_model_button-res_group"
    ADD CONSTRAINT "ir_model_button-res_group_pkey" PRIMARY KEY (id);


--
-- Name: ir_model_button_click ir_model_button_click_pkey; Type: CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_model_button_click
    ADD CONSTRAINT ir_model_button_click_pkey PRIMARY KEY (id);


--
-- Name: ir_model_button ir_model_button_name_model_uniq; Type: CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_model_button
    ADD CONSTRAINT ir_model_button_name_model_uniq UNIQUE (name, model);


--
-- Name: ir_model_button ir_model_button_pkey; Type: CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_model_button
    ADD CONSTRAINT ir_model_button_pkey PRIMARY KEY (id);


--
-- Name: ir_model_button_rule ir_model_button_rule_pkey; Type: CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_model_button_rule
    ADD CONSTRAINT ir_model_button_rule_pkey PRIMARY KEY (id);


--
-- Name: ir_model_data ir_model_data_fs_id_module_model_uniq; Type: CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_model_data
    ADD CONSTRAINT ir_model_data_fs_id_module_model_uniq UNIQUE (fs_id, module, model);


--
-- Name: ir_model_data ir_model_data_pkey; Type: CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_model_data
    ADD CONSTRAINT ir_model_data_pkey PRIMARY KEY (id);


--
-- Name: ir_model_field_access ir_model_field_access_pkey; Type: CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_model_field_access
    ADD CONSTRAINT ir_model_field_access_pkey PRIMARY KEY (id);


--
-- Name: ir_model_field ir_model_field_name_model_uniq; Type: CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_model_field
    ADD CONSTRAINT ir_model_field_name_model_uniq UNIQUE (name, model);


--
-- Name: ir_model_field ir_model_field_pkey; Type: CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_model_field
    ADD CONSTRAINT ir_model_field_pkey PRIMARY KEY (id);


--
-- Name: ir_model ir_model_model_uniq; Type: CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_model
    ADD CONSTRAINT ir_model_model_uniq UNIQUE (model);


--
-- Name: ir_model ir_model_pkey; Type: CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_model
    ADD CONSTRAINT ir_model_pkey PRIMARY KEY (id);


--
-- Name: ir_module_config_wizard_item ir_module_config_wizard_item_pkey; Type: CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_module_config_wizard_item
    ADD CONSTRAINT ir_module_config_wizard_item_pkey PRIMARY KEY (id);


--
-- Name: ir_module_dependency ir_module_dependency_name_module_uniq; Type: CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_module_dependency
    ADD CONSTRAINT ir_module_dependency_name_module_uniq UNIQUE (name, module);


--
-- Name: ir_module_dependency ir_module_dependency_pkey; Type: CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_module_dependency
    ADD CONSTRAINT ir_module_dependency_pkey PRIMARY KEY (id);


--
-- Name: ir_module ir_module_name_uniq; Type: CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_module
    ADD CONSTRAINT ir_module_name_uniq UNIQUE (name);


--
-- Name: ir_module ir_module_pkey; Type: CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_module
    ADD CONSTRAINT ir_module_pkey PRIMARY KEY (id);


--
-- Name: ir_note ir_note_pkey; Type: CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_note
    ADD CONSTRAINT ir_note_pkey PRIMARY KEY (id);


--
-- Name: ir_note_read ir_note_read_pkey; Type: CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_note_read
    ADD CONSTRAINT ir_note_read_pkey PRIMARY KEY (id);


--
-- Name: ir_queue ir_queue_pkey; Type: CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_queue
    ADD CONSTRAINT ir_queue_pkey PRIMARY KEY (id);


--
-- Name: ir_rule_group-res_group ir_rule_group-res_group_pkey; Type: CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public."ir_rule_group-res_group"
    ADD CONSTRAINT "ir_rule_group-res_group_pkey" PRIMARY KEY (id);


--
-- Name: ir_rule_group ir_rule_group_pkey; Type: CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_rule_group
    ADD CONSTRAINT ir_rule_group_pkey PRIMARY KEY (id);


--
-- Name: ir_rule ir_rule_pkey; Type: CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_rule
    ADD CONSTRAINT ir_rule_pkey PRIMARY KEY (id);


--
-- Name: ir_sequence ir_sequence_pkey; Type: CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_sequence
    ADD CONSTRAINT ir_sequence_pkey PRIMARY KEY (id);


--
-- Name: ir_sequence_strict ir_sequence_strict_pkey; Type: CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_sequence_strict
    ADD CONSTRAINT ir_sequence_strict_pkey PRIMARY KEY (id);


--
-- Name: ir_sequence_type-res_group ir_sequence_type-res_group_pkey; Type: CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public."ir_sequence_type-res_group"
    ADD CONSTRAINT "ir_sequence_type-res_group_pkey" PRIMARY KEY (id);


--
-- Name: ir_sequence_type ir_sequence_type_pkey; Type: CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_sequence_type
    ADD CONSTRAINT ir_sequence_type_pkey PRIMARY KEY (id);


--
-- Name: ir_session ir_session_pkey; Type: CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_session
    ADD CONSTRAINT ir_session_pkey PRIMARY KEY (id);


--
-- Name: ir_session_wizard ir_session_wizard_pkey; Type: CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_session_wizard
    ADD CONSTRAINT ir_session_wizard_pkey PRIMARY KEY (id);


--
-- Name: ir_translation ir_translation_pkey; Type: CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_translation
    ADD CONSTRAINT ir_translation_pkey PRIMARY KEY (id);


--
-- Name: ir_trigger__history ir_trigger__history_pkey; Type: CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_trigger__history
    ADD CONSTRAINT ir_trigger__history_pkey PRIMARY KEY (__id);


--
-- Name: ir_trigger_log ir_trigger_log_pkey; Type: CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_trigger_log
    ADD CONSTRAINT ir_trigger_log_pkey PRIMARY KEY (id);


--
-- Name: ir_trigger ir_trigger_pkey; Type: CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_trigger
    ADD CONSTRAINT ir_trigger_pkey PRIMARY KEY (id);


--
-- Name: ir_ui_icon ir_ui_icon_pkey; Type: CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_ui_icon
    ADD CONSTRAINT ir_ui_icon_pkey PRIMARY KEY (id);


--
-- Name: ir_ui_menu-res_group ir_ui_menu-res_group_pkey; Type: CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public."ir_ui_menu-res_group"
    ADD CONSTRAINT "ir_ui_menu-res_group_pkey" PRIMARY KEY (id);


--
-- Name: ir_ui_menu_favorite ir_ui_menu_favorite_pkey; Type: CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_ui_menu_favorite
    ADD CONSTRAINT ir_ui_menu_favorite_pkey PRIMARY KEY (id);


--
-- Name: ir_ui_menu ir_ui_menu_pkey; Type: CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_ui_menu
    ADD CONSTRAINT ir_ui_menu_pkey PRIMARY KEY (id);


--
-- Name: ir_ui_view ir_ui_view_pkey; Type: CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_ui_view
    ADD CONSTRAINT ir_ui_view_pkey PRIMARY KEY (id);


--
-- Name: ir_ui_view_search ir_ui_view_search_pkey; Type: CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_ui_view_search
    ADD CONSTRAINT ir_ui_view_search_pkey PRIMARY KEY (id);


--
-- Name: ir_ui_view_tree_state ir_ui_view_tree_state_pkey; Type: CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_ui_view_tree_state
    ADD CONSTRAINT ir_ui_view_tree_state_pkey PRIMARY KEY (id);


--
-- Name: ir_ui_view_tree_width ir_ui_view_tree_width_pkey; Type: CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_ui_view_tree_width
    ADD CONSTRAINT ir_ui_view_tree_width_pkey PRIMARY KEY (id);


--
-- Name: res_group res_group_name_uniq; Type: CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.res_group
    ADD CONSTRAINT res_group_name_uniq UNIQUE (name);


--
-- Name: res_group res_group_pkey; Type: CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.res_group
    ADD CONSTRAINT res_group_pkey PRIMARY KEY (id);


--
-- Name: res_user-ir_action res_user-ir_action_pkey; Type: CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public."res_user-ir_action"
    ADD CONSTRAINT "res_user-ir_action_pkey" PRIMARY KEY (id);


--
-- Name: res_user-res_group res_user-res_group_pkey; Type: CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public."res_user-res_group"
    ADD CONSTRAINT "res_user-res_group_pkey" PRIMARY KEY (id);


--
-- Name: res_user_application res_user_application_pkey; Type: CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.res_user_application
    ADD CONSTRAINT res_user_application_pkey PRIMARY KEY (id);


--
-- Name: res_user_device res_user_device_pkey; Type: CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.res_user_device
    ADD CONSTRAINT res_user_device_pkey PRIMARY KEY (id);


--
-- Name: res_user_login_attempt res_user_login_attempt_pkey; Type: CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.res_user_login_attempt
    ADD CONSTRAINT res_user_login_attempt_pkey PRIMARY KEY (id);


--
-- Name: res_user res_user_login_key; Type: CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.res_user
    ADD CONSTRAINT res_user_login_key UNIQUE (login);


--
-- Name: res_user res_user_pkey; Type: CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.res_user
    ADD CONSTRAINT res_user_pkey PRIMARY KEY (id);


--
-- Name: res_user_warning res_user_warning_pkey; Type: CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.res_user_warning
    ADD CONSTRAINT res_user_warning_pkey PRIMARY KEY (id);


--
-- Name: e58f52dd207acfc3836ab6ec0b9aa054e35cbce07f3cfb9bc5a06e2d89daf2f; Type: INDEX; Schema: public; Owner: gnuhealth
--

CREATE INDEX e58f52dd207acfc3836ab6ec0b9aa054e35cbce07f3cfb9bc5a06e2d89daf2f ON public.ir_queue USING btree (scheduled_at NULLS FIRST, expected_at NULLS FIRST, dequeued_at, name);


--
-- Name: ir_action-res_group_action_index; Type: INDEX; Schema: public; Owner: gnuhealth
--

CREATE INDEX "ir_action-res_group_action_index" ON public."ir_action-res_group" USING btree (action);


--
-- Name: ir_action-res_group_group_index; Type: INDEX; Schema: public; Owner: gnuhealth
--

CREATE INDEX "ir_action-res_group_group_index" ON public."ir_action-res_group" USING btree ("group");


--
-- Name: ir_action_act_window_domain_act_window_index; Type: INDEX; Schema: public; Owner: gnuhealth
--

CREATE INDEX ir_action_act_window_domain_act_window_index ON public.ir_action_act_window_domain USING btree (act_window);


--
-- Name: ir_action_keyword_action_index; Type: INDEX; Schema: public; Owner: gnuhealth
--

CREATE INDEX ir_action_keyword_action_index ON public.ir_action_keyword USING btree (action);


--
-- Name: ir_action_keyword_keyword_model_index; Type: INDEX; Schema: public; Owner: gnuhealth
--

CREATE INDEX ir_action_keyword_keyword_model_index ON public.ir_action_keyword USING btree (keyword, model);


--
-- Name: ir_action_report_module_index; Type: INDEX; Schema: public; Owner: gnuhealth
--

CREATE INDEX ir_action_report_module_index ON public.ir_action_report USING btree (module);


--
-- Name: ir_attachment_resource_index; Type: INDEX; Schema: public; Owner: gnuhealth
--

CREATE INDEX ir_attachment_resource_index ON public.ir_attachment USING btree (resource);


--
-- Name: ir_avatar_resource_index; Type: INDEX; Schema: public; Owner: gnuhealth
--

CREATE INDEX ir_avatar_resource_index ON public.ir_avatar USING btree (resource);


--
-- Name: ir_cron_next_call_index; Type: INDEX; Schema: public; Owner: gnuhealth
--

CREATE INDEX ir_cron_next_call_index ON public.ir_cron USING btree (next_call);


--
-- Name: ir_email_address_address_index; Type: INDEX; Schema: public; Owner: gnuhealth
--

CREATE INDEX ir_email_address_address_index ON public.ir_email_address USING btree (address);


--
-- Name: ir_email_address_email_index; Type: INDEX; Schema: public; Owner: gnuhealth
--

CREATE INDEX ir_email_address_email_index ON public.ir_email_address USING btree (email);


--
-- Name: ir_email_resource_index; Type: INDEX; Schema: public; Owner: gnuhealth
--

CREATE INDEX ir_email_resource_index ON public.ir_email USING btree (resource);


--
-- Name: ir_export-res_group_export_index; Type: INDEX; Schema: public; Owner: gnuhealth
--

CREATE INDEX "ir_export-res_group_export_index" ON public."ir_export-res_group" USING btree (export);


--
-- Name: ir_export-write-res_group_export_index; Type: INDEX; Schema: public; Owner: gnuhealth
--

CREATE INDEX "ir_export-write-res_group_export_index" ON public."ir_export-write-res_group" USING btree (export);


--
-- Name: ir_export_line_export_index; Type: INDEX; Schema: public; Owner: gnuhealth
--

CREATE INDEX ir_export_line_export_index ON public.ir_export_line USING btree (export);


--
-- Name: ir_model_button-button_reset_button_index; Type: INDEX; Schema: public; Owner: gnuhealth
--

CREATE INDEX "ir_model_button-button_reset_button_index" ON public."ir_model_button-button_reset" USING btree (button);


--
-- Name: ir_model_button-button_reset_button_ruled_index; Type: INDEX; Schema: public; Owner: gnuhealth
--

CREATE INDEX "ir_model_button-button_reset_button_ruled_index" ON public."ir_model_button-button_reset" USING btree (button_ruled);


--
-- Name: ir_model_button-res_group_button_index; Type: INDEX; Schema: public; Owner: gnuhealth
--

CREATE INDEX "ir_model_button-res_group_button_index" ON public."ir_model_button-res_group" USING btree (button);


--
-- Name: ir_model_button-res_group_group_index; Type: INDEX; Schema: public; Owner: gnuhealth
--

CREATE INDEX "ir_model_button-res_group_group_index" ON public."ir_model_button-res_group" USING btree ("group");


--
-- Name: ir_model_button_model_index; Type: INDEX; Schema: public; Owner: gnuhealth
--

CREATE INDEX ir_model_button_model_index ON public.ir_model_button USING btree (model);


--
-- Name: ir_model_data_db_id_index; Type: INDEX; Schema: public; Owner: gnuhealth
--

CREATE INDEX ir_model_data_db_id_index ON public.ir_model_data USING btree (db_id);


--
-- Name: ir_model_data_fs_id_index; Type: INDEX; Schema: public; Owner: gnuhealth
--

CREATE INDEX ir_model_data_fs_id_index ON public.ir_model_data USING btree (fs_id);


--
-- Name: ir_model_data_model_index; Type: INDEX; Schema: public; Owner: gnuhealth
--

CREATE INDEX ir_model_data_model_index ON public.ir_model_data USING btree (model);


--
-- Name: ir_model_data_module_index; Type: INDEX; Schema: public; Owner: gnuhealth
--

CREATE INDEX ir_model_data_module_index ON public.ir_model_data USING btree (module);


--
-- Name: ir_model_field_model_index; Type: INDEX; Schema: public; Owner: gnuhealth
--

CREATE INDEX ir_model_field_model_index ON public.ir_model_field USING btree (model);


--
-- Name: ir_module_config_wizard_item_state_index; Type: INDEX; Schema: public; Owner: gnuhealth
--

CREATE INDEX ir_module_config_wizard_item_state_index ON public.ir_module_config_wizard_item USING btree (state);


--
-- Name: ir_module_dependency_module_index; Type: INDEX; Schema: public; Owner: gnuhealth
--

CREATE INDEX ir_module_dependency_module_index ON public.ir_module_dependency USING btree (module);


--
-- Name: ir_note_resource_index; Type: INDEX; Schema: public; Owner: gnuhealth
--

CREATE INDEX ir_note_resource_index ON public.ir_note USING btree (resource);


--
-- Name: ir_rule_group-res_group_group_index; Type: INDEX; Schema: public; Owner: gnuhealth
--

CREATE INDEX "ir_rule_group-res_group_group_index" ON public."ir_rule_group-res_group" USING btree ("group");


--
-- Name: ir_rule_group-res_group_rule_group_index; Type: INDEX; Schema: public; Owner: gnuhealth
--

CREATE INDEX "ir_rule_group-res_group_rule_group_index" ON public."ir_rule_group-res_group" USING btree (rule_group);


--
-- Name: ir_rule_group_default_p_index; Type: INDEX; Schema: public; Owner: gnuhealth
--

CREATE INDEX ir_rule_group_default_p_index ON public.ir_rule_group USING btree (default_p);


--
-- Name: ir_rule_group_global_p_index; Type: INDEX; Schema: public; Owner: gnuhealth
--

CREATE INDEX ir_rule_group_global_p_index ON public.ir_rule_group USING btree (global_p);


--
-- Name: ir_rule_group_model_index; Type: INDEX; Schema: public; Owner: gnuhealth
--

CREATE INDEX ir_rule_group_model_index ON public.ir_rule_group USING btree (model);


--
-- Name: ir_rule_group_name_index; Type: INDEX; Schema: public; Owner: gnuhealth
--

CREATE INDEX ir_rule_group_name_index ON public.ir_rule_group USING btree (name);


--
-- Name: ir_rule_rule_group_index; Type: INDEX; Schema: public; Owner: gnuhealth
--

CREATE INDEX ir_rule_rule_group_index ON public.ir_rule USING btree (rule_group);


--
-- Name: ir_sequence_type-res_group_group_index; Type: INDEX; Schema: public; Owner: gnuhealth
--

CREATE INDEX "ir_sequence_type-res_group_group_index" ON public."ir_sequence_type-res_group" USING btree ("group");


--
-- Name: ir_sequence_type-res_group_sequence_type_index; Type: INDEX; Schema: public; Owner: gnuhealth
--

CREATE INDEX "ir_sequence_type-res_group_sequence_type_index" ON public."ir_sequence_type-res_group" USING btree (sequence_type);


--
-- Name: ir_session_create_uid_index; Type: INDEX; Schema: public; Owner: gnuhealth
--

CREATE INDEX ir_session_create_uid_index ON public.ir_session USING btree (create_uid);


--
-- Name: ir_session_key_index; Type: INDEX; Schema: public; Owner: gnuhealth
--

CREATE INDEX ir_session_key_index ON public.ir_session USING btree (key);


--
-- Name: ir_translation_lang_type_name_index; Type: INDEX; Schema: public; Owner: gnuhealth
--

CREATE INDEX ir_translation_lang_type_name_index ON public.ir_translation USING btree (lang, type, name);


--
-- Name: ir_translation_res_id_index; Type: INDEX; Schema: public; Owner: gnuhealth
--

CREATE INDEX ir_translation_res_id_index ON public.ir_translation USING btree (res_id);


--
-- Name: ir_trigger_log_trigger_record_id_index; Type: INDEX; Schema: public; Owner: gnuhealth
--

CREATE INDEX ir_trigger_log_trigger_record_id_index ON public.ir_trigger_log USING btree (trigger, record_id);


--
-- Name: ir_trigger_model_index; Type: INDEX; Schema: public; Owner: gnuhealth
--

CREATE INDEX ir_trigger_model_index ON public.ir_trigger USING btree (model);


--
-- Name: ir_trigger_on_create_index; Type: INDEX; Schema: public; Owner: gnuhealth
--

CREATE INDEX ir_trigger_on_create_index ON public.ir_trigger USING btree (on_create);


--
-- Name: ir_trigger_on_delete_index; Type: INDEX; Schema: public; Owner: gnuhealth
--

CREATE INDEX ir_trigger_on_delete_index ON public.ir_trigger USING btree (on_delete);


--
-- Name: ir_trigger_on_time_index; Type: INDEX; Schema: public; Owner: gnuhealth
--

CREATE INDEX ir_trigger_on_time_index ON public.ir_trigger USING btree (on_time);


--
-- Name: ir_trigger_on_write_index; Type: INDEX; Schema: public; Owner: gnuhealth
--

CREATE INDEX ir_trigger_on_write_index ON public.ir_trigger USING btree (on_write);


--
-- Name: ir_ui_icon_name_index; Type: INDEX; Schema: public; Owner: gnuhealth
--

CREATE INDEX ir_ui_icon_name_index ON public.ir_ui_icon USING btree (name);


--
-- Name: ir_ui_menu-res_group_group_index; Type: INDEX; Schema: public; Owner: gnuhealth
--

CREATE INDEX "ir_ui_menu-res_group_group_index" ON public."ir_ui_menu-res_group" USING btree ("group");


--
-- Name: ir_ui_menu-res_group_menu_index; Type: INDEX; Schema: public; Owner: gnuhealth
--

CREATE INDEX "ir_ui_menu-res_group_menu_index" ON public."ir_ui_menu-res_group" USING btree (menu);


--
-- Name: ir_ui_menu_parent_index; Type: INDEX; Schema: public; Owner: gnuhealth
--

CREATE INDEX ir_ui_menu_parent_index ON public.ir_ui_menu USING btree (parent);


--
-- Name: ir_ui_view_inherit_index; Type: INDEX; Schema: public; Owner: gnuhealth
--

CREATE INDEX ir_ui_view_inherit_index ON public.ir_ui_view USING btree (inherit);


--
-- Name: ir_ui_view_model_index; Type: INDEX; Schema: public; Owner: gnuhealth
--

CREATE INDEX ir_ui_view_model_index ON public.ir_ui_view USING btree (model);


--
-- Name: ir_ui_view_priority_index; Type: INDEX; Schema: public; Owner: gnuhealth
--

CREATE INDEX ir_ui_view_priority_index ON public.ir_ui_view USING btree (priority);


--
-- Name: ir_ui_view_tree_state_model_domain_user_child_name_index; Type: INDEX; Schema: public; Owner: gnuhealth
--

CREATE INDEX ir_ui_view_tree_state_model_domain_user_child_name_index ON public.ir_ui_view_tree_state USING btree (model, domain, "user", child_name);


--
-- Name: ir_ui_view_tree_width_field_index; Type: INDEX; Schema: public; Owner: gnuhealth
--

CREATE INDEX ir_ui_view_tree_width_field_index ON public.ir_ui_view_tree_width USING btree (field);


--
-- Name: ir_ui_view_tree_width_model_index; Type: INDEX; Schema: public; Owner: gnuhealth
--

CREATE INDEX ir_ui_view_tree_width_model_index ON public.ir_ui_view_tree_width USING btree (model);


--
-- Name: ir_ui_view_tree_width_user_index; Type: INDEX; Schema: public; Owner: gnuhealth
--

CREATE INDEX ir_ui_view_tree_width_user_index ON public.ir_ui_view_tree_width USING btree ("user");


--
-- Name: ir_ui_view_type_index; Type: INDEX; Schema: public; Owner: gnuhealth
--

CREATE INDEX ir_ui_view_type_index ON public.ir_ui_view USING btree (type);


--
-- Name: res_group_name_index; Type: INDEX; Schema: public; Owner: gnuhealth
--

CREATE INDEX res_group_name_index ON public.res_group USING btree (name);


--
-- Name: res_user-ir_action_action_index; Type: INDEX; Schema: public; Owner: gnuhealth
--

CREATE INDEX "res_user-ir_action_action_index" ON public."res_user-ir_action" USING btree (action);


--
-- Name: res_user-ir_action_user_index; Type: INDEX; Schema: public; Owner: gnuhealth
--

CREATE INDEX "res_user-ir_action_user_index" ON public."res_user-ir_action" USING btree ("user");


--
-- Name: res_user-res_group_group_index; Type: INDEX; Schema: public; Owner: gnuhealth
--

CREATE INDEX "res_user-res_group_group_index" ON public."res_user-res_group" USING btree ("group");


--
-- Name: res_user-res_group_user_index; Type: INDEX; Schema: public; Owner: gnuhealth
--

CREATE INDEX "res_user-res_group_user_index" ON public."res_user-res_group" USING btree ("user");


--
-- Name: res_user_application_key_index; Type: INDEX; Schema: public; Owner: gnuhealth
--

CREATE INDEX res_user_application_key_index ON public.res_user_application USING btree (key);


--
-- Name: res_user_application_user_index; Type: INDEX; Schema: public; Owner: gnuhealth
--

CREATE INDEX res_user_application_user_index ON public.res_user_application USING btree ("user");


--
-- Name: res_user_name_index; Type: INDEX; Schema: public; Owner: gnuhealth
--

CREATE INDEX res_user_name_index ON public.res_user USING btree (name);


--
-- Name: res_user_warning_name_index; Type: INDEX; Schema: public; Owner: gnuhealth
--

CREATE INDEX res_user_warning_name_index ON public.res_user_warning USING btree (name);


--
-- Name: res_user_warning_user_index; Type: INDEX; Schema: public; Owner: gnuhealth
--

CREATE INDEX res_user_warning_user_index ON public.res_user_warning USING btree ("user");


--
-- Name: ir_action-res_group ir_action-res_group_action_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public."ir_action-res_group"
    ADD CONSTRAINT "ir_action-res_group_action_fkey" FOREIGN KEY (action) REFERENCES public.ir_action(id) ON DELETE CASCADE;


--
-- Name: ir_action-res_group ir_action-res_group_group_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public."ir_action-res_group"
    ADD CONSTRAINT "ir_action-res_group_group_fkey" FOREIGN KEY ("group") REFERENCES public.res_group(id) ON DELETE CASCADE;


--
-- Name: ir_action_act_window ir_action_act_window_action_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_action_act_window
    ADD CONSTRAINT ir_action_act_window_action_fkey FOREIGN KEY (action) REFERENCES public.ir_action(id) ON DELETE CASCADE;


--
-- Name: ir_action_act_window_domain ir_action_act_window_domain_act_window_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_action_act_window_domain
    ADD CONSTRAINT ir_action_act_window_domain_act_window_fkey FOREIGN KEY (act_window) REFERENCES public.ir_action_act_window(id) ON DELETE CASCADE;


--
-- Name: ir_action_act_window_view ir_action_act_window_view_act_window_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_action_act_window_view
    ADD CONSTRAINT ir_action_act_window_view_act_window_fkey FOREIGN KEY (act_window) REFERENCES public.ir_action_act_window(id) ON DELETE CASCADE;


--
-- Name: ir_action_act_window_view ir_action_act_window_view_view_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_action_act_window_view
    ADD CONSTRAINT ir_action_act_window_view_view_fkey FOREIGN KEY (view) REFERENCES public.ir_ui_view(id) ON DELETE CASCADE;


--
-- Name: ir_action ir_action_icon_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_action
    ADD CONSTRAINT ir_action_icon_fkey FOREIGN KEY (icon) REFERENCES public.ir_ui_icon(id) ON DELETE SET NULL;


--
-- Name: ir_action_keyword ir_action_keyword_action_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_action_keyword
    ADD CONSTRAINT ir_action_keyword_action_fkey FOREIGN KEY (action) REFERENCES public.ir_action(id) ON DELETE CASCADE;


--
-- Name: ir_action_report ir_action_report_action_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_action_report
    ADD CONSTRAINT ir_action_report_action_fkey FOREIGN KEY (action) REFERENCES public.ir_action(id) ON DELETE CASCADE;


--
-- Name: ir_action_url ir_action_url_action_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_action_url
    ADD CONSTRAINT ir_action_url_action_fkey FOREIGN KEY (action) REFERENCES public.ir_action(id) ON DELETE CASCADE;


--
-- Name: ir_action_wizard ir_action_wizard_action_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_action_wizard
    ADD CONSTRAINT ir_action_wizard_action_fkey FOREIGN KEY (action) REFERENCES public.ir_action(id) ON DELETE CASCADE;


--
-- Name: ir_avatar_cache ir_avatar_cache_avatar_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_avatar_cache
    ADD CONSTRAINT ir_avatar_cache_avatar_fkey FOREIGN KEY (avatar) REFERENCES public.ir_avatar(id) ON DELETE CASCADE;


--
-- Name: ir_cron ir_cron_weekday_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_cron
    ADD CONSTRAINT ir_cron_weekday_fkey FOREIGN KEY (weekday) REFERENCES public.ir_calendar_day(id) ON DELETE SET NULL;


--
-- Name: ir_email_address ir_email_address_email_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_email_address
    ADD CONSTRAINT ir_email_address_email_fkey FOREIGN KEY (email) REFERENCES public.ir_email(id) ON DELETE CASCADE;


--
-- Name: ir_email_template-ir_action_report ir_email_template-ir_action_report_report_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public."ir_email_template-ir_action_report"
    ADD CONSTRAINT "ir_email_template-ir_action_report_report_fkey" FOREIGN KEY (report) REFERENCES public.ir_action_report(id) ON DELETE CASCADE;


--
-- Name: ir_email_template-ir_action_report ir_email_template-ir_action_report_template_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public."ir_email_template-ir_action_report"
    ADD CONSTRAINT "ir_email_template-ir_action_report_template_fkey" FOREIGN KEY (template) REFERENCES public.ir_email_template(id) ON DELETE CASCADE;


--
-- Name: ir_email_template ir_email_template_model_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_email_template
    ADD CONSTRAINT ir_email_template_model_fkey FOREIGN KEY (model) REFERENCES public.ir_model(id) ON DELETE RESTRICT;


--
-- Name: ir_email_template ir_email_template_recipients_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_email_template
    ADD CONSTRAINT ir_email_template_recipients_fkey FOREIGN KEY (recipients) REFERENCES public.ir_model_field(id) ON DELETE SET NULL;


--
-- Name: ir_email_template ir_email_template_recipients_hidden_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_email_template
    ADD CONSTRAINT ir_email_template_recipients_hidden_fkey FOREIGN KEY (recipients_hidden) REFERENCES public.ir_model_field(id) ON DELETE SET NULL;


--
-- Name: ir_email_template ir_email_template_recipients_secondary_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_email_template
    ADD CONSTRAINT ir_email_template_recipients_secondary_fkey FOREIGN KEY (recipients_secondary) REFERENCES public.ir_model_field(id) ON DELETE SET NULL;


--
-- Name: ir_export-res_group ir_export-res_group_export_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public."ir_export-res_group"
    ADD CONSTRAINT "ir_export-res_group_export_fkey" FOREIGN KEY (export) REFERENCES public.ir_export(id) ON DELETE CASCADE;


--
-- Name: ir_export-res_group ir_export-res_group_group_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public."ir_export-res_group"
    ADD CONSTRAINT "ir_export-res_group_group_fkey" FOREIGN KEY ("group") REFERENCES public.res_group(id) ON DELETE CASCADE;


--
-- Name: ir_export-write-res_group ir_export-write-res_group_export_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public."ir_export-write-res_group"
    ADD CONSTRAINT "ir_export-write-res_group_export_fkey" FOREIGN KEY (export) REFERENCES public.ir_export(id) ON DELETE CASCADE;


--
-- Name: ir_export-write-res_group ir_export-write-res_group_group_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public."ir_export-write-res_group"
    ADD CONSTRAINT "ir_export-write-res_group_group_fkey" FOREIGN KEY ("group") REFERENCES public.res_group(id) ON DELETE CASCADE;


--
-- Name: ir_export_line ir_export_line_export_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_export_line
    ADD CONSTRAINT ir_export_line_export_fkey FOREIGN KEY (export) REFERENCES public.ir_export(id) ON DELETE CASCADE;


--
-- Name: ir_model_access ir_model_access_group_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_model_access
    ADD CONSTRAINT ir_model_access_group_fkey FOREIGN KEY ("group") REFERENCES public.res_group(id) ON DELETE CASCADE;


--
-- Name: ir_model_access ir_model_access_model_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_model_access
    ADD CONSTRAINT ir_model_access_model_fkey FOREIGN KEY (model) REFERENCES public.ir_model(id) ON DELETE CASCADE;


--
-- Name: ir_model_button-button_reset ir_model_button-button_reset_button_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public."ir_model_button-button_reset"
    ADD CONSTRAINT "ir_model_button-button_reset_button_fkey" FOREIGN KEY (button) REFERENCES public.ir_model_button(id) ON DELETE CASCADE;


--
-- Name: ir_model_button-button_reset ir_model_button-button_reset_button_ruled_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public."ir_model_button-button_reset"
    ADD CONSTRAINT "ir_model_button-button_reset_button_ruled_fkey" FOREIGN KEY (button_ruled) REFERENCES public.ir_model_button(id) ON DELETE CASCADE;


--
-- Name: ir_model_button-res_group ir_model_button-res_group_button_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public."ir_model_button-res_group"
    ADD CONSTRAINT "ir_model_button-res_group_button_fkey" FOREIGN KEY (button) REFERENCES public.ir_model_button(id) ON DELETE CASCADE;


--
-- Name: ir_model_button-res_group ir_model_button-res_group_group_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public."ir_model_button-res_group"
    ADD CONSTRAINT "ir_model_button-res_group_group_fkey" FOREIGN KEY ("group") REFERENCES public.res_group(id) ON DELETE CASCADE;


--
-- Name: ir_model_button_click ir_model_button_click_button_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_model_button_click
    ADD CONSTRAINT ir_model_button_click_button_fkey FOREIGN KEY (button) REFERENCES public.ir_model_button(id) ON DELETE CASCADE;


--
-- Name: ir_model_button_click ir_model_button_click_user_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_model_button_click
    ADD CONSTRAINT ir_model_button_click_user_fkey FOREIGN KEY ("user") REFERENCES public.res_user(id) ON DELETE CASCADE;


--
-- Name: ir_model_button ir_model_button_model_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_model_button
    ADD CONSTRAINT ir_model_button_model_fkey FOREIGN KEY (model) REFERENCES public.ir_model(id) ON DELETE CASCADE;


--
-- Name: ir_model_button_rule ir_model_button_rule_button_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_model_button_rule
    ADD CONSTRAINT ir_model_button_rule_button_fkey FOREIGN KEY (button) REFERENCES public.ir_model_button(id) ON DELETE CASCADE;


--
-- Name: ir_model_button_rule ir_model_button_rule_group_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_model_button_rule
    ADD CONSTRAINT ir_model_button_rule_group_fkey FOREIGN KEY ("group") REFERENCES public.res_group(id) ON DELETE CASCADE;


--
-- Name: ir_model_field_access ir_model_field_access_field_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_model_field_access
    ADD CONSTRAINT ir_model_field_access_field_fkey FOREIGN KEY (field) REFERENCES public.ir_model_field(id) ON DELETE CASCADE;


--
-- Name: ir_model_field_access ir_model_field_access_group_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_model_field_access
    ADD CONSTRAINT ir_model_field_access_group_fkey FOREIGN KEY ("group") REFERENCES public.res_group(id) ON DELETE CASCADE;


--
-- Name: ir_model_field ir_model_field_model_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_model_field
    ADD CONSTRAINT ir_model_field_model_fkey FOREIGN KEY (model) REFERENCES public.ir_model(id) ON DELETE CASCADE;


--
-- Name: ir_module_config_wizard_item ir_module_config_wizard_item_action_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_module_config_wizard_item
    ADD CONSTRAINT ir_module_config_wizard_item_action_fkey FOREIGN KEY (action) REFERENCES public.ir_action(id) ON DELETE RESTRICT;


--
-- Name: ir_module_dependency ir_module_dependency_module_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_module_dependency
    ADD CONSTRAINT ir_module_dependency_module_fkey FOREIGN KEY (module) REFERENCES public.ir_module(id) ON DELETE CASCADE;


--
-- Name: ir_note_read ir_note_read_note_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_note_read
    ADD CONSTRAINT ir_note_read_note_fkey FOREIGN KEY (note) REFERENCES public.ir_note(id) ON DELETE CASCADE;


--
-- Name: ir_note_read ir_note_read_user_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_note_read
    ADD CONSTRAINT ir_note_read_user_fkey FOREIGN KEY ("user") REFERENCES public.res_user(id) ON DELETE CASCADE;


--
-- Name: ir_rule_group-res_group ir_rule_group-res_group_group_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public."ir_rule_group-res_group"
    ADD CONSTRAINT "ir_rule_group-res_group_group_fkey" FOREIGN KEY ("group") REFERENCES public.res_group(id) ON DELETE CASCADE;


--
-- Name: ir_rule_group-res_group ir_rule_group-res_group_rule_group_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public."ir_rule_group-res_group"
    ADD CONSTRAINT "ir_rule_group-res_group_rule_group_fkey" FOREIGN KEY (rule_group) REFERENCES public.ir_rule_group(id) ON DELETE CASCADE;


--
-- Name: ir_rule_group ir_rule_group_model_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_rule_group
    ADD CONSTRAINT ir_rule_group_model_fkey FOREIGN KEY (model) REFERENCES public.ir_model(id) ON DELETE CASCADE;


--
-- Name: ir_rule ir_rule_rule_group_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_rule
    ADD CONSTRAINT ir_rule_rule_group_fkey FOREIGN KEY (rule_group) REFERENCES public.ir_rule_group(id) ON DELETE CASCADE;


--
-- Name: ir_sequence ir_sequence_sequence_type_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_sequence
    ADD CONSTRAINT ir_sequence_sequence_type_fkey FOREIGN KEY (sequence_type) REFERENCES public.ir_sequence_type(id) ON DELETE RESTRICT;


--
-- Name: ir_sequence_strict ir_sequence_strict_sequence_type_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_sequence_strict
    ADD CONSTRAINT ir_sequence_strict_sequence_type_fkey FOREIGN KEY (sequence_type) REFERENCES public.ir_sequence_type(id) ON DELETE RESTRICT;


--
-- Name: ir_sequence_type-res_group ir_sequence_type-res_group_group_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public."ir_sequence_type-res_group"
    ADD CONSTRAINT "ir_sequence_type-res_group_group_fkey" FOREIGN KEY ("group") REFERENCES public.res_group(id) ON DELETE CASCADE;


--
-- Name: ir_sequence_type-res_group ir_sequence_type-res_group_sequence_type_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public."ir_sequence_type-res_group"
    ADD CONSTRAINT "ir_sequence_type-res_group_sequence_type_fkey" FOREIGN KEY (sequence_type) REFERENCES public.ir_sequence_type(id) ON DELETE CASCADE;


--
-- Name: ir_trigger_log ir_trigger_log_trigger_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_trigger_log
    ADD CONSTRAINT ir_trigger_log_trigger_fkey FOREIGN KEY (trigger) REFERENCES public.ir_trigger(id) ON DELETE CASCADE;


--
-- Name: ir_trigger ir_trigger_model_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_trigger
    ADD CONSTRAINT ir_trigger_model_fkey FOREIGN KEY (model) REFERENCES public.ir_model(id) ON DELETE RESTRICT;


--
-- Name: ir_ui_menu-res_group ir_ui_menu-res_group_group_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public."ir_ui_menu-res_group"
    ADD CONSTRAINT "ir_ui_menu-res_group_group_fkey" FOREIGN KEY ("group") REFERENCES public.res_group(id) ON DELETE CASCADE;


--
-- Name: ir_ui_menu-res_group ir_ui_menu-res_group_menu_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public."ir_ui_menu-res_group"
    ADD CONSTRAINT "ir_ui_menu-res_group_menu_fkey" FOREIGN KEY (menu) REFERENCES public.ir_ui_menu(id) ON DELETE CASCADE;


--
-- Name: ir_ui_menu_favorite ir_ui_menu_favorite_menu_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_ui_menu_favorite
    ADD CONSTRAINT ir_ui_menu_favorite_menu_fkey FOREIGN KEY (menu) REFERENCES public.ir_ui_menu(id) ON DELETE CASCADE;


--
-- Name: ir_ui_menu_favorite ir_ui_menu_favorite_user_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_ui_menu_favorite
    ADD CONSTRAINT ir_ui_menu_favorite_user_fkey FOREIGN KEY ("user") REFERENCES public.res_user(id) ON DELETE CASCADE;


--
-- Name: ir_ui_menu ir_ui_menu_parent_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_ui_menu
    ADD CONSTRAINT ir_ui_menu_parent_fkey FOREIGN KEY (parent) REFERENCES public.ir_ui_menu(id) ON DELETE CASCADE;


--
-- Name: ir_ui_view ir_ui_view_inherit_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_ui_view
    ADD CONSTRAINT ir_ui_view_inherit_fkey FOREIGN KEY (inherit) REFERENCES public.ir_ui_view(id) ON DELETE CASCADE;


--
-- Name: ir_ui_view_search ir_ui_view_search_user_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_ui_view_search
    ADD CONSTRAINT ir_ui_view_search_user_fkey FOREIGN KEY ("user") REFERENCES public.res_user(id) ON DELETE CASCADE;


--
-- Name: ir_ui_view_tree_state ir_ui_view_tree_state_user_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_ui_view_tree_state
    ADD CONSTRAINT ir_ui_view_tree_state_user_fkey FOREIGN KEY ("user") REFERENCES public.res_user(id) ON DELETE CASCADE;


--
-- Name: ir_ui_view_tree_width ir_ui_view_tree_width_user_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.ir_ui_view_tree_width
    ADD CONSTRAINT ir_ui_view_tree_width_user_fkey FOREIGN KEY ("user") REFERENCES public.res_user(id) ON DELETE CASCADE;


--
-- Name: res_group res_group_parent_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.res_group
    ADD CONSTRAINT res_group_parent_fkey FOREIGN KEY (parent) REFERENCES public.res_group(id) ON DELETE SET NULL;


--
-- Name: res_user-ir_action res_user-ir_action_action_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public."res_user-ir_action"
    ADD CONSTRAINT "res_user-ir_action_action_fkey" FOREIGN KEY (action) REFERENCES public.ir_action(id) ON DELETE CASCADE;


--
-- Name: res_user-ir_action res_user-ir_action_user_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public."res_user-ir_action"
    ADD CONSTRAINT "res_user-ir_action_user_fkey" FOREIGN KEY ("user") REFERENCES public.res_user(id) ON DELETE CASCADE;


--
-- Name: res_user-res_group res_user-res_group_group_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public."res_user-res_group"
    ADD CONSTRAINT "res_user-res_group_group_fkey" FOREIGN KEY ("group") REFERENCES public.res_group(id) ON DELETE CASCADE;


--
-- Name: res_user-res_group res_user-res_group_user_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public."res_user-res_group"
    ADD CONSTRAINT "res_user-res_group_user_fkey" FOREIGN KEY ("user") REFERENCES public.res_user(id) ON DELETE CASCADE;


--
-- Name: res_user_application res_user_application_user_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.res_user_application
    ADD CONSTRAINT res_user_application_user_fkey FOREIGN KEY ("user") REFERENCES public.res_user(id) ON DELETE SET NULL;


--
-- Name: res_user res_user_language_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.res_user
    ADD CONSTRAINT res_user_language_fkey FOREIGN KEY (language) REFERENCES public.ir_lang(id) ON DELETE SET NULL;


--
-- Name: res_user res_user_menu_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.res_user
    ADD CONSTRAINT res_user_menu_fkey FOREIGN KEY (menu) REFERENCES public.ir_action(id) ON DELETE RESTRICT;


--
-- Name: res_user_warning res_user_warning_user_fkey; Type: FK CONSTRAINT; Schema: public; Owner: gnuhealth
--

ALTER TABLE ONLY public.res_user_warning
    ADD CONSTRAINT res_user_warning_user_fkey FOREIGN KEY ("user") REFERENCES public.res_user(id) ON DELETE RESTRICT;


--
-- PostgreSQL database dump complete
--


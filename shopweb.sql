--
-- PostgreSQL database dump
--

-- Dumped from database version 12.3
-- Dumped by pg_dump version 12.3

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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgres;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: shopweb_order; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.shopweb_order (
    id integer NOT NULL,
    start_date timestamp with time zone NOT NULL,
    ordered_date timestamp with time zone NOT NULL,
    ordered boolean NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.shopweb_order OWNER TO postgres;

--
-- Name: shopweb_order_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.shopweb_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.shopweb_order_id_seq OWNER TO postgres;

--
-- Name: shopweb_order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.shopweb_order_id_seq OWNED BY public.shopweb_order.id;


--
-- Name: shopweb_order_items; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.shopweb_order_items (
    id integer NOT NULL,
    order_id integer NOT NULL,
    orderitem_id integer NOT NULL
);


ALTER TABLE public.shopweb_order_items OWNER TO postgres;

--
-- Name: shopweb_order_items_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.shopweb_order_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.shopweb_order_items_id_seq OWNER TO postgres;

--
-- Name: shopweb_order_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.shopweb_order_items_id_seq OWNED BY public.shopweb_order_items.id;


--
-- Name: shopweb_orderitem; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.shopweb_orderitem (
    id integer NOT NULL,
    quantity integer NOT NULL,
    item_id integer NOT NULL,
    user_id integer,
    ordered boolean NOT NULL
);


ALTER TABLE public.shopweb_orderitem OWNER TO postgres;

--
-- Name: shopweb_orderitem_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.shopweb_orderitem_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.shopweb_orderitem_id_seq OWNER TO postgres;

--
-- Name: shopweb_orderitem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.shopweb_orderitem_id_seq OWNED BY public.shopweb_orderitem.id;


--
-- Name: shopweb_product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.shopweb_product (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    img character varying(100) NOT NULL,
    "desc" text NOT NULL,
    price integer NOT NULL,
    slug character varying(50) NOT NULL,
    freatured boolean NOT NULL,
    entry date NOT NULL,
    style text NOT NULL
);


ALTER TABLE public.shopweb_product OWNER TO postgres;

--
-- Name: shopweb_product_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.shopweb_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.shopweb_product_id_seq OWNER TO postgres;

--
-- Name: shopweb_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.shopweb_product_id_seq OWNED BY public.shopweb_product.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: shopweb_order id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shopweb_order ALTER COLUMN id SET DEFAULT nextval('public.shopweb_order_id_seq'::regclass);


--
-- Name: shopweb_order_items id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shopweb_order_items ALTER COLUMN id SET DEFAULT nextval('public.shopweb_order_items_id_seq'::regclass);


--
-- Name: shopweb_orderitem id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shopweb_orderitem ALTER COLUMN id SET DEFAULT nextval('public.shopweb_orderitem_id_seq'::regclass);


--
-- Name: shopweb_product id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shopweb_product ALTER COLUMN id SET DEFAULT nextval('public.shopweb_product_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add product	1	add_product
2	Can change product	1	change_product
3	Can delete product	1	delete_product
4	Can view product	1	view_product
5	Can add log entry	2	add_logentry
6	Can change log entry	2	change_logentry
7	Can delete log entry	2	delete_logentry
8	Can view log entry	2	view_logentry
9	Can add permission	3	add_permission
10	Can change permission	3	change_permission
11	Can delete permission	3	delete_permission
12	Can view permission	3	view_permission
13	Can add group	4	add_group
14	Can change group	4	change_group
15	Can delete group	4	delete_group
16	Can view group	4	view_group
17	Can add user	5	add_user
18	Can change user	5	change_user
19	Can delete user	5	delete_user
20	Can view user	5	view_user
21	Can add content type	6	add_contenttype
22	Can change content type	6	change_contenttype
23	Can delete content type	6	delete_contenttype
24	Can view content type	6	view_contenttype
25	Can add session	7	add_session
26	Can change session	7	change_session
27	Can delete session	7	delete_session
28	Can view session	7	view_session
29	Can add order	8	add_order
30	Can change order	8	change_order
31	Can delete order	8	delete_order
32	Can view order	8	view_order
33	Can add order item	9	add_orderitem
34	Can change order item	9	change_orderitem
35	Can delete order item	9	delete_orderitem
36	Can view order item	9	view_orderitem
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$216000$kFyEBQwALmNf$I5WSQVQUtAQ9dUG4RLmwWYW1ZmTwFwOqcwoarwO8bjc=	2020-11-27 18:55:06.221884+05:30	t	shalmali			shalmalikulkarni01@gmail.com	t	t	2020-11-22 14:34:58.816601+05:30
8	pbkdf2_sha256$216000$k9BYb1nJXOQl$bFfGh/q/PX0AyAc9Ee9OJo5GAqEzxAeTW9b+OPiYPPY=	2020-11-29 18:43:19.840804+05:30	f	light			regulusblack1200@gmail.com	f	t	2020-11-27 20:32:25.000617+05:30
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2020-11-22 15:17:31.086833+05:30	1	Product object (1)	1	[{"added": {}}]	1	1
2	2020-11-22 15:19:14.273499+05:30	2	Product object (2)	1	[{"added": {}}]	1	1
3	2020-11-22 15:20:04.45469+05:30	3	Product object (3)	1	[{"added": {}}]	1	1
4	2020-11-22 15:20:55.798008+05:30	4	Product object (4)	1	[{"added": {}}]	1	1
5	2020-11-22 15:22:49.205236+05:30	5	Product object (5)	1	[{"added": {}}]	1	1
6	2020-11-25 10:53:30.250458+05:30	5	Liquid foundation with shades	2	[{"changed": {"fields": ["Slug"]}}]	1	1
7	2020-11-25 10:53:54.937007+05:30	4	Face Mask	2	[{"changed": {"fields": ["Slug"]}}]	1	1
8	2020-11-25 10:54:19.178589+05:30	3	Eye Shadow	2	[{"changed": {"fields": ["Slug"]}}]	1	1
9	2020-11-25 10:54:41.905792+05:30	2	Eye Liner	2	[{"changed": {"fields": ["Slug"]}}]	1	1
10	2020-11-25 10:55:02.797511+05:30	1	Matte Lipstick	2	[{"changed": {"fields": ["Slug"]}}]	1	1
11	2020-11-25 14:31:24.548982+05:30	6	Compact Powder	1	[{"added": {}}]	1	1
12	2020-11-25 14:32:14.29543+05:30	7	Mascara	1	[{"added": {}}]	1	1
13	2020-11-25 14:33:07.499149+05:30	8	Concealer	1	[{"added": {}}]	1	1
14	2020-11-25 14:34:03.179454+05:30	9	Lipliner	1	[{"added": {}}]	1	1
15	2020-11-25 14:35:16.246067+05:30	10	Lipgloss	1	[{"added": {}}]	1	1
16	2020-11-25 14:42:51.992217+05:30	9	Lipliner	2	[{"changed": {"fields": ["Img"]}}]	1	1
17	2020-11-25 14:43:23.595606+05:30	7	Mascara	2	[{"changed": {"fields": ["Img"]}}]	1	1
18	2020-11-26 12:08:09.964852+05:30	10	Lipgloss	2	[{"changed": {"fields": ["Freatured"]}}]	1	1
19	2020-11-26 12:08:32.098755+05:30	6	Compact Powder	2	[{"changed": {"fields": ["Freatured"]}}]	1	1
20	2020-11-26 12:08:48.063998+05:30	2	Eye Liner	2	[{"changed": {"fields": ["Freatured"]}}]	1	1
21	2020-11-26 12:40:24.426343+05:30	10	Lipgloss	2	[{"changed": {"fields": ["Desc", "Entry"]}}]	1	1
22	2020-11-26 12:40:43.165801+05:30	8	Concealer	2	[{"changed": {"fields": ["Entry"]}}]	1	1
23	2020-11-26 12:41:10.20375+05:30	2	Eye Liner	2	[{"changed": {"fields": ["Entry"]}}]	1	1
24	2020-11-26 12:41:34.730528+05:30	6	Compact Powder	2	[{"changed": {"fields": ["Entry"]}}]	1	1
25	2020-11-27 20:15:16.729278+05:30	4	1 of Matte Lipstick	3		9	1
26	2020-11-27 20:29:52.311888+05:30	2	Order object (2)	3		8	1
27	2020-11-27 20:30:07.90047+05:30	3	1 of Face Mask	3		9	1
28	2020-11-27 20:30:14.449345+05:30	2	1 of Eye Shadow	3		9	1
29	2020-11-28 12:27:27.318878+05:30	10	Lipgloss	2	[{"changed": {"fields": ["Style"]}}]	1	1
30	2020-11-28 12:27:39.111247+05:30	9	Lipliner	2	[{"changed": {"fields": ["Style"]}}]	1	1
31	2020-11-28 12:27:49.682952+05:30	8	Concealer	2	[{"changed": {"fields": ["Style"]}}]	1	1
32	2020-11-28 12:28:01.022757+05:30	7	Mascara	2	[{"changed": {"fields": ["Style"]}}]	1	1
33	2020-11-28 12:28:15.766736+05:30	6	Compact Powder	2	[{"changed": {"fields": ["Style"]}}]	1	1
34	2020-11-28 12:28:25.69602+05:30	5	Liquid foundation with shades	2	[{"changed": {"fields": ["Style"]}}]	1	1
35	2020-11-28 12:28:49.090803+05:30	4	Face Mask	2	[{"changed": {"fields": ["Style"]}}]	1	1
36	2020-11-28 12:29:29.567688+05:30	4	Face Mask	2	[{"changed": {"fields": ["Style"]}}]	1	1
37	2020-11-28 12:30:20.599341+05:30	10	Lipgloss	2	[{"changed": {"fields": ["Style"]}}]	1	1
38	2020-11-28 12:30:29.647255+05:30	9	Lipliner	2	[{"changed": {"fields": ["Style"]}}]	1	1
39	2020-11-28 12:30:38.719064+05:30	8	Concealer	2	[{"changed": {"fields": ["Style"]}}]	1	1
40	2020-11-28 12:31:24.344387+05:30	8	Concealer	2	[{"changed": {"fields": ["Style"]}}]	1	1
41	2020-11-28 12:32:17.34631+05:30	10	Lipgloss	2	[{"changed": {"fields": ["Style"]}}]	1	1
42	2020-11-28 12:32:33.323875+05:30	9	Lipliner	2	[{"changed": {"fields": ["Style"]}}]	1	1
43	2020-11-28 12:32:43.507466+05:30	8	Concealer	2	[{"changed": {"fields": ["Style"]}}]	1	1
44	2020-11-28 12:33:02.050717+05:30	7	Mascara	2	[]	1	1
45	2020-11-28 12:33:13.201263+05:30	6	Compact Powder	2	[{"changed": {"fields": ["Style"]}}]	1	1
46	2020-11-28 12:33:23.359203+05:30	5	Liquid foundation with shades	2	[{"changed": {"fields": ["Style"]}}]	1	1
47	2020-11-28 12:33:46.522714+05:30	4	Face Mask	2	[{"changed": {"fields": ["Style"]}}]	1	1
48	2020-11-28 12:33:54.616326+05:30	3	Eye Shadow	2	[]	1	1
49	2020-11-28 12:34:14.752762+05:30	4	Face Mask	2	[{"changed": {"fields": ["Style"]}}]	1	1
50	2020-11-28 12:34:23.797683+05:30	3	Eye Shadow	2	[{"changed": {"fields": ["Style"]}}]	1	1
51	2020-11-28 12:34:48.189074+05:30	2	Eye Liner	2	[{"changed": {"fields": ["Style"]}}]	1	1
52	2020-11-28 12:34:54.398024+05:30	1	Matte Lipstick	2	[]	1	1
53	2020-11-28 12:35:14.583887+05:30	6	Compact Powder	2	[]	1	1
54	2020-11-28 12:35:23.076489+05:30	5	Liquid foundation with shades	2	[]	1	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	shopweb	product
2	admin	logentry
3	auth	permission
4	auth	group
5	auth	user
6	contenttypes	contenttype
7	sessions	session
8	shopweb	order
9	shopweb	orderitem
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2020-11-22 13:55:49.544913+05:30
2	auth	0001_initial	2020-11-22 13:55:50.05081+05:30
3	admin	0001_initial	2020-11-22 13:55:50.964216+05:30
4	admin	0002_logentry_remove_auto_add	2020-11-22 13:55:51.126446+05:30
5	admin	0003_logentry_add_action_flag_choices	2020-11-22 13:55:51.167008+05:30
6	contenttypes	0002_remove_content_type_name	2020-11-22 13:55:51.31665+05:30
7	auth	0002_alter_permission_name_max_length	2020-11-22 13:55:51.360587+05:30
8	auth	0003_alter_user_email_max_length	2020-11-22 13:55:51.408045+05:30
9	auth	0004_alter_user_username_opts	2020-11-22 13:55:51.447567+05:30
10	auth	0005_alter_user_last_login_null	2020-11-22 13:55:51.48833+05:30
11	auth	0006_require_contenttypes_0002	2020-11-22 13:55:51.500147+05:30
12	auth	0007_alter_validators_add_error_messages	2020-11-22 13:55:51.538507+05:30
13	auth	0008_alter_user_username_max_length	2020-11-22 13:55:51.675428+05:30
14	auth	0009_alter_user_last_name_max_length	2020-11-22 13:55:51.722442+05:30
15	auth	0010_alter_group_name_max_length	2020-11-22 13:55:51.770852+05:30
16	auth	0011_update_proxy_permissions	2020-11-22 13:55:51.804243+05:30
17	auth	0012_alter_user_first_name_max_length	2020-11-22 13:55:51.850867+05:30
18	sessions	0001_initial	2020-11-22 13:55:51.982012+05:30
19	shopweb	0001_initial	2020-11-22 13:55:52.255496+05:30
20	shopweb	0002_product_price	2020-11-22 14:11:47.235745+05:30
21	shopweb	0003_product_slug	2020-11-24 14:47:54.431709+05:30
22	shopweb	0004_product_freatured	2020-11-26 11:50:25.837564+05:30
23	shopweb	0005_product_entry_date	2020-11-26 12:17:44.921733+05:30
24	shopweb	0006_auto_20201126_1225	2020-11-26 12:26:37.946856+05:30
25	shopweb	0007_auto_20201126_1236	2020-11-26 12:37:05.053769+05:30
26	shopweb	0008_order_orderitem	2020-11-27 17:58:11.914903+05:30
27	shopweb	0009_auto_20201127_1925	2020-11-27 19:25:29.270093+05:30
28	shopweb	0010_product_style	2020-11-28 12:26:14.510246+05:30
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
pk5xt38opbr0grg0bg7nxve719z6c3e1	eyJfcGFzc3dvcmRfcmVzZXRfdG9rZW4iOiJhZHlqeDEtZTkxZTBjZjRjMmJkMmM0ZTYxOGZmOTJkNDg4NTNlZDEifQ:1kiH3u:zTZBvVVIsvFP6HuK4P44oDA9ZsU2raBh2O-9ffH_De0	2020-12-10 18:41:50.688554+05:30
9trc3kgyq5x5urxz6ymbs1zwc9jb8l6o	.eJxVjMsOwiAQRf-FtSEFOjxcuvcbyMAMUjU0Ke3K-O_apAvd3nPOfYmI21rj1nmJE4mzUOL0uyXMD247oDu22yzz3NZlSnJX5EG7vM7Ez8vh_h1U7PVbO0jFh2Ro0CaEFDAgKcVuZAbFoxuShUzaYyAPtuhiGHQhNmDZUwbx_gDpszhQ:1kidkI:S2xKUPXRvgf5Ot4hlaQd4llYdxOkopfKBu-_rWwZyno	2020-12-11 18:55:06.406846+05:30
gov5i6x8p5rnsxjjy3xnn75izb1mxgas	.eJxVjDsOwjAQBe_iGlleG39CSZ8zRLveDQ4gW8qnQtwdIqWA9s3Me6kBt7UM2yLzMLG6qKROvxthfkjdAd-x3prOra7zRHpX9EEX3TeW5_Vw_w4KLuVbI-eRxXo2FowR9CZEjJY6QcljhpTIO4pnzyAuQeoMALggiOQwCKn3BwUWOHc:1kjMVz:6D_cXB928SG961fitnIPlTzkn3DtpbhzZwBJiCL10uI	2020-12-13 18:43:19.348436+05:30
\.


--
-- Data for Name: shopweb_order; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.shopweb_order (id, start_date, ordered_date, ordered, user_id) FROM stdin;
3	2020-11-27 20:33:15.824729+05:30	2020-11-27 20:33:15.823727+05:30	f	8
\.


--
-- Data for Name: shopweb_order_items; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.shopweb_order_items (id, order_id, orderitem_id) FROM stdin;
\.


--
-- Data for Name: shopweb_orderitem; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.shopweb_orderitem (id, quantity, item_id, user_id, ordered) FROM stdin;
\.


--
-- Data for Name: shopweb_product; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.shopweb_product (id, name, img, "desc", price, slug, freatured, entry, style) FROM stdin;
4	Face Mask	imageup/Face_Mask.jpeg	Reduces dark spots\r\nBrightens dull skin\r\nRehydrates intensely	100	Face_Mask	t	2020-11-26	new high
3	Eye Shadow	imageup/Eye_Shadow.jpeg	Naturally nude and pastel tones for an ethereal look\r\nBlends effortlessly for an intense colour payoff\r\nBold and vivid shades that make heads turn	300	Eye_Shadow	t	2020-11-26	low
2	Eye Liner	imageup/Eye_Liner.jpeg	Colour rich pigment\r\nWater resistant\r\nQuick dry	250	Eye_Liner	f	2020-11-01	low new
1	Matte Lipstick	imageup/Matt_Lipstick.jpeg	Infinitely Matte\r\nIconic Weightless Formula\r\nLong Stay\r\nOne Stroke Application\r\nLuxurious Texture\r\nNon-Drying	400	Matte_Lipstick	t	2020-11-26	new
6	Compact Powder	imageup/Compact_Powder.jpeg	Gives a flawless skin\r\nSmooth look\r\nEven toned complexion for 24 hrs\r\nLight weight	250	Compact_Powder	f	2020-07-12	new high
5	Liquid foundation with shades	imageup/Liquid_Foundation.jpeg	Shades to suit every Indian skin tone\r\nMatte finish\r\nLight weight\r\nComfortable on skin	350	Liquid_foundation	t	2020-11-26	new
10	Lipgloss	imageup/Lipgloss.jpeg	Gives a glossy look , \r\n\r\nSoft and glittery lips , \r\n\r\nMetallic finish ,	120	Lipgloss	f	2020-11-23	new
9	Lipliner	imageup/Lipliner.jpg	Get a seamless application and even color with every stroke\r\nLuxurious matte finish\r\nFills in uneven areas	180	Lipliner	t	2020-11-26	high
8	Concealer	imageup/Concealer.jpeg	Hides dark spots and acne\r\nGives shiny smooth look\r\nLast for entire day	200	Concealer	t	2020-10-26	low
7	Mascara	imageup/Mascara.jpg	Get a bold look with bold lashes\r\nExtreme volume\r\nSmudge free\r\nStays for 24 hrs	150	Mascara	t	2020-11-26	low
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 36, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 8, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 54, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 9, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 28, true);


--
-- Name: shopweb_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.shopweb_order_id_seq', 3, true);


--
-- Name: shopweb_order_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.shopweb_order_items_id_seq', 9, true);


--
-- Name: shopweb_orderitem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.shopweb_orderitem_id_seq', 11, true);


--
-- Name: shopweb_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.shopweb_product_id_seq', 10, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: shopweb_order_items shopweb_order_items_order_id_orderitem_id_46330d93_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shopweb_order_items
    ADD CONSTRAINT shopweb_order_items_order_id_orderitem_id_46330d93_uniq UNIQUE (order_id, orderitem_id);


--
-- Name: shopweb_order_items shopweb_order_items_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shopweb_order_items
    ADD CONSTRAINT shopweb_order_items_pkey PRIMARY KEY (id);


--
-- Name: shopweb_order shopweb_order_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shopweb_order
    ADD CONSTRAINT shopweb_order_pkey PRIMARY KEY (id);


--
-- Name: shopweb_orderitem shopweb_orderitem_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shopweb_orderitem
    ADD CONSTRAINT shopweb_orderitem_pkey PRIMARY KEY (id);


--
-- Name: shopweb_product shopweb_product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shopweb_product
    ADD CONSTRAINT shopweb_product_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: shopweb_order_items_order_id_0577de4a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX shopweb_order_items_order_id_0577de4a ON public.shopweb_order_items USING btree (order_id);


--
-- Name: shopweb_order_items_orderitem_id_c3ae783a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX shopweb_order_items_orderitem_id_c3ae783a ON public.shopweb_order_items USING btree (orderitem_id);


--
-- Name: shopweb_order_user_id_25b6af44; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX shopweb_order_user_id_25b6af44 ON public.shopweb_order USING btree (user_id);


--
-- Name: shopweb_orderitem_item_id_b7a082b0; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX shopweb_orderitem_item_id_b7a082b0 ON public.shopweb_orderitem USING btree (item_id);


--
-- Name: shopweb_orderitem_user_id_620a5eb3; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX shopweb_orderitem_user_id_620a5eb3 ON public.shopweb_orderitem USING btree (user_id);


--
-- Name: shopweb_product_slug_7556e9a7; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX shopweb_product_slug_7556e9a7 ON public.shopweb_product USING btree (slug);


--
-- Name: shopweb_product_slug_7556e9a7_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX shopweb_product_slug_7556e9a7_like ON public.shopweb_product USING btree (slug varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: shopweb_order_items shopweb_order_items_order_id_0577de4a_fk_shopweb_order_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shopweb_order_items
    ADD CONSTRAINT shopweb_order_items_order_id_0577de4a_fk_shopweb_order_id FOREIGN KEY (order_id) REFERENCES public.shopweb_order(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: shopweb_order_items shopweb_order_items_orderitem_id_c3ae783a_fk_shopweb_o; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shopweb_order_items
    ADD CONSTRAINT shopweb_order_items_orderitem_id_c3ae783a_fk_shopweb_o FOREIGN KEY (orderitem_id) REFERENCES public.shopweb_orderitem(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: shopweb_order shopweb_order_user_id_25b6af44_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shopweb_order
    ADD CONSTRAINT shopweb_order_user_id_25b6af44_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: shopweb_orderitem shopweb_orderitem_item_id_b7a082b0_fk_shopweb_product_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shopweb_orderitem
    ADD CONSTRAINT shopweb_orderitem_item_id_b7a082b0_fk_shopweb_product_id FOREIGN KEY (item_id) REFERENCES public.shopweb_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: shopweb_orderitem shopweb_orderitem_user_id_620a5eb3_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shopweb_orderitem
    ADD CONSTRAINT shopweb_orderitem_user_id_620a5eb3_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--


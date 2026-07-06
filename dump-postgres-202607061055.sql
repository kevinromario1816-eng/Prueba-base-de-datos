--
-- PostgreSQL database dump
--

\restrict F8mDLYWHW7N5RQbK4MkvfQ0rmINzC4qhiX2tW2zYJHzKIZofVgOsazSzTv5CSgd

-- Dumped from database version 16.14 (Debian 16.14-1.pgdg13+1)
-- Dumped by pg_dump version 16.14 (Ubuntu 16.14-0ubuntu0.24.04.1)

-- Started on 2026-07-06 10:55:39 -05

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

DROP DATABASE postgres;
--
-- TOC entry 3503 (class 1262 OID 5)
-- Name: postgres; Type: DATABASE; Schema: -; Owner: admin123
--

CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


ALTER DATABASE postgres OWNER TO admin123;

\unrestrict F8mDLYWHW7N5RQbK4MkvfQ0rmINzC4qhiX2tW2zYJHzKIZofVgOsazSzTv5CSgd
\connect postgres
\restrict F8mDLYWHW7N5RQbK4MkvfQ0rmINzC4qhiX2tW2zYJHzKIZofVgOsazSzTv5CSgd

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
-- TOC entry 3504 (class 0 OID 0)
-- Dependencies: 3503
-- Name: DATABASE postgres; Type: COMMENT; Schema: -; Owner: admin123
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 215 (class 1259 OID 16392)
-- Name: riwi_warehouse; Type: TABLE; Schema: public; Owner: admin123
--

CREATE TABLE public.riwi_warehouse (
    id_warehouse integer NOT NULL,
    "Name_warehouse" character varying NOT NULL,
    city_id integer NOT NULL
);


ALTER TABLE public.riwi_warehouse OWNER TO admin123;

--
-- TOC entry 222 (class 1259 OID 16420)
-- Name: Bodegas_id_bodega_seq; Type: SEQUENCE; Schema: public; Owner: admin123
--

CREATE SEQUENCE public."Bodegas_id_bodega_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Bodegas_id_bodega_seq" OWNER TO admin123;

--
-- TOC entry 3505 (class 0 OID 0)
-- Dependencies: 222
-- Name: Bodegas_id_bodega_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin123
--

ALTER SEQUENCE public."Bodegas_id_bodega_seq" OWNED BY public.riwi_warehouse.id_warehouse;


--
-- TOC entry 218 (class 1259 OID 16401)
-- Name: riwi_Inventory_movement; Type: TABLE; Schema: public; Owner: admin123
--

CREATE TABLE public."riwi_Inventory_movement" (
    product_id integer,
    warehouse_id integer,
    movementinventory_id integer NOT NULL,
    movement_type character varying NOT NULL,
    quantity integer NOT NULL
);


ALTER TABLE public."riwi_Inventory_movement" OWNER TO admin123;

--
-- TOC entry 226 (class 1259 OID 16462)
-- Name: Inventory_movement_movementinventory_id_seq; Type: SEQUENCE; Schema: public; Owner: admin123
--

CREATE SEQUENCE public."Inventory_movement_movementinventory_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."Inventory_movement_movementinventory_id_seq" OWNER TO admin123;

--
-- TOC entry 3506 (class 0 OID 0)
-- Dependencies: 226
-- Name: Inventory_movement_movementinventory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin123
--

ALTER SEQUENCE public."Inventory_movement_movementinventory_id_seq" OWNED BY public."riwi_Inventory_movement".movementinventory_id;


--
-- TOC entry 219 (class 1259 OID 16404)
-- Name: riwi_category_product; Type: TABLE; Schema: public; Owner: admin123
--

CREATE TABLE public.riwi_category_product (
    id_category integer NOT NULL,
    "Name_category" character varying NOT NULL
);


ALTER TABLE public.riwi_category_product OWNER TO admin123;

--
-- TOC entry 224 (class 1259 OID 16434)
-- Name: categorías_productos_id_categoria_seq; Type: SEQUENCE; Schema: public; Owner: admin123
--

CREATE SEQUENCE public."categorías_productos_id_categoria_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public."categorías_productos_id_categoria_seq" OWNER TO admin123;

--
-- TOC entry 3507 (class 0 OID 0)
-- Dependencies: 224
-- Name: categorías_productos_id_categoria_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin123
--

ALTER SEQUENCE public."categorías_productos_id_categoria_seq" OWNED BY public.riwi_category_product.id_category;


--
-- TOC entry 216 (class 1259 OID 16395)
-- Name: riwi_city; Type: TABLE; Schema: public; Owner: admin123
--

CREATE TABLE public.riwi_city (
    id_city integer NOT NULL,
    "Name_city" character varying NOT NULL
);


ALTER TABLE public.riwi_city OWNER TO admin123;

--
-- TOC entry 221 (class 1259 OID 16413)
-- Name: ciudades_id_ciudad_seq; Type: SEQUENCE; Schema: public; Owner: admin123
--

CREATE SEQUENCE public.ciudades_id_ciudad_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.ciudades_id_ciudad_seq OWNER TO admin123;

--
-- TOC entry 3508 (class 0 OID 0)
-- Dependencies: 221
-- Name: ciudades_id_ciudad_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin123
--

ALTER SEQUENCE public.ciudades_id_ciudad_seq OWNED BY public.riwi_city.id_city;


--
-- TOC entry 225 (class 1259 OID 16442)
-- Name: riwi_product; Type: TABLE; Schema: public; Owner: admin123
--

CREATE TABLE public.riwi_product (
    name_product character varying NOT NULL,
    "unitary_Price" integer NOT NULL,
    category_id integer NOT NULL,
    id_producto integer NOT NULL
);


ALTER TABLE public.riwi_product OWNER TO admin123;

--
-- TOC entry 229 (class 1259 OID 16530)
-- Name: product_id_producto_seq; Type: SEQUENCE; Schema: public; Owner: admin123
--

CREATE SEQUENCE public.product_id_producto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.product_id_producto_seq OWNER TO admin123;

--
-- TOC entry 3509 (class 0 OID 0)
-- Dependencies: 229
-- Name: product_id_producto_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin123
--

ALTER SEQUENCE public.product_id_producto_seq OWNED BY public.riwi_product.id_producto;


--
-- TOC entry 220 (class 1259 OID 16407)
-- Name: riwi_supplier; Type: TABLE; Schema: public; Owner: admin123
--

CREATE TABLE public.riwi_supplier (
    id_supplier integer NOT NULL,
    "Name_supplier" character varying NOT NULL,
    city_id integer NOT NULL
);


ALTER TABLE public.riwi_supplier OWNER TO admin123;

--
-- TOC entry 223 (class 1259 OID 16427)
-- Name: proveedores_id_proveedor_seq; Type: SEQUENCE; Schema: public; Owner: admin123
--

CREATE SEQUENCE public.proveedores_id_proveedor_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.proveedores_id_proveedor_seq OWNER TO admin123;

--
-- TOC entry 3510 (class 0 OID 0)
-- Dependencies: 223
-- Name: proveedores_id_proveedor_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin123
--

ALTER SEQUENCE public.proveedores_id_proveedor_seq OWNED BY public.riwi_supplier.id_supplier;


--
-- TOC entry 227 (class 1259 OID 16481)
-- Name: riwi_purchase_detail; Type: TABLE; Schema: public; Owner: admin123
--

CREATE TABLE public.riwi_purchase_detail (
    purchase_id integer NOT NULL,
    product_id integer NOT NULL,
    quiantity integer NOT NULL,
    unit_price character varying NOT NULL,
    detail_id integer NOT NULL,
    purchase_date date NOT NULL
);


ALTER TABLE public.riwi_purchase_detail OWNER TO admin123;

--
-- TOC entry 228 (class 1259 OID 16521)
-- Name: purchase_detail_detail_id_seq; Type: SEQUENCE; Schema: public; Owner: admin123
--

CREATE SEQUENCE public.purchase_detail_detail_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.purchase_detail_detail_id_seq OWNER TO admin123;

--
-- TOC entry 3511 (class 0 OID 0)
-- Dependencies: 228
-- Name: purchase_detail_detail_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin123
--

ALTER SEQUENCE public.purchase_detail_detail_id_seq OWNED BY public.riwi_purchase_detail.detail_id;


--
-- TOC entry 217 (class 1259 OID 16398)
-- Name: riwi_purchase; Type: TABLE; Schema: public; Owner: admin123
--

CREATE TABLE public.riwi_purchase (
    fecha date NOT NULL,
    supplier_id integer NOT NULL,
    purchase_order integer NOT NULL
);


ALTER TABLE public.riwi_purchase OWNER TO admin123;

--
-- TOC entry 230 (class 1259 OID 16539)
-- Name: purchase_purchase_order_seq; Type: SEQUENCE; Schema: public; Owner: admin123
--

CREATE SEQUENCE public.purchase_purchase_order_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.purchase_purchase_order_seq OWNER TO admin123;

--
-- TOC entry 3512 (class 0 OID 0)
-- Dependencies: 230
-- Name: purchase_purchase_order_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin123
--

ALTER SEQUENCE public.purchase_purchase_order_seq OWNED BY public.riwi_purchase.purchase_order;


--
-- TOC entry 231 (class 1259 OID 16595)
-- Name: riwi_dataset_riwisupply; Type: TABLE; Schema: public; Owner: admin123
--

CREATE TABLE public.riwi_dataset_riwisupply (
    "MovementDate" character varying(50),
    "SupplierName" character varying(50),
    "SupplierCity" character varying(50),
    "Warehouse" character varying(50),
    "WarehouseCity" character varying(50),
    "ProductName" character varying(50),
    "Category" character varying(50),
    "Quantity" integer,
    "UnitPrice" integer,
    "MovementType" character varying(50),
    "PurchaseOrder" character varying(50)
);


ALTER TABLE public.riwi_dataset_riwisupply OWNER TO admin123;

--
-- TOC entry 3309 (class 2604 OID 16463)
-- Name: riwi_Inventory_movement movementinventory_id; Type: DEFAULT; Schema: public; Owner: admin123
--

ALTER TABLE ONLY public."riwi_Inventory_movement" ALTER COLUMN movementinventory_id SET DEFAULT nextval('public."Inventory_movement_movementinventory_id_seq"'::regclass);


--
-- TOC entry 3310 (class 2604 OID 16435)
-- Name: riwi_category_product id_category; Type: DEFAULT; Schema: public; Owner: admin123
--

ALTER TABLE ONLY public.riwi_category_product ALTER COLUMN id_category SET DEFAULT nextval('public."categorías_productos_id_categoria_seq"'::regclass);


--
-- TOC entry 3307 (class 2604 OID 16414)
-- Name: riwi_city id_city; Type: DEFAULT; Schema: public; Owner: admin123
--

ALTER TABLE ONLY public.riwi_city ALTER COLUMN id_city SET DEFAULT nextval('public.ciudades_id_ciudad_seq'::regclass);


--
-- TOC entry 3312 (class 2604 OID 16531)
-- Name: riwi_product id_producto; Type: DEFAULT; Schema: public; Owner: admin123
--

ALTER TABLE ONLY public.riwi_product ALTER COLUMN id_producto SET DEFAULT nextval('public.product_id_producto_seq'::regclass);


--
-- TOC entry 3308 (class 2604 OID 16540)
-- Name: riwi_purchase purchase_order; Type: DEFAULT; Schema: public; Owner: admin123
--

ALTER TABLE ONLY public.riwi_purchase ALTER COLUMN purchase_order SET DEFAULT nextval('public.purchase_purchase_order_seq'::regclass);


--
-- TOC entry 3313 (class 2604 OID 16522)
-- Name: riwi_purchase_detail detail_id; Type: DEFAULT; Schema: public; Owner: admin123
--

ALTER TABLE ONLY public.riwi_purchase_detail ALTER COLUMN detail_id SET DEFAULT nextval('public.purchase_detail_detail_id_seq'::regclass);


--
-- TOC entry 3311 (class 2604 OID 16428)
-- Name: riwi_supplier id_supplier; Type: DEFAULT; Schema: public; Owner: admin123
--

ALTER TABLE ONLY public.riwi_supplier ALTER COLUMN id_supplier SET DEFAULT nextval('public.proveedores_id_proveedor_seq'::regclass);


--
-- TOC entry 3306 (class 2604 OID 16421)
-- Name: riwi_warehouse id_warehouse; Type: DEFAULT; Schema: public; Owner: admin123
--

ALTER TABLE ONLY public.riwi_warehouse ALTER COLUMN id_warehouse SET DEFAULT nextval('public."Bodegas_id_bodega_seq"'::regclass);


--
-- TOC entry 3484 (class 0 OID 16401)
-- Dependencies: 218
-- Data for Name: riwi_Inventory_movement; Type: TABLE DATA; Schema: public; Owner: admin123
--

INSERT INTO public."riwi_Inventory_movement" VALUES (4, 3, 1, 'IN', 185);
INSERT INTO public."riwi_Inventory_movement" VALUES (4, 2, 2, 'OUT', 131);
INSERT INTO public."riwi_Inventory_movement" VALUES (2, 2, 3, 'OUT', 169);
INSERT INTO public."riwi_Inventory_movement" VALUES (1, 1, 4, 'OUT', 192);
INSERT INTO public."riwi_Inventory_movement" VALUES (5, 3, 5, 'OUT', 33);
INSERT INTO public."riwi_Inventory_movement" VALUES (2, 1, 6, 'OUT', 148);
INSERT INTO public."riwi_Inventory_movement" VALUES (2, 3, 7, 'OUT', 199);
INSERT INTO public."riwi_Inventory_movement" VALUES (4, 2, 8, 'IN', 160);
INSERT INTO public."riwi_Inventory_movement" VALUES (2, 3, 9, 'OUT', 130);
INSERT INTO public."riwi_Inventory_movement" VALUES (4, 1, 10, 'IN', 70);
INSERT INTO public."riwi_Inventory_movement" VALUES (4, 1, 11, 'OUT', 119);
INSERT INTO public."riwi_Inventory_movement" VALUES (2, 1, 12, 'OUT', 134);
INSERT INTO public."riwi_Inventory_movement" VALUES (2, 3, 13, 'IN', 61);
INSERT INTO public."riwi_Inventory_movement" VALUES (3, 1, 14, 'IN', 27);
INSERT INTO public."riwi_Inventory_movement" VALUES (4, 1, 15, 'IN', 175);
INSERT INTO public."riwi_Inventory_movement" VALUES (2, 3, 16, 'IN', 124);
INSERT INTO public."riwi_Inventory_movement" VALUES (3, 3, 17, 'OUT', 40);
INSERT INTO public."riwi_Inventory_movement" VALUES (3, 2, 18, 'OUT', 78);
INSERT INTO public."riwi_Inventory_movement" VALUES (3, 3, 19, 'OUT', 87);


--
-- TOC entry 3485 (class 0 OID 16404)
-- Dependencies: 219
-- Data for Name: riwi_category_product; Type: TABLE DATA; Schema: public; Owner: admin123
--

INSERT INTO public.riwi_category_product VALUES (1, 'Consumible');
INSERT INTO public.riwi_category_product VALUES (2, 'Elementos Protección');
INSERT INTO public.riwi_category_product VALUES (3, 'Herramienta');
INSERT INTO public.riwi_category_product VALUES (4, 'EPP');


--
-- TOC entry 3482 (class 0 OID 16395)
-- Dependencies: 216
-- Data for Name: riwi_city; Type: TABLE DATA; Schema: public; Owner: admin123
--

INSERT INTO public.riwi_city VALUES (1, 'Barranquila');
INSERT INTO public.riwi_city VALUES (2, 'Cartagena');
INSERT INTO public.riwi_city VALUES (3, 'Santa Marta');


--
-- TOC entry 3497 (class 0 OID 16595)
-- Dependencies: 231
-- Data for Name: riwi_dataset_riwisupply; Type: TABLE DATA; Schema: public; Owner: admin123
--

INSERT INTO public.riwi_dataset_riwisupply VALUES ('2026-02-14', 'Aceros del Norte S.A.S', 'Cartagena', 'Bodega Costa', 'Santa Marta', 'Electrodo E6013', 'Consumible', 27, 35506, 'IN', 'PO-1041');
INSERT INTO public.riwi_dataset_riwisupply VALUES ('2026-02-28', 'Industriales S.A.S', 'Barranquila', 'Bodega Central', 'Barranquilla', 'Electrodo E6013', 'Consumible', 40, 139836, 'OUT', 'PO-1091');
INSERT INTO public.riwi_dataset_riwisupply VALUES ('2026-04-01', 'Aceros del Norte S.A.S', 'Cartagena', 'Bodega Costa', 'Santa Marta', 'Disco Corte 4.5', 'Herramienta', 148, 115388, 'OUT', 'PO-1049');
INSERT INTO public.riwi_dataset_riwisupply VALUES ('2026-02-02', 'Suministros Global SAS', 'Sta Marta', 'Bodega Central', 'Barranquila', 'Electrodo E6013', 'Consumible', 87, 123108, 'OUT', 'PO-1009');
INSERT INTO public.riwi_dataset_riwisupply VALUES ('2026-03-19', 'Aceros del Norte S.A.S', 'Cartagena', 'Bodega Central', 'Barranquila', 'Disco Corte 4.5', 'Herramienta', 199, 118291, 'OUT', 'PO-1023');
INSERT INTO public.riwi_dataset_riwisupply VALUES ('2026-03-15', 'Aceros del Norte S.A.S', 'Ctg', 'Bodega Costa', 'Santa Marta', 'Disco Corte 4.5', 'Herramienta', 134, 89964, 'OUT', 'PO-1035');
INSERT INTO public.riwi_dataset_riwisupply VALUES ('2026-01-01', 'Industriales S.A.S', 'Barranquilla', 'Bodega Costa', 'Santa Marta', 'Guante Nitrilo', 'EPP', 70, 14290, 'IN', 'PO-1022');
INSERT INTO public.riwi_dataset_riwisupply VALUES ('2026-04-13', 'Industriales S.A.S', 'B/quilla', 'Bodega Costa', 'Santa Marta', 'Guante Nitrilo', 'EPP', 119, 23022, 'OUT', 'PO-1035');
INSERT INTO public.riwi_dataset_riwisupply VALUES ('2026-01-25', 'Industriales S.A.S', 'B/quilla', 'Centro Logistico Norte', 'Cartagena', 'Guante Nitrilo', 'EPP', 131, 71980, 'OUT', 'PO-1029');
INSERT INTO public.riwi_dataset_riwisupply VALUES ('2026-03-12', 'Industriales S.A.S', 'Barranquilla', 'Bodega Central', 'Barranquilla', 'Disco Corte 4.5', 'Herramienta', 124, 52910, 'IN', 'PO-1094');
INSERT INTO public.riwi_dataset_riwisupply VALUES ('2026-04-26', 'Industriales S.A.S', 'B/quilla', 'Bodega Central', 'Barranquilla', 'Disco Corte 4.5', 'Herramienta', 61, 136736, 'IN', 'PO-1034');
INSERT INTO public.riwi_dataset_riwisupply VALUES ('2026-03-03', 'Industriales S.A.S', 'B/quilla', 'Centro Logistico Norte', 'Cartagena', 'Disco Corte 4.5', 'Herramienta', 169, 18022, 'OUT', 'PO-1043');
INSERT INTO public.riwi_dataset_riwisupply VALUES ('2026-03-21', 'Aceros del Norte S.A.S', 'Cartagena', 'Bodega Costa', 'Santa Marta', 'Casco Industrial', 'EPP', 192, 108802, 'OUT', 'PO-1083');
INSERT INTO public.riwi_dataset_riwisupply VALUES ('2026-03-11', 'Aceros del Norte S.A.S', 'Cartagena', 'Centro Logistico Norte', 'Cartagena', 'Electrodo E6013', 'Consumible', 78, 37943, 'OUT', 'PO-1036');
INSERT INTO public.riwi_dataset_riwisupply VALUES ('2026-01-20', 'Aceros del Norte S.A.S', 'Cartagena', 'Bodega Central', 'Barranquilla', 'Soldadura E6013', 'Consumible', 33, 43746, 'OUT', 'PO-1059');
INSERT INTO public.riwi_dataset_riwisupply VALUES ('2026-02-16', 'Aceros del Norte S.A.S', 'Cartagena', 'Centro Logistico Norte', 'Cartagena', 'Guante Nitrilo', 'Elementos Protección', 160, 117524, 'IN', 'PO-1075');
INSERT INTO public.riwi_dataset_riwisupply VALUES ('2026-03-06', 'Aceros del Norte S.A.S', 'Cartagena', 'Bodega Central', 'Barranquila', 'Disco Corte 4.5', 'Herramienta', 130, 88512, 'OUT', 'PO-1041');
INSERT INTO public.riwi_dataset_riwisupply VALUES ('2026-05-23', 'Aceros del Norte S.A.S', 'Ctg', 'Bodega Costa', 'Santa Marta', 'Guante Nitrilo', 'Elementos Protección', 175, 39944, 'IN', 'PO-1040');
INSERT INTO public.riwi_dataset_riwisupply VALUES ('2026-04-17', 'Suministros Global SAS', 'Sta Marta', 'Bodega Central', 'Barranquila', 'Guante Nitrilo', 'Elementos Protección', 185, 123653, 'IN', 'PO-1032');


--
-- TOC entry 3491 (class 0 OID 16442)
-- Dependencies: 225
-- Data for Name: riwi_product; Type: TABLE DATA; Schema: public; Owner: admin123
--

INSERT INTO public.riwi_product VALUES ('Casco Industrial', 108802, 4, 1);
INSERT INTO public.riwi_product VALUES ('Disco Corte 4.5', 136736, 3, 2);
INSERT INTO public.riwi_product VALUES ('Electrodo E6013', 139836, 1, 3);
INSERT INTO public.riwi_product VALUES ('Guante Nitrilo', 123653, 2, 4);
INSERT INTO public.riwi_product VALUES ('Soldadura E6013', 43746, 1, 5);


--
-- TOC entry 3483 (class 0 OID 16398)
-- Dependencies: 217
-- Data for Name: riwi_purchase; Type: TABLE DATA; Schema: public; Owner: admin123
--



--
-- TOC entry 3493 (class 0 OID 16481)
-- Dependencies: 227
-- Data for Name: riwi_purchase_detail; Type: TABLE DATA; Schema: public; Owner: admin123
--



--
-- TOC entry 3486 (class 0 OID 16407)
-- Dependencies: 220
-- Data for Name: riwi_supplier; Type: TABLE DATA; Schema: public; Owner: admin123
--

INSERT INTO public.riwi_supplier VALUES (1, 'Suministros Global SAS', 3);
INSERT INTO public.riwi_supplier VALUES (2, 'Aceros del Norte S.A.S', 2);
INSERT INTO public.riwi_supplier VALUES (3, 'Industriales S.A.S', 1);


--
-- TOC entry 3481 (class 0 OID 16392)
-- Dependencies: 215
-- Data for Name: riwi_warehouse; Type: TABLE DATA; Schema: public; Owner: admin123
--

INSERT INTO public.riwi_warehouse VALUES (1, 'Bodega Costa', 3);
INSERT INTO public.riwi_warehouse VALUES (2, 'Centro Logistico Norte', 2);
INSERT INTO public.riwi_warehouse VALUES (3, 'Bodega Central', 1);


--
-- TOC entry 3513 (class 0 OID 0)
-- Dependencies: 222
-- Name: Bodegas_id_bodega_seq; Type: SEQUENCE SET; Schema: public; Owner: admin123
--

SELECT pg_catalog.setval('public."Bodegas_id_bodega_seq"', 3, true);


--
-- TOC entry 3514 (class 0 OID 0)
-- Dependencies: 226
-- Name: Inventory_movement_movementinventory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin123
--

SELECT pg_catalog.setval('public."Inventory_movement_movementinventory_id_seq"', 19, true);


--
-- TOC entry 3515 (class 0 OID 0)
-- Dependencies: 224
-- Name: categorías_productos_id_categoria_seq; Type: SEQUENCE SET; Schema: public; Owner: admin123
--

SELECT pg_catalog.setval('public."categorías_productos_id_categoria_seq"', 4, true);


--
-- TOC entry 3516 (class 0 OID 0)
-- Dependencies: 221
-- Name: ciudades_id_ciudad_seq; Type: SEQUENCE SET; Schema: public; Owner: admin123
--

SELECT pg_catalog.setval('public.ciudades_id_ciudad_seq', 3, true);


--
-- TOC entry 3517 (class 0 OID 0)
-- Dependencies: 229
-- Name: product_id_producto_seq; Type: SEQUENCE SET; Schema: public; Owner: admin123
--

SELECT pg_catalog.setval('public.product_id_producto_seq', 5, true);


--
-- TOC entry 3518 (class 0 OID 0)
-- Dependencies: 223
-- Name: proveedores_id_proveedor_seq; Type: SEQUENCE SET; Schema: public; Owner: admin123
--

SELECT pg_catalog.setval('public.proveedores_id_proveedor_seq', 3, true);


--
-- TOC entry 3519 (class 0 OID 0)
-- Dependencies: 228
-- Name: purchase_detail_detail_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin123
--

SELECT pg_catalog.setval('public.purchase_detail_detail_id_seq', 1, false);


--
-- TOC entry 3520 (class 0 OID 0)
-- Dependencies: 230
-- Name: purchase_purchase_order_seq; Type: SEQUENCE SET; Schema: public; Owner: admin123
--

SELECT pg_catalog.setval('public.purchase_purchase_order_seq', 1, false);


--
-- TOC entry 3323 (class 2606 OID 16510)
-- Name: riwi_category_product category_product_pk; Type: CONSTRAINT; Schema: public; Owner: admin123
--

ALTER TABLE ONLY public.riwi_category_product
    ADD CONSTRAINT category_product_pk PRIMARY KEY (id_category);


--
-- TOC entry 3317 (class 2606 OID 16547)
-- Name: riwi_city city_pk; Type: CONSTRAINT; Schema: public; Owner: admin123
--

ALTER TABLE ONLY public.riwi_city
    ADD CONSTRAINT city_pk PRIMARY KEY (id_city);


--
-- TOC entry 3321 (class 2606 OID 16518)
-- Name: riwi_Inventory_movement inventory_movement_pk; Type: CONSTRAINT; Schema: public; Owner: admin123
--

ALTER TABLE ONLY public."riwi_Inventory_movement"
    ADD CONSTRAINT inventory_movement_pk PRIMARY KEY (movementinventory_id);


--
-- TOC entry 3327 (class 2606 OID 16538)
-- Name: riwi_product product_pk; Type: CONSTRAINT; Schema: public; Owner: admin123
--

ALTER TABLE ONLY public.riwi_product
    ADD CONSTRAINT product_pk PRIMARY KEY (id_producto);


--
-- TOC entry 3329 (class 2606 OID 16529)
-- Name: riwi_purchase_detail purchase_detail_pk; Type: CONSTRAINT; Schema: public; Owner: admin123
--

ALTER TABLE ONLY public.riwi_purchase_detail
    ADD CONSTRAINT purchase_detail_pk PRIMARY KEY (detail_id);


--
-- TOC entry 3319 (class 2606 OID 16545)
-- Name: riwi_purchase purchase_pk; Type: CONSTRAINT; Schema: public; Owner: admin123
--

ALTER TABLE ONLY public.riwi_purchase
    ADD CONSTRAINT purchase_pk PRIMARY KEY (purchase_order);


--
-- TOC entry 3325 (class 2606 OID 16514)
-- Name: riwi_supplier supplier_pk; Type: CONSTRAINT; Schema: public; Owner: admin123
--

ALTER TABLE ONLY public.riwi_supplier
    ADD CONSTRAINT supplier_pk PRIMARY KEY (id_supplier);


--
-- TOC entry 3315 (class 2606 OID 16512)
-- Name: riwi_warehouse warehouse_pk; Type: CONSTRAINT; Schema: public; Owner: admin123
--

ALTER TABLE ONLY public.riwi_warehouse
    ADD CONSTRAINT warehouse_pk PRIMARY KEY (id_warehouse);


--
-- TOC entry 3332 (class 2606 OID 16643)
-- Name: riwi_Inventory_movement riwi_inventory_movement_riwi_product_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin123
--

ALTER TABLE ONLY public."riwi_Inventory_movement"
    ADD CONSTRAINT riwi_inventory_movement_riwi_product_fk FOREIGN KEY (product_id) REFERENCES public.riwi_product(id_producto);


--
-- TOC entry 3333 (class 2606 OID 16638)
-- Name: riwi_Inventory_movement riwi_inventory_movement_riwi_warehouse_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin123
--

ALTER TABLE ONLY public."riwi_Inventory_movement"
    ADD CONSTRAINT riwi_inventory_movement_riwi_warehouse_fk FOREIGN KEY (warehouse_id) REFERENCES public.riwi_warehouse(id_warehouse);


--
-- TOC entry 3335 (class 2606 OID 16653)
-- Name: riwi_product riwi_product_riwi_category_product_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin123
--

ALTER TABLE ONLY public.riwi_product
    ADD CONSTRAINT riwi_product_riwi_category_product_fk FOREIGN KEY (category_id) REFERENCES public.riwi_category_product(id_category);


--
-- TOC entry 3336 (class 2606 OID 16683)
-- Name: riwi_purchase_detail riwi_purchase_detail_riwi_product_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin123
--

ALTER TABLE ONLY public.riwi_purchase_detail
    ADD CONSTRAINT riwi_purchase_detail_riwi_product_fk FOREIGN KEY (product_id) REFERENCES public.riwi_product(id_producto) ON UPDATE RESTRICT;


--
-- TOC entry 3337 (class 2606 OID 16663)
-- Name: riwi_purchase_detail riwi_purchase_detail_riwi_purchase_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin123
--

ALTER TABLE ONLY public.riwi_purchase_detail
    ADD CONSTRAINT riwi_purchase_detail_riwi_purchase_fk FOREIGN KEY (purchase_id) REFERENCES public.riwi_purchase(purchase_order) ON UPDATE RESTRICT;


--
-- TOC entry 3331 (class 2606 OID 16678)
-- Name: riwi_purchase riwi_purchase_riwi_supplier_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin123
--

ALTER TABLE ONLY public.riwi_purchase
    ADD CONSTRAINT riwi_purchase_riwi_supplier_fk FOREIGN KEY (supplier_id) REFERENCES public.riwi_supplier(id_supplier);


--
-- TOC entry 3334 (class 2606 OID 16648)
-- Name: riwi_supplier riwi_supplier_riwi_city_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin123
--

ALTER TABLE ONLY public.riwi_supplier
    ADD CONSTRAINT riwi_supplier_riwi_city_fk FOREIGN KEY (city_id) REFERENCES public.riwi_city(id_city);


--
-- TOC entry 3330 (class 2606 OID 16673)
-- Name: riwi_warehouse riwi_warehouse_riwi_city_fk; Type: FK CONSTRAINT; Schema: public; Owner: admin123
--

ALTER TABLE ONLY public.riwi_warehouse
    ADD CONSTRAINT riwi_warehouse_riwi_city_fk FOREIGN KEY (city_id) REFERENCES public.riwi_city(id_city);


-- Completed on 2026-07-06 10:55:39 -05

--
-- PostgreSQL database dump complete
--

\unrestrict F8mDLYWHW7N5RQbK4MkvfQ0rmINzC4qhiX2tW2zYJHzKIZofVgOsazSzTv5CSgd


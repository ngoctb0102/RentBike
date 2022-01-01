PGDMP     -         
            y            ITSSEcoPark    14.1    14.1 "               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16464    ITSSEcoPark    DATABASE     q   CREATE DATABASE "ITSSEcoPark" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE "ITSSEcoPark";
                postgres    false            �            1259    16487    asset    TABLE     {   CREATE TABLE public.asset (
    type character varying(10) NOT NULL,
    cost integer,
    image character varying(100)
);
    DROP TABLE public.asset;
       public         heap    postgres    false            �            1259    16492    bikedock    TABLE     �   CREATE TABLE public.bikedock (
    dockid character varying(10) NOT NULL,
    dockname character varying(30),
    description character varying(200),
    distance double precision
);
    DROP TABLE public.bikedock;
       public         heap    postgres    false            �            1259    16470    ebike    TABLE     �   CREATE TABLE public.ebike (
    licenseplate character varying(10),
    batterypercent double precision,
    loadcycle integer,
    estimatedtimeleft time without time zone
);
    DROP TABLE public.ebike;
       public         heap    postgres    false            �            1259    16481    ecouser    TABLE     �   CREATE TABLE public.ecouser (
    userid integer NOT NULL,
    username character varying(20),
    password character varying(100),
    role integer
);
    DROP TABLE public.ecouser;
       public         heap    postgres    false            �            1259    16480    ecouser_userid_seq    SEQUENCE     �   CREATE SEQUENCE public.ecouser_userid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.ecouser_userid_seq;
       public          postgres    false    214                       0    0    ecouser_userid_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.ecouser_userid_seq OWNED BY public.ecouser.userid;
          public          postgres    false    213            �            1259    16465    generalbike    TABLE       CREATE TABLE public.generalbike (
    licenseplate character varying(10) NOT NULL,
    name character varying(30),
    weight double precision,
    manufactureddate date,
    type character varying(10),
    dockid character varying(10),
    deposit integer,
    cost integer
);
    DROP TABLE public.generalbike;
       public         heap    postgres    false            �            1259    16474    rentbikehistory    TABLE     �   CREATE TABLE public.rentbikehistory (
    historyid integer NOT NULL,
    licenseplate character varying(10),
    userid integer,
    status integer,
    starttime timestamp without time zone
);
 #   DROP TABLE public.rentbikehistory;
       public         heap    postgres    false            �            1259    16473    rentbikehistory_historyid_seq    SEQUENCE     �   CREATE SEQUENCE public.rentbikehistory_historyid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.rentbikehistory_historyid_seq;
       public          postgres    false    212                       0    0    rentbikehistory_historyid_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.rentbikehistory_historyid_seq OWNED BY public.rentbikehistory.historyid;
          public          postgres    false    211            r           2604    16484    ecouser userid    DEFAULT     p   ALTER TABLE ONLY public.ecouser ALTER COLUMN userid SET DEFAULT nextval('public.ecouser_userid_seq'::regclass);
 =   ALTER TABLE public.ecouser ALTER COLUMN userid DROP DEFAULT;
       public          postgres    false    213    214    214            q           2604    16477    rentbikehistory historyid    DEFAULT     �   ALTER TABLE ONLY public.rentbikehistory ALTER COLUMN historyid SET DEFAULT nextval('public.rentbikehistory_historyid_seq'::regclass);
 H   ALTER TABLE public.rentbikehistory ALTER COLUMN historyid DROP DEFAULT;
       public          postgres    false    211    212    212                      0    16487    asset 
   TABLE DATA           2   COPY public.asset (type, cost, image) FROM stdin;
    public          postgres    false    215   r'                 0    16492    bikedock 
   TABLE DATA           K   COPY public.bikedock (dockid, dockname, description, distance) FROM stdin;
    public          postgres    false    216   �'                 0    16470    ebike 
   TABLE DATA           [   COPY public.ebike (licenseplate, batterypercent, loadcycle, estimatedtimeleft) FROM stdin;
    public          postgres    false    210   �'                 0    16481    ecouser 
   TABLE DATA           C   COPY public.ecouser (userid, username, password, role) FROM stdin;
    public          postgres    false    214   =(                 0    16465    generalbike 
   TABLE DATA           p   COPY public.generalbike (licenseplate, name, weight, manufactureddate, type, dockid, deposit, cost) FROM stdin;
    public          postgres    false    209   w(                 0    16474    rentbikehistory 
   TABLE DATA           ]   COPY public.rentbikehistory (historyid, licenseplate, userid, status, starttime) FROM stdin;
    public          postgres    false    212   
)                  0    0    ecouser_userid_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.ecouser_userid_seq', 2, true);
          public          postgres    false    213                       0    0    rentbikehistory_historyid_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.rentbikehistory_historyid_seq', 1, false);
          public          postgres    false    211            z           2606    16491    asset asset_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.asset
    ADD CONSTRAINT asset_pkey PRIMARY KEY (type);
 :   ALTER TABLE ONLY public.asset DROP CONSTRAINT asset_pkey;
       public            postgres    false    215            |           2606    16496    bikedock bikedock_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.bikedock
    ADD CONSTRAINT bikedock_pkey PRIMARY KEY (dockid);
 @   ALTER TABLE ONLY public.bikedock DROP CONSTRAINT bikedock_pkey;
       public            postgres    false    216            x           2606    16486    ecouser ecouser_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.ecouser
    ADD CONSTRAINT ecouser_pkey PRIMARY KEY (userid);
 >   ALTER TABLE ONLY public.ecouser DROP CONSTRAINT ecouser_pkey;
       public            postgres    false    214            t           2606    16469    generalbike generalbike_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.generalbike
    ADD CONSTRAINT generalbike_pkey PRIMARY KEY (licenseplate);
 F   ALTER TABLE ONLY public.generalbike DROP CONSTRAINT generalbike_pkey;
       public            postgres    false    209            v           2606    16479 $   rentbikehistory rentbikehistory_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.rentbikehistory
    ADD CONSTRAINT rentbikehistory_pkey PRIMARY KEY (historyid);
 N   ALTER TABLE ONLY public.rentbikehistory DROP CONSTRAINT rentbikehistory_pkey;
       public            postgres    false    212            }           2606    16497    generalbike fk1    FK CONSTRAINT     �   ALTER TABLE ONLY public.generalbike
    ADD CONSTRAINT fk1 FOREIGN KEY (type) REFERENCES public.asset(type) ON UPDATE CASCADE ON DELETE CASCADE;
 9   ALTER TABLE ONLY public.generalbike DROP CONSTRAINT fk1;
       public          postgres    false    3194    215    209            ~           2606    16502    generalbike fk2    FK CONSTRAINT     �   ALTER TABLE ONLY public.generalbike
    ADD CONSTRAINT fk2 FOREIGN KEY (dockid) REFERENCES public.bikedock(dockid) ON UPDATE CASCADE ON DELETE CASCADE;
 9   ALTER TABLE ONLY public.generalbike DROP CONSTRAINT fk2;
       public          postgres    false    209    3196    216            �           2606    16507    rentbikehistory fk3    FK CONSTRAINT     �   ALTER TABLE ONLY public.rentbikehistory
    ADD CONSTRAINT fk3 FOREIGN KEY (userid) REFERENCES public.ecouser(userid) ON UPDATE CASCADE ON DELETE CASCADE;
 =   ALTER TABLE ONLY public.rentbikehistory DROP CONSTRAINT fk3;
       public          postgres    false    212    214    3192            �           2606    16512    rentbikehistory fk4    FK CONSTRAINT     �   ALTER TABLE ONLY public.rentbikehistory
    ADD CONSTRAINT fk4 FOREIGN KEY (licenseplate) REFERENCES public.generalbike(licenseplate) ON UPDATE CASCADE ON DELETE CASCADE;
 =   ALTER TABLE ONLY public.rentbikehistory DROP CONSTRAINT fk4;
       public          postgres    false    3188    212    209                       2606    16517 	   ebike fk5    FK CONSTRAINT     �   ALTER TABLE ONLY public.ebike
    ADD CONSTRAINT fk5 FOREIGN KEY (licenseplate) REFERENCES public.generalbike(licenseplate) ON UPDATE CASCADE ON DELETE CASCADE;
 3   ALTER TABLE ONLY public.ebike DROP CONSTRAINT fk5;
       public          postgres    false    3188    210    209               (   x�s��N�41 N����<'���)D��3�J��qqq +�
�         A   x�qq�)*��KWp���Pp�O���44�3��J�V"�D=�]8=���3Ssaʁ�1z\\\ W1)         2   x�st542�43�3�4�40�25�24�r�Z�EM9@�Ff\1z\\\ ݇~         *   x�3�,)M�++�442615�4�2��8��f����b���� $P         �   x�uϱ� �Ṽ��T��(��n`tqp0F__Ԅ#�#��/�;I�}\G	�d $,�Ån^&��@��y�B�Q���?��6.���ml4U�P�l̴��#��`.�I��{���7F��.>�e(�'��BZ            x������ � �     
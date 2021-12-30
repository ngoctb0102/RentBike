PGDMP     5                    y            mydb    14.1    14.1                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16394    mydb    DATABASE     e   CREATE DATABASE mydb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Vietnamese_Vietnam.1258';
    DROP DATABASE mydb;
                postgres    false            �            1259    16433    Asset    TABLE     }   CREATE TABLE public."Asset" (
    type character varying(10) NOT NULL,
    cost integer,
    image character varying(100)
);
    DROP TABLE public."Asset";
       public         heap    postgres    false            �            1259    16425    BikeDock    TABLE     �   CREATE TABLE public."BikeDock" (
    "dockId" character varying(10) NOT NULL,
    "dockName" character varying(30),
    description character varying(200),
    distance double precision
);
    DROP TABLE public."BikeDock";
       public         heap    postgres    false            �            1259    16403    EBike    TABLE     �   CREATE TABLE public."EBike" (
    "licensePlate" character varying(10) NOT NULL,
    "batteryPercent" double precision,
    "loadCycle" integer,
    "estimatedTimeLeft" time without time zone
);
    DROP TABLE public."EBike";
       public         heap    postgres    false            �            1259    16398    GeneralBike    TABLE        CREATE TABLE public."GeneralBike" (
    "licensePlate" character varying(10) NOT NULL,
    name character varying(30) NOT NULL,
    weight double precision,
    "manufacturedData" date,
    type character varying(10),
    "dockId" character varying(10)
);
 !   DROP TABLE public."GeneralBike";
       public         heap    postgres    false            �            1259    16453    RentBikeHistory    TABLE     �   CREATE TABLE public."RentBikeHistory" (
    "historyId" integer NOT NULL,
    "licensePlate" character varying(10),
    "userId" integer,
    status integer,
    "startTime" timestamp without time zone
);
 %   DROP TABLE public."RentBikeHistory";
       public         heap    postgres    false            �            1259    16452    RentBikeHistory_historyId_seq    SEQUENCE     �   CREATE SEQUENCE public."RentBikeHistory_historyId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."RentBikeHistory_historyId_seq";
       public          postgres    false    216                       0    0    RentBikeHistory_historyId_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public."RentBikeHistory_historyId_seq" OWNED BY public."RentBikeHistory"."historyId";
          public          postgres    false    215            �            1259    16409    User    TABLE     �   CREATE TABLE public."User" (
    "userId" integer NOT NULL,
    username character varying(20),
    password character varying(100),
    role integer
);
    DROP TABLE public."User";
       public         heap    postgres    false            �            1259    16408    User_userId_seq    SEQUENCE     �   CREATE SEQUENCE public."User_userId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."User_userId_seq";
       public          postgres    false    212                       0    0    User_userId_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."User_userId_seq" OWNED BY public."User"."userId";
          public          postgres    false    211            r           2604    16456    RentBikeHistory historyId    DEFAULT     �   ALTER TABLE ONLY public."RentBikeHistory" ALTER COLUMN "historyId" SET DEFAULT nextval('public."RentBikeHistory_historyId_seq"'::regclass);
 L   ALTER TABLE public."RentBikeHistory" ALTER COLUMN "historyId" DROP DEFAULT;
       public          postgres    false    216    215    216            q           2604    16412    User userId    DEFAULT     p   ALTER TABLE ONLY public."User" ALTER COLUMN "userId" SET DEFAULT nextval('public."User_userId_seq"'::regclass);
 >   ALTER TABLE public."User" ALTER COLUMN "userId" DROP DEFAULT;
       public          postgres    false    211    212    212                      0    16433    Asset 
   TABLE DATA           4   COPY public."Asset" (type, cost, image) FROM stdin;
    public          postgres    false    214   O!                 0    16425    BikeDock 
   TABLE DATA           Q   COPY public."BikeDock" ("dockId", "dockName", description, distance) FROM stdin;
    public          postgres    false    213   4"                 0    16403    EBike 
   TABLE DATA           e   COPY public."EBike" ("licensePlate", "batteryPercent", "loadCycle", "estimatedTimeLeft") FROM stdin;
    public          postgres    false    210   5#       
          0    16398    GeneralBike 
   TABLE DATA           i   COPY public."GeneralBike" ("licensePlate", name, weight, "manufacturedData", type, "dockId") FROM stdin;
    public          postgres    false    209   �#                 0    16453    RentBikeHistory 
   TABLE DATA           g   COPY public."RentBikeHistory" ("historyId", "licensePlate", "userId", status, "startTime") FROM stdin;
    public          postgres    false    216   �$                 0    16409    User 
   TABLE DATA           D   COPY public."User" ("userId", username, password, role) FROM stdin;
    public          postgres    false    212   4%                  0    0    RentBikeHistory_historyId_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public."RentBikeHistory_historyId_seq"', 1, false);
          public          postgres    false    215                       0    0    User_userId_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."User_userId_seq"', 1, false);
          public          postgres    false    211            |           2606    16437    Asset Asset_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."Asset"
    ADD CONSTRAINT "Asset_pkey" PRIMARY KEY (type);
 >   ALTER TABLE ONLY public."Asset" DROP CONSTRAINT "Asset_pkey";
       public            postgres    false    214            z           2606    16429    BikeDock BikeDock_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."BikeDock"
    ADD CONSTRAINT "BikeDock_pkey" PRIMARY KEY ("dockId");
 D   ALTER TABLE ONLY public."BikeDock" DROP CONSTRAINT "BikeDock_pkey";
       public            postgres    false    213            v           2606    16407    EBike EBike_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."EBike"
    ADD CONSTRAINT "EBike_pkey" PRIMARY KEY ("licensePlate");
 >   ALTER TABLE ONLY public."EBike" DROP CONSTRAINT "EBike_pkey";
       public            postgres    false    210            t           2606    16402    GeneralBike GeneralBike_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public."GeneralBike"
    ADD CONSTRAINT "GeneralBike_pkey" PRIMARY KEY ("licensePlate");
 J   ALTER TABLE ONLY public."GeneralBike" DROP CONSTRAINT "GeneralBike_pkey";
       public            postgres    false    209            ~           2606    16458 $   RentBikeHistory RentBikeHistory_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public."RentBikeHistory"
    ADD CONSTRAINT "RentBikeHistory_pkey" PRIMARY KEY ("historyId");
 R   ALTER TABLE ONLY public."RentBikeHistory" DROP CONSTRAINT "RentBikeHistory_pkey";
       public            postgres    false    216            x           2606    16414    User User_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_pkey" PRIMARY KEY ("userId");
 <   ALTER TABLE ONLY public."User" DROP CONSTRAINT "User_pkey";
       public            postgres    false    212               �   x�]��N�0���ػv�=V���	��I��k�vH�ӓD��}�hF{���i�n7���`L�h���J�;�*�{XWZt1��*�j8Ǒ�%�,"��x�^%���ɫ�r�o�6���jQ��0���L����Ѡ5<��[id ~�u������P��ԋ��x�_����"���0%�E.�˯�n kг�,Z&;K}������-��)�_         �   x����j�0Eg�+�� )UZ��!^M3u�qD�Sp���;u옖RJ�B�jt~D҄�����s/O�Ȣr�D�
�=�q�Ρn^�>�o,���1A���"+	�T\���,x���I���Y��vY�
�'�q���wo��5��)[�6�w�ձ��Ng��]y�bD��w�9{�05n�G��-�N�1cP6������:�$�QXL��ߎg	̝�^3�;O�/��(�0�?         t   x�e�A� D�x�f@�����?ǧ�T�.�{2Ů
��G|�Y1�"!8k��K�ιn��=�y㍬�ON��oܵK�=�-1��O�)���#�7nd^����A�9�����/z      
   �   x���1�0�ٹ���8�3��0!V�
���Ӵj�X���o[�9\��o��@�RE�uْ���33`Y�#d��{~m���"ޭ�t;S%`�t��Ԑ�V -\���%���OKWJ�^��<ڕ�fZ�Z+�̼͗[h��?�X�ú;�GׂqA�µ��8�D��v:@/��2��#����R� ��e�         �   x�]��!�3�����-}��:b���H��d{�IƓ�H�8	�K����� �-�'jf[B���-��hQ��SD�
WP]B�ݣҵ������xԖ�ɶ@�1bD��{�7FQ̴��c�v��,pcW�y���0��kw�D�cy;�         >   x�3�LL��̃��\F�%��ye�0ʈ˘3)1?/=?Nq�p�e��d�'�#���b���� @�b     
PGDMP     6                    {            db_study_app    13.4    13.4 $    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16715    db_study_app    DATABASE     k   CREATE DATABASE db_study_app WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Paraguay.1252';
    DROP DATABASE db_study_app;
                postgres    false            �            1259    16729    themes    TABLE     �   CREATE TABLE public.themes (
    id integer NOT NULL,
    create_date timestamp without time zone,
    name character varying,
    description character varying,
    keywords character varying,
    owner_user_id integer
);
    DROP TABLE public.themes;
       public         heap    postgres    false            �            1259    16727    themes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.themes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.themes_id_seq;
       public          postgres    false    201            �           0    0    themes_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.themes_id_seq OWNED BY public.themes.id;
          public          postgres    false    200            �            1259    16815    themes_properties    TABLE     �   CREATE TABLE public.themes_properties (
    id integer NOT NULL,
    theme_id integer,
    property_name character varying,
    property_value character varying
);
 %   DROP TABLE public.themes_properties;
       public         heap    postgres    false            �            1259    16813    themes_properties_id_seq    SEQUENCE     �   CREATE SEQUENCE public.themes_properties_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.themes_properties_id_seq;
       public          postgres    false    207            �           0    0    themes_properties_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.themes_properties_id_seq OWNED BY public.themes_properties.id;
          public          postgres    false    206            �            1259    16789    topics    TABLE     �   CREATE TABLE public.topics (
    id integer NOT NULL,
    create_date timestamp without time zone,
    name character varying,
    topic_id integer,
    orders integer,
    priority integer,
    color character varying,
    owner_user_id integer
);
    DROP TABLE public.topics;
       public         heap    postgres    false            �            1259    16787    topics_id_seq    SEQUENCE     �   CREATE SEQUENCE public.topics_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.topics_id_seq;
       public          postgres    false    205            �           0    0    topics_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.topics_id_seq OWNED BY public.topics.id;
          public          postgres    false    204            �            1259    16740    users    TABLE     �   CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying,
    last_name character varying,
    avatar character varying,
    email character varying,
    password character varying,
    deleted boolean
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    16738    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    203            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    202            8           2604    16829 	   themes id    DEFAULT     f   ALTER TABLE ONLY public.themes ALTER COLUMN id SET DEFAULT nextval('public.themes_id_seq'::regclass);
 8   ALTER TABLE public.themes ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    201    200    201            ;           2604    16830    themes_properties id    DEFAULT     |   ALTER TABLE ONLY public.themes_properties ALTER COLUMN id SET DEFAULT nextval('public.themes_properties_id_seq'::regclass);
 C   ALTER TABLE public.themes_properties ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206    207            :           2604    16831 	   topics id    DEFAULT     f   ALTER TABLE ONLY public.topics ALTER COLUMN id SET DEFAULT nextval('public.topics_id_seq'::regclass);
 8   ALTER TABLE public.topics ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    205    205            9           2604    16832    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    203    203            �          0    16729    themes 
   TABLE DATA           ]   COPY public.themes (id, create_date, name, description, keywords, owner_user_id) FROM stdin;
    public          postgres    false    201   �(       �          0    16815    themes_properties 
   TABLE DATA           X   COPY public.themes_properties (id, theme_id, property_name, property_value) FROM stdin;
    public          postgres    false    207   �(       �          0    16789    topics 
   TABLE DATA           i   COPY public.topics (id, create_date, name, topic_id, orders, priority, color, owner_user_id) FROM stdin;
    public          postgres    false    205   !)       �          0    16740    users 
   TABLE DATA           V   COPY public.users (id, name, last_name, avatar, email, password, deleted) FROM stdin;
    public          postgres    false    203   >)       �           0    0    themes_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.themes_id_seq', 7, true);
          public          postgres    false    200            �           0    0    themes_properties_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.themes_properties_id_seq', 9, true);
          public          postgres    false    206            �           0    0    topics_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.topics_id_seq', 1, false);
          public          postgres    false    204            �           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 9, true);
          public          postgres    false    202            =           2606    16737    themes themes_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.themes
    ADD CONSTRAINT themes_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.themes DROP CONSTRAINT themes_pkey;
       public            postgres    false    201            C           2606    16823 (   themes_properties themes_properties_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.themes_properties
    ADD CONSTRAINT themes_properties_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.themes_properties DROP CONSTRAINT themes_properties_pkey;
       public            postgres    false    207            A           2606    16797    topics topics_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.topics
    ADD CONSTRAINT topics_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.topics DROP CONSTRAINT topics_pkey;
       public            postgres    false    205            ?           2606    16748    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    203            D           2606    16772     themes themes_owner_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.themes
    ADD CONSTRAINT themes_owner_user_id_fkey FOREIGN KEY (owner_user_id) REFERENCES public.users(id);
 J   ALTER TABLE ONLY public.themes DROP CONSTRAINT themes_owner_user_id_fkey;
       public          postgres    false    201    2879    203            G           2606    16824 1   themes_properties themes_properties_theme_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.themes_properties
    ADD CONSTRAINT themes_properties_theme_id_fkey FOREIGN KEY (theme_id) REFERENCES public.themes(id);
 [   ALTER TABLE ONLY public.themes_properties DROP CONSTRAINT themes_properties_theme_id_fkey;
       public          postgres    false    201    2877    207            F           2606    16833     topics topics_owner_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.topics
    ADD CONSTRAINT topics_owner_user_id_fkey FOREIGN KEY (owner_user_id) REFERENCES public.users(id);
 J   ALTER TABLE ONLY public.topics DROP CONSTRAINT topics_owner_user_id_fkey;
       public          postgres    false    2879    203    205            E           2606    16808    topics topics_topic_id_fkey    FK CONSTRAINT     |   ALTER TABLE ONLY public.topics
    ADD CONSTRAINT topics_topic_id_fkey FOREIGN KEY (topic_id) REFERENCES public.topics(id);
 E   ALTER TABLE ONLY public.topics DROP CONSTRAINT topics_topic_id_fkey;
       public          postgres    false    205    205    2881            �   H   x�3���LLJ�LI-�,H�4�2����&r��$�X�%��F\& ���1�kJ)''&g��qs��qqq ���      �      x�3�� �=... p�      �      x������ � �      �   p   x�M��
�0Dϳ#$Q�Q/=���f��$[��__A/3����Qt�Rk��Z��̚�_�@6I��WW��AV=�b?G�^?c]�a!�!r�SJ����>�y��u�pǆ����+\     
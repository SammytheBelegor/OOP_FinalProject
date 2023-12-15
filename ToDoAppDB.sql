PGDMP                          z            Students    14.0    14.0     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16966    Students    DATABASE     g   CREATE DATABASE "Students" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Russian_Russia.1251';
    DROP DATABASE "Students";
                postgres    false                        2615    16967    students    SCHEMA        CREATE SCHEMA students;
    DROP SCHEMA students;
                postgres    false            �            1259    25232    student    TABLE     Q  CREATE TABLE students.student (
    student_id bigint NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    username character varying(50) NOT NULL,
    password character varying(50) NOT NULL,
    gender character varying(10) NOT NULL,
    location character varying(50) NOT NULL
);
    DROP TABLE students.student;
       students         heap    postgres    false    4            �            1259    25231    student_student_id_seq    SEQUENCE     �   CREATE SEQUENCE students.student_student_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE students.student_student_id_seq;
       students          postgres    false    213    4            �           0    0    student_student_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE students.student_student_id_seq OWNED BY students.student.student_id;
          students          postgres    false    212            �            1259    25220    tasks    TABLE     �   CREATE TABLE students.tasks (
    task_id bigint NOT NULL,
    student_id integer NOT NULL,
    task character varying(50) NOT NULL,
    datecreated timestamp without time zone NOT NULL,
    description character varying(50) NOT NULL
);
    DROP TABLE students.tasks;
       students         heap    postgres    false    4            �            1259    25219    tasks_task_id_seq    SEQUENCE     |   CREATE SEQUENCE students.tasks_task_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE students.tasks_task_id_seq;
       students          postgres    false    4    211            �           0    0    tasks_task_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE students.tasks_task_id_seq OWNED BY students.tasks.task_id;
          students          postgres    false    210            c           2604    25235    student student_id    DEFAULT     |   ALTER TABLE ONLY students.student ALTER COLUMN student_id SET DEFAULT nextval('students.student_student_id_seq'::regclass);
 C   ALTER TABLE students.student ALTER COLUMN student_id DROP DEFAULT;
       students          postgres    false    212    213    213            b           2604    25223    tasks task_id    DEFAULT     r   ALTER TABLE ONLY students.tasks ALTER COLUMN task_id SET DEFAULT nextval('students.tasks_task_id_seq'::regclass);
 >   ALTER TABLE students.tasks ALTER COLUMN task_id DROP DEFAULT;
       students          postgres    false    210    211    211            �          0    25232    student 
   TABLE DATA           l   COPY students.student (student_id, first_name, last_name, username, password, gender, location) FROM stdin;
    students          postgres    false    213   �       �          0    25220    tasks 
   TABLE DATA           V   COPY students.tasks (task_id, student_id, task, datecreated, description) FROM stdin;
    students          postgres    false    211   �       �           0    0    student_student_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('students.student_student_id_seq', 1, false);
          students          postgres    false    212                        0    0    tasks_task_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('students.tasks_task_id_seq', 1, false);
          students          postgres    false    210            g           2606    25237    student student_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY students.student
    ADD CONSTRAINT student_pkey PRIMARY KEY (student_id);
 @   ALTER TABLE ONLY students.student DROP CONSTRAINT student_pkey;
       students            postgres    false    213            e           2606    25225    tasks tasks_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY students.tasks
    ADD CONSTRAINT tasks_pkey PRIMARY KEY (task_id);
 <   ALTER TABLE ONLY students.tasks DROP CONSTRAINT tasks_pkey;
       students            postgres    false    211            �      x������ � �      �      x������ � �     
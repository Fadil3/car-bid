PGDMP     5         	            {            car_bid    15.1    15.1 )    %           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            &           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            '           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            (           1262    29464    car_bid    DATABASE     ~   CREATE DATABASE car_bid WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_Indonesia.1252';
    DROP DATABASE car_bid;
                postgres    false            �            1259    31263    bid    TABLE     �   CREATE TABLE public.bid (
    bid_id integer NOT NULL,
    status character varying(45) NOT NULL,
    price integer NOT NULL,
    date date NOT NULL,
    user_id integer NOT NULL
);
    DROP TABLE public.bid;
       public         heap    postgres    false            �            1259    31262    bid_bid_id_seq    SEQUENCE     �   CREATE SEQUENCE public.bid_bid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.bid_bid_id_seq;
       public          postgres    false    220            )           0    0    bid_bid_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.bid_bid_id_seq OWNED BY public.bid.bid_id;
          public          postgres    false    219            �            1259    31244    iklan    TABLE     �  CREATE TABLE public.iklan (
    iklan_id integer NOT NULL,
    judul character varying(225) NOT NULL,
    merk character varying(45) NOT NULL,
    model character varying(45) NOT NULL,
    jenis_body character varying(45) NOT NULL,
    transmission character varying(45) NOT NULL,
    tahun date NOT NULL,
    deskripsi text NOT NULL,
    price integer NOT NULL,
    date date NOT NULL,
    user_id integer NOT NULL,
    kota_id integer NOT NULL
);
    DROP TABLE public.iklan;
       public         heap    postgres    false            �            1259    31275    iklan_has_bid    TABLE     �   CREATE TABLE public.iklan_has_bid (
    iklan_has_bid_id integer NOT NULL,
    iklan_id integer NOT NULL,
    iklan_user_id integer NOT NULL,
    bid_id integer NOT NULL,
    bid_user_id integer NOT NULL
);
 !   DROP TABLE public.iklan_has_bid;
       public         heap    postgres    false            �            1259    31274 "   iklan_has_bid_iklan_has_bid_id_seq    SEQUENCE     �   CREATE SEQUENCE public.iklan_has_bid_iklan_has_bid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.iklan_has_bid_iklan_has_bid_id_seq;
       public          postgres    false    222            *           0    0 "   iklan_has_bid_iklan_has_bid_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.iklan_has_bid_iklan_has_bid_id_seq OWNED BY public.iklan_has_bid.iklan_has_bid_id;
          public          postgres    false    221            �            1259    31243    iklan_iklan_id_seq    SEQUENCE     �   CREATE SEQUENCE public.iklan_iklan_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.iklan_iklan_id_seq;
       public          postgres    false    218            +           0    0    iklan_iklan_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.iklan_iklan_id_seq OWNED BY public.iklan.iklan_id;
          public          postgres    false    217            �            1259    31224    kota    TABLE     �   CREATE TABLE public.kota (
    kota_id integer NOT NULL,
    nama_kota text NOT NULL,
    latitude numeric(9,6) NOT NULL,
    longitude numeric(9,6) NOT NULL
);
    DROP TABLE public.kota;
       public         heap    postgres    false            �            1259    31232    user    TABLE     �   CREATE TABLE public."user" (
    user_id integer NOT NULL,
    nama character varying(225) NOT NULL,
    kontak character varying(45) NOT NULL,
    kota_id integer NOT NULL
);
    DROP TABLE public."user";
       public         heap    postgres    false            �            1259    31231    user_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.user_user_id_seq;
       public          postgres    false    216            ,           0    0    user_user_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.user_user_id_seq OWNED BY public."user".user_id;
          public          postgres    false    215            z           2604    31266 
   bid bid_id    DEFAULT     h   ALTER TABLE ONLY public.bid ALTER COLUMN bid_id SET DEFAULT nextval('public.bid_bid_id_seq'::regclass);
 9   ALTER TABLE public.bid ALTER COLUMN bid_id DROP DEFAULT;
       public          postgres    false    219    220    220            y           2604    31247    iklan iklan_id    DEFAULT     p   ALTER TABLE ONLY public.iklan ALTER COLUMN iklan_id SET DEFAULT nextval('public.iklan_iklan_id_seq'::regclass);
 =   ALTER TABLE public.iklan ALTER COLUMN iklan_id DROP DEFAULT;
       public          postgres    false    217    218    218            {           2604    31278    iklan_has_bid iklan_has_bid_id    DEFAULT     �   ALTER TABLE ONLY public.iklan_has_bid ALTER COLUMN iklan_has_bid_id SET DEFAULT nextval('public.iklan_has_bid_iklan_has_bid_id_seq'::regclass);
 M   ALTER TABLE public.iklan_has_bid ALTER COLUMN iklan_has_bid_id DROP DEFAULT;
       public          postgres    false    221    222    222            x           2604    31235    user user_id    DEFAULT     n   ALTER TABLE ONLY public."user" ALTER COLUMN user_id SET DEFAULT nextval('public.user_user_id_seq'::regclass);
 =   ALTER TABLE public."user" ALTER COLUMN user_id DROP DEFAULT;
       public          postgres    false    216    215    216                       0    31263    bid 
   TABLE DATA           C   COPY public.bid (bid_id, status, price, date, user_id) FROM stdin;
    public          postgres    false    220   I0                 0    31244    iklan 
   TABLE DATA           �   COPY public.iklan (iklan_id, judul, merk, model, jenis_body, transmission, tahun, deskripsi, price, date, user_id, kota_id) FROM stdin;
    public          postgres    false    218   �G       "          0    31275    iklan_has_bid 
   TABLE DATA           g   COPY public.iklan_has_bid (iklan_has_bid_id, iklan_id, iklan_user_id, bid_id, bid_user_id) FROM stdin;
    public          postgres    false    222   X                 0    31224    kota 
   TABLE DATA           G   COPY public.kota (kota_id, nama_kota, latitude, longitude) FROM stdin;
    public          postgres    false    214   �c                 0    31232    user 
   TABLE DATA           @   COPY public."user" (user_id, nama, kontak, kota_id) FROM stdin;
    public          postgres    false    216   e       -           0    0    bid_bid_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.bid_bid_id_seq', 500, true);
          public          postgres    false    219            .           0    0 "   iklan_has_bid_iklan_has_bid_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.iklan_has_bid_iklan_has_bid_id_seq', 500, true);
          public          postgres    false    221            /           0    0    iklan_iklan_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.iklan_iklan_id_seq', 50, true);
          public          postgres    false    217            0           0    0    user_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.user_user_id_seq', 20, true);
          public          postgres    false    215            �           2606    31268    bid bid_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.bid
    ADD CONSTRAINT bid_pkey PRIMARY KEY (bid_id, user_id);
 6   ALTER TABLE ONLY public.bid DROP CONSTRAINT bid_pkey;
       public            postgres    false    220    220            �           2606    31280     iklan_has_bid iklan_has_bid_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.iklan_has_bid
    ADD CONSTRAINT iklan_has_bid_pkey PRIMARY KEY (iklan_has_bid_id, iklan_id, iklan_user_id, bid_id, bid_user_id);
 J   ALTER TABLE ONLY public.iklan_has_bid DROP CONSTRAINT iklan_has_bid_pkey;
       public            postgres    false    222    222    222    222    222            �           2606    31251    iklan iklan_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.iklan
    ADD CONSTRAINT iklan_pkey PRIMARY KEY (iklan_id, user_id);
 :   ALTER TABLE ONLY public.iklan DROP CONSTRAINT iklan_pkey;
       public            postgres    false    218    218            }           2606    31230    kota kota_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.kota
    ADD CONSTRAINT kota_pkey PRIMARY KEY (kota_id);
 8   ALTER TABLE ONLY public.kota DROP CONSTRAINT kota_pkey;
       public            postgres    false    214                       2606    31237    user user_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (user_id);
 :   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_pkey;
       public            postgres    false    216            �           2606    31269    bid fk_bid_user    FK CONSTRAINT     t   ALTER TABLE ONLY public.bid
    ADD CONSTRAINT fk_bid_user FOREIGN KEY (user_id) REFERENCES public."user"(user_id);
 9   ALTER TABLE ONLY public.bid DROP CONSTRAINT fk_bid_user;
       public          postgres    false    220    216    3199            �           2606    31286 "   iklan_has_bid fk_iklan_has_bid_bid    FK CONSTRAINT     �   ALTER TABLE ONLY public.iklan_has_bid
    ADD CONSTRAINT fk_iklan_has_bid_bid FOREIGN KEY (bid_id, bid_user_id) REFERENCES public.bid(bid_id, user_id);
 L   ALTER TABLE ONLY public.iklan_has_bid DROP CONSTRAINT fk_iklan_has_bid_bid;
       public          postgres    false    3203    220    222    222    220            �           2606    31281 $   iklan_has_bid fk_iklan_has_bid_iklan    FK CONSTRAINT     �   ALTER TABLE ONLY public.iklan_has_bid
    ADD CONSTRAINT fk_iklan_has_bid_iklan FOREIGN KEY (iklan_id, iklan_user_id) REFERENCES public.iklan(iklan_id, user_id);
 N   ALTER TABLE ONLY public.iklan_has_bid DROP CONSTRAINT fk_iklan_has_bid_iklan;
       public          postgres    false    222    222    218    218    3201            �           2606    31257    iklan fk_iklan_kota    FK CONSTRAINT     v   ALTER TABLE ONLY public.iklan
    ADD CONSTRAINT fk_iklan_kota FOREIGN KEY (kota_id) REFERENCES public.kota(kota_id);
 =   ALTER TABLE ONLY public.iklan DROP CONSTRAINT fk_iklan_kota;
       public          postgres    false    3197    214    218            �           2606    31252    iklan fk_iklan_user    FK CONSTRAINT     x   ALTER TABLE ONLY public.iklan
    ADD CONSTRAINT fk_iklan_user FOREIGN KEY (user_id) REFERENCES public."user"(user_id);
 =   ALTER TABLE ONLY public.iklan DROP CONSTRAINT fk_iklan_user;
       public          postgres    false    3199    216    218            �           2606    31238    user fk_user_kota    FK CONSTRAINT     v   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT fk_user_kota FOREIGN KEY (kota_id) REFERENCES public.kota(kota_id);
 =   ALTER TABLE ONLY public."user" DROP CONSTRAINT fk_user_kota;
       public          postgres    false    3197    216    214                   x�e|;�%;���g/� >����x�H���e�Eh9/:��V� ��PO��������������_�oݦ�_�K����O��yo6�5�o�?�?�kt�9�oM�+�G�����������kU���s�+�O������H?�|�������W�q�����gk�\is�N`�v7KuS�����y^�2�t�?�����a��Pڱ�[���"�#�����f���3��?�􈡆u㮁��{��`݋�qR�K����U�H��0�#��9�S�ܗa�	7�E-,�^F)aQ�Q��Z[��](7��hW���Z����ϲ����٭�U��-+�ź���9<P���?��g���dY�
�G��,�\�qIU�{M�~��+�u��5�@2~�+��Z�����>��Z�������ϲb�֮�qVx���Ľ��Â?��}��T�Wyn�-J����=�:j�؈��Ñ�9�[�6�s���~N�����l������.x@��7�����]� ^�_��v�L9���<����ٱ��1G��ى}�V{-�b�����}������ɐ����5ݢ�<�he`j��D����~�sX� Vy��s�����W�
5�9&��ʁ'�;��?;5��"- nɓ75�Ņ��!>;J�!{krg�#z4D18��>�W�1��pa�ܭ���AR��4ʄ���'m��G�o��#�jtJ�&�ů��H~5<< ������A��c���v�z��!��u߹p�5ٵ6���הX?������쎲A�ٰc�/{PZ�5Yvܫ�xE��47GYJ����.А̏�����K+H�c���v�n(��w{�-����^+��"�y=-�hws��y/�����.gm/��J��]`�A>O� �a����Ж^u>�އ�B_���bN5m�8p9�aU�>����p��G-P�cP�s8���ò��_��1�SH�s��%V ӑP����8�P'�#K9	![�X=�)(�t��G��c�Z��=��;p�F}2ݸ�h���q��P��s��O�8b�%9㤢R�Ͼ��'���q���Aʳ"��8IH?��^�9�zD#:����/��)4q�΃>�]bM�#�)!�
��8v4�!X��A��ϟ�AVl�vݾ4^����^ h����.��Rv���?4�#�F�\!@ؙ�9���YYk�"��C��T��5���a�>R�jQ�y�R�M�N�gA� ���D�@�z�X�#�Щ��=��Nh��*��M�h�;�E�y+Ȭ�<0��b)����nv�DN��hV!�331�I�s��Z4���JI6�ej�	uL)	@��l,V�䄐��Ŵ?�-ɅА��*�D0��"�4h�r������@����#�9���ȍ,�(%�Y�+��Q}�L�U��:����.I�Z�Nm��m�Ԕ�u��fw[tlK���:���[_�7f�/.��3��%�d,`�p��p�0bRT��!C}����:�
NA5����up���}�F�I^$��6a��ϋ��)Z`
Į^	��+���W�\��T.-�z��#dy[i�:��RJg������?I�
��Ճ�ςq�T�|/U�)|́�i�Z%Ȼ�GQyA���6�ip=GQA�j�'d/�4+�)�>k��?j
hs�yA��Q��\8�H��r��!��;�[X�b
(g0�K�0_�S�W	W�$�$M�� 4kw/���UU	E	���f�B����i�"�I�Ţq��
f^K�W�����*���˲j�����xrX�l�_kw�4pkO��j�)V����e5�f(&�E��-c� �]�xIn�}ւ�tT�����yIB��x���)�B�J'<K*ZNU�[�����$M��׷O�ljL��m�F��Q�`�e����
h߬�J�)���d0����.�`y��YdBj�^�j�zm�ȕ\�UY��{3�8�/�SH�PV��r�@���%��eU�{~�����v�uz�]�*;���?�� -�ꐣ���!�C�<d�X
��e�����ή�1�ܯ��if�f���N�Of�ڨ!t�I;	gUp���;��H)�Bl�hwV���?��P&6��kzb`H���@C<8sO� 
y�b���� r��_�/�F�2�� ud���h�qI�kqF�>dɾ�/�P�*h+��K\@�^-E�O��%a�My�*�=B,��p��ӎ��L�c����G��'��5�5�!zh`�F���[p�q�פ�&��Yᵸ�,�@��bu�Dx˸L�vJ��T]-e@ؑJ����S��6��5;�y��AT����.3@���Jf�h-n�� ������t��S���.5��q�ޠ@��S�����e��U�sAC�j�c����a���+@��̬�0�D��v�e��|�^6�iF��G�p��`���m�ʚ�4�2'}G>�[3z����>D���S�Q�B;xK��8+�_qUHuFJ��`Mj;���r߲�&Xu(,k�P��5�ltD���F}x*�Z�H2�Tx�δ�x Ѹ%mp��X��JȀ����w�QNFC�i���uh�"C⬝%��l�ino1{��!r��$�  )�Bc	2Й�H�c�9��!w������¢��b�T�sQ	��Hy'[����Ly)�&0nD2
��9ot�d��
�b��ߕm���@���n�ڱߓ�]�+B�`Q2�"�4�͸6���U@�W���7;�<�L�$�5��'D>$޽���ͺ���P�	(�]§}9T�8���%�ý�#�x9l�����?U1`˘�/�?\��ۈP��䫎|��«,������"�����t�@+��ށ
t��r�
heU��Y�\o��f��{�|��­]�F�7�� 0��X~�����(Q{�����j���e�W;�$�t6t��H]~��������b�k�۷&,l��ΫԽ�8,�;�e��5�;�h	�h.@�[Å�E����R���4kP"��
	��j�@��h37h�>/�XY	&;�F܌�
����'�Q+���Z�5��py���2l���0��n�PCՕA� c���q�t��������_aƒ5�QH{�6�G���uh�&���;�3�~�:��ʄ�i����V|v,I$tb��T�/C�)P����6<̗����ch����k���ڋU�=h=�02PH	-D�n��4�k�*�������Y��M*� ��9g�wa6V�*.x6�
a`��g��	 �m+��}}1�G���P�/f����F�\�?}�QB���zHn4"Z������I�[�E��w:�S��X�N�P"��ԣ��Ϙ��[^/��f�C���l��L=�Le�3뾨�(�����O�ﷁ�u����y��h�M�|e��x$rA��^F�����ɸ�0T��4��cI��%�Y�!��&� 
����u�s�R^9�K�I���V��BAf���2C��O=��ͻ�1i�@ ��t�5)3&\vaC�k��J3�|Θ��<����ع��9���JZ�L���Q�R�l��6Bu��}�;c_��q߰q�`���՛uUU�K�����AU���i fe����$��g�t�(��n��6�J�t���2�Z���0--d]��ʭ݂p#뾪�c@�qodf���#�栣�)j-�4pt���T&+��NsI��<�[A����(B�rh��YtZf\;�����K��(�$�( ��P]*�C�r\$k�+
�R��yC)*ڂ�)�Lf�[FԺҶ@��ǀ�c����	L&��_�!���FK��8{�Id�nr�
��#ȣݳ�3n��>mZ������|�F|3�B�4��[\U5�(�9=�j����q�E�&K��TqqC\��*6�������2�F�̵�$�"���I�Nc���^]����&G�ĂSRR[:�
�}B�%�Y*4
��0�î�%1���K濷m｣������3Κ-�����1�����ro׉�˳���$ɠ��5DÀ_[';p[�?�#���� �  ��9��J�r1��y�uUz-����JL�,YZRd>{c)��*�t�R�ɘODQO��Ln2��8�����p�z�R#�����t�laZu��g�+�:N9���a���J�v�Y'I�sR<���O���n�!���"Hk�&���F�w_D���BU�,�)r܈}��O����,� g`�
l�N*
ǧECe��Y�$����d�\���gpg~�y�qwe�*?�P����ʴ�������N'���rkA�,4^������N�|>�d�1yD����l`�A���@$\�m���Yd�ؘͳ<å�E�Y(�X}�ٰ�����>�C�)�p�#����ۍk��J�e�u�VuҸ0b�'D�*�����'��b-#/��$T�tu��	�
xi�r�.�`a�+N������|��X^�
�'�sb�؍�'hyy\uhXA���9ԱB����=�8�x�-����FbG�q`W���h����$���.��,�c�m�qu�m�H��	}@N�ٸ���X��+�G���֚'y��:=a$W�z���`M�z��4�o�jVظC�}��x<j�|����s@�gg��(�D���1�`"��x�O�s}���m�q����w����+0ۼ�JF�0�lY��f*�NE�-���L;X�ƈ8�gI�!ב��W�YmE;�l(x7k�A)�.�)_��4LE.�M�L��p��$��;�����h�؟f �N�<6oaRu�u'�,�6��Sa��o㬭���J���PJ����*|�Qcྠx�����J��hؼ�d���~��me�b���� wx�CI�� ɞ�#���o(��B<��I��#��-k������M8=�/r�[f$*DZO�2��X�	�Y�~�c��t�cm��<�؀�]zP�K�\D�%y�1�ߓ䝥#�����=�3�����X�S���W�Z�L*b����"۞?��F��W�)�	�����`�-�q��� �q(�%���"�����F~|f��=O/vG���m��$��NTB5F�Ui���I�����7�����n�߇a�dt������v`B�J/fׁ�<V��ـ,ey�2X٧˃����3*�B��r<��n��;v��>����'�/,�?��V�߉!!����e�hL�Ʃ��c��!�L����1�tμKPxu= z.�x�������Y��!����g_m�ZX}��|��+`��Ȳ���Hg�����'q6�g��o��4^f�$sU/�o�/�?��$��67bX]���y��1�5u�Յ���X�X��-�'	߂��O�6<������gm�2���p׺,*O}T��'eI�#U���G�����R�rvӓ$3�� �� ���u/�2�Jp�^M��J���R_r���(��]�g�,�x���xͳ��|͐�'}g�,ɶe�(��>�3PR]A�e��`ݞ���@;"���}��~r[d�B{�T_��!�u�^���9n񀣃��+�uN c�dLY�-��g��5�$nړ��w��)՞���1W�a_�l64������ u���X�����R|׭8�����C�A��{;q�]��w�;�PBw�X9�2-�d�>�Z���<=��2 G�?q�G��6��M��ҵ��̓��蚅���S��	��ԟ�b�_q����RX3�$΀������Ϊw���X�<����O׌�A�`}C�eIo?��s�a u�D,��E��z;�{�H�qP�a��l�Zf��E�� �a�m>LN)�P"[�؏"n���Ċ��f'�a�:�����::'�����|d&���`y$��Ϣ� ��
l���e��ߏ���4�f��s�k�n�l�֚5��H.Ў6�Ԝ�΅0�K_�� ��u��"�[�?�������X��            x��Z�r�H|��? ��Q��7���cO�ƾ�H��0	pphm�fU�)jbW��4	tב���<�2���CzT�A���N����k�����$���vNn�u:�U�"���,�or7�Ӝ�mY�T��Y�S����M�v�+��!]�pRuH��xT��8�zXS|fHG�������"˳�ŵ��:ϯ�6ɻ����H�N�aY�Z�K�_U:����x�;��q;�j�����:�XA��ퟲ�/jLުqSG�!���?ba��0��^bI�yQ��7�W=�S�蓦])֎�}D�����.Á>����~��Ӭ�]�����������7��1=�ӣ>�.۲�g�/��l��_^g�u^$m��*��$񳻤+⦸4Gu���l�n�X�!�4 �A���̦���j��]Z[zr�U���B�s�إ7�:"���+�x���Y�5.E<����̻��Z�fI�-j�f�VWUr��5v����DQ�5�2 ��2�ׁ��f����c��,'f\%y�G�&9��}�}C�|Ա�n7�[��l��<`i���K�W��+Z j��.(�a��D��4&��v:�������:x�p=���	=1�p����A��h���6��<ḕWu򛺟fT���5
���0q�����y�%/�~P�%��E��󗸋K�OtE�Q�N��7�ZyS6mY�[[�%y��e[_5t]����4��DA@W�S�#/���׆�m�.y����	����j�?ܫ�w�̼om2��aY�m*�ŗ��h4�8��J)��NQ���8���3�h��QSȍfl9Q��ҳB�����ǁ�����be�E/�j��ü�e&(.*,����\i$�����7	�S}��.��7�R�c�R!�'*��~[�i[\��K.lл��<}���{M}M5YUQ���W@�����R_��q�	ޡ!Qx@���Q\. 	�����昇���I�w�$��w˅���'T��r�e�B� 0��N��⬧{I�C�t�.�۾��3�ΐk���7��-��O7�1�WӼn�03�<��/.�n� 0�p��P��(4�� �P�E�MU�7{�)i��j�<K��
��\�X-b��+FOs\�;l{&AZ���Ģ �'�X2tX-y�(O|o�؇�H|���CV	:�S?>N9tkf�����;����}[5���Z�&On�e;aIʖ;]p��jCyt�V�E���������/1�Zh��J7��h�C4@İ�.PjYP|��9a�.)��̛���fMR&%�
�A��,L,�r�D����#�gw੐�;Ώ�!�f�>�-��.�}�f	�sH��(@K�ĪNgJ�Ĕ��SJ,Q���k�ﲵ8[\�r��L>X���F�V\~����U�px����|;m�!P�Y$�p�l��A���߰�rZ ����%�M:o�z�j���9P$��Ǿ�z�ܒ����Wy$��h3�䔜��(�F
^�H[����J�rGG!��R�?8c*�o�W�R�T�u��Y���I��ɛ���zE�N!���G��?�����po"���K�l�w�z\��i�h*FZ��$��%U��>��b5��T��u�Cv�-��	��>"�DG$�y^����v�z���t+��"Od���2u�k39�=8>�
�p4ہ�A*P2����Y�_�H�RB�����,�6�df�{$`j����@xT����h#pCZqY��}�TӜ~�US�e�5�/��)U�%wS�EL&f����o(o��;���:�Q`�gѳ����`�IVI=b����[��Fi�9��2+<�	K/�r�#�ڞ�\H(V���B��@{��V�?����ʜ��UT��4�]����H2��ˠ�2-�`zsT��X����1ρ�mm�eS�U�u�3��	Y"�S�����C0�&K"e�9B=�[H}kF� �y6�! >?���	�՚em��f���>�Q�b�00d��f	F�i��S<�E�n�\�vN�ߥFݒ"!��.W��A�`݀^ʪ���]E"�!��&�e��ل���̰�2�h��}�[���4�X���Ps@d��ޔ�G�O1���L�s�Q݁�ʢG�JZ�(e�f1�/Sk�+!'cT�	X(��̰����'N
Q��K��#��Y9��#T�)���\��N=iJ7[�LHs��EQ��� �l�\%2�Y�*��Y���8�ϸT��o�#5a�T���M0�gc��!�W;�Y�e���"u%Ӎcp+�	Aɽ����ླྀ��8�(;�!e���a2!S���,[��X��c�m�;g_�"�<fgU"<#�rF�j���ʠ(e=Y�!>/��-����P�<@00Åg��f?�%�mO�u��	��>�>k�-�>p��m�UEc�H}]��j�����vWuEv���*��
u}�����ݥvy! i6ҡ"~dh4.�wk�[�Z�����T�ky#���1ن�0
�d$I �|��c�,�~k6i7�r��Le�	��z��,,���$�Pzw�ߨ`dB��K��Lյ��O.R�㧉��d#H�L:�� P�������~�;��`"����9�F�Lg:� >�hE��u�o���������GgDxog�@�4h&vX���	��[
�Nc��L�v�>�
�!\�\���:���;[��Bce0~[z�������\�MB��0��� c�vJ~Tv����3��E�խ�^-���" D�B����ex�e8����J��r�]O�Bev��;Q9����J� ����.���fi~��P }�gR�mCPZ�]S��T�%Dy�)K#�d�c�� O�N��g-���k63�xn��R67#d�s��k��O�֨�Ť��N��a�����5@�>@�{<�f�G�m�Ӫ�:'��<� �|�������1�ec���j�P?EyMB���USgQ+vbs�u� R�q_͑Gf������?��:��"ʦ#�eR���0]�AU:��&�������wH`��Y�z;���9l�"�ҏ� r���ƆP,KR�L�)�ڄ������ȇW�eHM�!_0����9�A�٪-ˬ.��ޒ�#�H_KS�C�n���А���[M�^���O	x�)���	��
�0�l1�h&l��Diڼ�w���C�V�݅�sy�m�g�Hw����:��9���*g���U�{��E��{�u��o�.铚��{��%h.�����M�o����ߗ�(�#��#��g��{�t�cN^�+��\�ޢĠRfU��l����!��ON��~��ץ���H"��a��%K�{�?�gDmA(�V�`d��7)����c(~�	  ������$2w[�&��EY+S���'�'���N�����r�5Fj���#}S����֖$�;	1�y�m�O���:�O�̔��
�E3WE䱊L������y��d~G���mkO-���!���p�=�#�/S���,%KN���O���|�7���YY`X��"Ԇ.�21���1���(��L�N�[�B�3���Θb�g�Ӄ:�j��*�.�P[�jYhW�Y���(�z(R]i��Gd�)��G�9= 
�qT���y��'�m�gŬ�%���$�.?̠��p(6�V������;��ō�ÙE�O�1�q�nc|
�i˟-��4�3a��r�+O0�-8<n�Λ���&{ ��n$�I��"O�,�|4��I�=�y�63��w,&Jh�1��_,��p^[��\[�����C����ͱ��с&�X�؟�?e�'�:�Y�[;D>o�O��ís�A�/�+�>p�Qqe��6��$U��r9��䅿F�j��
�����xaw���`�c�*���ʮ�j�լ��>��ff�@�G�B���]t�+G]X;��?�)�5�c7��oN3�e���I�C_���g ��x!i�������ˢ(�:p�CB�jVt�?qs�{a�İ�c�X���0������h�Ku������;�C)���C0$��^_4Uִ�    ˹ܓ������꿤�a      "   {  x�=�ّ$!D����(@\���vl>����@�u{�}�Ӟ������GC�c�k��kO�d�~�3?���w=}=���պ�\Qm��i���~�1��'�l����������?69����W�Yg�@i�ذ������u��;cKm'�]<��{����ѿ��}PJ�i!��.a�$f|{O�ĳ��?�0Z#�Y���S��Ri��]Ow������R�D�����-�ĸ��9�y�1BJ���Z����߱8�x4ګI�h#�&��������<���B����M�Y��5��,d�(q�/�+�b^�#5v�']W���v�|��2�WH���;C�g�y���q�s$�:��ֹ����QĊ��X�;w�m�:f�C@���rE�/�E�X�\4��VO#�����$�@�eX���/+Ea��Z�I��Y;T��@�Iwr[]��cw9ջ?7��q����{��l�|s��`��mn���{�W�w���������O\�>N��re4�A5���i���M�� �{�mx=�f�@���� ��q�������ns�m4��~Ah\�mi���k����<���5�S� �j���+At;{�'�F�6�i��/tPX�Z�@1�����59B�ga�`6�Ɓڷ��Ŵo�|y� �k�u�	x\���R��@x_W�ղ*�5�.���9�F�ݰ���@��-M�e�%�z���D^�.�|%�z���E����f��M�Qts��,��(=D�q����#���n��$�,.|Ć~�~�2��h�[:�l�C@���^1��L�-�sSTv�Dg>�ZIK����+���5�t$8´�[Y&���)Át�0��xݬt�Juv�4`G0��?LnR^�	�.z��aJ!�ZF5��&��i&���L&N��:� �u�ty����#�X�� �]���"�0�y�@��������A�z��.r�ٗKGlwU
��U.A|�����-�6m��n�S(���X#���Ky�ngx�;�.����.�)	ڶ4�f�H �V�On�{�;} �b�>n%
���"��}���\O
�����C�s���- ����ά�KN�"��xv�r���C� ��Q�՝^/�my��i���l�grw�������_Z IV���D�4�Q��ۅɑ "y��_�@t����M��(>?
��Efԥ��4�?Ty!��C@�;y��>)�#&D(f���.���-+^ҷ�T��):��G��^�;���:i�v 2��A��iBd����p�2 ��=��[��7_�� ����{��=kT e���^ԳlW��W
���i�3NV�n7�oH��2_ x(M5�z��������3j�.i����+c("Q\��������zu��Uk�>(�Z�a�kTG	�q~���ȳP�����?�����	�AI���2�m�S6lq��!e��y����D���#c��u��� s��52w�(�c^�� �af	��f=���y���)]Y"� ��C����%�+] g���� ,�qQr�� ��]?�]+��;�k�﮼���4��I�����o�z�;C@7�K�M��y���D[�v��$K�_�" l�K�;�#U푯�7�C��( �yy��_{Z����O�) H+�+$���NAʈ��λ!HO�����=(W���G�����q��9 (Y�����rE~1��	nf�F����r�����w���U��Y��� ��w|) ���תM@���T?�.pF�_>BGd��˂����g�x�:����"�a��DAJ��<������, ���H3ѭ��=@8]oDWghnrX��
yx��7��o����y�>��t@Э$�&��詽>��. �}���X��1�ߥ�����
W`�2 r�ۂ���R�#4������b�~�v���W�B�_� �zU�hy�(C��U�����F1�.���+�� �=���Ō,�t��bX�,��)�G �I~Ʌ���O�)��j  =�(|��o!�t�*Qo��w@R#O
�& 2� f�ꡭh��d�>�-�i�0�.�F�����n��_mUw$"=����U�m߫��Bu+;�D�:����*�@(gE3�i���tf
�������`��i 9��$�=�M��!x[�8�w٠��{@��5�(X^%�#�|���E���ά4N�b��ޒ����b(GD{�x0H.�g�q�9�@d>0 ��f��D(���h�m��ф\�tFQՄ��J G�!��d�q��^��u��̲ �r�O	j�}_�z ��/�����
���@R�)E�e �<S���$<^~+8�lo�����}��Y�\0����W�v @�3r�+$�Yˆ�&d��÷�X�ׅ�j�7�۩�!\���b�\9�F��`�ޫ�݉���� ,/���ֳ�
 :��Da=�; ۝����MKi���_��>@7#� ȑ�Ч����{��#�a�M���w�����d�7VX�	F4i����k-��ςP���: �g���hC�]��[���Z�_2 :e�"Xu�A�7����&�Y�6f/�(�ٚ���'��lVb}v�ߙTA�<�ߵ7�+��,?.����W�Y�f��`;�s���W�' �<k���Z���<��g�)lկ/˻�F�p�&�)A�O5�bۥ��e��)�&wx��Dе�x�1��j�ޘ�]����� :�.�'Y�e
������*kb��>Qՙ?(�d�@�Sao冸�HFn�`p�avv1�N�t�}(�E���ϛv�yg7���oh�$f�k���'����$!2k��v�G�N�*��+�g���gcѢ	e7��ݨw~տ��%�����q�q         b  x�U��j�0����G3��aO[�����̒LR78�!oߑ���	��ͧ�3v�ߓ��cG��6_l�^4b�T�C�X8A����L6ڂ	˂sNH�a~��k2���KrzƻϓM64� ��ƽ�4.�����ǆIS��R��{���l8t/9ւ�����
pSeU�y��v��TT]\�ĵN����>\��M暉Z"D����}�Ɔ��k��rr9*x���7�/� VX�a� ���ě��OS?}��VDW�^6}4�ة?���ֈ�Ϫ��7C�n�v�;�����";���_O~t���/�U�_c���1��|�<��ߟ��W��R�ӠD"�ZÿB�Ot�)           x�M�Ko�@���_�Ǭ`�y?�@�,�U��K�}x��Fc�(����q�����%��͜��8b�{�Rra#B&���b�S[�m����l^�}b7B����ˠ��$�l�]j�+��<sZ,�F�Hm@��^V��k��i�`G�f�ؗ��0�;���)+�nq��~���Ph��p�cڐΑ�KC?���a��ö~��Cr�!*[Sy�8���a�}zs��w�k/�*���"l�b�R�5�V���W����m��M��/R� 5�*\�i��s"N�&$�Z����`�cv9\J�4��'��1M����Hn���*����g"Y�Sj�d��`����R�o]
N��5��b�疒K���L�a3��p���+�H[zGʊR��lW�'l3��������}�ԕ���5ű5��ПNS�kW�	#�c�`�Ӆ�����OK0�}��n�i�"�re`���I�܊�sQʰ��:��ևJF�e���������&��5���"�8&������D�ph�Km?ꪪ���5     
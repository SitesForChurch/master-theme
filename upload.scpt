FasdUAS 1.101.10   ��   ��    k             l     ��  ��    ^ X Connect To Favorite and Synchronize With Rules (Requires Transmit version 4.0 or newer)     � 	 	 �   C o n n e c t   T o   F a v o r i t e   a n d   S y n c h r o n i z e   W i t h   R u l e s   ( R e q u i r e s   T r a n s m i t   v e r s i o n   4 . 0   o r   n e w e r )   
  
 l     ��  ��      2010 Panic Inc.     �       2 0 1 0   P a n i c   I n c .      l     ��  ��           �           l     ��  ��    ] W Demonstrates how to connect to a favorite and run a simple synchronization, as well as     �   �   D e m o n s t r a t e s   h o w   t o   c o n n e c t   t o   a   f a v o r i t e   a n d   r u n   a   s i m p l e   s y n c h r o n i z a t i o n ,   a s   w e l l   a s      l     ��  ��      how to specify rules.     �   ,   h o w   t o   s p e c i f y   r u l e s .      l     ��������  ��  ��       !   l     "���� " O      # $ # r     % & % n     ' ( ' 1    ��
�� 
pnam ( n     ) * ) m   	 ��
�� 
ctnr * l   	 +���� + I   	�� ,��
�� .earsffdralis        afdr ,  f    ��  ��  ��   & o      ���� 0 mypath myPath $ m      - -�                                                                                  MACS  alis    t  Macintosh HD               �[�H+  d�
Finder.app                                                     f����"        ����  	                CoreServices    �\Ag      ��r    d�d�d�  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��   !  . / . l   � 0���� 0 O    � 1 2 1 k    � 3 3  4 5 4 l   �� 6 7��   6 _ Y In Transmit 4, favorites are now objects and must be specified in a different way. Below    7 � 8 8 �   I n   T r a n s m i t   4 ,   f a v o r i t e s   a r e   n o w   o b j e c t s   a n d   m u s t   b e   s p e c i f i e d   i n   a   d i f f e r e n t   w a y .   B e l o w 5  9 : 9 l   �� ; <��   ; a [ we're choosing the first occurrence of a favorite named "My Great Server"(it's possible to    < � = = �   w e ' r e   c h o o s i n g   t h e   f i r s t   o c c u r r e n c e   o f   a   f a v o r i t e   n a m e d   " M y   G r e a t   S e r v e r " ( i t ' s   p o s s i b l e   t o :  > ? > l   �� @ A��   @ 3 - have multiple favorites with the same name).    A � B B Z   h a v e   m u l t i p l e   f a v o r i t e s   w i t h   t h e   s a m e   n a m e ) . ?  C D C l   ��������  ��  ��   D  E F E l   �� G H��   G f ` Also, the favorites list can only be directly referenced within Transmit's tell block, which is    H � I I �   A l s o ,   t h e   f a v o r i t e s   l i s t   c a n   o n l y   b e   d i r e c t l y   r e f e r e n c e d   w i t h i n   T r a n s m i t ' s   t e l l   b l o c k ,   w h i c h   i s F  J K J l   �� L M��   L b \ why we're setting a variable below instead of looking up the favorite within the tab's tell    M � N N �   w h y   w e ' r e   s e t t i n g   a   v a r i a b l e   b e l o w   i n s t e a d   o f   l o o k i n g   u p   t h e   f a v o r i t e   w i t h i n   t h e   t a b ' s   t e l l K  O P O l   �� Q R��   Q   block.    R � S S    b l o c k . P  T U T r     V W V b     X Y X b     Z [ Z m     \ \ � ] ]  ~ / g i t h u b / [ o    ���� 0 mypath myPath Y m     ^ ^ � _ _  / _ s i t e W o      ���� 0 mylocal myLocal U  ` a ` r    " b c b b      d e d m     f f � g g  / h o m e / r y a h a y 1 1 / e o    ���� 0 mypath myPath c o      ���� 0 myremote myRemote a  h i h r   # 4 j k j n   # 2 l m l 4   / 2�� n
�� 
cobj n m   0 1����  m l  # / o���� o 6  # / p q p 2  # &��
�� 
FAvr q =  ' . r s r 1   ( *��
�� 
pnam s m   + - t t � u u  D r e a m h o s t��  ��   k o      ���� 0 myfave myFave i  v w v l  5 I x y z x r   5 I { | { l  5 E }���� } 6  5 E ~  ~ 2  5 :��
�� 
SkRu  =  ; D � � � 1   < >��
�� 
pnam � m   ? C � � � � �  N e w   R u l e��  ��   | o      ���� 0 myrules myRules y , & must be a set, not an individual item    z � � � L   m u s t   b e   a   s e t ,   n o t   a n   i n d i v i d u a l   i t e m w  � � � l  J J��������  ��  ��   �  � � � l  J J�� � ���   � B < Create a new window (and thus a single tab) for this script    � � � � x   C r e a t e   a   n e w   w i n d o w   ( a n d   t h u s   a   s i n g l e   t a b )   f o r   t h i s   s c r i p t �  ��� � O   J � � � � k   c � � �  � � � I  c l���� �
�� .TrAnConfnull���     TaBc��   � �� ���
�� 
CoFa � o   g h���� 0 myfave myFave��   �  � � � l  m m��������  ��  ��   �  � � � l  m m�� � ���   � A ; Go into the local and remote folders that we want to sync.    � � � � v   G o   i n t o   t h e   l o c a l   a n d   r e m o t e   f o l d e r s   t h a t   w e   w a n t   t o   s y n c . �  � � � I  m z�� � �
�� .TrAnDiscnull���     FilV � 1   m r��
�� 
TaLV � �� ���
�� 
DiPa � o   u v���� 0 mylocal myLocal��   �  � � � I  { ��� � �
�� .TrAnDiscnull���     FilV � 1   { ���
�� 
TaRV � �� ���
�� 
DiPa � o   � ����� 0 myremote myRemote��   �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � ] W Run a basic sync from the current local folder to the current remote folder. (The sync    � � � � �   R u n   a   b a s i c   s y n c   f r o m   t h e   c u r r e n t   l o c a l   f o l d e r   t o   t h e   c u r r e n t   r e m o t e   f o l d e r .   ( T h e   s y n c �  � � � l  � ��� � ���   � L F command has many options, so be sure to check Transmit's dictionary.)    � � � � �   c o m m a n d   h a s   m a n y   o p t i o n s ,   s o   b e   s u r e   t o   c h e c k   T r a n s m i t ' s   d i c t i o n a r y . ) �  � � � I  � ��� � �
�� .TrAnSyncnull���     FilV � 1   � ���
�� 
TaLV � �� � �
�� 
SyTo � 1   � ���
�� 
TaRV � �� ���
�� 
SySr � o   � ����� 0 myrules myRules��   �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   �   Close the connection.    � � � � ,   C l o s e   t h e   c o n n e c t i o n . �  ��� � I  � ��� ���
�� .coreclosnull���     obj  � 1   � ���
�� 
TaRV��  ��   � n   J ` � � � 1   \ `��
�� 
doTa � l  J \ ����� � I  J \���� �
�� .corecrel****      � null��   � �� � �
�� 
kocl � m   N Q��
�� 
docu � �� ���
�� 
insh �  ;   T V��  ��  ��  ��   2 m     � ��                                                                                  TrAn  alis    V  Macintosh HD               �[�H+  d�Transmit.app                                                   �u/�rR&        ����  	                Applications    �\Ag      �r��    d�  'Macintosh HD:Applications: Transmit.app     T r a n s m i t . a p p    M a c i n t o s h   H D  Applications/Transmit.app   / ��  ��  ��   /  ��� � l     ��������  ��  ��  ��       
�� � � � � � � �������   � ����������������
�� .aevtoappnull  �   � ****�� 0 mypath myPath�� 0 mylocal myLocal�� 0 myremote myRemote�� 0 myfave myFave�� 0 myrules myRules��  ��   � �� ����� � ���
�� .aevtoappnull  �   � **** � k     � � �    � �  .����  ��  ��   �   � # -�������� � \ ^�� f���� � t������ ���~�}�|�{�z�y�x�w�v�u�t�s�r�q�p�o
�� .earsffdralis        afdr
�� 
ctnr
�� 
pnam�� 0 mypath myPath�� 0 mylocal myLocal�� 0 myremote myRemote
�� 
FAvr �  
�� 
cobj�� 0 myfave myFave
�� 
SkRu� 0 myrules myRules
�~ 
kocl
�} 
docu
�| 
insh�{ 
�z .corecrel****      � null
�y 
doTa
�x 
CoFa
�w .TrAnConfnull���     TaBc
�v 
TaLV
�u 
DiPa
�t .TrAnDiscnull���     FilV
�s 
TaRV
�r 
SyTo
�q 
SySr
�p .TrAnSyncnull���     FilV
�o .coreclosnull���     obj �� �� )j �,�,E�UO� ���%�%E�O��%E�O*�-�[�,\Z�81�k/E�O*a -�[�,\Za 81E` O*a a a *6a  a , K*a �l O*a ,a �l O*a ,a �l O*a ,a *a ,a  _ a  !O*a ,j "UU � � � � . b i b l e b a p t i s t m a t t o o n . o r g � � � � L ~ / g i t h u b / b i b l e b a p t i s t m a t t o o n . o r g / _ s i t e � � � � L / h o m e / r y a h a y 1 1 / b i b l e b a p t i s t m a t t o o n . o r g �  � �  ��n�m
�n 
FAvr�m  � �l ��l   �   ��  ��  ascr  ��ޭ
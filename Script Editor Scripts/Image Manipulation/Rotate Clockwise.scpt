FasdUAS 1.101.10   ��   ��    k             l      ��  ��   �
Rotate Clockwise

Copyright � 2001�2007 Apple Inc.

You may incorporate this Apple sample code into your program(s) without
restriction.  This Apple sample code has been provided "AS IS" and the
responsibility for its operation is yours.  You are not permitted to
redistribute this Apple sample code as "Apple sample code" after having
made changes.  If you're going to redistribute the code, we require
that you make it clear that the code was descended from Apple sample
code, but that you've made changes.
     � 	 	� 
 R o t a t e   C l o c k w i s e 
 
 C o p y r i g h t   �   2 0 0 1  2 0 0 7   A p p l e   I n c . 
 
 Y o u   m a y   i n c o r p o r a t e   t h i s   A p p l e   s a m p l e   c o d e   i n t o   y o u r   p r o g r a m ( s )   w i t h o u t 
 r e s t r i c t i o n .     T h i s   A p p l e   s a m p l e   c o d e   h a s   b e e n   p r o v i d e d   " A S   I S "   a n d   t h e 
 r e s p o n s i b i l i t y   f o r   i t s   o p e r a t i o n   i s   y o u r s .     Y o u   a r e   n o t   p e r m i t t e d   t o 
 r e d i s t r i b u t e   t h i s   A p p l e   s a m p l e   c o d e   a s   " A p p l e   s a m p l e   c o d e "   a f t e r   h a v i n g 
 m a d e   c h a n g e s .     I f   y o u ' r e   g o i n g   t o   r e d i s t r i b u t e   t h e   c o d e ,   w e   r e q u i r e 
 t h a t   y o u   m a k e   i t   c l e a r   t h a t   t h e   c o d e   w a s   d e s c e n d e d   f r o m   A p p l e   s a m p l e 
 c o d e ,   b u t   t h a t   y o u ' v e   m a d e   c h a n g e s . 
   
  
 l     ��������  ��  ��        l    � ����  O     �    k    �       I   	������
�� .miscactvnull��� ��� null��  ��     ��  O   
 �    k    �       r        n        1    ��
�� 
pcnt  1    ��
�� 
sele  l      ����  o      ���� 0 selected_text  ��  ��         l   ��������  ��  ��      ! " ! Z    + # $���� # =    % & % l    '���� ' o    ���� 0 selected_text  ��  ��   & m     ( ( � ) )   $ k    ' * *  + , + n   $ - . - I     $�������� 0 display_message  ��  ��   .  f      ,  /�� / L   % ' 0 0 m   % & 1 1 � 2 2   s c r i p t   c a n c e l l e d��  ��  ��   "  3 4 3 l  , ,��������  ��  ��   4  5 6 5 r   , / 7 8 7 m   , - 9 9 � : :  - - X X X X 8 l      ;���� ; o      ���� 0 target_string  ��  ��   6  < = < r   0 5 > ? > b   0 3 @ A @ m   0 1 B B � C C   A o   1 2��
�� 
ret  ? l      D���� D o      ���� 0 script_text  ��  ��   =  E F E r   6 = G H G b   6 ; I J I b   6 9 K L K l  6 7 M���� M o   6 7���� 0 script_text  ��  ��   L m   7 8 N N � O O > t e l l   a p p l i c a t i o n   " I m a g e   E v e n t s " J o   9 :��
�� 
ret  H l      P���� P o      ���� 0 script_text  ��  ��   F  Q R Q r   > K S T S b   > I U V U b   > G W X W b   > E Y Z Y b   > A [ \ [ l  > ? ]���� ] o   > ?���� 0 script_text  ��  ��   \ 1   ? @��
�� 
tab  Z m   A D ^ ^ � _ _ . s e t   t h i s _ i m a g e   t o   o p e n   X o   E F���� 0 selected_text   V o   G H��
�� 
ret  T l      `���� ` o      ���� 0 script_text  ��  ��   R  a b a r   L W c d c b   L U e f e b   L S g h g b   L O i j i l  L M k���� k o   L M���� 0 script_text  ��  ��   j 1   M N��
�� 
tab  h m   O R l l � m m : r o t a t e   t h i s _ i m a g e   t o   a n g l e   9 0 f o   S T��
�� 
ret  d l      n���� n o      ���� 0 script_text  ��  ��   b  o p o r   X e q r q b   X c s t s b   X a u v u b   X _ w x w b   X [ y z y l  X Y {���� { o   X Y���� 0 script_text  ��  ��   z 1   Y Z��
�� 
tab  x m   [ ^ | | � } } & s a v e   t h i s _ i m a g e   i n   v o   _ `���� 0 selected_text   t o   a b��
�� 
ret  r l      ~���� ~ o      ���� 0 script_text  ��  ��   p   �  r   f q � � � b   f o � � � b   f m � � � b   f i � � � l  f g ����� � o   f g���� 0 script_text  ��  ��   � 1   g h��
�� 
tab  � m   i l � � � � �   c l o s e   t h i s _ i m a g e � o   m n��
�� 
ret  � l      ����� � o      ���� 0 script_text  ��  ��   �  � � � r   r y � � � b   r w � � � l  r s ����� � o   r s���� 0 script_text  ��  ��   � m   s v � � � � �  e n d   t e l l - - X X X X � l      ����� � o      ���� 0 script_text  ��  ��   �  � � � l  z z��������  ��  ��   �  � � � n  z  � � � I   { �������� 0 eol  ��  ��   �  f   z { �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � o   � ����� 0 script_text   � n       � � � 1   � ���
�� 
pcnt � 1   � ���
�� 
sele �  � � � l  � ���������  ��  ��   �  � � � Q   � � � ��� � I  � �������
�� .sedschksnull���    obj ��  ��   � R      ������
�� .ascrerr ****      � ****��  ��  ��   �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � m   � � � � � � �   � l      ����� � o      ���� 0 replacement_string  ��  ��   �  � � � n  � � � � � I   � ��� ����� 0 replace_and_select   �  � � � o   � ����� 0 target_string   �  ��� � o   � ����� 0 replacement_string  ��  ��   �  f   � � �  � � � l  � ���������  ��  ��   �  ��� � Q   � � � ��� � I  � �������
�� .sedschksnull���    obj ��  ��   � R      �����
�� .ascrerr ****      � ****��  �  ��  ��    4  
 �~ �
�~ 
docu � m    �}�} ��    m     �|
�| misccura��  ��     � � � l     �{�z�y�{  �z  �y   �  � � � i      � � � I      �x�w�v�x 0 display_message  �w  �v   � k      � �  � � � I    �u � �
�u .sysodlogaskr        TEXT � m      � � � � �� P l e a s e   s e l e c t   t e x t   i n   t h i s   s c r i p t   t h a t   i s   e i t h e r : 
 	 	 	 
 1 )   T h e   n a m e   o f   a   v a r i a b l e   c o n t a i n i n g   a n   a l i a s   r e f e r e n c e   t o   a n   i m a g e   f i l e ,   s u c h   a s :   t h i s _ i m a g e   o r   t h i s I m a g e 
   
 2 )   A n   a l i a s   r e f e r e n c e   t o   a n   i m a g e   f i l e ,   s u c h   a s :   a l i a s   " M a c i n t o s h   H D : I m a g e s : P i c t u r e . 0 1 . j p g " � �t � �
�t 
btns � J     � �  � � � m     � � � � �  H e l p �  ��s � m     � � � � �  O K�s   � �r ��q
�r 
dflt � m    �p�p �q   �  ��o � Z     � ��n�m � =    � � � l    ��l�k � n     � � � 1    �j
�j 
bhit � l    ��i�h � 1    �g
�g 
rslt�i  �h  �l  �k   � m     � � � � �  H e l p � n    � � � I    �f ��e�f 0 script_help   �  ��d � m     � � � � �  S c r i p t E d i t o r 0 0 1�d  �e   �  f    �n  �m  �o   �  � � � l     �c�b�a�c  �b  �a   �  � � � i     � � � I      �` ��_�` 0 script_help   �  ��^ � o      �]�] 0 this_anchor  �^  �_   � P     $ ��\ � � O    # � � � k   	 " � �  � � � I  	 �[�Z�Y
�[ .miscactvnull��� ��� null�Z  �Y   �  ��X � Q    " � ��W � I   �V � �
�V .helpsancnull���    obj  � o    �U�U 0 this_anchor   � �T ��S
�T 
sstr � m       � $ S c r i p t   E d i t o r   H e l p�S   � R      �R�Q�P
�R .ascrerr ****      � ****�Q  �P  �W  �X   � m                                                                                       hbwr   alis    �  Leopard9A412internals      �E#H+     {Help Viewer.app                                                  cm�+��        ����  	                CoreServices    �E��      �,       {   @   ?  ALeopard9A412internals:System:Library:CoreServices:Help Viewer.app      H e l p   V i e w e r . a p p  ,  L e o p a r d 9 A 4 1 2 i n t e r n a l s  +System/Library/CoreServices/Help Viewer.app   / ��  �\   � �O�N
�O consrmte�N   �  l     �M�L�K�M  �L  �K    i     I      �J	�I�J 0 replace_and_select  	 

 o      �H�H 0 target_string   �G o      �F�F 0 replacement_string  �G  �I   O     F O    E k    D  r     l   �E�D 1    �C
�C 
pcnt�E  �D   o      �B�B 0 	this_text    r     l   �A�@ I   �?�>
�? .sysooffslong    ��� null�>   �=
�= 
psof l   �<�; o    �:�: 0 target_string  �<  �;   �9 �8
�9 
psin  o    �7�7 0 	this_text  �8  �A  �@   o      �6�6 0 this_offset   !�5! Z    D"#�4�3" >    $%$ o    �2�2 0 this_offset  % m    �1�1  # k   # @&& '(' r   # 8)*) 7  # 4�0+,
�0 
cha + o   ( *�/�/ 0 this_offset  , l  + 3-�.�-- \   + 3./. [   , 1010 o   , -�,�, 0 this_offset  1 l  - 02�+�*2 n   - 0343 1   . 0�)
�) 
leng4 l  - .5�(�'5 o   - .�&�& 0 target_string  �(  �'  �+  �*  / m   1 2�%�% �.  �-  * 1   4 7�$
�$ 
sele( 6�#6 r   9 @787 l  9 :9�"�!9 o   9 :� �  0 replacement_string  �"  �!  8 l     :��: n      ;<; 1   = ?�
� 
pcnt< l  : ==��= 1   : =�
� 
sele�  �  �  �  �#  �4  �3  �5   l   >��> 4   �?
� 
docu? m    �� �  �   m     �
� misccura @A@ l     ����  �  �  A B�B i    CDC I      ���� 0 eol  �  �  D O     oEFE O    nGHG k    mII JKJ s    !LML l   N��N l   O��
O n    PQP 1    �	
�	 
prngQ 1    �
� 
sele�  �
  �  �  M J      RR STS o      �� 0 x  T U�U o      �� 0 y  �  K VWV r   " )XYX I  " '�Z�
� .sysontocTEXT       shorZ m   " #�� 
�  Y o      �� 0 carriage_return  W [� [ Y   * m\��]^��\ Q   4 h_`a_ k   7 Ubb cdc r   7 =efe 4   7 ;��g
�� 
cha g o   9 :���� 0 i  f o      ���� 0 	this_char  d h��h Z   > Uij����i =  > Aklk o   > ?���� 0 	this_char  l o   ? @���� 0 carriage_return  j k   D Qmm non r   D Lpqp 4   D H��r
�� 
cinsr o   F G���� 0 i  q 1   H K��
�� 
seleo s��s L   M Qtt l  M Pu����u \   M Pvwv o   M N���� 0 i  w m   N O���� ��  ��  ��  ��  ��  ��  ` R      ������
�� .ascrerr ****      � ****��  ��  a k   ] hxx yzy r   ] e{|{ 4   ] a��}
�� 
cins} l  _ `~����~ o   _ `���� 0 i  ��  ��  | 1   a d��
�� 
selez �� L   f h�� o   f g���� 0 i  ��  �� 0 i  ] o   - .���� 0 y  ^ m   . /����  �����  �   H 4   ���
�� 
docu� m    ���� F m     ��
�� misccura�       ����������  � ������������ 0 display_message  �� 0 script_help  �� 0 replace_and_select  �� 0 eol  
�� .aevtoappnull  �   � ****� �� ����������� 0 display_message  ��  ��  �  �  ��� � ����������� � ���
�� 
btns
�� 
dflt�� 
�� .sysodlogaskr        TEXT
�� 
rslt
�� 
bhit�� 0 script_help  ��  ����lv�l� O��,�  )�k+ Y h� �� ����������� 0 script_help  �� ����� �  ���� 0 this_anchor  ��  � ���� 0 this_anchor  �  ����� ������
�� .miscactvnull��� ��� null
�� 
sstr
�� .helpsancnull���    obj ��  ��  �� %g� !� *j O ���l W X  hUV� ������������ 0 replace_and_select  �� ����� �  ������ 0 target_string  �� 0 replacement_string  ��  � ���������� 0 target_string  �� 0 replacement_string  �� 0 	this_text  �� 0 this_offset  � 
��������������������
�� misccura
�� 
docu
�� 
pcnt
�� 
psof
�� 
psin�� 
�� .sysooffslong    ��� null
�� 
cha 
�� 
leng
�� 
sele�� G� C*�k/ ;*�,E�O*��� E�O�j "*[�\[Z�\Z���,k2*�,FO�*�,�,FY hUU� ��D���������� 0 eol  ��  ��  � ������������ 0 x  �� 0 y  �� 0 carriage_return  �� 0 i  �� 0 	this_char  � ������������������������
�� misccura
�� 
docu
�� 
sele
�� 
prng
�� 
cobj�� 

�� .sysontocTEXT       shor��  ���
�� 
cha 
�� 
cins��  ��  �� p� l*�k/ d*�,�,E[�k/EQ�Z[�l/EQ�ZO�j E�O B��kh  #*�/E�O��  *�/*�,FO�kY hW X 
 *�/*�,FO�[OY��UU� �����������
�� .aevtoappnull  �   � ****� k     ���  ����  ��  ��  �  � ������������ (�� 1 9�� B���� N�� ^ l | � ��������� �����
�� misccura
�� .miscactvnull��� ��� null
�� 
docu
�� 
sele
�� 
pcnt�� 0 selected_text  �� 0 display_message  �� 0 target_string  
�� 
ret �� 0 script_text  
�� 
tab �� 0 eol  
�� .sedschksnull���    obj ��  ��  �� 0 replacement_string  �� 0 replace_and_select  �� �� �*j O*�k/ �*�,�,E�O��  )j+ O�Y hO�E�O��%E�O��%�%E�O��%a %�%�%E�O��%a %�%E�O��%a %�%�%E�O��%a %�%E�O�a %E�O)j+ O�*�,�,FO 
*j W X  hOa E` O)�_ l+ O 
*j W X  hUUascr  ��ޭ
FasdUAS 1.101.10   ��   ��    k             l      ��  ��    
Message and Return

Copyright � 2001�2007 Apple Inc.

You may incorporate this Apple sample code into your program(s) without
restriction.  This Apple sample code has been provided "AS IS" and the
responsibility for its operation is yours.  You are not permitted to
redistribute this Apple sample code as "Apple sample code" after having
made changes.  If you're going to redistribute the code, we require
that you make it clear that the code was descended from Apple sample
code, but that you've made changes.
     � 	 	  
 M e s s a g e   a n d   R e t u r n 
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
 l     ��������  ��  ��        l     ����  r         I    �� ��
�� .sysontocTEXT       shor  m     ���� ��    o      ���� 0 cr CR��  ��        l    ����  r        I   �� ��
�� .sysontocTEXT       shor  m    	���� 
��    o      ���� 0 nl NL��  ��        l     ��������  ��  ��        l  B ����  O   B    O   A     k   @ ! !  " # " r     $ % $ m     & & � ' '  - - X X X X % l      (���� ( o      ���� 0 target_string  ��  ��   #  ) * ) l   ��������  ��  ��   *  + , + r    & - . - n    $ / 0 / 1   " $��
�� 
pcnt 0 1    "��
�� 
sele . l      1���� 1 o      ���� 0 selected_text  ��  ��   ,  2 3 2 l  ' '��������  ��  ��   3  4 5 4 Z   '
 6 7�� 8 6 =  ' * 9 : 9 l  ' ( ;���� ; o   ' (���� 0 selected_text  ��  ��   : m   ( ) < < � = =   7 k   - � > >  ? @ ? r   - 0 A B A m   - . C C � D D   B l      E���� E o      ���� 0 script_text  ��  ��   @  F G F r   1 8 H I H b   1 6 J K J b   1 4 L M L l  1 2 N���� N o   1 2���� 0 script_text  ��  ��   M m   2 3 O O � P P  t r y K o   4 5���� 0 cr CR I l      Q���� Q o      ���� 0 script_text  ��  ��   G  R S R r   9 D T U T b   9 B V W V b   9 @ X Y X b   9 > Z [ Z l  9 : \���� \ o   9 :���� 0 script_text  ��  ��   [ 1   : =��
�� 
tab  Y l  > ? ]���� ] o   > ?���� 0 target_string  ��  ��   W o   @ A���� 0 cr CR U l      ^���� ^ o      ���� 0 script_text  ��  ��   S  _ ` _ r   E N a b a b   E L c d c b   E J e f e l  E F g���� g o   E F���� 0 script_text  ��  ��   f m   F I h h � i i d o n   e r r o r   t h e   e r r o r _ m e s s a g e   n u m b e r   t h e   e r r o r _ n u m b e r d o   J K���� 0 cr CR b l      j���� j o      ���� 0 script_text  ��  ��   `  k l k r   O \ m n m b   O Z o p o b   O X q r q b   O T s t s l  O P u���� u o   O P���� 0 script_text  ��  ��   t 1   P S��
�� 
tab  r m   T W v v � w w � s e t   t h e   e r r o r _ t e x t   t o   " E r r o r :   "   &   t h e   e r r o r _ n u m b e r   &   " .   "   &   t h e   e r r o r _ m e s s a g e p o   X Y���� 0 cr CR n l      x���� x o      ���� 0 script_text  ��  ��   l  y z y r   ] j { | { b   ] h } ~ } b   ] f  �  b   ] b � � � l  ] ^ ����� � o   ] ^���� 0 script_text  ��  ��   � 1   ^ a��
�� 
tab  � m   b e � � � � � z d i s p l a y   d i a l o g   t h e   e r r o r _ t e x t   b u t t o n s   { " O K " }   d e f a u l t   b u t t o n   1 ~ o   f g���� 0 cr CR | l      ����� � o      ���� 0 script_text  ��  ��   z  � � � r   k x � � � b   k v � � � b   k t � � � b   k p � � � l  k l ����� � o   k l���� 0 script_text  ��  ��   � 1   l o��
�� 
tab  � m   p s � � � � � * r e t u r n   t h e   e r r o r _ t e x t � o   t u���� 0 cr CR � l      ����� � o      ���� 0 script_text  ��  ��   �  � � � r   y � � � � b   y � � � � b   y ~ � � � l  y z ����� � o   y z���� 0 script_text  ��  ��   � m   z } � � � � �  e n d   t r y � o   ~ ���� 0 cr CR � l      ����� � o      ���� 0 script_text  ��  ��   �  ��� � r   � � � � � m   � � � � � � � , - -   i n s e r t   a c t i o n s   h e r e � l      ����� � o      ���� 0 replacement_string  ��  ��  ��  ��   8 k   �
 � �  � � � r   � � � � � m   � � � � � � �   � l      ����� � o      ���� 0 script_text  ��  ��   �  � � � r   � � � � � b   � � � � � b   � � � � � l  � � ����� � o   � ����� 0 script_text  ��  ��   � m   � � � � � � �  t r y � o   � ����� 0 cr CR � l      ����� � o      ���� 0 script_text  ��  ��   �  � � � Z   � � � ��� � � E  � � � � � J   � � � �  � � � o   � ����� 0 cr CR �  ��� � o   � ����� 0 nl NL��   � n   � � � � � 4  � ��� �
�� 
cha  � m   � ������� � o   � ����� 0 selected_text   � r   � � � � � b   � � � � � b   � � � � � l  � � ����� � o   � ����� 0 script_text  ��  ��   � 1   � ���
�� 
tab  � l  � � ����� � o   � ����� 0 selected_text  ��  ��   � l      ���� � o      �~�~ 0 script_text  ��  �  ��   � r   � � � � � b   � � � � � b   � � � � � b   � � � � � l  � � ��}�| � o   � ��{�{ 0 script_text  �}  �|   � 1   � ��z
�z 
tab  � l  � � ��y�x � o   � ��w�w 0 selected_text  �y  �x   � o   � ��v�v 0 cr CR � l      ��u�t � o      �s�s 0 script_text  �u  �t   �  � � � r   � � � � � b   � � � � � b   � � � � � l  � � ��r�q � o   � ��p�p 0 script_text  �r  �q   � m   � � � � � � � d o n   e r r o r   t h e   e r r o r _ m e s s a g e   n u m b e r   t h e   e r r o r _ n u m b e r � o   � ��o�o 0 cr CR � l      ��n�m � o      �l�l 0 script_text  �n  �m   �  � � � r   � � � � � b   � � � � � b   � � � � � b   � � � � � l  � � ��k�j � o   � ��i�i 0 script_text  �k  �j   � 1   � ��h
�h 
tab  � m   � � � � � � � � s e t   t h e   e r r o r _ t e x t   t o   " E r r o r :   "   &   t h e   e r r o r _ n u m b e r   &   " .   "   &   t h e   e r r o r _ m e s s a g e � o   � ��g�g 0 cr CR � l      ��f�e � o      �d�d 0 script_text  �f  �e   �  � � � r   � � � � � b   � � � � � b   � � � � � b   � � �  � l  � ��c�b o   � ��a�a 0 script_text  �c  �b    1   � ��`
�` 
tab  � m   � � � z d i s p l a y   d i a l o g   t h e   e r r o r _ t e x t   b u t t o n s   { " O K " }   d e f a u l t   b u t t o n   1 � o   � ��_�_ 0 cr CR � l     �^�] o      �\�\ 0 script_text  �^  �]   �  r   � � b   � �	
	 b   � � b   � � l  � ��[�Z o   � ��Y�Y 0 script_text  �[  �Z   1   � ��X
�X 
tab  m   � � � * r e t u r n   t h e   e r r o r _ t e x t
 o   � ��W�W 0 cr CR l     �V�U o      �T�T 0 script_text  �V  �U    r   � b   �  b   � � b   � � l  � ��S�R o   � ��Q�Q 0 script_text  �S  �R   m   � � �  e n d   t r y l  � � �P�O  o   � ��N�N 0 target_string  �P  �O   o   � ��M�M 0 cr CR l     !�L�K! o      �J�J 0 script_text  �L  �K   "�I" r  
#$# m  %% �&&  $ l     '�H�G' o      �F�F 0 replacement_string  �H  �G  �I   5 ()( l �E�D�C�E  �D  �C  ) *+* r  ,-, o  �B�B 0 script_text  - n      ./. 1  �A
�A 
pcnt/ 1  �@
�@ 
sele+ 010 l �?�>�=�?  �>  �=  1 232 Q  $45�<4 I �;�:�9
�; .sedschksnull���    obj �:  �9  5 R      �8�7�6
�8 .ascrerr ****      � ****�7  �6  �<  3 676 l %%�5�4�3�5  �4  �3  7 898 n %.:;: I  &.�2<�1�2 0 replace_and_select  < =>= o  &'�0�0 0 target_string  > ?�/? o  '*�.�. 0 replacement_string  �/  �1  ;  f  %&9 @A@ l //�-�,�+�-  �,  �+  A B�*B Q  /@CD�)C I 27�(�'�&
�( .sedschksnull���    obj �'  �&  D R      �%�$�#
�% .ascrerr ****      � ****�$  �#  �)  �*     4   �"E
�" 
docuE m    �!�!   m    FF�                                                                                  ToyS   alis    �  Leopard9A409Int            �<H+    H�Script Editor.app                                                �p����        ����  	                AppleScript     �<cr      ��j      H�   �  :Leopard9A409Int:Applications:AppleScript:Script Editor.app  $  S c r i p t   E d i t o r . a p p     L e o p a r d 9 A 4 0 9 I n t  *Applications/AppleScript/Script Editor.app  / ��  ��  ��    GHG l     � ���   �  �  H I�I i     JKJ I      �L�� 0 replace_and_select  L MNM o      �� 0 target_string  N O�O o      �� 0 replacement_string  �  �  K O     FPQP O    ERSR k    DTT UVU r    WXW l   Y��Y 1    �
� 
pcnt�  �  X o      �� 0 	this_text  V Z[Z r    \]\ l   ^��^ I   ��_
� .sysooffslong    ��� null�  _ �`a
� 
psof` l   b��b o    �� 0 target_string  �  �  a �c�

� 
psinc o    �	�	 0 	this_text  �
  �  �  ] o      �� 0 this_offset  [ d�d Z    Def��e >    ghg o    �� 0 this_offset  h m    ��  f k   # @ii jkj r   # 8lml 7  # 4�no
� 
cha n o   ( *�� 0 this_offset  o l  + 3p� ��p \   + 3qrq [   , 1sts o   , -���� 0 this_offset  t l  - 0u����u n   - 0vwv 1   . 0��
�� 
lengw l  - .x����x o   - .���� 0 target_string  ��  ��  ��  ��  r m   1 2���� �   ��  m 1   4 7��
�� 
selek y��y r   9 @z{z l  9 :|����| o   9 :���� 0 replacement_string  ��  ��  { l     }����} n      ~~ 1   = ?��
�� 
pcnt l  : =������ 1   : =��
�� 
sele��  ��  ��  ��  ��  �  �  �  S l   ������ 4   ���
�� 
docu� m    ���� ��  ��  Q m     ���                                                                                  ToyS   alis    �  Leopard9A409Int            �<H+    H�Script Editor.app                                                �p����        ����  	                AppleScript     �<cr      ��j      H�   �  :Leopard9A409Int:Applications:AppleScript:Script Editor.app  $  S c r i p t   E d i t o r . a p p     L e o p a r d 9 A 4 0 9 I n t  *Applications/AppleScript/Script Editor.app  / ��  �       �������  � ������ 0 replace_and_select  
�� .aevtoappnull  �   � ****� ��K���������� 0 replace_and_select  �� ����� �  ������ 0 target_string  �� 0 replacement_string  ��  � ���������� 0 target_string  �� 0 replacement_string  �� 0 	this_text  �� 0 this_offset  � 
�������������������
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
sele�� G� C*�k/ ;*�,E�O*��� E�O�j "*[�\[Z�\Z���,k2*�,FO�*�,�,FY hUU� �����������
�� .aevtoappnull  �   � ****� k    B��  ��  ��  ����  ��  ��  �  � %����������F�� &�������� < C�� O�� h v � � � ��� � ��� � �%���������� 
�� .sysontocTEXT       shor�� 0 cr CR�� 
�� 0 nl NL
�� 
docu�� 0 target_string  
�� 
sele
�� 
pcnt�� 0 selected_text  �� 0 script_text  
�� 
tab �� 0 replacement_string  
�� 
cha 
�� .sedschksnull���    obj ��  ��  �� 0 replace_and_select  ��C�j E�O�j E�O�/*�k/'�E�O*�,�,E�O��  b�E�O��%�%E�O�_ %�%�%E�O�a %�%E�O�_ %a %�%E�O�_ %a %�%E�O�_ %a %�%E�O�a %�%E�Oa E` Y a E�O�a %�%E�O��lv�a i/ �_ %�%E�Y �_ %�%�%E�O�a %�%E�O�_ %a %�%E�O�_ %a %�%E�O�_ %a %�%E�O�a %�%�%E�Oa  E` O�*�,�,FO 
*j !W X " #hO)�_ l+ $O 
*j !W X " #hUU ascr  ��ޭ
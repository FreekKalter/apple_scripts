FasdUAS 1.101.10   ��   ��    k             l      ��  ��    � �
	Author: 		Freek Kalter
	Date:			01-03-2010
	Description:	This script syncs the playlist Phone_music with my phone. The phone is recongized by its name when connected. The script is triggered by a watcpath in launchd.
     � 	 	� 
 	 A u t h o r :   	 	 F r e e k   K a l t e r 
 	 D a t e : 	 	 	 0 1 - 0 3 - 2 0 1 0 
 	 D e s c r i p t i o n : 	 T h i s   s c r i p t   s y n c s   t h e   p l a y l i s t   P h o n e _ m u s i c   w i t h   m y   p h o n e .   T h e   p h o n e   i s   r e c o n g i z e d   b y   i t s   n a m e   w h e n   c o n n e c t e d .   T h e   s c r i p t   i s   t r i g g e r e d   b y   a   w a t c p a t h   i n   l a u n c h d . 
   
  
 l     ��������  ��  ��        i         I     ��  
�� .facofgetnull���     alis  o      ���� 0 this_folder    �� ��
�� 
flst  o      ���� 0 added_items  ��    k     }       r     
    l     ����  I    �� ��
�� .sysoloadscpt        file  4     �� 
�� 
file  m       �   r M a c : U s e r s : f r e e k k a l t e r : L i b r a r y : S c r i p t s : m u s i c _ s y n c _ l i b . s c p t��  ��  ��    o      ���� 0 sync_lib        r         m     ! ! � " "  D E S I R E   o      ���� 0 mobile_name     # $ # O    _ % & % k    ^ ' '  ( ) ( I   �� *��
�� .sysodelanull��� ��� nmbr * m    ���� ��   )  +�� + Z    ^ , -���� , I   !�� .��
�� .coredoexbool        obj  . 4    �� /
�� 
cdis / m     0 0 � 1 1  D E S I R E��   - Z   $ Z 2 3���� 2 I  $ ,�� 4��
�� .coredoexbool        obj  4 4   $ (�� 5
�� 
cdis 5 o   & '���� 0 mobile_name  ��   3 Z   / V 6 7���� 6 l  / : 8���� 8 I  / :�� 9��
�� .coredoexbool        obj  9 n   / 6 : ; : 4   3 6�� <
�� 
cfol < m   4 5 = = � > > 
 M u s i c ; 4   / 3�� ?
�� 
cdis ? o   1 2���� 0 mobile_name  ��  ��  ��   7 k   = R @ @  A B A r   = F C D C n   = D E F E 4   A D�� G
�� 
cfol G m   B C H H � I I 
 M u s i c F 4   = A�� J
�� 
cdis J o   ? @���� 0 mobile_name   D o      ���� 0 	thefolder   B  K�� K O  G R L M L I   K Q�� N���� 0 do_sync   N  O�� O o   L M���� 0 	thefolder  ��  ��   M o   G H���� 0 sync_lib  ��  ��  ��  ��  ��  ��  ��  ��   & m     P P�                                                                                  MACS  alis    V  Mac                        �jH+    +
Finder.app                                                       ��Ƙh        ����  	                CoreServices    �[�      ƘK�      +   �   �  *Mac:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p    M a c  &System/Library/CoreServices/Finder.app  / ��   $  Q R Q r   ` k S T S l  ` i U���� U I  ` i�� V W
�� .earsffdralis        afdr V m   ` a��
�� appfegfp W �� X��
�� 
rtyp X m   b e��
�� 
utxt��  ��  ��   T o      ���� 0 	front_app   R  Y�� Y O  l } Z [ Z I  u |�� \��
�� .sysodlogaskr        TEXT \ m   u x ] ] � ^ ^   p h o n e   s y n c   k l a a r��   [ 4   l r�� _
�� 
capp _ o   p q���� 0 	front_app  ��     `�� ` l     ��������  ��  ��  ��       �� a b��   a ��
�� .facofgetnull���     alis b �� ���� c d��
�� .facofgetnull���     alis�� 0 this_folder  �� ������
�� 
flst�� 0 added_items  ��   c �������������� 0 this_folder  �� 0 added_items  �� 0 sync_lib  �� 0 mobile_name  �� 0 	thefolder  �� 0 	front_app   d �� �� ! P������ 0���� = H������������ ]��
�� 
file
�� .sysoloadscpt        file�� 
�� .sysodelanull��� ��� nmbr
�� 
cdis
�� .coredoexbool        obj 
�� 
cfol�� 0 do_sync  
�� appfegfp
�� 
rtyp
�� 
utxt
�� .earsffdralis        afdr
�� 
capp
�� .sysodlogaskr        TEXT�� ~*��/j E�O�E�O� M�j O*��/j 	 ;*�/j 	 ,*�/��/j 	 *�/��/E�O� *�k+ UY hY hY hUO��a l E�O*a �/ 	a j Uascr  ��ޭ
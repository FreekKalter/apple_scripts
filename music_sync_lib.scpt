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
 j     �� �� 0 newline newLine  l     ����  I    �� ��
�� .sysontocTEXT       shor  m     ���� 
��  ��  ��        i    
    I      �� ���� 0 removepunct removePunct   ��  o      ���� 0 
thisstring 
thisString��  ��    k     ?       r         c         l     ����  n         2    ��
�� 
cha   o     ���� 0 
thisstring 
thisString��  ��    m    ��
�� 
list  o      ���� 0 thelist theList       r     ! " ! n     # $ # 4   	 �� %
�� 
cobj % m   
 ����  $ o    	���� 0 thelist theList " o      ���� 0 c      & ' & r     ( ) ( J    ����   ) o      ���� 0 
returnlist   '  * + * X    : ,�� - , Z   $ 5 . /���� . H   $ ( 0 0 E   $ ' 1 2 1 o   $ %���� 0 char   2 m   % & 3 3 � 4 4  : / s   + 1 5 6 5 n   + . 7 8 7 1   , .��
�� 
pcnt 8 o   + ,���� 0 char   6 l      9���� 9 n       : ; :  ;   / 0 ; o   . /���� 0 
returnlist  ��  ��  ��  ��  �� 0 char   - o    ���� 0 thelist theList +  <�� < L   ; ? = = c   ; > > ? > o   ; <���� 0 
returnlist   ? m   < =��
�� 
ctxt��     @ A @ l     ��������  ��  ��   A  B C B i     D E D I      �� F���� 0 do_sync   F  G�� G o      ���� 0 destination  ��  ��   E k     H H  I J I l     ��������  ��  ��   J  K�� K O     L M L k    N N  O P O l   ��������  ��  ��   P  Q�� Q Q    R S T R k    U U  V W V O    X Y X r     Z [ Z l    \���� \ e     ] ] n     ^ _ ^ 2    ��
�� 
cTrk _ 4    �� `
�� 
cUsP ` m     a a � b b  P h o n e _ p l a y l i s t��  ��   [ o      ���� 0 these_tracks   Y m     c c�                                                                                  hook  alis    2  Mac                        �jH+    3
iTunes.app                                                      �Ɓi�        ����  	                Applications    �[�      ƁM�      3  Mac:Applications:iTunes.app    
 i T u n e s . a p p    M a c  Applications/iTunes.app   / ��   W  d e d r     f g f J    ����   g o      ���� 0 itemlist   e  h i h r     j k j J    ����   k o      ���� 0 
album_list   i  l m l r     # n o n m     !��
�� boovfals o o      ���� 0 album_found   m  p q p X   $ � r�� s r k   4 � t t  u v u O   4 T w x w k   8 S y y  z { z r   8 M | } | b   8 K ~  ~ b   8 B � � � n  8 @ � � � I   9 @�� ����� 0 removepunct removePunct �  ��� � l  9 < ����� � n   9 < � � � 1   : <��
�� 
pArt � o   9 :���� 0 currenttrack currentTrack��  ��  ��  ��   �  f   8 9 � m   @ A � � � � �    -    n  B J � � � I   C J�� ����� 0 removepunct removePunct �  ��� � l  C F ����� � n   C F � � � 1   D F��
�� 
pAlb � o   C D���� 0 currenttrack currentTrack��  ��  ��  ��   �  f   B C } o      ���� 0 
foldername   {  ��� � r   N S � � � n   N Q � � � 1   O Q��
�� 
pLoc � o   N O���� 0 currenttrack currentTrack � o      ���� 0 tracklocation trackLocation��   x m   4 5 � ��                                                                                  hook  alis    2  Mac                        �jH+    3
iTunes.app                                                      �Ɓi�        ����  	                Applications    �[�      ƁM�      3  Mac:Applications:iTunes.app    
 i T u n e s . a p p    M a c  Applications/iTunes.app   / ��   v  � � � r   U X � � � m   U V��
�� boovfals � o      ���� 0 album_found   �  � � � l  Y Y��������  ��  ��   �  � � � X   Y � ��� � � Z   i � � ����� � =  i r � � � o   i j���� 0 
foldername   � n   j q � � � 4  n q�� �
�� 
cobj � m   o p����  � l  j n ����� � e   j n � � n   j n � � � 1   k m��
�� 
pcnt � o   j k���� 0 currentalbum currentAlbum��  ��   � k   u � � �  � � � s   u | � � � o   u v���� 0 tracklocation trackLocation � l      ����� � n       � � �  ;   z { � l  v z ����� � e   v z � � n   v z � � � 1   w y��
�� 
pcnt � o   v w���� 0 currentalbum currentAlbum��  ��  ��  ��   �  ��� � r   } � � � � m   } ~��
�� boovtrue � o      ���� 0 album_found  ��  ��  ��  �� 0 currentalbum currentAlbum � o   \ ]���� 0 
album_list   �  � � � l  � ���������  ��  ��   �  ��� � Z   � � � ����� � H   � � � � o   � ����� 0 album_found   � s   � � � � � l  � � ����� � N   � � � � J   � � � �  � � � o   � ����� 0 
foldername   �  ��� � o   � ����� 0 tracklocation trackLocation��  ��  ��   � l      ����� � n       � � �  ;   � � � o   � ����� 0 
album_list  ��  ��  ��  ��  ��  �� 0 currenttrack currentTrack s o   ' (���� 0 these_tracks   q  � � � l  � ���������  ��  ��   �  �� � X   � ��~ � � k   � � �  � � � r   � � � � � l  � � ��}�| � e   � � � � n   � � � � � 1   � ��{
�{ 
pcnt � o   � ��z�z 0 currentalbum currentAlbum�}  �|   � o      �y�y 	0 album   �  � � � r   � � � � � n   � � � � � 4  � ��x �
�x 
cobj � m   � ��w�w  � o   � ��v�v 	0 album   � o      �u�u 0 
foldername   �  � � � Z   � � � ��t � � H   � � � � l  � � ��s�r � I  � ��q ��p
�q .coredoexbool        obj  � n   � � � � � 4   � ��o �
�o 
cfol � o   � ��n�n 0 
foldername   � o   � ��m�m 0 destination  �p  �s  �r   � r   � � � � � I  � ��l�k �
�l .corecrel****      � null�k   � �j � �
�j 
kocl � m   � ��i
�i 
cfol � �h � �
�h 
insh � o   � ��g�g 0 destination   � �f ��e
�f 
prdt � K   � � � � �d ��c
�d 
pnam � o   � ��b�b 0 
foldername  �c  �e   � o      �a�a 0 destination_folder  �t   � r   � � � � � n   � � � � � 4   � ��` �
�` 
cfol � o   � ��_�_ 0 
foldername   � o   � ��^�^ 0 destination   � o      �]�] 0 destination_folder   �  � � � l  � ��\�[�Z�\  �[  �Z   �  � � � r   � �   n   � � 1   � ��Y
�Y 
rest o   � ��X�X 	0 album   o      �W�W 
0 tracks   �  I  � ��V�U
�V .ascrcmnt****      � **** l  � ��T�S I  � ��R�Q
�R .corecnte****       **** o   � ��P�P 
0 tracks  �Q  �T  �S  �U   	�O	 I  ��N

�N .coreclon****      � ****
 o   � �M�M 
0 tracks   �L�K
�L 
insh o  �J�J 0 destination_folder  �K  �O  �~ 0 currentalbum currentAlbum � o   � ��I�I 0 
album_list  �   S R      �H�G
�H .ascrerr ****      � **** o      �F�F 0 msg  �G   T I �E�D
�E .sysodlogaskr        TEXT o  �C�C 0 msg  �D  ��   M m     �                                                                                  MACS  alis    V  Mac                        �jH+    +
Finder.app                                                       ��Ƙh        ����  	                CoreServices    �[�      ƘK�      +   �   �  *Mac:System:Library:CoreServices:Finder.app   
 F i n d e r . a p p    M a c  &System/Library/CoreServices/Finder.app  / ��  ��   C  l     �B�A�@�B  �A  �@    l     �?�>�=�?  �>  �=    i     I      �<�;�< 0 	add_track   �: o      �9�9 0 currenttrack currentTrack�:  �;   l     �8�7�6�8  �7  �6    l     �5�4�3�5  �4  �3    l     �2�1�0�2  �1  �0    l     �/�.�-�/  �.  �-    !  l     �,�+�*�,  �+  �*  ! "#" l     �)�(�'�)  �(  �'  # $%$ l     �&�%�$�&  �%  �$  % &'& l     �#�"�!�#  �"  �!  ' ()( l      � *+�   *82				if not (folder foldername of folder_location exists) then					--display dialog "Nieuwe track: " & foldername & "-" & name of trackLocation & "      " & "oude foldernaam: " & thefolder as text					display dialog (count of itemlist)					if (count of itemlist) is greater than 0 then						with timeout of 1000 seconds							duplicate itemlist to thefolder						end timeout						set itemlist to {}						display dialog "itemlist weer leeg gemaakt"					end if					set thefolder to make new folder at folder_location with properties {name:foldername}				else					set thefolder to folder foldername of folder_location				end if								--check if file already exist in destination folder				--display dialog name of trackLocation & "   -   " & (name of every item of thefolder)				if name of trackLocation is not in (get the name of every item in thefolder) then					copy trackLocation to the end of itemlist					--display dialog name of trackLocation & "  -  " & (count of itemlist)				else					--display dialog name of currentTrack & " bestaat al"				end if							end repeat						try				with timeout of 1000 seconds --copying a big album can cost some time, applescriptrunner times out after 2 minutes by default					duplicate itemlist to thefolder				end timeout			on error errStr number errorNumber				if errorNumber is not equal to -15267 then --another check for "file already exist" but itemlist should not be containing items that already exist					error errStr number errorNumber				end if			end try			--delete everything else			(*			tell application "System Events" to set folder_content to the name of every item in folder_location			repeat with file_item in folder_content				if file_item is not in album_list then					delete item file_item of folder_location				end if			end repeat
			*)
			   + �,,d  	 	 	 	 i f   n o t   ( f o l d e r   f o l d e r n a m e   o f   f o l d e r _ l o c a t i o n   e x i s t s )   t h e n  	 	 	 	 	 - - d i s p l a y   d i a l o g   " N i e u w e   t r a c k :   "   &   f o l d e r n a m e   &   " - "   &   n a m e   o f   t r a c k L o c a t i o n   &   "             "   &   " o u d e   f o l d e r n a a m :   "   &   t h e f o l d e r   a s   t e x t  	 	 	 	 	 d i s p l a y   d i a l o g   ( c o u n t   o f   i t e m l i s t )  	 	 	 	 	 i f   ( c o u n t   o f   i t e m l i s t )   i s   g r e a t e r   t h a n   0   t h e n  	 	 	 	 	 	 w i t h   t i m e o u t   o f   1 0 0 0   s e c o n d s  	 	 	 	 	 	 	 d u p l i c a t e   i t e m l i s t   t o   t h e f o l d e r  	 	 	 	 	 	 e n d   t i m e o u t  	 	 	 	 	 	 s e t   i t e m l i s t   t o   { }  	 	 	 	 	 	 d i s p l a y   d i a l o g   " i t e m l i s t   w e e r   l e e g   g e m a a k t "  	 	 	 	 	 e n d   i f  	 	 	 	 	 s e t   t h e f o l d e r   t o   m a k e   n e w   f o l d e r   a t   f o l d e r _ l o c a t i o n   w i t h   p r o p e r t i e s   { n a m e : f o l d e r n a m e }  	 	 	 	 e l s e  	 	 	 	 	 s e t   t h e f o l d e r   t o   f o l d e r   f o l d e r n a m e   o f   f o l d e r _ l o c a t i o n  	 	 	 	 e n d   i f  	 	 	 	  	 	 	 	 - - c h e c k   i f   f i l e   a l r e a d y   e x i s t   i n   d e s t i n a t i o n   f o l d e r  	 	 	 	 - - d i s p l a y   d i a l o g   n a m e   o f   t r a c k L o c a t i o n   &   "       -       "   &   ( n a m e   o f   e v e r y   i t e m   o f   t h e f o l d e r )  	 	 	 	 i f   n a m e   o f   t r a c k L o c a t i o n   i s   n o t   i n   ( g e t   t h e   n a m e   o f   e v e r y   i t e m   i n   t h e f o l d e r )   t h e n  	 	 	 	 	 c o p y   t r a c k L o c a t i o n   t o   t h e   e n d   o f   i t e m l i s t  	 	 	 	 	 - - d i s p l a y   d i a l o g   n a m e   o f   t r a c k L o c a t i o n   &   "     -     "   &   ( c o u n t   o f   i t e m l i s t )  	 	 	 	 e l s e  	 	 	 	 	 - - d i s p l a y   d i a l o g   n a m e   o f   c u r r e n t T r a c k   &   "   b e s t a a t   a l "  	 	 	 	 e n d   i f  	 	 	 	  	 	 	 e n d   r e p e a t  	 	 	  	 	 	 t r y  	 	 	 	 w i t h   t i m e o u t   o f   1 0 0 0   s e c o n d s   - - c o p y i n g   a   b i g   a l b u m   c a n   c o s t   s o m e   t i m e ,   a p p l e s c r i p t r u n n e r   t i m e s   o u t   a f t e r   2   m i n u t e s   b y   d e f a u l t  	 	 	 	 	 d u p l i c a t e   i t e m l i s t   t o   t h e f o l d e r  	 	 	 	 e n d   t i m e o u t  	 	 	 o n   e r r o r   e r r S t r   n u m b e r   e r r o r N u m b e r  	 	 	 	 i f   e r r o r N u m b e r   i s   n o t   e q u a l   t o   - 1 5 2 6 7   t h e n   - - a n o t h e r   c h e c k   f o r   " f i l e   a l r e a d y   e x i s t "   b u t   i t e m l i s t   s h o u l d   n o t   b e   c o n t a i n i n g   i t e m s   t h a t   a l r e a d y   e x i s t  	 	 	 	 	 e r r o r   e r r S t r   n u m b e r   e r r o r N u m b e r  	 	 	 	 e n d   i f  	 	 	 e n d   t r y  	 	 	 - - d e l e t e   e v e r y t h i n g   e l s e  	 	 	 ( *  	 	 	 t e l l   a p p l i c a t i o n   " S y s t e m   E v e n t s "   t o   s e t   f o l d e r _ c o n t e n t   t o   t h e   n a m e   o f   e v e r y   i t e m   i n   f o l d e r _ l o c a t i o n  	 	 	 r e p e a t   w i t h   f i l e _ i t e m   i n   f o l d e r _ c o n t e n t  	 	 	 	 i f   f i l e _ i t e m   i s   n o t   i n   a l b u m _ l i s t   t h e n  	 	 	 	 	 d e l e t e   i t e m   f i l e _ i t e m   o f   f o l d e r _ l o c a t i o n  	 	 	 	 e n d   i f  	 	 	 e n d   r e p e a t 
 	 	 	 * ) 
 	 	 	) -�- l     ����  �  �  �       �./012�  . ����� 0 newline newLine� 0 removepunct removePunct� 0 do_sync  � 0 	add_track  / �33  
0 � ��45�� 0 removepunct removePunct� �6� 6  �� 0 
thisstring 
thisString�  4 ������ 0 
thisstring 
thisString� 0 thelist theList� 0 c  � 0 
returnlist  � 0 char  5 ��
�	�� 3��
� 
cha 
�
 
list
�	 
cobj
� 
kocl
� .corecnte****       ****
� 
pcnt
� 
ctxt� @��-�&E�O��l/E�OjvE�O %�[��l kh �� ��,�6GY h[OY��O��&1 � E��78�� 0 do_sync  � � 9�  9  ���� 0 destination  �  7 ���������������������������� 0 destination  �� 0 these_tracks  �� 0 itemlist  �� 0 
album_list  �� 0 album_found  �� 0 currenttrack currentTrack�� 0 
foldername  �� 0 tracklocation trackLocation�� 0 currentalbum currentAlbum�� 	0 album  �� 0 destination_folder  �� 
0 tracks  �� 0 msg  8  c�� a������������ ���������������������������������
�� 
cUsP
�� 
cTrk
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
pArt�� 0 removepunct removePunct
�� 
pAlb
�� 
pLoc
�� 
pcnt
�� 
cfol
�� .coredoexbool        obj 
�� 
insh
�� 
prdt
�� 
pnam�� 
�� .corecrel****      � null
�� 
rest
�� .ascrcmnt****      � ****
�� .coreclon****      � ****�� 0 msg  ��  
�� .sysodlogaskr        TEXT��� *��/�-EE�UOjvE�OjvE�OfE�O {�[��l kh � )��,k+ 	�%)��,k+ 	%E�O��,E�UOfE�O /�[��l kh ���,E�k/  ���,E6GOeE�Y h[OY��O� ��lv�6GY h[OY��O k�[��l kh ��,EE�O��k/E�O��/j  *��a �a a �la  E�Y ��/E�O�a ,E�O�j j O�a �l [OY��W X  �j U2 ������:;���� 0 	add_track  �� ��<�� <  ���� 0 currenttrack currentTrack��  : ���� 0 currenttrack currentTrack;  �� h ascr  ��ޭ
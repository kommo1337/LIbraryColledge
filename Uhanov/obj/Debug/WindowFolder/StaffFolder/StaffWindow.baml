   M S B A M L   `   `   `  ����A  =Uhanov, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null[2clr-namespace:LibraryBook.WindowFolder.StaffFolder$LibraryBook.WindowFolder.StaffFolder  5   	   6    0LibraryBook.WindowFolder.StaffFolder.StaffWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   Dlocal2clr-namespace:LibraryBook.WindowFolder.StaffFolder     5   	     � Title$  AdminWindow��5   	   $	��850��5	   	   $
��1600��6   $	��850��5
   	   $
��1600��6   $	��850��5   	   $
��1600��6   ���#d1eeea.��5      � .+�5   
   � $��1��6    � ColumnDefinitions 5      �� 5      $	��280 �6#   �� 5      .+�5      �  � RowDefinitions 5      �� 5      $	��150 �6$   �� 5      .+�5      �� �� 5      $��1��6   .+�5      �� -   5         ��Name$ 
ListReader��5      $
��Left=�5   !   $��
10,10,0,10q�5   :   $	��270��6N   .��5      ��  �� Orientation$ 
Horizontal=�6%   $	��150��6>   .+�5       �� $%��Список читателей��6(      ButtonTextBlock#���   6@   $	��150��6j   5!      5"      �� 5$      -   5        $ 	AddReader��5$      $
��Left=�5%   !   $��
10,10,0,10q�5&   9   $	��270��6M   .��5'      �� $ 
Horizontal=�6%   $	��160��6>   .+�5(      �� $'��!Добавить читателя��6(   #���   6A   5)      5*      �� 5+      -   5        $ AddCardReader��5+      $
��Left=�5,   !   $��
10,10,0,10q�5-   =   $	��270��6Q   .��5.      �� $ 
Horizontal=�6%   $	��160��6>   .+�5/      �� $#��Список карточек��6(   #���   6?   50      51      �� 52      -   5        $ ListCardReader��52      $
��Left=�53   !   $��
10,10,0,10q�54   >   $	��270��6R   .��55      �� $ 
Horizontal=�6%   $	��160��6>   .+�56      �� $'��!Добавить карточек��6(   #���   6A   57      58      59      �� 5:      -   5        $ ExitBtn��5:      $	��260��6*   $
��Left=�5;      $��Bottom=�5<      $��1��64   .��5>      �� $ 
Horizontal=�6!   $��70��6:   .+�5?      �� $��
Выйти��6$   #���   61   5@      5A      5B      � 5D      $��1��6    5E      �� 5F      $��70 �6$   �� 5G      .+�5I      ��   NormalLabel#���  6   ��5J      ��  �� ElementName$ 	MainFrame�� �� Path$ Content.Title� � 5L      -   5        $��	MainFrame��5L   %   $��1��6   $��10q�66     � NavigationUIVisibility$ Hidden=�5M      5O      5P      5Q      5R      
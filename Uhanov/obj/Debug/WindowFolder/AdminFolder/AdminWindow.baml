   M S B A M L   `   `   `  ����A  =Uhanov, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null[2clr-namespace:LibraryBook.WindowFolder.AdminFolder$LibraryBook.WindowFolder.AdminFolder  5   	   6    0LibraryBook.WindowFolder.AdminFolder.AdminWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   Dlocal2clr-namespace:LibraryBook.WindowFolder.AdminFolder     5   	     � Title$  AdminWindow��5   	   $	��750��5	   	   $
��1200��6   $	��750��5
   	   $
��1200��6   $	��750��5   	   $
��1200��6   ���#d1eeea.��5      � .+�5   
   � $��1��6    � ColumnDefinitions 5      �� 5      $	��280 �6#   �� 5      .+�5      �  � RowDefinitions 5      �� 5      $	��150 �6$   �� 5      .+�5      �� $/��)/Uhanov;component/ResourceFolder/Logo.png��5      �� 5      $��1��6   .+�5      �� -   5         ��Name$ ListUser��5      $
��Left=�5   !   $��
10,10,0,10q�5   8   $	��270��6L   .��5      ��  �� Orientation$ 
Horizontal=�6%   $	��190��6>   .+�5       �� $-��'Список пользователей��6(      ButtonTextBlock#���   6D   5!      5"      �� 5$      -   5        $ AddUser��5$      $
��Left=�5%   !   $��
10,10,0,10q�5&   7   $	��270��6K   .��5'      �� $ 
Horizontal=�6%   $	��190��6>   .+�5(      �� $/��)Добавить пользователя��6(   #���   6E   5)      5*      5+      �� 5,      -   5        $ ExitBtn��5,      $	��260��6*   $
��Left=�5-      $��Bottom=�5.      $��1��64   .��50      �� $ 
Horizontal=�6!   $��70��6:   .+�51      �� $��
Выйти��6$   #���   61   52      53      54      � 56      $��1��6    57      �� 58      $��70 �6$   �� 59      .+�5;      ��   NormalLabel#���  6   ��5<      ��  �� ElementName$ 	MainFrame�� �� Path$ Content.Title� � 5>      -   5        $��	MainFrame��5>   %   $��1��6   $��10q�66     � NavigationUIVisibility$ Hidden=�5?      5A      5B      5C      5D      
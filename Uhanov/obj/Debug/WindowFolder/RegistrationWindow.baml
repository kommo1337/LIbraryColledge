   M S B A M L   `   `   `  ����A  =Uhanov, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:LibraryBook.WindowFolderLibraryBook.WindowFolder  5   	   1    +LibraryBook.WindowFolder.RegistrationWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   8local&clr-namespace:LibraryBook.WindowFolder     5   	     � Title$  Регистрация��5   	   $	��470��5	   	   $	��400��6   $	��470��5
   	   $	��400��6   $	��470��5   	   $	��400��6    � WindowStartupLocation$ CenterScreen=�5   	   ���#d1eeea.��5      �  � ColumnDefinitions 5   
   �� 5      $��10 �6   �� 5      $	��170 �6   �� 5      �� 5      $��10 �6    � RowDefinitions 5   
   �� 5      $��10 �6   �� 5      $	��100 �6   �� 5      $��10 �6   �� 5      $��70 �6   �� 5      $��10 �6   �� 5      $��70 �6   �� 5      $��10 �6   �� 5      $��70 �6   �� 5      $��10 �6   �� 5      $��70 �6   �� 5       $��10 �6   .+�5"   
   ��    	LogoImage#���   6   $��1��5#      $��1��6    $	��170��5$      $	��100��6   $��0q�6)   �� 5&   
   $��Регистрация��6   $��1��6&   $��2��63     	LogoLabel#���  5'      �� 5)   
   $��
Логин��6   $��3��6    $��1��6-     NormalLabel#���  5*      $��Center=�5+      �� 5,   
   -   5         ��Name$ LoginTb��5,      $��3��6#   $��2��60   $
��auto��6@   �� 5.   
   $��Пароль��6   $��5��6!   $��1��6.   #���  5/      $��Center=�50      G� 51   
   -   5         G�Name$ PasswordPsb��51      $��5��6+   $��2��68   �� 53   
   $%��Повторите пароль��6   $��7��6+   $��1��68   #���  54      G� 55   
   -   5        $ RepeatPasswordPsb��55      $��7��61   $��2��6>   �� 57   
   -   5         ��Name$ RegBtn��59      $*��$Зарегистрироваться��57      $��9��6.   $��2��6;   $��Center=�58      $��Center=�6.   59   !   �� 5:   
   -   5        $ ExitBtn��5<      $��
Выйти��5:      $��9��6!   $��1��6.   $��Center=�5;      $��Center=�6.   5<   "   5>      5?      
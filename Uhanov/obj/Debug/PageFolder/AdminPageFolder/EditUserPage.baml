   M S B A M L   `   `   `  ����A  =Uhanov, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null_4clr-namespace:LibraryBook.PageFolder.AdminPageFolder&LibraryBook.PageFolder.AdminPageFolder  5      9    3LibraryBook.PageFolder.AdminPageFolder.EditUserPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Flocal4clr-namespace:LibraryBook.PageFolder.AdminPageFolder     5        N� Title$;  5Редактирование пользователя��5	       N� 
Background �#d1eeea.��5      �  � ColumnDefinitions 5   
   �� 5      $	��180 �6   �� 5      $	��120 �6   �� 5      $	��300 �6   �� 5      $	��200 �6    � RowDefinitions 5   
   �� 5      �� 5      $��70 �6   �� 5      $��10 �6   �� 5      $��70 �6   �� 5      $��10 �6   �� 5      $��70 �6   �� 5      $��10 �6   �� 5      $��80 �6   �� 5      .+�5   
   �� $��
Логин��6   $��1��6    $��1��5         NormalLabel#���   6   �� 5    
   -   5         ��Name$ LoginTB��5       $��1��5!      $��2��6   ��5"      �� *	LoginUser+�� 5$   
   $��Пароль��6   $��1��6!   $��3��5%      #���   6   �� 5&   
   -   5        $ PasswordPsb��5&      $��3��5'      $��2��6   ��5(      �� *PasswordUser+�� 5*   
   $��Роль��6   $��1��6   $��5��5+      #���   6   �� 5,   
   -   5         ��Name$ RoleCB��5,      $��5��5-      $��2��6    �� DisplayMemberPath$ NameRole��5/       �� SelectedValuePath$ IdRole��50      $
��Left=�51      $	��280��52      $��50��6    �� SelectedItem 5.      �� *Role+52      �� 54   
   -   5        	 ��Name$	 EditUserBtn��54      $	��270��56      $��2��57      $��7��6!   .��58      �� 
 �� Orientation$
 
Horizontal=�6   $	��201��62   $��37��6>   .+�59      �� $+��%Сохранить изменения��6     ButtonTextBlock#���  67   5:      5;      �� 5<   
   -   5        $	 BackBtn��5<      $	��120��5>      $��1��5?      $��7��6!   $��	0,10,0,10q�6.   .��5@      �� $
 
Horizontal=�6   $��60��62   $��37��6=   .+�5A      �� $��
Назад��6   #���  6)   5B      5C      5D      5E      
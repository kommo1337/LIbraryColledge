   M S B A M L   `   `   `  ����A  =Uhanov, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null_4clr-namespace:LibraryBook.PageFolder.AdminPageFolder&LibraryBook.PageFolder.AdminPageFolder  5      9    3LibraryBook.PageFolder.AdminPageFolder.UserListPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Flocal4clr-namespace:LibraryBook.PageFolder.AdminPageFolder     5        N� Title$-  'Список пользователей��5	       N� 
Background �#d1eeea.��5      �  � RowDefinitions 5   
   �� 5      $��70 �6   �� 5      .+�5   
   �� -   5         ��Name$ SearchTb��5      $��
Поиск��5      5      &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ 
ListUserDG��5         AutoGenerateColumns .     
IsReadOnly . ��. $��1��5       � ContextMenu 5      �� 5      -   5        $��BookCM��5      .@�5      m� -   5         m�Name$ EditM��5   7   $"��Редактирование��6   6F   �� 5       m� 5!      -   5        $ DeleteM��5!   0   $��Удалить��6   6A   5"      	   Columns	 5%      0  *System.Windows.Controls.DataGridTextColumn  5&      -   5        
dgTcIdUser��,  &System.Windows.Controls.DataGridColumn
   Header$
 	№ п/п��5'   %      Width5  /System.Windows.Controls.DataGridLengthConverter$	 150 5(   %   1  +System.Windows.Controls.DataGridBoundColumn   Binding 5)   %   �� *IdUser+  5+      -   5        dgTcLoginUser��$
 
Логин��5,   %   $	 200 5-   %    5.   %   �� *	LoginUser+  5/      -   5        dgTcPassword��$
 Пароль��50   %   $	 200 51   %    52   %   �� *PasswordUser+  53      -	   5        dgTcNameRoler��$
 Роль��54   %   $	 200 55   %    56   %   �� *Role.NameRole+59      5:      5;      
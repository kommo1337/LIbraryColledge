   M S B A M L   `   `   `  ����A  =Uhanov, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null_4clr-namespace:LibraryBook.PageFolder.StaffPageFolder&LibraryBook.PageFolder.StaffPageFolder  5      :    4LibraryBook.PageFolder.StaffPageFolder.AddReaderPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Flocal4clr-namespace:LibraryBook.PageFolder.StaffPageFolder     5        N� Title$+  %Добавление читателя��5	       N� 
Background �#d1eeea.��5      �  � ColumnDefinitions 5   
   �� 5      $��20 �6   �� 5      $	��190 �6   �� 5      $	��250 �6   �� 5      $��10 �6   �� 5      $	��190 �6   �� 5      $	��250 �6   �� 5      $��20 �6   �� 5      $	��300 �6   �� 5      $��10 �6    � RowDefinitions 5   
   �� 5      $��10 �6   �� 5      $��70 �6   �� 5      $��10 �6   �� 5      $��70 �6   �� 5      $��10 �6   �� 5      $��70 �6   �� 5      $��10 �6   �� 5       $��70 �6   �� 5!      $��10 �6   �� 5"      $��70 �6   �� 5#      $��10 �6   �� 5$      $��70 �6   �� 5%      $��10 �6   �� 5&      $��70 �6   �� 5'      $��10 �6   �� 5(      $��70 �6   �� 5)      .+�5,   
   �� $%��Уникальный номер��6   $��1��6+   $��1��5-         NormalLabel#���   6   �� 5.   
   -   5         ��Name$ UniqueNumberTb��5.      $��1��5/      $��2��6   �� 51   
   $��Фамилия��6   $��1��6"   $��3��52      #���   6   �� 53   
   -   5        $ 
LastNameTb��53      $��3��54      $��2��6   �� 56   
   $��Имя��6   $��1��6   $��5��57      #���   6   �� 58   
   -   5        $ FirstNameTb��58      $��5��59      $��2��6   �� 5;   
   $��Отчество��6   $��1��6#   $��7��5<      #���   6   �� 5=   
   -   5        $ MiddleNameTb��5=      $��7��5>      $��2��6   �� 5@   
   $��Дата рождения��6   $��1��6(   $��9��5A      #���   6   (  "System.Windows.Controls.DatePicker  5B   
   -   5          Name$ DateOfBirthDP��5B      $��9��5C      $��2��6   �� 5E   
   $#��Сотовый телефон��6   $��1��6*   $��11��5F      #���   6   �� 5G   
   -   5        $ NumberPhoneTb��5G      $��11��5H      $��2��6    �� 5J   
   $%��Домашний телефон��6   $��1��6+   $��13��5K      #���   6   �� 5L   
   -   5        $ HomeNumberPhoneTb��5L      $��13��5M      $��2��6    �� 5O   
   $��Регион��6   $��4��6!   $��1��5P      #���   6   �� 5Q   
   -   5         ��Name$ RegionCB��5Q      $��1��5R      $��5��6    �� DisplayMemberPath$ 
NameRegion��5T       �� SelectedValuePath$ IdRegion��5U      $
��Left=�5V      $	��230��5W      $��50��6   	 �� SelectedItem	 5S      �� *Region+5W      �� 5Y   
   $��
Город��6   $��4��6    $��3��5Z      #���   6   �� 5[   
   -	   5        $ CityCB��5[      $��3��5\      $��5��6   $ NameCity��5^      $ IdCity��5_      $
��Left=�5`      $	��230��5a      $��50��6   	 5]      �� *City+5a      �� 5c   
   $��
Улица��6   $��4��6    $��5��5d      #���   6   �� 5e   
   -
   5        $ StreetCB��5e      $��5��5f      $��5��6   $ 
NameStreet��5h      $ IdStreet��5i      $
��Left=�5j      $	��230��5k      $��50��6   	 5g      �� *Street+5k      �� 5m   
   $��Дом��6   $��4��6   $��7��5n      #���   6   �� 5o   
   -   5        $ HouseTb��5o      $��7��5p      $��5��6   �� 5r   
   $��Корпус��6   $��4��6!   $��9��5s      #���   6   �� 5t   
   -   5        $ 	HousingTb��5t      $��9��5u      $��5��6   �� 5w   
   $��Квартира��6   $��4��6#   $��11��5x      #���   6   �� 5y   
   -   5        $ FlatTb��5y      $��11��5z      $��5��6    �� 5|   
   -   5        
 ��Name$
 PhotoIm��5|      $��7��5}      $��8��6    $��2��5~   B   �� 5�   
   -   5         ��Name$ 
AddUserBtn��5�      $	��230��5�      $��5��5�      $��15��6!   .��5�      ��  �� Orientation$ 
Horizontal=�6   $	��201��62   $��37��6>   .+�5�      �� $/��)Добавить пользователя��6     ButtonTextBlock#���  69   $��28��6c   5�      5�      �� 5�   
   -   5        $ BackBtn��5�      $	��120��5�      $��2��5�      $��15��6!   $��	0,10,0,10q�6/   .��5�      �� $ 
Horizontal=�6   $��60��62   $��37��6=   .+�5�      �� $��
Назад��6   #���  6)   $��26��6S   5�      5�      �� 5�   
   -   5        $ AddPhotoUserBtn��5�      $	��230��5�      $��7��5�      $��11��6!   .��5�      �� $ 
Horizontal=�6   $	��133��62   $��37��6>   .+�5�      �� $!��Загрузить фото��6   #���  62   $��26��6\   5�      5�      5�      5�      
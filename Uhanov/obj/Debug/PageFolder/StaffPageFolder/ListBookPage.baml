   M S B A M L   `   `   `  ����A  =Uhanov, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null_4clr-namespace:LibraryBook.PageFolder.StaffPageFolder&LibraryBook.PageFolder.StaffPageFolder  5      9    3LibraryBook.PageFolder.StaffPageFolder.ListBookPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Flocal4clr-namespace:LibraryBook.PageFolder.StaffPageFolder     5        N� Title$'  !Список документов��5	       N� 
Background
 �����.��5      �  � RowDefinitions 5   
   �� 5      $��70 �6   �� 5      .+�5   
   �� -   5         ��Name$ SearchTb��5      5      &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ 	ListDocDG��5         AutoGenerateColumns .     
IsReadOnly . ��. $��1��5      $��20(�5       � ContextMenu 5      �� 5      -   5        $��DocCM��5      .@�5      m� -   5         m�Name$ EditM��5   7   $"��Редактирование��6   6F   �� 5      m� 5       -   5        $ DeleteM��5    0   $��Удалить��6   6A   5!      	   Columns	 5$      0  *System.Windows.Controls.DataGridTextColumn  5%      -   5        dgTcIdDocument��,  &System.Windows.Controls.DataGridColumn
   Header$
 	№ п/п��5&   -      Width5  /System.Windows.Controls.DataGridLengthConverter$	 110 5'   -   1  +System.Windows.Controls.DataGridBoundColumn   Binding 5(   -   �� *IdBook+  5*      -   5        dgTcLastName��$!
 Название книги��5+   -   $	 150 5,   -    5-   -   �� *
NameBook+  5/      -   5        dgTcFirstName��$
 
Город��50   -   $	 150 51   -    52   -   �� *City.NameCity+  54      -	   5        dgTcMiddleName��$
 Издатель��55   -   $	 150 56   -    57   -   �� *$"PublishingHouse.NamePublisherHouse+  59      -
   5        dgTcSerialPassport��$
 Дата издания��5:   -   $	 200 5;   -    5<   -   �� *DateOfPublishing+  5>      -   5        dgTcNumberPassport��$)
 #Количество страниц��5?   -   $	 200 5@   -    5A   -   �� *AmountOfPages+  5C      -   5        dgTcDateOfInsurence��$
 Цена��5D   -   $	 250 5E   -    5F   -   �� *Price+  5H      -   5        dgTcDriverLicense��$1
 +Количество экземпляров��5I   -   $	 250 5J   -    5K   -   �� *CountInstance+5M      5N      5O      
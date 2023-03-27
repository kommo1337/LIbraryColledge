using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using Uhanov.ClassFolder;
using Uhanov.DataFolder;

namespace Uhanov.PageFolder.StaffPageFolder
{
    /// <summary>
    /// Логика взаимодействия для ListBookPage.xaml
    /// </summary>
    public partial class ListBookPage : Page
    {
        public ListBookPage()
        {
            InitializeComponent();
        }

        private void SearchTb_TextChanged(object sender, TextChangedEventArgs e)
        {
            try
            {
                ListDocDG.ItemsSource = DBEntities.GetContext().Book.Where
                (u => u.NameBook.StartsWith(SearchTb.Text)).ToList();
            }
            catch (Exception ex)
            {
                MBClass.ErrorMB(ex);
            }
        }


        private void EditM_Click(object sender, RoutedEventArgs e)
        {
            Book book = ListDocDG.SelectedItem as Book;
            VariableClass.BookId = book.IdBook;
            NavigationService.Navigate(new EditReaderPage());
        }

        private void DeleteM_Click(object sender, RoutedEventArgs e)
        {
            Book book = ListDocDG.SelectedItem as Book;
            VariableClass.BookId = book.IdBook;
            using (var context = DBEntities.GetContext())
            {
                
                var books = context.Book.FirstOrDefault(b => b.IdBook == VariableClass.BookId);

                if (book != null)
                {
                    context.Book.Remove(books);
                    context.SaveChanges();
                }
            }
        }
    }
}

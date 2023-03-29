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
using LibraryBook.ClassFolder;
using LibraryBook.DataFolder;

namespace LibraryBook.PageFolder.StaffPageFolder
{
    /// <summary>
    /// Логика взаимодействия для ListReaderPage.xaml
    /// </summary>
    public partial class ListReaderPage : Page
    {
        public ListReaderPage()
        {
            InitializeComponent();
            ListReaderLB.ItemsSource = DBEntities.GetContext().Reader
                .ToList().OrderBy(u => u.LastNameReader);
        }

        private void ListReaderDG_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {

        }

        private void EditM_Click(object sender, RoutedEventArgs e)
        {
            Reader reader = ListReaderLB.SelectedItem as Reader;
            VariableClass.ReaderId = reader.IdReader;
            NavigationService.Navigate(new EditReaderPage());
        }

        private void DeleteM_Click(object sender, RoutedEventArgs e)
        {
            Reader reader = ListReaderLB.SelectedItem as Reader;
            VariableClass.BookId = reader.IdReader;
            using (var context = DBEntities.GetContext())
            {

                var readers = context.Reader.FirstOrDefault(b => b.IdReader == VariableClass.ReaderId);

                if (reader != null)
                {
                    context.Reader.Remove(readers);
                    context.SaveChanges();
                }
            }
        }

        private void SearchTb_TextChanged(object sender, TextChangedEventArgs e)
        {
            try
            {
                ListReaderLB.ItemsSource = DBEntities.GetContext().Reader.Where
                (r => r.FirstNameReader.StartsWith(SearchTB.Text)).ToList();
            }
            catch (Exception ex)
            {
                MBClass.ErrorMB(ex);
            }
        }
    }
}

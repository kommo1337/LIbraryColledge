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
    /// Логика взаимодействия для CardReaderPage.xaml
    /// </summary>
    public partial class CardReaderPage : Page
    {
        public CardReaderPage()
        {
            InitializeComponent();
        }

        private void SearchTB_TextChanged(object sender, TextChangedEventArgs e)
        {
            try
            {
                ListReaderLB.ItemsSource = DBEntities.GetContext().Book.Where
                (u => u.NameBook.StartsWith(SearchTB.Text)).ToList();
            }
            catch (Exception ex)
            {
                MBClass.ErrorMB(ex);
            }
        }
    }
}

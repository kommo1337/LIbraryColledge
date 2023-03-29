using LibraryBook.ClassFolder;
using LibraryBook.DataFolder;
using LibraryBook.WindowFolder;
using LibraryBook.WindowFolder.StaffFolder;
using System;
using System.Collections.Generic;
using System.ComponentModel.Design;
using System.Drawing;
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

namespace Uhanov.PageFolder.StaffPageFolder
{
    /// <summary>
    /// Логика взаимодействия для AddCardReaderPage.xaml
    /// </summary>
    public partial class AddCardReaderPage : Page
    {
        public AddCardReaderPage()
        {
            InitializeComponent();
            InstanceCB.ItemsSource = DBEntities.GetContext().Instance.ToList();
            ReaderCB.ItemsSource = DBEntities.GetContext().Reader.ToList();
        }
        private void CardReaderAdd()
        {
            var CardreaderAdd = new UsageBooks()
            {
                DateOfDue = DateTime.Parse(DateOfDue.Text),
                DateOfIssue = DateTime.Parse(DateOfIssue.Text),
                IdInstance = Int32.Parse(InstanceCB.SelectedValue.ToString()),
                IdReader = Int32.Parse(ReaderCB.SelectedValue.ToString()),
            };
            DBEntities.GetContext().UsageBooks.Add(CardreaderAdd);
            DBEntities.GetContext().SaveChanges();
        }

        private void AuthBtn_Click(object sender, RoutedEventArgs e)
        {
            CardReaderAdd();
        }

        private void BackBtn_Click(object sender, RoutedEventArgs e)
        {
            new AuthorizationWindow().Show();
        }
    }
}

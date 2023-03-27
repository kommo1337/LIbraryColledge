using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.IO;
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
using Uhanov.WindowFolder;
using Uhanov.WindowFolder.StaffFolder;

namespace Uhanov.PageFolder.StaffPageFolder
{
    /// <summary>
    /// Логика взаимодействия для EditReaderPage.xaml
    /// </summary>
    public partial class EditReaderPage : Page
    {
        public EditReaderPage(Reader reader)
        {
            InitializeComponent();
            DataContext = reader;
        }

        public EditReaderPage()
        {
        }

        private void EditUserBtn_Click(object sender, RoutedEventArgs e)
        {
            Reader reader = DBEntities.GetContext().Reader.
             FirstOrDefault(s => s.IdReader == VariableClass.ReaderId);
            reader.UniqueNumberReaderCard = UniqueNumberTb.Text;
            reader.LastNameReader = LastNameTb.Text;
            reader.FirstNameReader = FirstNameTb.Text;
            reader.MiddleNameReader = MiddleNameTb.Text;
            reader.NumberPhoneReader = NumberPhoneTb.Text;
            reader.HomePhoneReader = HomeNumberPhoneTb.Text;
            reader.DateOfBirthReader = DateTime.Parse(DateOfBirthDP.Text);

           


            DBEntities.GetContext().SaveChanges();
            MBClass.InfoMB("Пользователь успешно отредактирован");
            NavigationService.Navigate(new ListReaderPage());
        }

        private void Page_Loaded(object sender, RoutedEventArgs e)
        {
            //Reader reader = DBEntities.GetContext().Reader.FirstOrDefault
            //    (u=>u.IdReader == VariableClass.ReaderId);

            //Adress adress = DBEntities.GetContext().Adress.FirstOrDefault
            //    (u=>u.IdAdress == VariableClass.AdressId);

            //RegionCB.SelectedValue = adress.Region;
        }

        private void PhotoIm_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            OpenFileDialog openFileDialog = new OpenFileDialog();
            openFileDialog.Filter = "Image files (*.jpg, *.jpeg, *.png) | *.jpg; *.jpeg; *.png";
            if (openFileDialog.ShowDialog() == true)
            {

                BitmapImage imageSource = new BitmapImage();
                imageSource.BeginInit();
                imageSource.CacheOption = BitmapCacheOption.OnLoad;
                imageSource.UriSource = new Uri(openFileDialog.FileName);
                imageSource.EndInit();


                byte[] imageData;
                JpegBitmapEncoder encoder = new JpegBitmapEncoder();
                encoder.Frames.Add(BitmapFrame.Create(imageSource));
                using (MemoryStream ms = new MemoryStream())
                {
                    encoder.Save(ms);
                    imageData = ms.ToArray();
                }


                using (var context = DBEntities.GetContext())
                {
                    Reader reader = context.Reader.FirstOrDefault(r => r.IdReader == VariableClass.ReaderId);
                    if (reader != null)
                    {
                        reader.PhotoReader = imageData;
                        context.SaveChanges();
                    }
                }

                PhotoIm.Source = imageSource;
            }
        }

        private void BackBtn_Click(object sender, RoutedEventArgs e)
        {
            new AuthorizationWindow().Show();
            new StaffWindow().Close();
        }

        private void AddPhotoUserBtn_Click(object sender, RoutedEventArgs e)
        {
            OpenFileDialog openFileDialog = new OpenFileDialog();
            openFileDialog.Filter = "Image files (*.jpg, *.jpeg, *.png) | *.jpg; *.jpeg; *.png";
            if (openFileDialog.ShowDialog() == true)
            {

                BitmapImage imageSource = new BitmapImage();
                imageSource.BeginInit();
                imageSource.CacheOption = BitmapCacheOption.OnLoad;
                imageSource.UriSource = new Uri(openFileDialog.FileName);
                imageSource.EndInit();


                byte[] imageData;
                JpegBitmapEncoder encoder = new JpegBitmapEncoder();
                encoder.Frames.Add(BitmapFrame.Create(imageSource));
                using (MemoryStream ms = new MemoryStream())
                {
                    encoder.Save(ms);
                    imageData = ms.ToArray();
                }


                using (var context = DBEntities.GetContext())
                {
                    Reader reader = context.Reader.FirstOrDefault(r => r.IdReader == VariableClass.ReaderId);
                    if (reader != null)
                    {
                        reader.PhotoReader = imageData;
                        context.SaveChanges();
                    }
                }

                PhotoIm.Source = imageSource;
            }
        }
    }
}

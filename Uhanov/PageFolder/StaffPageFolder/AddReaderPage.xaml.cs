using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.Data.Entity.Validation;
using System.IO;
using System.Linq;
using System.Net;
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
using LibraryBook.WindowFolder;
using LibraryBook.WindowFolder.StaffFolder;

namespace LibraryBook.PageFolder.StaffPageFolder
{
    /// <summary>
    /// Логика взаимодействия для AddReaderPage.xaml
    /// </summary>
    public partial class AddReaderPage : Page
    {
        Adress adress = new Adress();
        Reader reader = new Reader();
        public AddReaderPage()
        {
            InitializeComponent();
            RegionCB.ItemsSource = DBEntities.GetContext().Region.ToList();
            CityCB.ItemsSource = DBEntities.GetContext().City.ToList();
            StreetCB.ItemsSource = DBEntities.GetContext().Street.ToList();
        }

        private void AddressAdd()
        {
            
            var addressAdd = new Adress()
            {
                IdRegion = Int32.Parse(RegionCB.SelectedValue.ToString()),
                IdCity = Int32.Parse(CityCB.SelectedValue.ToString()),
                IdStreet = Int32.Parse(StreetCB.SelectedValue.ToString()),
                HouseAdress = Int32.Parse(HouseTb.Text),
                BuildingHouse = HousingTb.Text,
                IndexAdress = 1,
                AppartmentHouse = Int32.Parse(FlatTb.Text)
            };
            DBEntities.GetContext().Adress.Add(addressAdd);
            DBEntities.GetContext().SaveChanges();
            adress.IdAdress = addressAdd.IdAdress;
        }

        private void ReaderAdd()
        {
            var readerAdd = new Reader()
            {
                UniqueNumberReaderCard = UniqueNumberTb.Text,
                LastNameReader = LastNameTb.Text,
                FirstNameReader = FirstNameTb.Text,
                MiddleNameReader = MiddleNameTb.Text,
                NumberPhoneReader = NumberPhoneTb.Text,
                HomePhoneReader = HomeNumberPhoneTb.Text,
                DateOfBirthReader = DateTime.Parse(DateOfBirthDP.Text),
                IdAdderss = adress.IdAdress,
                PhotoReader = ImageClass.ConvertImageToByteArray(selectedFileName)
            };
            DBEntities.GetContext().Reader.Add(readerAdd);
            DBEntities.GetContext().SaveChanges();
        }

        string selectedFileName = "";
        private void AddPhoto()
        {
            try
            {
                OpenFileDialog op = new OpenFileDialog();
                op.InitialDirectory = "";
                op.Filter = "All supported graphics|*.jpg;*.jpeg;*.png|" +
                    "JPEG(*.jpg;*.jpeg)|*.jpg;*.jpeg|" +
                    "Portable Network Graphic(*.png)|*.png";
                if(op.ShowDialog()==true)
                {
                    selectedFileName = op.FileName;
                    reader.PhotoReader = ImageClass.ConvertImageToByteArray(selectedFileName);
                    PhotoIm.Source = ImageClass.ConvertByteArrayToImage(reader.PhotoReader);
                }    
            }
            catch (Exception ex)
            {
                MBClass.ErrorMB(ex);
            }
        }

        private void AddPhotoUserBtn_Click(object sender, RoutedEventArgs e)
        {
            AddPhoto();
        }

        private void AddUserBtn_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                AddressAdd();
                ReaderAdd();

                MBClass.InfoMB("Читатель добавлен");
            }
            catch (DbEntityValidationException ex)
            {
                MBClass.ErrorMB(ex);
            }
        }

        private void BackBtn_Click(object sender, RoutedEventArgs e)
        {
            new AuthorizationWindow().Show();
            new StaffWindow().Close();   
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
                    Reader reader = context.Reader.FirstOrDefault(r => r.IdReader == 1);
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

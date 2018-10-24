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

namespace HW01_AThayn
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private Random r = new Random();
        private bool imageVisibility = true;
        private bool handle = true;
        Brush myBrush = new SolidColorBrush(Color.FromRgb(0, 0, 0));

        public MainWindow()
        {
            InitializeComponent();
        }

        public void BtnBackgroundColorChange(object sender, RoutedEventArgs e)
        {
            Brush brush = new SolidColorBrush(Color.FromRgb((byte)r.Next(1, 255), (byte)r.Next(1, 255), (byte)r.Next(1, 233)));
            Window.Background = brush;
        }

        public void BtnTextColorChange(object sender, RoutedEventArgs e)
        {
            myBrush = new SolidColorBrush(Color.FromRgb((byte)r.Next(1, 255), (byte)r.Next(1, 255), (byte)r.Next(1, 233)));
            textBox.Foreground =myBrush;
        }

        public void BtnImageVisibility(object sender, RoutedEventArgs e)
        {
            imageVisibility = !imageVisibility;
            MyImage.Visibility = imageVisibility ? Visibility.Visible : Visibility.Hidden;
            Button btn = (Button)sender;
            btn.Content = btn.Content.ToString() == "Hide Image" ? btn.Content = "Show Image" : btn.Content = "Hide Image";
        }

        public void OnSelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            ComboBox cmb = (ComboBox) sender;
            handle = !cmb.IsDropDownOpen;
            Handle();
        }

        private void ComboBoxClosed(object sender, EventArgs e)
        {
            if (handle)
                Handle();
            handle = true;
        }

        private void Handle()
        {
            switch (cmb.SelectedItem.ToString().Split(new string[] { ": " }, StringSplitOptions.None).Last())
            {
                case "Llama":
                    MyImage.Source = new BitmapImage(new Uri(@"Images/Image.jpg", UriKind.Relative));
                    break;
                case "Penguin":
                    MyImage.Source = new BitmapImage(new Uri(@"Images/penguin.jpg", UriKind.Relative));
                    break;
                case "Bear":
                    MyImage.Source = new BitmapImage(new Uri(@"Images/bear.jpg", UriKind.Relative));
                    break;
            }
        }
    }
}

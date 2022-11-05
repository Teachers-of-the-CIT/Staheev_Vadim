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
using System.Windows.Shapes;

namespace PerfumerProject.Windows
{
    /// <summary>
    /// Логика взаимодействия для ClientWindow.xaml
    /// </summary>
    public partial class ClientWindow : Window
    {
        public ClientWindow()
        {
            InitializeComponent();
        }
        /// <summary>
        /// Метод возврата на предыдущее окно
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void Back(object sender, RoutedEventArgs e)
        {
            this.Visibility = Visibility.Hidden;
            MainWindow.thisMainWindow.Visibility = Visibility.Hidden;
        }

        /// <summary>
        /// Метод закрытия окна
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void close(object sender, System.ComponentModel.CancelEventArgs e)
        {
            this.Visibility = Visibility.Hidden;
            MainWindow.thisMainWindow.Visibility = Visibility.Visible;
        }
        /// <summary>
        /// Метод перехода на окно формирования заказа
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void CreateOrderClick(object sender, RoutedEventArgs e)
        {
            this.Visibility = Visibility.Hidden;
            MainWindow.thisWindowOrderCreate.DestinationsBox.ItemsSource = MainWindow.db.Destination.ToList();
            MainWindow.thisWindowOrderCreate.Visibility = Visibility.Visible;


        }
    }
}

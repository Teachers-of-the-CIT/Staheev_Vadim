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
    /// Логика взаимодействия для WindowOrderCreate.xaml
    /// </summary>
    public partial class WindowOrderCreate : Window
    {
        public WindowOrderCreate()
        {
            InitializeComponent();
        }
        /// <summary>
        /// Метод добавления заказа
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void CreateOrderClick(object sender, RoutedEventArgs e)
        {
            try
            {
                Order ord = new Order();
                ord.OrderDate = DateTime.Now;
                ord.DeliveryDate = DateTime.Parse(DeliveryDate.Text);
                ord.Destination = (Destination)DestinationsBox.SelectedItem;
                ord.FullName = FullName.Text;
                ord.GetCode = GetCode.Text;
                ord.Status = "Новый";
                ord.UserId = MainWindow.currentUser.Id;
                MainWindow.db.Order.Add(ord);
                MainWindow.db.SaveChanges();
                MessageBox.Show("Вы добавили заказ");
            }
            catch
            {
                MessageBox.Show("Не все поля заполнены верно");
            }
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
    }
}

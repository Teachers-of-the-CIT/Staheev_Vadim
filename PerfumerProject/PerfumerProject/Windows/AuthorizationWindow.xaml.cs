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
    /// Логика взаимодействия для AuthorizationWindow.xaml
    /// </summary>
    public partial class AuthorizationWindow : Window
    {
        public AuthorizationWindow()
        {
            InitializeComponent();
        }
        /// <summary>
        /// Метод авторизации
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void AuthClick(object sender, RoutedEventArgs e)
        {
            int check = 0;
            try
            {
                User us = new User();
                us.Email = LoginBox.Text;
                us.Password = PasswordBox.Password;
                foreach (var item in MainWindow.db.User)
                {
                    if (item.Email == us.Email && item.Password==us.Password)
                    {
                        MessageBox.Show("Вы авторизовались");
                        this.Visibility = Visibility.Hidden;
                        check = 1;
                        if(item.Role == "Клиент")
                        {
                            MainWindow.thisClientWindow.Visibility = Visibility.Visible;
                            MainWindow.thisClientWindow.ProductListView.ItemsSource = MainWindow.db.Destination.ToList();
                          MainWindow.currentUser = item;
                        }
                        break;
                    }
                }
            }
            catch
            {
                MessageBox.Show("Не все поля были заполнены верно");
            }

            if(check == 0)
            {
                MessageBox.Show("Неверный логин или пароль");
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
        /// <summary>
        /// Метод возврата на предыдущее окно
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void Back(object sender, RoutedEventArgs e)
        {
            this.Visibility = Visibility.Hidden;
            MainWindow.thisMainWindow.Visibility = Visibility.Visible;
        }
    }
}

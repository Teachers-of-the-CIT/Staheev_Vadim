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
    /// Логика взаимодействия для RegistrationWindow.xaml
    /// </summary>
    public partial class RegistrationWindow : Window
    {
       
        public RegistrationWindow()
        {
            InitializeComponent();
        }
        /// <summary>
        /// Метод регистрации
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void RegisterClick(object sender, RoutedEventArgs e)
        {
            User us = new User();
            try
            {
                us.FullName = FIOBox.Text;
                us.Email = LoginBox.Text;
                us.Password = PasswordBox.Text;
                us.Role = "Клиент";
            }
            catch
            {
                MessageBox.Show("Не все поля были заполнены верно");
            }
           

            if (MainWindow.db.User.Where(p => p.Email == LoginBox.Text).ToList().Count > 0)
            {

                MessageBox.Show("Пользователь с таким Email уже есть в базе данных");
            }
            else
            {
                
                MainWindow.db.User.Add(us);
                MainWindow.db.SaveChanges();
                MessageBox.Show("Вы успешно зарегистрировались");
            }
            
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
        /// <summary>
        /// Метод закрытия окна
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void close(object sender, EventArgs e)
        {
            this.Visibility = Visibility.Hidden;
            MainWindow.thisMainWindow.Visibility = Visibility.Visible;
        }
    }
}

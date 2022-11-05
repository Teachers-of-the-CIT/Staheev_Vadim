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
using PerfumerProject.Windows;
namespace PerfumerProject
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public static User currentUser;
        public static Магазин_парфюмерииEntities db = new Магазин_парфюмерииEntities();
        public static MainWindow thisMainWindow;
        public static Windows.AuthorizationWindow thisAuthWindow = new Windows.AuthorizationWindow();
        public static Windows.RegistrationWindow thisRegisterWindow = new Windows.RegistrationWindow();
        public static ClientWindow thisClientWindow = new ClientWindow();
        public static WindowOrderCreate thisWindowOrderCreate = new WindowOrderCreate();
        public MainWindow()
        {
            InitializeComponent();
            thisMainWindow = this;
        }
        /// <summary>
        /// Метод перехода на окно авторизации
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void Authorization(object sender, RoutedEventArgs e)
        {
            this.Visibility = Visibility.Hidden;
           thisAuthWindow.Visibility = Visibility.Visible;
        }
        /// <summary>
        /// Метод перехода на окно регистрации
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void Registration(object sender, RoutedEventArgs e)
        {
            this.Visibility = Visibility.Hidden;
            thisRegisterWindow.Visibility = Visibility.Visible;
        }
        /// <summary>
        /// Метьод выхода из приложения
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void LeaveFromApp(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }
    }
}

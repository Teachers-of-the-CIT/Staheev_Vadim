   M S B A M L   `   `   `  ????J  FPerfumerProject, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullA%clr-namespace:PerfumerProject.WindowsPerfumerProject.Windows  5   	   1    +PerfumerProject.Windows.AuthorizationWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   7local%clr-namespace:PerfumerProject.Windows     5   	   -   5          ? Title$  Авторизация??5   	   $	??450??6   $	??800??6*    ? WindowStartupLocation$ CenterScreen=?6F   $	??500??6k   $	??500??6z   .??5	      ?  ? RowDefinitions 5
   
   ?? 5      $??75 ?6   6*   ?? 5      6   ?? 5      $??75 ?6   6*   .+?5   
   ??  
  Border#??[  6   63   ?? 5   
   #??[  6   $??2??61   6@   ?? 5   
   $??Center=?6   $???9Здесь вы можете авторизоваться??61     TextBig#??[ 6W   6z   ?? 5   
   $??1??6   $??Center=?6!   $??
Логин??6>     TextStandart#??[ 6L   $??	0,0,0,150q?6r   6?   ?? 5   
   -   5        $??LoginBox??5      $??1??6"   $	??200??6/   $??35??6;     TextBox#??[ 6G   $??0,0,0,80q?6h   6|   ?? 5   
   $??1??6   $??Center=?6!   $??Пароль??6>   #??[ 6M   $??0,30,0,0q?6s   6?   G? 5   
   -   5        $??PasswordBox??5      $??1??6)   $	??200??66   $??35??6B   $??	0,100,0,0q?6N   6d   ?? 5   
   -   5        $??2??5      $	??200??6   $??50??6*    
 button#??[ 66   $??
Войти??6V    ? 	Resources 5       ?? 
TargetType ?? Property ?? Value??%d   '??       ?? 5      " ??6   .?5      ??  ?@??CornerRadius$ 35??65   6B   5      5      5      ?? 5   
   -   5        $??5q?5      $??2??6)   $	??200??66   $
??Left=?6B   $??50??6]   #??[ 6i   $??
Назад??6?    5      ??%d   '??       ?? 5       " ??6   .?5!      ??  ?@??CornerRadius$ 35??65   6B   5"      5#      5$      5%      5&      
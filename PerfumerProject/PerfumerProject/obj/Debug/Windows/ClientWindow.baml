   M S B A M L   `   `   `  ????J  FPerfumerProject, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullA%clr-namespace:PerfumerProject.WindowsPerfumerProject.Windows  5   	   *    $PerfumerProject.Windows.ClientWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   7local%clr-namespace:PerfumerProject.Windows     5   	   -   5          ? Title$  Окно клиента??5   	   $	??450??6   $	??800??6+    ? WindowStartupLocation$ CenterScreen=?6G   $	??500??6l   $	??500??6{   .??5	      ?  ? RowDefinitions 5
   
   ?? 5      $??75 ?6   6*   ?? 5      6   ?? 5      $??75 ?6   6*   .+?5   
   ??  
  Border#??[  6   63   ?? 5   
   #??[  6   $??2??61   6@   &   System.Windows.Controls.DataGrid  5   
   -   5        $??ProductListView??5      $??Candara)?6*   $??1??6?   $??15(?6L      AlternatingRowBackground ?#A5E8875      ?? 5   
   -   5        $??2??5   *   $	??300??67   $??50??6C   $??Center=?6O    
 button#??[ 6l   $??5q?6?   $)??#Сформировать заказ??6?    ? 	Resources 5       ?? 
TargetType ?? Property ?? Value??%d   '??       ?? 5      " ??6   .?5      ??  ?@??CornerRadius$ 35??65   6B   5      5      5      ?? 5   
   -   5        $??5q?5      $??2??6   $	??200??6)   $
??Left=?65   $??50??6P   #??[ 6\   $??
Назад??6|    5      ??%d   '??       ?? 5      " ??6   .?5      ??  ?@??CornerRadius$ 35??65   6B   5      5       5!      5"      5#      
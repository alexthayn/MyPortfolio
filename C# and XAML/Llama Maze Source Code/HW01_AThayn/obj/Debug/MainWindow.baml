   M S B A M L   `   `   `  ����F  BHW01_AThayn, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:HW01_AThaynHW01_AThayn  5   	       HW01_AThayn.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:HW01_AThayn     5   	     � Title$  
MainWindow��5   	   $	��450��6   $	��800��6)   .��5	      � -   5        $��Window��5	       � ColumnDefinitions 5
   
   �� 5      $
��auto �6   �� 5      $��* �6    � RowDefinitions 5   
   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $��* �6   .+�5   
   �� -   5        $��MyImage��5      $��1��6   $��5��6/   $��Images/Image.jpg��6c   y�6<   �� *imageVisibility+6c   �� 5   
   $��1��6    �� TextAlignment$ Center=�6$   ��6;   �� *	myBrush+Type some text below5      �� 5   
   -   5        $��textBox��5      $��1��6!   $��1��61   $��3��6?   $(��"Hello! This app is pretty useless.��6P   �� 5   
   -   5        $��0��5      .��69   
Text Color5       �� 5"   
   -   5        $��1��5"      .��6?   Background Color5$      �� 5&   
   -   5        $��2��5&      .��69   
Hide Image5(      �� 5*   
   -   5        $	��cmb��5*      $��3��6    �� Text$ Change Image��6q    �� 
IsEditable . .@�5+      �� .��6   Llama6"   �� 5,      .��6   	Penguin6$   �� 5-      .��6   Bear6!   5.      5/      50      
   M S B A M L   `   `   `  ����P  LNetBreakoutPongClient, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:NetBreakoutPongClientNetBreakoutPongClient  5   	   &     NetBreakoutPongClient.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   5local#clr-namespace:NetBreakoutPongClient     5   	     � Title$  Network Pong��5   	   $	��600��6   $	��800��6+    � 
ResizeMode$ NoResize=�67    � SizeToContent$ WidthAndHeight=�5	   	    � Topmost .   � WindowState$ Normal=�68    � Icon$ ./Resources/pong.png��5
      .��5      �  � ColumnDefinitions 5   
   �� 5      $��* �6   �� 5      $
��auto �6   �� 5      $��* �6    � RowDefinitions 5   
   �� 5      $��* �6   �� 5      $��* �6   .+�5   
   �� -   5        $��
gameCanvas��5      $��1��6#   $��2��63   $	��600��6D   $	��500��6Q    J� RenderTransformOrigin$ 0.5,0.5&�6]   
���   �5      �� 5   
   $��0��6   $��80��6%   $	��140��61   $��30(�6=   $��Bottom=�6K   $��0,0,0,10q�6f   	 �� TextAlignment$	 Center=�6x   My�� 6�   Score6�   �� 5    
   -   5        $��myScore��5       $��0��6#   $��1��63   $	��Top=�6@   $��40��6X   $��40��6d   $��30(�6o   $	 Center=�6}   06�   �� 5#   
   $��2��6   $��80��6$   $	��140��60   $��30(�6<   $��Bottom=�6J   $��0,0,0,10q�6e   $	 Center=�6w   
Opponent�� 6�   Score6�   �� 5$   
   -   5        $��oppScore��5$      $��2��6$   $��1��64   $	��Top=�6A   $��40��6Y   $��40��6e   $��30(�6p   $	 Center=�6~   06�   5%      5&      
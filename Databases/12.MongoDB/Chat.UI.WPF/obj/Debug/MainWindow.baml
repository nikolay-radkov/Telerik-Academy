   M S B A M L   `   `   `  ����F  BChat.UI.WPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:Chat.UI.WPF.ViewsChat.UI.WPF.Views  5   	       Chat.UI.WPF.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   1viewsclr-namespace:Chat.UI.WPF.Views     5   	   -   5          � Title$
  Chat��5   	   $	��500��6   $	��400��6#    � WindowStyle$
 None=�5   	    � AllowsTransparency . 
������ $��0q�5	   	    � WindowStartupLocation$ CenterScreen=�5
   	    � 
ResizeMode$ CanMinimize=�6K    � Icon$ Images/ninja.png��6d   .��5      �� 
���   �$��1q�6!    �� CornerRadius$ 20��65   ��5   
   �� 5       �� EndPoint$ 0.5,1&�6"    � MappingMode$ RelativeToBoundingBox=�63   	 �� 
StartPoint$	 0.5,0&�6W   .��5      � 
 � Color$
 Black��6    � Offset$ 1Q�6-   � 5      $
 	#FF878787��6   5      ._�5   
   �� .+�5         Chat.UI.WPF.Views.LogIn  -   5          Name$ logIn��5      $y�Visible=�6)       Chat.UI.WPF.Views.ChatRoom  5      -   5          Name$ chatRoom��5      $y�Hidden=�6/   �� 5      -   5         ��Name$ btnExit��5      $��X��6&   $��18��62    �� Left$	 342��6>   $��31��6P   $
��Left=�6q   $	��Top=�6�   $��1,-1,1,1q�6�   
�������
���   �
 �� Top$ -1��6�   ��6[   Z� 6�   �� 5      -   5        $ btnMinimize��5      $�� ____ ��6*   $��18��6;   $	 306��6G   $��31��6Y   $
��Left=�6z   $	��Top=�6�   $��1,-5,1,1q�6�   
�������
���   �$ -1��6  ��6d   Z� 6  �� 5      -   5         ��Name$ lblUsername��5      $��
Ninja Chat��6)   $	 111��6>   $ 15��6P   $��50(�6`   $	��272��6n   
������� J� Effect 5      3  -System.Windows.Media.Effects.DropShadowEffect  5      5      �� 5      $	��100��6   $	��100��6!   $��Images/ninja.png��6-   $ -3��6G   5      5      5      
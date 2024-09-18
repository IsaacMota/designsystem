// navigation_bar_view_model.dart
import 'package:flutter/material.dart';

class NavigationBarViewModel extends ChangeNotifier {
  int _selectedIndex = 0; // Índice da página selecionada

  int get selectedIndex =>
      _selectedIndex; // Getter para obter o índice selecionado

  void selectIndex(int index) {
    if (_selectedIndex != index) {
      _selectedIndex = index;
      notifyListeners(); // Notifica os ouvintes sobre a mudança
    }
  }
}

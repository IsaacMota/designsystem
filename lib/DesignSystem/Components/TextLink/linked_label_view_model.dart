import 'package:flutter/material.dart';

class LinkedLabelViewModel extends ChangeNotifier {
  bool _isLinkActive = true; // Controle se o link está ativo

  bool get isLinkActive => _isLinkActive;

  // Método para ativar o link
  void activateLink() {
    _isLinkActive = true;
    notifyListeners(); // Notifica ouvintes sobre a mudança de estado
  }

  // Método para desativar o link
  void deactivateLink() {
    _isLinkActive = false;
    notifyListeners(); // Notifica ouvintes sobre a mudança de estado
  }
}

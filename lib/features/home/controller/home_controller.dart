import 'package:flutter/material.dart';

class HomeController extends ChangeNotifier {
  int selectedIndex = 0;

  void onTabSelected(int index) {
    selectedIndex = index;
    notifyListeners();
  }

  void createPost() {
    // lógica para criar postagem
  }

  void openNotifications() {
    // lógica para abrir notificações
  }

  void openMessages() {
    // lógica para abrir mensagens
  }
}
import 'package:flutter/material.dart';

class NavigationbBar extends StatefulWidget {
  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationbBar> {
  int _selectedIndex = 0; // Índice da página selecionada

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Atualiza o índice selecionado
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex, // Exibe o conteúdo da página selecionada
        children: [
          Center(child: Text('Conteúdo da Página 1')), // Página 1
          Center(child: Text('Conteúdo da Página 2')), // Página 2
          Center(child: Text('Conteúdo da Página 3')), // Página 3
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex, // Destaca a aba selecionada
        onTap: _onItemTapped, // Muda a aba selecionada
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home), // Ícone para a aba 1
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search), // Ícone para a aba 2
            label: 'Label',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications), // Ícone para a aba 3
            label: 'Messages',
          ),
        ],
      ),
    );
  }
}

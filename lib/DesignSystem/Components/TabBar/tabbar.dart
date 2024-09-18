import 'package:flutter/material.dart';

// Define o widget CustomTabBar como um StatefulWidget
class CustomTabBar extends StatefulWidget {
  @override
  _CustomTabBarState createState() => _CustomTabBarState();
}

// Estado interno do CustomTabBar
class _CustomTabBarState extends State<CustomTabBar> {
  @override
  Widget build(BuildContext context) {
    // Cria um widget com um DefaultTabController
    return DefaultTabController(
      length: 3, // Número de abas
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(text: 'Tap 1'), // Primeira aba
              Tab(text: 'Tap 2'), // Segunda aba
              Tab(text: 'Tap 3'), // Terceira aba
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
                child: Text('Conteúdo para Tap 1')), // Conteúdo da primeira aba
            Center(
                child: Text('Conteúdo para Tap 2')), // Conteúdo da segunda aba
            Center(
                child: Text('Conteúdo para Tap 3')), // Conteúdo da terceira aba
          ],
        ),
      ),
    );
  }
}

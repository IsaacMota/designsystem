// lib/components/linked_label.dart
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

// Widget LinkedLabel que exibe um texto com um link
class LinkedLabel extends StatefulWidget {
  @override
  _LinkedLabelState createState() => _LinkedLabelState();
}

class _LinkedLabelState extends State<LinkedLabel> {
  bool _isLinkActive = true; // Estado que controla se o link está ativo

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Linked Label Example'), // Título da tela
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Padding ao redor do conteúdo
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'I have read and agree to ',
                style: TextStyle(color: Colors.black), // Estilo do texto normal
              ),
              TextSpan(
                text: 'Terms & Services',
                style: TextStyle(
                  color:
                      _isLinkActive ? Colors.blue : Colors.grey, // Cor do link
                  decoration: TextDecoration.underline, // Sublinhado do link
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    if (_isLinkActive) {
                      // Navega para a tela de Termos ao clicar no link
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TermsScreen(),
                        ),
                      );
                    }
                  },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Tela que exibe "Terms & Services"
class TermsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Terms & Services'), // Título da tela de Termos
      ),
      body: Center(
        child: Text('Terms & Services',
            style: TextStyle(fontSize: 24)), // Texto centralizado
      ),
    );
  }
}

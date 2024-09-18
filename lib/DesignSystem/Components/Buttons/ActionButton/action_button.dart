import 'package:flutter/material.dart';

// Enum para definir os tamanhos dos botões
enum ButtonSize { small, medium, large }

class ActionButton extends StatefulWidget {
  final String label;
  final ButtonSize size;

  const ActionButton({
    Key? key,
    required this.label, // Texto do botão
    this.size = ButtonSize.medium, // Tamanho padrão
  }) : super(key: key);

  @override
  _ActionButtonState createState() => _ActionButtonState();
}

class _ActionButtonState extends State<ActionButton> {
  // Inicializa a cor do botão com base no tamanho
  late Color _buttonColor;

  @override
  void initState() {
    super.initState();
    _buttonColor = _getButtonColor(); // Define a cor inicial
  }

  // Define a cor do botão com base no tamanho
  Color _getButtonColor() {
    switch (widget.size) {
      case ButtonSize.small:
        return Colors.red; // Cor vermelha para o pequeno
      case ButtonSize.medium:
        return Colors.green; // Cor verde para o médio
      case ButtonSize.large:
        return Colors.blue; // Cor azul para o grande
    }
  }

  // Altera a cor ao clicar no botão
  void _changeButtonColor() {
    setState(() {
      _buttonColor = _buttonColor == Colors.grey
          ? _getButtonColor()
          : Colors.grey; // Alterna entre a cor original e cinza
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _getButtonHeight(), // Define a altura do botão
      child: ElevatedButton(
        onPressed: _changeButtonColor, // Altera a cor ao clicar
        style: ElevatedButton.styleFrom(
          backgroundColor: _buttonColor, // Define a cor do botão
        ),
        child: Text(widget.label), // Texto do botão
      ),
    );
  }

  // Define a altura do botão com base no tamanho
  double _getButtonHeight() {
    switch (widget.size) {
      case ButtonSize.small:
        return 32.0; // Altura para o botão pequeno
      case ButtonSize.medium:
        return 48.0; // Altura para o botão médio
      case ButtonSize.large:
        return 64.0; // Altura para o botão grande
    }
  }
}

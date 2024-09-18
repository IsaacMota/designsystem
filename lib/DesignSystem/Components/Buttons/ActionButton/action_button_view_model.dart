import 'package:flutter/material.dart';
import 'action_button.dart';

class ActionButtonView extends StatelessWidget {
  const ActionButtonView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Action Button View"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center, // Centraliza os botões verticalmente
          children: [
            ActionButton(
              label: 'Pequeno', // Botão pequeno
              size: ButtonSize.small,
            ),
            const SizedBox(height: 16), // Espaço entre os botões
            ActionButton(
              label: 'Médio', // Botão médio
              size: ButtonSize.medium,
            ),
            const SizedBox(height: 16),
            ActionButton(
              label: 'Grande', // Botão grande
              size: ButtonSize.large,
            ),
          ],
        ),
      ),
    );
  }
}

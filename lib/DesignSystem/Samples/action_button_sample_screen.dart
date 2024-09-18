import 'package:flutter/material.dart';
import 'package:flutter_application_1/DesignSystem/Components/Buttons/ActionButton/action_button_view_model.dart';

class ActionButtonSampleScreen extends StatelessWidget {
  const ActionButtonSampleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Action Button Sample'),
      ),
      body: const ActionButtonView(), // Exibe os três botões
    );
  }
}

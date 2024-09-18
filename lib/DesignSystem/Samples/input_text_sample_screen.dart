import 'package:flutter/material.dart';
import 'package:flutter_application_1/DesignSystem/Components/InputField/input_text.dart';

class InputTextSampleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Input Text Sample'),
        ),
        body: InputText(),
      ),
    );
  }
}

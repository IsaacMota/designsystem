import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Campo de texto habilitado
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: TextField(
            enabled: true,
            decoration: InputDecoration(
              labelText: 'Enabled',
              border: OutlineInputBorder(),
              hintText: 'You can write here',
            ),
          ),
        ),
        // Campo de texto desabilitado
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: TextField(
            enabled: false,
            decoration: InputDecoration(
              labelText: 'Disabled',
              border: OutlineInputBorder(),
              hintText: 'You cannot write here',
            ),
          ),
        ),
        // Campo de texto com erro
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: TextField(
            enabled: true,
            decoration: InputDecoration(
              labelText: 'Error',
              border: OutlineInputBorder(),
              hintText: 'Error text here',
              errorText: 'This is an error',
            ),
          ),
        ),
      ],
    );
  }
}

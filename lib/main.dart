import 'package:flutter/material.dart';
import 'package:flutter_application_1/DesignSystem/Samples/action_button_sample_screen.dart';
import 'package:flutter_application_1/DesignSystem/Samples/input_text_sample_screen.dart';
import 'package:flutter_application_1/DesignSystem/Samples/linked_label_sample_screen.dart';
import 'package:flutter_application_1/DesignSystem/Samples/navigation_bar_sample_screen.dart';
import 'package:flutter_application_1/DesignSystem/Samples/tabbar_sample_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: InputTextSampleScreen(),
    );
  }
}

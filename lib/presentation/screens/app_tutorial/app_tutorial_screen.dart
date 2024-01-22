import 'package:flutter/material.dart';

class AppTutorialScreen extends StatelessWidget {

  static const String name = 'app_tutorial_screen';
   
  const AppTutorialScreen({super.key});
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('App Tutorial'),),
      body: const Center(
         child: Text('App Tutorial'),
      ),
    );
  }
}
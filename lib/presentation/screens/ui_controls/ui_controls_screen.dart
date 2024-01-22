import 'package:flutter/material.dart';

class UiControlScreen extends StatelessWidget {

      static const String name = 'ui_controls';

   
  const UiControlScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text('UiControlScreen'),),
      body: const Center(
         child: Text('UiControlScreen'),
      ),
    );
  }
}
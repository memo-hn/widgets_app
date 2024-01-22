import 'package:flutter/material.dart';

class InfiniteScrollScreen extends StatelessWidget {

    static const String name = 'infinite_scroll';

   
  const InfiniteScrollScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('InfiniteScrollScreen'),),
      body: const Center(
         child: Text('InfiniteScrollScreen'),
      ),
    );
  }
}
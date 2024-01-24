import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {

      static const String name = 'progress';

   
  const ProgressScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Progress Indicators',), elevation: 20,backgroundColor: Colors.amber),

      body: const _ProgressView(),
    );
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView();

  @override
  Widget build(BuildContext context) {
    return  const Center(
       child: Column(
         children: [
          SizedBox(height: 30,),
          Text('Circular Progress Indicator: ',  style: TextStyle(fontSize: 20)),
          SizedBox( height:10 ),
          CircularProgressIndicator( strokeWidth: 2,),
          /**** *****/
          SizedBox(height: 30,),
          Text('Circular y Linear Contralado: ',  style: TextStyle(fontSize: 20)),
          SizedBox( height:10 ),
          _ContralledProgressIndicator(),
         ],
       ),
    );
  }
}

class _ContralledProgressIndicator extends StatelessWidget {
  const _ContralledProgressIndicator();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Stream.periodic(const Duration( milliseconds: 300 ), (value) {

        return (value * 2) / 100;

      }).takeWhile( (value) => value < 100 ),

      builder: (context, snapshot) {

        final progressValue = snapshot.data ?? 0;

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircularProgressIndicator(strokeWidth: 2, backgroundColor: Colors.black12, color: Colors.red,),

              const SizedBox(width: 25,),

              Expanded(child: 
                LinearProgressIndicator( 
                  minHeight: 5,
                  color: Colors.amber,
                  backgroundColor: Colors.blue[100],
                  value: progressValue,
                  ),
              ),
            ],
          ),
        );
      }
    );
  }
}
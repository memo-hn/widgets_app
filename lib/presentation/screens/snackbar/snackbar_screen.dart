import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {

      static const String name = 'snackbar_screen';

  const SnackbarScreen({super.key});

  void showCustomSnackbar( BuildContext context) {

    ScaffoldMessenger.of(context).clearSnackBars();

    final  snackbar = SnackBar(
      content: const Text('Este es el mensaje del Snackbar'),
      action: SnackBarAction(label: 'ok!', onPressed: () {}),
      duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }
  
  void openDialag(BuildContext context){
    showDialog(
      context: context, 
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('Ut ipsum ipsum'),
        content: const Text('Sunt sint in proident anim ea sit. Labore fugiat do elit nisi excepteur tempor ullamco proident ipsum eu in esse nulla. Do excepteur et velit veniam irure voluptate.'),
        actions: [
          TextButton(
            onPressed: () => context.pop(), 
          child: const Text('Cancelar')
          ),
          FilledButton(
            onPressed: () => context.pop(), 
          child: const Text('Aceptar')
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Snackbar y Diálogos', style: TextStyle(color: Colors.white),),backgroundColor: Colors.green, elevation: 10,),
      
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Mostrar Snackbar',style: TextStyle(fontSize: 15),),
        icon: const Icon(Icons.remove_red_eye_rounded),
        onPressed: () => showCustomSnackbar(context), 
      ),
      
      body: Center(
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
           children: [
            FilledButton(
              onPressed: (){
                showAboutDialog(
                  context: context,
                  children: [
                    const Text('Voluptate magna laborum Laboris sunt magna anim sunt ex laborum. Pariatur magna adipisicing in reprehenderit sint labore dolor officia. '),
                    const SizedBox(height: 10,),
                    const Text('Voluptate magna laborum deserunt amet do dolor consequat consequat labore tempor cillum. ')
                  ]
                  
                );
              }, 
              child: const Text('Licencias usadas')
            ),
            FilledButton(
              onPressed: () => openDialag(context),
              child: const Text('Mostrar diálogo'),
              
            ),
           ],
         ),
      ),
    );
  }
}
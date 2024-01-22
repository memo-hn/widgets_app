import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {

  static const String name = 'buttons_screen';

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('botones'),),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_forward_ios_rounded),
        onPressed: () {
          context.pop();
        },
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric( horizontal: 2, vertical: 20),
        child: Wrap(
          spacing: 5,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(onPressed: () {  }, child: const Text('Elevated')),
            const ElevatedButton(onPressed: null, child: Text('Elevated Disable')),
            ElevatedButton.icon(
              onPressed: () {  }, 
              icon: const Icon(Icons.alarm_add_outlined), 
              label: const Text('Elevated Icon'),
            ),
            FilledButton(onPressed: () {  }, child: const Text('Filled')),
            FilledButton.icon(
              onPressed: () {  }, 
              icon: const Icon(Icons.accessibility_new_sharp), 
              label: const Text('Filled Icon'),
            ),
            OutlinedButton(onPressed: () {  }, child: const Text('Outlined')),
            OutlinedButton.icon(
              onPressed: () {  }, 
              icon: const Icon(Icons.terminal), 
              label: const Text('Outlined Icon'),
            ),
            TextButton(onPressed: () {  }, child: const Text('Text button')),
            TextButton.icon(
              onPressed: () {  }, 
              icon: const Icon(Icons.call, size: 25,), 
              label: const Text('Text Icon'),
            ),
            IconButton(onPressed: () {  }, icon: const Icon(Icons.app_registration, size: 35,),),
            IconButton.filled(
              onPressed: () {  }, 
              icon: const Icon(Icons.call, size: 25,), 
            ),

            const CustomButton(),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return  ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: () {},
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal:20.0, vertical: 10),
            child: Text('CustomButton', style: TextStyle(color: Colors.white),),
          ),
        ),
      ),
    );
  }
}
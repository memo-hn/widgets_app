import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:animate_do/animate_do.dart';



class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo(this.title, this.caption, this.imageUrl);
}

final slides = <SlideInfo>[
  SlideInfo('Busca la comida', 'Cillum quis eiusmod incididunt veniam dolor irure consequat velit cupidatat et irure esse aliquip.', 'assets/images/1.png'),
  SlideInfo('Entrega Rapida', 'Pariatur exercitation consectetur nostrud laboris eiusmod cillum consectetur quis.', 'assets/images/2.png'),
  SlideInfo('Disfruta de tu entrega!', 'Enim in irure irure cupidatat ex irure eu excepteur aliqua exercitation ea.', 'assets/images/3.png'),
];


class AppTutorialScreen extends StatefulWidget {

  static const String name = 'app_tutorial_screen';
   
  const AppTutorialScreen({super.key});

  @override
  State<AppTutorialScreen> createState() => _AppTutorialScreenState();
}

class _AppTutorialScreenState extends State<AppTutorialScreen> {

  final PageController pageviewController = PageController();
  bool endReached = false;


  @override
  void initState(){
    super.initState();

    // ignore: avoid_print
    pageviewController.addListener(() { 
      
      final page = pageviewController.page ?? 0;

      if( !endReached && page >= slides.length - 1.5){
        setState(() {
          endReached = true;
        });
      }
    
    });

    
  }

  @override
  void dispose() {
    pageviewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      backgroundColor: Colors.white,
      
      body: Stack(
        children: [
          PageView(
            controller: pageviewController,
            physics: const BouncingScrollPhysics(),
            children: slides.map(
              (slideData) => 
                _Slide(
                  title: slideData.title, 
                  caption: slideData.caption, 
                  imageUrl: slideData.imageUrl
                )
            ).toList(),
          ),

          Positioned(
            right: 50,
            top: 50,
            child: TextButton(
              child: const Text('Sallir'),
              onPressed: () => context.pop(),
            ),
          ),

          endReached ? 
            Positioned(
              bottom: 50,
              right: 20,
              child: FadeInRight(
                from: 15,
                delay: const Duration( seconds: 1),
                child: FilledButton(
                onPressed: () => context.pop(), 
                child: const Text('Iniciar')
                          ),
              ),
            )
          : const SizedBox(),
        ],
      ),
    );
  }
}


class _Slide extends StatelessWidget {

  final String title;
  final String caption;
  final String imageUrl;

  const _Slide({
    required this.title, 
    required this.caption, 
    required this.imageUrl
  });

  @override
  Widget build(BuildContext context) {

    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodySmall;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(image: AssetImage(imageUrl),),
            const SizedBox(height: 20,),
            Text(title, style: titleStyle,),
            const SizedBox(height: 10,),
            Text(caption, style: captionStyle,),

          ],
        ),
      ),
    );
  }
}
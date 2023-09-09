import 'package:cofe_app/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController controller;
  late AnimationController controllerTwo;

  late Animation<AlignmentGeometry> animation;
  late Animation<AlignmentGeometry> animationTwo;

  @override
  void initState() {
    // init();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );

    animation = Tween<AlignmentGeometry>(
            begin: Alignment.center, end: const FractionalOffset(.29, .5))
        .animate(controller);
    animationTwo = Tween<AlignmentGeometry>(
        begin: Alignment.center, end: const FractionalOffset(.56, .5))
        .animate(controller);
    controller.forward();
    super.initState();
  }

  void init() => Future.delayed(
        const Duration(seconds: 10),
        () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (builder) => const HomePage(),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF8047F8),
      body: Center(
          child: Stack(
            alignment: Alignment.center,
        children: [
          AlignTransition(
            alignment: animation,
            child: const Image(
              image: AssetImage("assets/images/Vector.png"),
              height: 75,
              width: 75,
            ),
          ),

          AlignTransition(
            alignment: animationTwo,
            child: TweenAnimationBuilder(
              tween: Tween<double>(
                begin: 0,
                end: 1,
              ),
              onEnd: () => Navigator.of(context).push(MaterialPageRoute(builder: (builder) => const HomePage())),
              duration: const Duration(milliseconds: 1700),
              builder: (context, value, child) => Opacity(
                opacity: value,
                child: const Image(
                  image: AssetImage("assets/images/Type.png"),
                  width: 100,
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}

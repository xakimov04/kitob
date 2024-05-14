import 'package:flutter/material.dart';
import 'package:kitob/pages/languages_select.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    _loadNextScreen();
  }

  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 3),
    vsync: this,
  )..repeat(
      reverse: false,
    );
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.fastOutSlowIn,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _loadNextScreen() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              const LanguagesSelect(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF08DFB8),
      child: Center(
        child: ScaleTransition(
          scale: _animation,
          child: const Image(
            image: AssetImage("assets/icons/image.png"),
            height: 200,
            width: 200,
          ),
        ),
      ),
    );
  }
}

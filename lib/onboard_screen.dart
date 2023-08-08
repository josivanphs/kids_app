import 'package:flutter/material.dart';
import 'package:kids_app/intro_screens/intro_page_1.dart';
import 'package:kids_app/intro_screens/intro_page_2.dart';
import 'package:kids_app/intro_screens/intro_page_3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({super.key});

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: const [
              IntroPageOne(),
              IntroPageTwo(),
              IntroPageThree(),
            ],
          ),
          Container(
            alignment: const Alignment(0, 0.80),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
//dot indicador
                const Text(
                  'Skip',
                  style: TextStyle(color: Colors.white),
                ),
                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: const SlideEffect(
                    activeDotColor: Colors.white,
                    paintStyle: PaintingStyle.fill,
                  ),
                ),
                const Text(
                  'Next',
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

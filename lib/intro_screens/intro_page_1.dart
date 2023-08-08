import 'package:flutter/material.dart';

class IntroPageOne extends StatelessWidget {
  final Color corVermelha = const Color.fromARGB(255, 2, 75, 4);
  final Color corVerde = Colors.green;
  final Color corAzul = Colors.blue;

  const IntroPageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: corVermelha,
      child: Column(
        children: [
            const Padding(
              padding: EdgeInsets.only(top: 50, right: 30),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Pular',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          SizedBox(
            child: Image.asset('assets/image_screen1.png'),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            child: Image.asset(
              'assets/logo.png',
              scale: 4.5,
            ),
          ),
          const Text(
            'Vistação',
            style: TextStyle(fontSize: 40.0, color: Colors.white),
          ),
          const SizedBox(
            height: 8.0,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 40.0),
            child: Text(
              """Agende sua visita nos seus espaços preferidos.""",
              style: TextStyle(fontSize: 25.0, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

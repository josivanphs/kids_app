import 'package:flutter/material.dart';

class IntroPageTwo extends StatelessWidget {
  const IntroPageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Center(
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
              child: Image.asset(
                'assets/stars.png',
                scale: 5,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              child: Image.asset(
                'assets/logomascara.png',
                scale: 6,
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
      ),
    );
  }
}

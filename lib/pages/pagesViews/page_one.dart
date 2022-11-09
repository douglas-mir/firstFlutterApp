import 'package:flutter/material.dart';

class OnePage extends StatelessWidget {
  const OnePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 200,
          decoration: const BoxDecoration(color: Colors.blueGrey),
          child: const Center(
            child: Text(
              'Oi Rogerinha',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
        ),
        Row(
          children: [
            Container(
              color: Colors.yellow,
              width: 215,
              height: 100,
              child: (const Center(
                child: Text('Maravilhosa'),
              )),
            ),
            Container(
              color: Colors.purple,
              width: 215,
              height: 100,
              child: (const Center(
                child: Text('Fofinha'),
              )),
            ),
          ],
        )
      ],
    );
  }
}

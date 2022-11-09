import 'package:flutter/material.dart';
import 'package:my_app/page_two.dart';
import 'package:my_app/to_do_list.dart';

class pageOne extends StatelessWidget {
  const pageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => pageTwo()));
            },
            child: Text('Page One')),
      ),
    );
  }
}

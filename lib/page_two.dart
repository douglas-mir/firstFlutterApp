import 'package:flutter/material.dart';
import 'package:my_app/page_one.dart';
import 'package:my_app/pages/home_pages.dart';
import 'package:my_app/to_do_list.dart';

class pageTwo extends StatelessWidget {
  const pageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => HomePage()));
            },
            child: Text('Page Two')),
      ),
    );
  }
}

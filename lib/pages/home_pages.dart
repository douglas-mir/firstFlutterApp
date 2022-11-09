import 'package:flutter/material.dart';
import 'package:my_app/pages/pagesViews/page_one.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //HomePage({Key? key}) : super(key: key);
  final PageController _pageController = PageController();

  int indexBottonNavegationBar = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AppBar'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text('Douglas'),
              accountEmail: Text('douglas@email'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.yellow,
                child: Text('D'),
              ),
            ),
            ListTile(
              title: const Text('Item 1'),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                _pageController.jumpToPage(0);
                Navigator.pop(context);
                setState(() {
                  indexBottonNavegationBar = 0;
                });
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                _pageController.jumpToPage(1);
                Navigator.pop(context);
                setState(() {
                  indexBottonNavegationBar = 1;
                });
              },
            ),
            ListTile(
              title: const Text('Item 3'),
              trailing: const Icon(Icons.arrow_forward),
              onTap: () {
                _pageController.jumpToPage(2);
                Navigator.pop(context);
                setState(() {
                  indexBottonNavegationBar = 2;
                });
              },
            )
          ],
        ),
      ),
      body: PageView(
        controller: _pageController,
        children: [
          const OnePage(),
          Container(
            color: Colors.red,
          ),
          Container(color: Colors.black)
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: indexBottonNavegationBar,
          onTap: (int page) {
            setState(() {
              indexBottonNavegationBar = page;
            });
            _pageController.animateToPage(page,
                duration: const Duration(milliseconds: 300),
                curve: Curves.fastLinearToSlowEaseIn);
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              label: 'Item 1',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_laundry_service_sharp),
              label: 'Item 2',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_laundry_service_sharp),
              label: 'Item 3',
            )
          ]),
    );
  }
}

import 'package:easy_and_safe_life_with_qr/create%20qr/create.dart';
import 'package:easy_and_safe_life_with_qr/profile/profile1.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:easy_and_safe_life_with_qr/chat/view/all_chats.dart';
import 'package:easy_and_safe_life_with_qr/helpers/constants.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = "/home-screen";

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeWidget(),
    AllChats(),
    //Container(),
    SettingsUI(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(
      //     "QR",
      //     style: TextStyle(color: Colors.white),
      //   ),
      //   centerTitle: true,
      // ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.indigo,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        currentIndex:
            _currentIndex, // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
            icon: new Icon(
              Icons.home,
              color: Colors.indigo,
            ),
            label: ('Home'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.mail, color: Colors.indigo),
            label: ('Chat'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.indigo),
            label: ('Profile'),
          )
        ],
      ),
    );
  }
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,title: Text(
          'Home',
          style: TextStyle(color: Colors.indigo),
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 1,
        actions: [
          IconButton(
              icon: Icon(
                Icons.qr_code_scanner,
                color: Colors.indigo,
              ),
              onPressed: () {})
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Get.toNamed(AllChats.routeName);
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => CreateQR()));
        },
        child: Icon(Icons.add),
        backgroundColor: KMainColor,
      ),
      body: SafeArea(
        child: GridView.count(
          crossAxisCount: 3,
          childAspectRatio: 1.0,
          padding: const EdgeInsets.all(4.0),
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 20.0,
          children: <Widget>[
            Card(
              child: Column(
                children: [
                  Text("QR-1"),
                  IconButton(
                    icon: Icon(
                      Icons.qr_code_scanner,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                children: [
                  Text("QR-2"),
                  IconButton(
                    icon: Icon(
                      Icons.qr_code_scanner,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                children: [
                  Text("QR-3"),
                  IconButton(
                    icon: Icon(
                      Icons.qr_code_scanner,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                children: [
                  Text("QR-4"),
                  IconButton(
                    icon: Icon(
                      Icons.qr_code_scanner,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                children: [
                  Text("QR-5"),
                  IconButton(
                    icon: Icon(
                      Icons.qr_code_scanner,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                children: [
                  Text("QR-6"),
                  IconButton(
                    icon: Icon(
                      Icons.qr_code_scanner,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                children: [
                  Text("QR-7"),
                  IconButton(
                    icon: Icon(
                      Icons.qr_code_scanner,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Card(
              child: Column(
                children: [
                  Text("QR-8"),
                  IconButton(
                    icon: Icon(
                      Icons.qr_code_scanner,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

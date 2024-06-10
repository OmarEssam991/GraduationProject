import 'package:finalui/profilePage.dart';
import 'package:flutter/material.dart';
import 'package:finalui/CommunityPage.dart';
import 'package:finalui/HomePage.dart';
import 'package:finalui/reminderPage.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  int currentIndex = 0;
  final screens = [
    HomePage(),
    CommunityPage(),
    Reminder(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Container(
            alignment: Alignment.center,
            width: 55,
            height: 55,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(70)),
            child: Image.asset(
              'assets/icons/logo-removebg-preview.png',
              height: 60,
              fit: BoxFit.fill,
            )),
        centerTitle: true,
        leading: Container(
          margin: const EdgeInsets.all(10),
          child: IconButton(
            icon: const Icon(
              Icons.person_pin,
              size: 24,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Profilepage()),
              );
            },
          ),
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
              ), //BoxDecoration
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.green),
                accountName: Text(
                  "Your full name",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                accountEmail: Text(
                  "YourEmali@Email.com",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                currentAccountPictureSize: Size.square(50),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 165, 255, 137),
                  child: Text(
                    "Y",
                    style:
                        TextStyle(fontSize: 30.0, color: Colors.orangeAccent),
                  ), //Text
                ), //circleAvatar
              ), //UserAccountDrawerHeader
            ), //DrawerHeader
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text(
                ' My Profile ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Profilepage()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.book),
              title: const Text(
                ' My Ads ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.workspace_premium),
              title: const Text(
                ' Go Premium ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.video_label),
              title: const Text(
                ' Settings ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.edit),
              title: const Text(
                ' Edit Profile ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text(
                'LogOut',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'community',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'reminder',
          )
        ],
      ),
    );
  }
}

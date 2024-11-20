import 'package:agency_app_frontend/features/pages/activity.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

import '../../data/models/add_date.dart';
import '../widgets/actionbuttons.dart';
import '../widgets/creditcard.dart';
import '../widgets/transactionlist.dart';
import 'my.card.dart';
import 'profile.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentindex = 0;

  final List<Widget> pages = [
    const HomeContent(), // Main content for the Home page
    const MyCardPage(), // Ensure this class is defined
    const ActivityPage(),
    const ProfilePage(),
  ];

  final box = Hive.box<Add_data>('data');
  final List<String> day = [
    'Monday',
    "Tuesday",
    "Wednesday",
    "Thursday",
    'Friday',
    'Saturday',
    'Sunday'
  ];

  @override
  void initState() {
    super.initState();
    // Set the status bar to be red
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.red,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.light,
      ),
    );
  }

  @override
  void dispose() {
    // Reset the status bar style when leaving this page
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.light,
      ),
    );
    super.dispose();
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: IndexedStack(
          index: currentindex, // Use IndexedStack to switch pages
          children: pages, // Use the pages list here
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            tabItem(Icons.home, "Home", 0),
            tabItem(Icons.credit_card, "My Card", 1),
            FloatingActionButton(
              onPressed: () => onTapTapped,
              backgroundColor: Colors.red[200],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              child: Icon(
                Icons.qr_code_scanner,
                color: Colors.red,
              ),
            ),
            tabItem(Icons.bar_chart, "Activity", 2),
            tabItem(Icons.person, "Profile", 3),
          ],
        ),
      ),
    );
  }

  Widget getList(Add_data history, int index) {
    return Dismissible(
      key: UniqueKey(),
      onDismissed: (direction) {
        box.deleteAt(index); // Delete the item from the box
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("${history.name} dismissed")),
        );
      },
      child: get(index, history),
    );
  }

  ListTile get(int index, Add_data history) {
    return ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Image.asset('assets/images/${history.name}.png', height: 40),
      ),
      title: Text(
        history.name,
        style: TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w600,
        ),
      ),
      subtitle: Text(
        '${day[history.datetime.weekday - 1]}  ${history.datetime.year}-${history.datetime.day}-${history.datetime.month}',
        style: TextStyle(
          fontWeight: FontWeight.w600,
        ),
      ),
      trailing: Text(
        history.amount,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 19,
          color: history.IN == 'Income' ? Colors.green : Colors.red,
        ),
      ),
    );
  }

  Widget tabItem(IconData icon, String label, int index) {
    return IconButton(
      onPressed: () => onTapTapped(index),
      icon: Column(
        children: [
          Icon(
            icon,
            color: currentindex == index ? Colors.red : Colors.black,
          ),
          Text(
            label,
            style: TextStyle(
              fontSize: 10,
              color: currentindex == index
                  ? Theme.of(context).primaryColor
                  : Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  void onTapTapped(int index) {
    setState(() {
      currentindex = index;
    });
  }
}

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Row(
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Welcome back!", style: TextStyle(color: Colors.white)),
                    Text("Kwapee",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
                const Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.notifications,
                      color: Colors.white,
                    ))
              ],
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 167),
                  color: Colors.white,
                  child: Column(
                    children: [
                      SizedBox(height: 100),
                      ActionButtons(),
                      SizedBox(height: 20),
                      TransactionList()
                    ],
                  ),
                ),
                Positioned(top: 20, left: 25, right: 25, child: CreditCard()),
              ],
            ),
          ),
        ],
      ),
    );
  }
} 
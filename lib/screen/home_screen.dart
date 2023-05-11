import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:labinfo/home_page.dart';
import 'package:labinfo/screen/signin_screen.dart';
import 'package:labinfo/utils/color_utils.dart';
import '../labinfo.dart';
import '../msg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // int pages = 0;
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home'),
    Text('Labinfo'),
    Text('Bot'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LabInfo'),
        actions: [
          PopupMenuButton(
            itemBuilder: (BuildContext context) => <PopupMenuEntry>[
              PopupMenuItem(
                  child: const ListTile(
                    leading: Icon(Icons.logout),
                    title: Text('Logout'),
                  ),
                  onTap: () => Navigator.of(context).pop(
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const SignInScreen()),
                      )),
            ],
          ),
        ],
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
          child: GNav(
            gap: 8,
            activeColor: Colors.white,
            iconSize: 24,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            duration: const Duration(milliseconds: 800),
            tabBackgroundColor: Colors.blue,
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.info,
                text: 'Labinfo',
              ),
              GButton(
                icon: Icons.chat,
                text: 'Bot',
              ),
            ],
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          hexStringToColor("CB2B93"),
          hexStringToColor("9546C4"),
          hexStringToColor("5E61F4"),
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: getSelectedWidget(selectedIndex: _selectedIndex),
      ),
    );
  }

  Widget getSelectedWidget({
    required selectedIndex,
  }) {
    Widget nav;
    switch (_selectedIndex) {
      case 0:
        nav = const HomePage();
        break;
      case 1:
        nav = const ReportPage();
        break;
      case 2:
        nav = const MessagePages();
        break;
      // case 3:
      //   nav = const Notification_Page();
      //   break;
      // case 4:
      //   nav = const Profile_page();
      //   break;
      default:
        nav = const HomeScreen();
        break;
    }
    return nav;
  }
}

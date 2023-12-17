import 'package:flutter/material.dart';
import 'package:houdou_app/core/utils/size_utils.dart';
import 'package:houdou_app/presentation/explorer_screen/explorer_screen.dart';
import 'package:houdou_app/presentation/settings2_screen/settings2.dart';

import '../settings_screen/settings_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _tabContents = [
    Container(
      child: Center(
        child: Text('Hello Accueil'),
      ),
    ),
    ExplorerScreen(),
    Container(
      child: Center(
        child: Text('Hello Reservations'),
      ),
    ),
    Settings2Screen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        height: 80.v,
        elevation: 0,
        selectedIndex: _selectedIndex,
        onDestinationSelected: _onItemTapped,
        destinations: [
          NavigationDestination(icon: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: AssetImage('assets/images/icone accueil.png'),
                  fit: BoxFit.cover,
                )
            ),
          ), label: ""),
          NavigationDestination(icon: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: AssetImage('assets/images/Icone_Reservation.png'),
                  fit: BoxFit.cover,
                )
            ),
          ), label: ""),
          NavigationDestination(
              icon: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                      image: AssetImage('assets/images/Icone-Video.png'),
                      fit: BoxFit.cover,
                    )
                ),
              ), label: ""),

          NavigationDestination(icon: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: AssetImage('assets/images/Icone Profil.png'),
                  fit: BoxFit.cover,
                )
            ),
          ), label: ""),
        ],
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: _tabContents,
      ),
    );
  }
}

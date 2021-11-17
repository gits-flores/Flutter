import 'package:flutter/material.dart';
import 'package:flutter_login/Screens/Disimpan/disimpan_screen.dart';
import 'package:flutter_login/Screens/HomeScreen/home_screen.dart';
import 'package:flutter_login/Screens/Jelajah/jelajah_screen.dart';
import 'package:flutter_login/Screens/Profil/profil_screen.dart';

class Navigasi extends StatefulWidget {
  const Navigasi({Key key}) : super(key: key);

  @override
  _NavigasiState createState() => _NavigasiState();
}

class _NavigasiState extends State<Navigasi> {

  int selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget> [
    HomeScreen(),
    JelajahScreen(),
    DisimpanScreen(),
    ProfilScreen(),
  ];

  void onItemTap(int index){
    setState(() {
      selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon:  Icon(Icons.home, size: 24,),
            label: "Beranda",
          ),
          BottomNavigationBarItem(
            icon:  Icon(Icons.explore_outlined, size: 24,),
            label: "Jelajahi",
          ),
          BottomNavigationBarItem(
            icon:  Icon(Icons.bookmark_outline, size: 24),
            label: "Disimpan",
          ),
          BottomNavigationBarItem(
            icon:  Icon(Icons.person_outline, size: 24),
            label: "Profi",
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Color(0xFF1967D3),
        unselectedItemColor: Colors.grey,
        onTap: onItemTap,
        showUnselectedLabels: true,
      ),

      body: _widgetOptions.elementAt(selectedIndex),

    );
  }
}

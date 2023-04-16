import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: Container     (


          color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric( horizontal : 15, vertical: 20 ),
          child: GNav
            ( gap:8,
              backgroundColor: Colors.black,
             color: Colors.white,
            tabBackgroundColor: Colors.tealAccent,
            padding: EdgeInsets.all(16),
            CurrentIndex: _selectedIndex,
            onTabChange: _selectedIndex ,



            tabs: const [
              GButton (icon: Icons.home,
              text: 'Home'
                ,
              ),
              GButton (icon: Icons.add_box_outlined,
                  text: 'Window'
                  ,
              ),
              GButton (icon: Icons.doorbell_outlined,
                  text: 'Notifications'
                  ,
              ),
              GButton (icon: Icons.person_2_outlined,
                  text: 'Profile'
                  ,
              ) ]

          ),
        ),
      ),
    );
  }
}

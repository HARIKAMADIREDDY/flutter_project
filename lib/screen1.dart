import 'package:flutter/material.dart';
import 'bottom_navigationbar_model.dart' as nav;
import 'model.dart' as profile;
class screen1 extends StatefulWidget {
  const screen1({super.key});

  @override
  State<screen1> createState() => _screen1State();
}

class _screen1State extends State<screen1> {
  int _selectedIndex = 0; // Track selected tab
  final List<profile.ProfileOption> profileOptions = profile.options;
  //final List<nav.CustomNavItem> navOptions = nav.options;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      // You can add navigation or other logic here based on the index
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 80), // Pushes image down
          Center(
            child: Image.asset(
              'assets/images/profile.png',
              height: 120,
              width: 120,
            ),
          ),
          SizedBox(height: 10,),
          Text('Harika Reddy',style: TextStyle(fontWeight:FontWeight.bold),),
          SizedBox(height: 10,),
          Text('Madireddy',style: TextStyle(color: Colors.grey),),
          SizedBox(height: 0,),

          ListView.builder(
            shrinkWrap: true,
            itemCount: profileOptions.length,
            itemBuilder: (context, index) {
              final option = profileOptions[index];
              return Column(
                children: [
                  Divider(color: Colors.grey, thickness: 1),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
                    child: Row(
                      children: [
                        Icon(option.icon, size: 50, color: option.color),
                        SizedBox(width: 30),
                        Expanded(
                          child: Text(option.title, style: TextStyle(fontSize: 16, color: option.color),),
                        ),
                        Icon(Icons.chevron_right, size: 50, color: option.color),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
      SizedBox(height: 50,),
      // Bottom Navigation Bar with floating icon





        ],

      ),


      bottomNavigationBar: nav.CustomBottomNavBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),



    );


  }
}


import 'package:flutter/material.dart';
import '../../../HostList/view/HostList.dart';
import '../../../navigationBar.dart';
import '../../call_Details/view/callLogs.dart';
import '../../home/view/homeScreen.dart';


class TabScreen extends StatefulWidget {
  const TabScreen({super.key});

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  // var IconData= [ const HomeIcon(),const CallDetails(),const AccountHolder(),];
  int selectedItem = 0;

  static final List<Widget> _widgetOptions = <Widget>[

    const HomeScreen(),
    const CallLogs(),
    const AddBarScreen(),
    const HostList(),


  ];


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.blue,

      body: Center(child: _widgetOptions.elementAt(selectedItem),),


      bottomNavigationBar:BottomNavigationBar(selectedItemColor: Colors.orange,showUnselectedLabels: true,
          unselectedItemColor: Colors.black,
        items:  const <BottomNavigationBarItem> [
          BottomNavigationBarItem(icon: Icon (Icons.home),label: "Home"),

          BottomNavigationBarItem(icon: Icon (Icons.add_call),label:"Call Details",),
          BottomNavigationBarItem(icon: Icon (Icons.add),label:"Add"),
          BottomNavigationBarItem(icon: Icon (Icons.account_box),label:"HostList"),

        ],

          currentIndex: selectedItem,
        onTap: (abc){
          setState(() {
            selectedItem = abc;
          });
        }

      )
    );
  }}

// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../screens/login_screen.dart';
import 'drawer_list_item.dart';

class HomeDrawer extends StatefulWidget {
  const HomeDrawer({Key? key}) : super(key: key);

  @override
  State<HomeDrawer> createState() => _HomeDrawerState();
}

class _HomeDrawerState extends State<HomeDrawer> {
  bool drawerHomeColor = true;
  bool drawerCartColor = false;
  bool drawerContactUsColor = false;
  bool drawerInfoColor = false;
  bool drawerExitColor = false;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text(
              "Ahmed Shalaby",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            currentAccountPicture: Container(
              width: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white,
                  width: 3.0,
                ),
              ),
              child: const CircleAvatar(
                radius: 60.0,
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage(
                  "https://scontent.fcai19-6.fna.fbcdn.net/v/t39.30808-6/272099135_4326758084095948_3617829109673745749_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=174925&_nc_eui2=AeE9MYIhwRiW6QASXa5fkjPPRYw12WrdQJhFjDXZat1AmPoiAfkAB7Toa15yKjQeaZULZQ71H2uMdYT6Z2NE4P-m&_nc_ohc=U_iPsWhOZacAX8vSqBo&_nc_ht=scontent.fcai19-6.fna&oh=00_AT8cDOUtZ-ywdqGOi3GDaFYtnvN-Ah19kpSsYg2_Tx0wYA&oe=62D4F9D3",
                ),
              ),
            ),
            accountEmail: const Text(
              "a7med.g.shalaby@gmail.com",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            decoration: const BoxDecoration(
              color: Colors.pink,
              /*image: DecorationImage(
                image: NetworkImage(
                  "put Your Background Image Here [link]",
                ),
                fit: BoxFit.cover,
              ),*/
            ),
          ),
          //Home ListTile
          DrawerListTileItem(
            itemTitle: 'Home',
            itemIcon: Icons.home,
            iconColor: Colors.pink,
            selected: drawerHomeColor,
            setStateFunction: () {
              setState(() {
                drawerHomeColor = true;
                drawerCartColor = false;
                drawerContactUsColor = false;
                drawerInfoColor = false;
                drawerExitColor = false;
              });
            },
          ),
          //Cart ListTile
          DrawerListTileItem(
            itemTitle: 'Cart',
            itemIcon: Icons.shopping_cart,
            iconColor: Colors.deepPurple,
            selected: drawerCartColor,
            setStateFunction: () {
              setState(() {
                drawerCartColor = true;
                drawerHomeColor = false;
                drawerContactUsColor = false;
                drawerInfoColor = false;
                drawerExitColor = false;
              });
            },
          ),
          //Contact Us ListTile
          DrawerListTileItem(
            itemTitle: 'Contact Us',
            itemIcon: Icons.phone,
            iconColor: Colors.blue,
            selected: drawerContactUsColor,
            setStateFunction: () {
              setState(() {
                drawerContactUsColor = true;
                drawerHomeColor = false;
                drawerCartColor = false;
                drawerInfoColor = false;
                drawerExitColor = false;
              });
            },
          ),
          //Info ListTile
          DrawerListTileItem(
            itemTitle: 'Info',
            itemIcon: Icons.info,
            iconColor: Colors.yellow,
            selected: drawerInfoColor,
            setStateFunction: () {
              setState(() {
                drawerInfoColor = true;
                drawerHomeColor = false;
                drawerCartColor = false;
                drawerContactUsColor = false;
                drawerExitColor = false;
              });
            },
          ),
          //Exit ListTile
          DrawerListTileItem(
            itemTitle: 'Exit',
            itemIcon: Icons.exit_to_app,
            iconColor: Colors.black,
            selected: drawerExitColor,
            setStateFunction: () async {
              setState(() {
                drawerExitColor = true;
                drawerHomeColor = false;
                drawerCartColor = false;
                drawerContactUsColor = false;
                drawerInfoColor = false;
              });
              final preferences = await SharedPreferences.getInstance();
              preferences.setBool('showHome', false);
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const LoginScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

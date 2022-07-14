import 'package:flutter/material.dart';

import '../widgets/home_screen.dart/app_bar.dart';
import '../widgets/home_screen.dart/home_drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _key = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      drawer: const HomeDrawer(),
      appBar: HomeAppBar(
        appBar: AppBar(),
        onTap: () {
          _key.currentState?.openDrawer();
        },
      ),
      body: Container(),
    );
  }
}

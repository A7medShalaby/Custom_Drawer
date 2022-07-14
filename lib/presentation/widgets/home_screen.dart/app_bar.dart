import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final AppBar appBar;
  final VoidCallback onTap;
  const HomeAppBar({
    Key? key,
    required this.appBar,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(55),
      child: AppBar(
        backgroundColor: Colors.pink,
        title: const Text(
          "Home Screen",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        elevation: 0.8,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
}

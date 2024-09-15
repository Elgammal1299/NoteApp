import 'package:flutter/material.dart';
import 'package:note_app/core/theme/color.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App To List'),
      ),
      body: const Column(),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: Colors.white,
        padding: EdgeInsets.zero,
        shape: const CircularNotchedRectangle(),
        notchMargin: 8,
        child: BottomNavigationBar(
            currentIndex: index,
            onTap: (value) {
              index = value;
              setState(() {});
            },
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: const [
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/images/task.png'),
                  ),
                  label: 'Setting'),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/images/notes.png'),
                  ),
                  label: 'list'),
            ]),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        backgroundColor: ColorsManager.primaryColor,
        shape: const StadiumBorder(
          side: BorderSide(color: Colors.white, width: 4),
        ),
        onPressed: () {},
        child: const Icon(
          Icons.add,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:todo_app_e/screens/Setting.dart';
import 'package:todo_app_e/screens/Task_screen.dart';
import 'package:todo_app_e/screens/widgets/show_add_task_bottom_sheet.dart';

class HomeLayout extends StatefulWidget {
  static const String routeName = "home-layout";

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        title: Text("Todo App", style: Theme.of(context).textTheme.bodyLarge),
      ),
      floatingActionButton: FloatingActionButton(
        shape: const StadiumBorder(
            side: BorderSide(color: Colors.white, width: 4)),
        onPressed: () {
          showAddTaskSheet();
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        color: Colors.white,
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          iconSize: 30,
          elevation: 0.0,
          currentIndex: index,
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.list,
                  size: 32,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                  size: 32,
                ),
                label: ''),
          ],
        ),
      ),
      body: tabs[index],
    );
  }

  void showAddTaskSheet() {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (buildContext) {
          return ShowAddTaskBottomSheet();
        });
  }

  var tabs = [SettengScreen(), TaskScreen()];
}

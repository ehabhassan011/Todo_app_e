import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:todo_app_e/screens/widgets/task_widgets.dart';

class TaskScreen extends StatefulWidget {
  static const String routeName = "task-screen";

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  DateTime date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 15,
        ),
        DatePicker(
          DateTime.now(),
          initialSelectedDate: DateTime.now(),
          selectionColor: Colors.black,
          selectedTextColor: Colors.white,
          height: 100,
          dateTextStyle: TextStyle(fontSize: 22, color: Colors.black),
          dayTextStyle: TextStyle(fontSize: 14, color: Colors.black),
          monthTextStyle: TextStyle(fontSize: 15, color: Colors.black),
          onDateChange: (newdate) {
            // New date selected
            setState(() {
              date = newdate;
            });
          },
        ),
        SizedBox(
          height: 15,
        ),
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context, index) => SizedBox(
              height: 10,
            ),
            itemBuilder: (context, index) {
              return TaskWidget();
            },
            itemCount: 5,
          ),
        )
      ],
    );
  }
}

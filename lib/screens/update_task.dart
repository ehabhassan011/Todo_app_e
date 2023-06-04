import 'package:flutter/material.dart';
import 'package:todo_app_e/firebase_function/firebase_function.dart';
import 'package:todo_app_e/models/Taskmodel.dart';

class UpdateTask extends StatelessWidget {
  static const String routeName = "update-task";
  var titleController = TextEditingController();

  var descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var task = ModalRoute.of(context)!.settings.arguments as TaskModel;
    titleController.text = task.title;
    descriptionController.text = task.description;

    return Scaffold(
      appBar: AppBar(
        title: Text("TaskEdit"),
      ),
      body: Column(
        children: [
          TextFormField(
            controller: titleController,
            decoration: InputDecoration(label: Text("Task Title")),
          ),
          TextFormField(
            controller: descriptionController,
            decoration: InputDecoration(label: Text("Task decription ")),
          ),
          ElevatedButton(
            onPressed: () {
              task.title = titleController.text;
              task.description = descriptionController.text;
              FirebaseFunctions.updateTask(task.id, task);
              Navigator.pop(context);
            },
            child: Text("Edit"),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:todo_app_e/firebase_function/firebase_function.dart';
import 'package:todo_app_e/models/Taskmodel.dart';
import 'package:todo_app_e/screens/update_task.dart';

class TaskWidget extends StatelessWidget {
  TaskModel taskModel;

  TaskWidget(this.taskModel);

  @override
  Widget build(BuildContext context) {
    return Slidable(
      startActionPane: ActionPane(motion: DrawerMotion(), children: [
        SlidableAction(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12), bottomLeft: Radius.circular(12)),
          backgroundColor: Colors.red,
          onPressed: (context) {
            FirebaseFunctions.deleteTask(taskModel.id);
          },
          icon: Icons.delete,
          label: "Delete",
        ),
        SlidableAction(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(12), bottomRight: Radius.circular(12)),
          backgroundColor: Theme.of(context).primaryColor,
          onPressed: (context) {
            Navigator.pushNamed(context, UpdateTask.routeName,
                arguments: taskModel);
          },
          icon: Icons.edit,
          label: "Edit",
        )
      ]),
      child: SizedBox(
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          margin: EdgeInsets.symmetric(horizontal: 18),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 90,
                child: VerticalDivider(
                  width: 30,
                  thickness: 4,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    taskModel.title,
                    style: taskModel.isDone
                        ? Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: Colors.green)
                        : Theme.of(context).textTheme.bodyMedium,
                  ),
                  Text(
                    taskModel.description,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
              Spacer(),
              taskModel.isDone
                  ? Text(
                      "DONE",
                      style: TextStyle(color: Colors.green),
                    )
                  : InkWell(
                      onTap: () {
                        taskModel.isDone = true;
                        FirebaseFunctions.updateTask(taskModel.id, taskModel);
                      },
                      child: Container(
                          margin: EdgeInsets.only(right: 12),
                          padding:
                              EdgeInsets.symmetric(horizontal: 25, vertical: 2),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Theme.of(context).primaryColor),
                          child: Icon(
                            Icons.done,
                            size: 30,
                            color: Colors.white,
                          )),
                    )
            ],
          ),
        ),
      ),
    );
  }
}

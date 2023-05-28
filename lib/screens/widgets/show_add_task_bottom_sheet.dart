import 'package:flutter/material.dart';

class ShowAddTaskBottomSheet extends StatefulWidget {
  static const String routeName = "showaddTask";

  @override
  State<ShowAddTaskBottomSheet> createState() => _ShowAddTaskBottomSheetState();
}

class _ShowAddTaskBottomSheetState extends State<ShowAddTaskBottomSheet> {
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Add New Task",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              SizedBox(
                height: 35,
              ),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "please enter Task Title";
                  } else if (value.length != 10) {
                    return "please Add 10 char";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  label: Text("Task Title"),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.black)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide:
                          BorderSide(color: Theme.of(context).primaryColor)),
                ),
              ),
              SizedBox(height: 25),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "please enter Task Description";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  label: Text("Task Description"),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.black)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide:
                          BorderSide(color: Theme.of(context).primaryColor)),
                ),
              ),
              SizedBox(height: 15),
              Container(
                width: double.infinity,
                child: Text(
                  "Select Time",
                  textAlign: TextAlign.start,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
              ),
              SizedBox(height: 15),
              InkWell(
                onTap: () {
                  ChooseTaskDate(context);
                },
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    "12/12/2012",
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(20, 20), padding: EdgeInsets.all(15)),
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      print("Route");
                    }
                  },
                  child: Text(
                    'Add Task',
                    style: TextStyle(fontSize: 18),
                  )),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void ChooseTaskDate(BuildContext context) {
    showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime.now().add(Duration(days: 365)));
  }
}

//Date 26/12/2022 09:20 AM

//Flutter Learning Day 49.
//Topics covered is Passing Data.

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Task {
  final String task_name;
  final String description;

  Task(this.task_name, this.description);
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Passing Data',
    home: TodosScreen(

      // generate list
      tasks: List.generate(
        10,
            (i) => Task(
          'Task $i',
          'Task Description $i',
        ),
      ),
    ),
  ));
}

// Home screen
class TodosScreen extends StatelessWidget {
  final List<Task> tasks;

  TodosScreen({Key? key, required this.tasks}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Send Data to Screen'),
        backgroundColor: Colors.red,
      ),
      // List builder
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(tasks[index].task_name),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(task: tasks[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

// detail screen
class DetailScreen extends StatelessWidget {

  final Task task;
  DetailScreen({Key? key, required this.task}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(task.task_name),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(task.description),
      ),
    );
  }
}
import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todos/task.dart';

import 'package:todos/todos_model.dart';
import 'package:todos/task_list.dart';

class TasksTab extends StatelessWidget {
  
  final UnmodifiableListView<Task> Function(TodosModel) getTasks;

  TasksTab(this.getTasks) {

  }
  

  @override
  Widget build(BuildContext context) {
    return Container(

      // This is Provider's Consumer
      child: Consumer<TodosModel>(
        builder: (context, todos, child) => TaskList(
          tasks: getTasks(todos),
        ),
      ),
    );
  }
}

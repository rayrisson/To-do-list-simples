import 'package:flutter/material.dart';
import 'package:to_do_list/components/formAddToDo.dart';
import 'package:to_do_list/components/toDoList.dart';
import 'package:to_do_list/controllers/listController.dart';

class HomePage extends StatelessWidget {
  final ListController listController = ListController();

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    listController.pushData();
    return Scaffold(
      appBar: AppBar(
        title: const Text('To Do List'),
      ),
      body: Container(
        padding: const EdgeInsets.all(24.0),
        child: ToDoList(listController: listController),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(context: context, builder: (context) {
            return FormAdd(listController: listController);
          });
        },
        tooltip: 'Add',
        child: const Icon(Icons.add)
      ),
    );
  }
}

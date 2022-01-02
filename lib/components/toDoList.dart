import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:to_do_list/controllers/listController.dart';

import 'formAddToDo.dart';

class ToDoList extends StatelessWidget {
  final ListController listController;

  const ToDoList({Key? key, required this.listController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(
        builder: (_) => ListView.builder(
          itemBuilder: (_, index) => Card(
            child: Slidable(
              child: ListTile(
                leading: const Icon(Icons.article_rounded),
                title: Text(listController.toDoListTitle.toList()[index]),
                subtitle: Text(listController.toDoListDescription.toList()[index]),
                onTap: () {
                  listController.updateTitleAndDescription(index);
                  showDialog(context: context, builder: (context) {
                    return FormAdd(listController: listController, indexEditable: index);
                  });
                },
              ),
              endActionPane: ActionPane(
                motion: const BehindMotion(),
                children: [
                  SlidableAction(
                    onPressed: (_) => listController.deleteToDo(index),
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                    icon: Icons.delete,
                    label: 'DELETE',
                  )
                ],
              ),
            ),
          ),
          itemCount: listController.toDoListTitle.toList().length,
        )
    );
  }
}

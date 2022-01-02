import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:to_do_list/controllers/listController.dart';

class FormAdd extends StatelessWidget {
  final ListController listController;
  final int ?indexEditable;

  FormAdd({Key? key, required this.listController, this.indexEditable}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: AlertDialog(
          content: Container(
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                        'Adicionar tarefa',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w200
                      ),
                    ),
                    const SizedBox(height: 10),
                    Observer(
                      builder: (_) => TextField(
                        controller: listController.title,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Titulo'
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Observer(
                      builder:(_) => TextField(
                        controller: listController.description,
                        maxLines: 4,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Descrição'
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            indexEditable == null ? listController.addToDo() : listController.updateToDo(indexEditable!);
                            Navigator.of(context).pop();
                          },
                          child: const Text('Salvar'),
                        ),
                      ],
                    )
                  ],
                ),
              ),
        ),
      ),
    );
  }
}

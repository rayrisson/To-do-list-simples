import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'listController.g.dart';

class ListController = ListControllerBase with _$ListController;

abstract class ListControllerBase with Store{
  @observable
  ObservableList<String> toDoListTitle = ObservableList.of([]);

  @observable
  ObservableList<String> toDoListDescription = ObservableList.of([]);

  @observable
  TextEditingController title = TextEditingController();
  
  @observable
  TextEditingController description = TextEditingController();

  @action
  void addToDo(){
    toDoListTitle.add(title.text);
    toDoListDescription.add(description.text);
    clearInputController();
    saveLocale();
  }

  @action
  void updateToDo(int index){
    toDoListTitle[index] = title.text;
    toDoListDescription[index] = description.text;
    clearInputController();
    saveLocale();
  }

  @action
  void deleteToDo(int index){
    toDoListTitle.removeAt(index);
    toDoListDescription.removeAt(index);
    saveLocale();
  }

  @action
  void updateTitleAndDescription(int index){
    title.text = toDoListTitle[index];
    description.text = toDoListDescription[index];
  }

  void clearInputController(){
    title.clear();
    description.clear();
  }

  @action
  pushData() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    toDoListTitle = ObservableList.of(prefs.getStringList('toDoTitles')!);
    toDoListDescription = ObservableList.of(prefs.getStringList('toDoDescriptions')!);
  }

  saveLocale() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setStringList('toDoTitles', toDoListTitle.toList());
    prefs.setStringList('toDoDescriptions', toDoListDescription.toList());
  }
}
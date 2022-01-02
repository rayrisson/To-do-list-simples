// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listController.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ListController on ListControllerBase, Store {
  final _$toDoListTitleAtom = Atom(name: 'ListControllerBase.toDoListTitle');

  @override
  ObservableList<String> get toDoListTitle {
    _$toDoListTitleAtom.reportRead();
    return super.toDoListTitle;
  }

  @override
  set toDoListTitle(ObservableList<String> value) {
    _$toDoListTitleAtom.reportWrite(value, super.toDoListTitle, () {
      super.toDoListTitle = value;
    });
  }

  final _$toDoListDescriptionAtom =
      Atom(name: 'ListControllerBase.toDoListDescription');

  @override
  ObservableList<String> get toDoListDescription {
    _$toDoListDescriptionAtom.reportRead();
    return super.toDoListDescription;
  }

  @override
  set toDoListDescription(ObservableList<String> value) {
    _$toDoListDescriptionAtom.reportWrite(value, super.toDoListDescription, () {
      super.toDoListDescription = value;
    });
  }

  final _$titleAtom = Atom(name: 'ListControllerBase.title');

  @override
  TextEditingController get title {
    _$titleAtom.reportRead();
    return super.title;
  }

  @override
  set title(TextEditingController value) {
    _$titleAtom.reportWrite(value, super.title, () {
      super.title = value;
    });
  }

  final _$descriptionAtom = Atom(name: 'ListControllerBase.description');

  @override
  TextEditingController get description {
    _$descriptionAtom.reportRead();
    return super.description;
  }

  @override
  set description(TextEditingController value) {
    _$descriptionAtom.reportWrite(value, super.description, () {
      super.description = value;
    });
  }

  final _$pushDataAsyncAction = AsyncAction('ListControllerBase.pushData');

  @override
  Future pushData() {
    return _$pushDataAsyncAction.run(() => super.pushData());
  }

  final _$ListControllerBaseActionController =
      ActionController(name: 'ListControllerBase');

  @override
  void addToDo() {
    final _$actionInfo = _$ListControllerBaseActionController.startAction(
        name: 'ListControllerBase.addToDo');
    try {
      return super.addToDo();
    } finally {
      _$ListControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateToDo(int index) {
    final _$actionInfo = _$ListControllerBaseActionController.startAction(
        name: 'ListControllerBase.updateToDo');
    try {
      return super.updateToDo(index);
    } finally {
      _$ListControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void deleteToDo(int index) {
    final _$actionInfo = _$ListControllerBaseActionController.startAction(
        name: 'ListControllerBase.deleteToDo');
    try {
      return super.deleteToDo(index);
    } finally {
      _$ListControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateTitleAndDescription(int index) {
    final _$actionInfo = _$ListControllerBaseActionController.startAction(
        name: 'ListControllerBase.updateTitleAndDescription');
    try {
      return super.updateTitleAndDescription(index);
    } finally {
      _$ListControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
toDoListTitle: ${toDoListTitle},
toDoListDescription: ${toDoListDescription},
title: ${title},
description: ${description}
    ''';
  }
}

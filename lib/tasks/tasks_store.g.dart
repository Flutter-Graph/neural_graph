// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tasks_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TasksStore on _TasksStore, Store {
  final _$_TasksStoreActionController = ActionController(name: '_TasksStore');

  @override
  void addTask() {
    final _$actionInfo =
        _$_TasksStoreActionController.startAction(name: '_TasksStore.addTask');
    try {
      return super.addTask();
    } finally {
      _$_TasksStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  bool removeTask(Task task) {
    final _$actionInfo = _$_TasksStoreActionController.startAction(
        name: '_TasksStore.removeTask');
    try {
      return super.removeTask(task);
    } finally {
      _$_TasksStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''

    ''';
  }
}

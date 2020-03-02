// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_list.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TaskList on _TaskList, Store {
  final _$TasksAtom = Atom(name: '_TaskList.Tasks');

  @override
  ObservableList<Task> get Tasks {
    _$TasksAtom.context.enforceReadPolicy(_$TasksAtom);
    _$TasksAtom.reportObserved();
    return super.Tasks;
  }

  @override
  set Tasks(ObservableList<Task> value) {
    _$TasksAtom.context.conditionallyRunInAction(() {
      super.Tasks = value;
      _$TasksAtom.reportChanged();
    }, _$TasksAtom, name: '${_$TasksAtom.name}_set');
  }

  final _$filterAtom = Atom(name: '_TaskList.filter');

  @override
  VisibilityFilter get filter {
    _$filterAtom.context.enforceReadPolicy(_$filterAtom);
    _$filterAtom.reportObserved();
    return super.filter;
  }

  @override
  set filter(VisibilityFilter value) {
    _$filterAtom.context.conditionallyRunInAction(() {
      super.filter = value;
      _$filterAtom.reportChanged();
    }, _$filterAtom, name: '${_$filterAtom.name}_set');
  }

  final _$currentDescriptionAtom = Atom(name: '_TaskList.currentDescription');

  @override
  String get currentDescription {
    _$currentDescriptionAtom.context
        .enforceReadPolicy(_$currentDescriptionAtom);
    _$currentDescriptionAtom.reportObserved();
    return super.currentDescription;
  }

  @override
  set currentDescription(String value) {
    _$currentDescriptionAtom.context.conditionallyRunInAction(() {
      super.currentDescription = value;
      _$currentDescriptionAtom.reportChanged();
    }, _$currentDescriptionAtom, name: '${_$currentDescriptionAtom.name}_set');
  }

  @override
  String toString() {
    final string =
        'Tasks: ${Tasks.toString()},filter: ${filter.toString()},currentDescription: ${currentDescription.toString()}';
    return '{$string}';
  }
}

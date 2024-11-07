import 'package:equatable/equatable.dart';

abstract class CrudEvent extends Equatable {
  CrudEvent();
  @override
  List<Object> get props => [];
}

class AddItemToList extends CrudEvent {
  final String task;

  AddItemToList({required this.task});
  @override
  List<Object> get props => [task];
}

class DeleteItemFromList extends CrudEvent {
  final Object task;
  DeleteItemFromList({required this.task});

  @override
  List<Object> get props => [task];
}

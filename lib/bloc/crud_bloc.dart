import 'package:bloc/bloc.dart';
import 'package:crud_list_bloc/bloc/crud_event.dart';
import 'package:crud_list_bloc/bloc/crud_state.dart';

class CrudBloc extends Bloc<CrudEvent, CrudState> {
  final List<String> todolist = [];
  CrudBloc() : super(CrudState()) {
    on<AddItemToList>(_addItemToList);
    on<DeleteItemFromList>(_deleteItemToList);
  }

  void _addItemToList(AddItemToList event, Emitter<CrudState> emit) {
    todolist.add(event.task);

    emit(state.copyWith(to_do_list: List.from(todolist)));
  }

  void _deleteItemToList(DeleteItemFromList event, Emitter<CrudState> emit) {
    todolist.remove(event.task);

    emit(state.copyWith(to_do_list: List.from(todolist)));
  }
}

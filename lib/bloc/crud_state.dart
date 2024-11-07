import 'package:equatable/equatable.dart';

class CrudState extends Equatable {
  final List<String> to_do_list;

  const CrudState({this.to_do_list = const []});

  CrudState copyWith({List<String>? to_do_list}) {
    return CrudState(
      to_do_list: to_do_list ?? this.to_do_list,
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [to_do_list];
}

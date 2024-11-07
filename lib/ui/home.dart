import 'package:crud_list_bloc/bloc/crud_bloc.dart';
import 'package:crud_list_bloc/bloc/crud_event.dart';
import 'package:crud_list_bloc/bloc/crud_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CrudBloc, CrudState>(
        builder: (context, state) {
          if (state.to_do_list.isEmpty) {
            return Center(child: Text("Add Tasks to Get Started"));
          } else if (state.to_do_list.isNotEmpty) {
            return ListView.builder(
              itemCount: state.to_do_list.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(state.to_do_list[index]),
                  trailing: IconButton(
                      onPressed: () {
                        context.read<CrudBloc>().add(
                            DeleteItemFromList(task: state.to_do_list[index]));
                      },
                      icon: Icon(Icons.delete)),
                );
              },
            );
          } else {
            return SizedBox();
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          for (int i = 0; i < 4; i++) {
            context
                .read<CrudBloc>()
                .add(AddItemToList(task: 'Sujay Daniel  ' + i.toString()));
          }
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

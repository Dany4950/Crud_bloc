import 'package:crud_list_bloc/bloc/crud_bloc.dart';
import 'package:crud_list_bloc/ui/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CrudBloc(),
      child: MaterialApp(
        home: Home(),
      ),
    );
  }
}

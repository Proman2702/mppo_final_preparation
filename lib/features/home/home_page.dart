import 'package:flutter/material.dart';
import 'package:mppo_final/features/home/add_dialog.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(child: Text('бурда')),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(context: context, builder: (context) => AddDialog());
          },
          child: Icon(Icons.add),
        ));
  }
}

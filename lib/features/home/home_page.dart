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
<<<<<<< HEAD
        backgroundColor: const Color.fromARGB(255, 145, 98, 203),
        body: Center(child: Text('бурда')),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(context: context, builder: (context) => AddDialog());
          },
          child: Icon(Icons.add),
        ));
=======
      backgroundColor: const Color.fromARGB(255, 115, 77, 162),
      body: Center(
        child: Container(
          height: 140,
          width: 300,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                alignment: Alignment.center,
                width: double.infinity,
                height: 75,
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(25)),
                child: TextField(
                  onChanged: (value) => {name = value},
                  decoration: InputDecoration(labelText: 'Ввод имени из бд'),
                ),
              ),
              Spacer(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                      width: 130,
                      height: 40,
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                          child: Text('Удалить'))),
                  Spacer(),
                  SizedBox(width: 130, height: 40, child: ElevatedButton(onPressed: () {}, child: Text('Добавить')))
                ],
              )
            ],
          ),
        ),
      ),
    );
>>>>>>> c5dbfb21c3bb915fb5c8e8b53cb2792c7f71b063
  }
}

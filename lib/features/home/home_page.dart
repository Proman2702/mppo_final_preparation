import 'package:flutter/material.dart';

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
  }
}

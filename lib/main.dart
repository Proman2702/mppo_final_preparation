import 'package:flutter/material.dart';
import 'package:mppo_final/features/home/home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          fontFamily: 'Jura',
          textTheme: TextTheme(
            bodyMedium: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),
          )),
      home: const HomePage(),
    );
  }
}

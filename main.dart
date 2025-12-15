// main.dart
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'login_screen.dart';
import 'home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox('users');
  await Hive.openBox('history');
  await Hive.openBox('session');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final session = Hive.box('session');
    final isLoggedIn = session.get('loggedIn') == true;

    return MaterialApp(
      title: 'Disease Detector',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.teal),
      home: isLoggedIn ? HomeScreen() : LoginScreen(),
    );
  }
}


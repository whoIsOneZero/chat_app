import 'package:flutter/material.dart';
//import '../widgets/chat.dart';
//import '../widgets/messages.dart';
import '../widgets/side_menu.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ChitChat',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
        appBarTheme: const AppBarTheme(backgroundColor: Colors.white),
        brightness: Brightness.light,
        iconTheme: const IconThemeData().copyWith(color: Colors.blueGrey),
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Montserrat',
        textTheme: const TextTheme(
            displayMedium: TextStyle(
              color: Colors.black,
              fontSize: 32.0,
              fontWeight: FontWeight.bold,
            ),
            headlineMedium: TextStyle(
              fontSize: 12.0,
              color: Colors.black45,
              letterSpacing: 2.0,
            ),
            bodyLarge: TextStyle(
              color: Colors.black45,
              fontSize: 14.0,
              fontWeight: FontWeight.w600,
              letterSpacing: 1.0,
            ),
            bodyMedium: TextStyle(
              color: Colors.black45,
              letterSpacing: 1.0,
            )),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      themeMode: ThemeMode.light,
      home: const Shell(),
    );
  }
}

class Shell extends StatelessWidget {
  const Shell({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(
      //title: const Text("Home"),
      //),
      body: Column(
        children: const [
          SideMenu(),
        ],
      ),
    );
  }
}

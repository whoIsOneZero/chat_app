import 'package:flutter/material.dart';
import '../widgets/chat.dart';
import '../widgets/messages.dart';
import '../widgets/side_menu.dart';
//import 'package:google_fonts/google_fonts.dart';

void main() {
  //Added 2 lines to prevent app from fetching font from online source
  /*Update: took it out cos it was messing with the 'Quick Documentation'
  WidgetsFlutterBinding.ensureInitialized();
  GoogleFonts.config.allowRuntimeFetching = false;*/
  runApp(const MyApp());
}

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
              color: Colors.black,
              letterSpacing: 2.0,
            ),
            bodyLarge: TextStyle(
              color: Colors.black,
              fontSize: 14.0,
              fontWeight: FontWeight.w600,
              letterSpacing: 1.0,
            ),
            bodyMedium: TextStyle(
              color: Colors.black87,
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
      appBar: AppBar(
        backgroundColor: Colors.cyan,
      ),
      drawer: const Drawer(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topRight: Radius.circular(10.0),
          bottomRight: Radius.circular(10.0),
        )),
        width: 220,
        elevation: 10.0,
        child: SideMenu(),
      ),
      body: Row(
        children: const [
          /*SizedBox(
            width: 200.0,
            child: SideMenu(),
          ),*/
          SizedBox(
            width: 300.0,
            child: Messages(),
          ),
        ],
      ),
    );
  }
}

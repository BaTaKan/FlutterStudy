import 'package:flutter/material.dart';
import 'package:flutterproject/screens/loading.dart';
import 'package:flutterproject/screens/not_loading_recommend.dart';
import 'package:flutterproject/screens/settings.dart';
import 'package:flutterproject/screens/main_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutterproject/screens/weather.dart';
import 'package:flutterproject/screens/weather_screen.dart';
import 'package:flutterproject/screens/note_personal.dart';
import 'package:flutterproject/screens/personal_note_personal.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      //MyApp이 실행되면서 Loading을 실행시킴
      initialRoute: '/',
      routes: {
        '/' : (context) => LoginSignupScreen(),
        '/settings' :(context) => settings(),
        '/tt' :(context) => Loading(),
        
        '/weather':(context)=> WeatherScreen(),
        
        '/note_personal': (context) => NotePersonal(),
        '/notloading' :(context) => NotLoadingRecommend(),
        '/personal_note_personal': (context) => NotesPage(),
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:dapil_online/login.dart';
import 'package:flutter/services.dart';
import 'package:dapil_online/UserLobby/Beranda.dart';
void main() {
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Arial',
        scaffoldBackgroundColor: const Color(0xffDFE6F0)
      ),
      initialRoute: '/',
      routes: {
        '/BerandaUser': (context) => const BerandaUser()
      },
      home: const LoginScreen() ,
    );
  }
}

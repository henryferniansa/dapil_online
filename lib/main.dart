import 'package:dapil_online/model/db_connect.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:dapil_online/login.dart';
import 'package:flutter/services.dart';
import 'package:dapil_online/UserLobby/Beranda.dart';

Future<void> main() async {
  // var db = DBconnect();
  // db.addDapil(
  //     Dapil(
  //   id:'1',
  //   nama: 'Walker',
  //       wilayah : 'Jatim'
  // ));
  
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  // SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
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


      home: const Index() ,
    );
  }
}

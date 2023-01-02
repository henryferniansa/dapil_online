import 'package:dapil_online/masuk.dart';
import 'package:dapil_online/screens/login_screen.dart';
import 'package:dapil_online/screens/registration_screen.dart';
import 'package:flutter/material.dart';
import 'AdminLobby/adminlogin.dart';
import 'daftar.dart';

class Index extends StatelessWidget{
  const Index({super.key});


  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 70),
              height: 50,
              width: double.infinity,
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                      Container(
                          width: 70,
                          height: 30,
                          margin: const EdgeInsets.only(right: 15),
                          decoration: BoxDecoration(
                            border: Border.all(color: const Color(0xff65A7E1)),
                            borderRadius: BorderRadius.circular(5)
                          ),
                          child: TextButton(
                            onPressed: (){Navigator.push(context, MaterialPageRoute(
                                builder: (context) => LoginScreen()));},
                            style: const ButtonStyle(

                            ),
                            child: Image.asset('assets/images/admin.png',
                            height: 20,
                            width: 50,),
                          ))
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                color: const Color(0xff65A7E1),
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [BoxShadow(
                  color: Colors.black26,
                  offset: Offset(
                    2.0,
                    2.0,
                  ),
                  blurRadius: 3.0,
                  spreadRadius: 3.0,
                )]
              ),
              child: Image.asset('assets/images/logo_kpu.png'),
            ),
            Container(
              width: 200,
              height: 100,
              margin: const EdgeInsets.only(top: 30,bottom: 25),
              child: Row(
                children: const [
                  Expanded(
                    child: Text(
                      'KANCAPIL 2022',
                      style: TextStyle(
                        fontSize: 24,
                        shadows: [Shadow(
                          color: Colors.black26,
                          offset: Offset(
                            2.0,
                            2.0,
                          ),
                        )],
                        fontWeight: FontWeight.bold
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 160,
              margin: const EdgeInsets.only(bottom: 25),
              child: Row(
                children: const [
                  Expanded(
                    child: Text(
                      'Informasi Calon Anggota Legislatif 2022',
                      style: TextStyle(
                          fontSize: 12,
                      ),

                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 30),
              width: 304,
              height: 64,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white,width: 2),
                borderRadius: BorderRadius.circular(15)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 150,
                    height: 60,
                    child: TextButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => RegistrationScreen()));},
                    style: ButtonStyle(
                      backgroundColor: const MaterialStatePropertyAll(Color(0xffDFE6F0)),
                      foregroundColor: const MaterialStatePropertyAll(Colors.black),
                      shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)))
                    ),
                      child: const Text('Daftar'),

                    ),
                  ),
                  Container(
                    width: 150,
                    height: 60,

                    child: TextButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => LoginScreen()));},
                    style: ButtonStyle(
                      backgroundColor: const MaterialStatePropertyAll(Colors.white),
                      foregroundColor: const MaterialStatePropertyAll(Colors.black),
                        shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)))

                    ),
                      child: const Text('Masuk'),),
                  ),

                ],
              ),
            ),
          ],
        ),
      );
  }

}
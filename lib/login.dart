import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'daftar.dart';

class LoginScreen extends StatelessWidget{
  const LoginScreen({super.key});


  @override
  Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Color(0xffDFE6F0),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 70),
              height: 50,
              width: double.infinity,
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                      Container(
                          width: 70,
                          height: 30,
                          margin: EdgeInsets.only(right: 15),
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xff65A7E1)),
                            borderRadius: BorderRadius.circular(5)
                          ),
                          child: TextButton(
                            onPressed: (){},
                            child: Image.asset('assets/images/admin.png',
                            height: 20,
                            width: 50,),
                            style: ButtonStyle(

                            ),
                          ))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                color: Color(0xff65A7E1),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [BoxShadow(
                  color: Colors.black26,
                  offset: const Offset(
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
              margin: EdgeInsets.only(top: 30,bottom: 25),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'KANCAPIL 2022',
                      style: TextStyle(
                        fontSize: 24,
                        shadows: [Shadow(
                          color: Colors.black26,
                          offset: const Offset(
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
              margin: EdgeInsets.only(bottom: 25),
              child: Row(
                children: [
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
              margin: EdgeInsets.only(top: 30),
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
                              builder: (context) => const DaftarScreen()));},
                      child: Text('Daftar'),
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Color(0xffDFE6F0)),
                      foregroundColor: MaterialStatePropertyAll(Colors.black),
                      shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)))
                    ),

                    ),
                  ),
                  Container(
                    width: 150,
                    height: 60,

                    child: TextButton(
                        onPressed: (){}, child: Text('Masuk'),
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.white),
                      foregroundColor: MaterialStatePropertyAll(Colors.black),
                        shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)))

                    ),),
                  ),

                ],
              ),
            ),
            Container(),
          ],
        ),
      );
  }

}
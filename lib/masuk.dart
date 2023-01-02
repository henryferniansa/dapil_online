

import 'package:dapil_online/UserLobby/Beranda.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget{
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: const Color(0xFFDFE6F0),
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: const Color(0xFFDFE6F0),
          elevation: 0,
        ),
        body: Column(
          children: [
            SizedBox(
              width: 300,
              height: 300,
              child: Image.asset('assets/images/LOGO KPU(1).png',
              ),
            ),
            Column(
              children: [
                Container(
                  width: 260,
                  height: 60,
                  margin: const EdgeInsets.only(top: 60, ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white
                  ),
                  child:TextFormField(
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        contentPadding:
                        EdgeInsets.only(left: 15,bottom: 0,top:11,right: 15),
                        hintText: 'NIK'
                    ),
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,

                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  width: 260,
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white
                  ),
                  child:TextFormField(
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      contentPadding:
                      EdgeInsets.only(left: 15,bottom: 0,top:11,right: 15),
                      hintText: 'Password',


                    ),
                    style: const TextStyle(
                        color: Colors.green,
                        fontSize: 16
                    ),
                  ),
                )
              ],
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 60),
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: const MaterialStatePropertyAll(Colors.white),
                        foregroundColor: const MaterialStatePropertyAll(Colors.black),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
                        minimumSize: const MaterialStatePropertyAll(Size(170, 70))
                    ),
                    onPressed: () {},
                    child: const Text('Masuk',
                      style: TextStyle(
                          fontSize: 16,
                      ),)
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

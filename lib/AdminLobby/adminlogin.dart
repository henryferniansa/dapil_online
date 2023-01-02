

import 'package:dapil_online/UserLobby/Beranda.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;


class Admin extends StatefulWidget{
  const Admin ({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
 _AdminState createState() => _AdminState();
}

class _AdminState extends State<Admin> {
  bool  _visible= false;
  final userController = TextEditingController();
  final passController = TextEditingController();

  Future userLogin() async{
    setState(() {
      _visible = true;
    });
    var data = {
      'username': userController.text,
      'password': passController.text,
    };
    //Starting Web API Call.
    var response = await http.post(Uri.parse("http://192.168.0.104/system/login.php"), body: json.encode(data));
    if (response.statusCode == 200) {
    //Server response into variable
    print(response.body);
    var msg = jsonDecode(response.body);

    //Check Login Status
    if (msg['loginStatus'] == true) {
    setState(() {
    //hide progress indicator
    _visible = false;
    });

    // Navigate to Home Screen
    Navigator.push(
    context, MaterialPageRoute(builder: (context) => BerandaUser(uname:msg['userInfo']['NAME'])));
    } else {
    setState(() {
    //hide progress indicator
    _visible = false;

    //Show Error Message Dialog
    showMessage(msg["message"]);
    });
    }
    } else {
    setState(() {
    //hide progress indicator
    _visible = false;

    //Show Error Message Dialog
    showMessage("Error during connecting to Server.");
    });
    }
  }

  Future<dynamic> showMessage(String msg) async {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: new Text(msg),
          actions: <Widget>[
            TextButton(
              child: new Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );

      },
    );
  }

  final _formKey = GlobalKey<FormState>();

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
            Form(
              key: _formKey,
              child: Column(
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
                      controller: userController,
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
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please Enter User Name';
                        }
                        return null;
                      },
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
                      controller: passController,
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
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please Enter Password';
                        }
                        return null;
                      },
                    ),
                  )
                ],
              ),
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
                    onPressed: () { if (_formKey.currentState!.validate()) {userLogin();}},
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

  }}

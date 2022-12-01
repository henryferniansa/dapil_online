import 'package:flutter/material.dart';

import 'masuk.dart';

class DaftarScreen extends StatelessWidget{
  const DaftarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset : false,
        appBar: AppBar(
          title: Text('Daftar'),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 40),
                width: 300,
                height: 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Nama',
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),),
                    Container(
                      width: 300,
                      height: 40,
                      margin: EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.white
                      ),
                      child: TextFormField(
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 300,
                height: 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Password',
                      style: TextStyle(
                          fontWeight: FontWeight.bold
                      ),),
                    Container(
                      width: 300,
                      height: 40,
                      margin: EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.white
                      ),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 300,
                height: 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Konfirmasi Password',
                      style: TextStyle(
                          fontWeight: FontWeight.bold
                      ),),
                    Container(
                      width: 300,
                      height: 40,
                      margin: EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.white
                      ),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 300,
                height: 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('NIK',
                      style: TextStyle(
                          fontWeight: FontWeight.bold
                      ),),
                    Container(
                      width: 300,
                      height: 40,
                      margin: EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.white
                      ),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 300,
                height: 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Domisili',
                      style: TextStyle(
                          fontWeight: FontWeight.bold
                      ),),
                    Container(
                      width: 300,
                      height: 40,
                      margin: EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.white
                      ),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                width: 150,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white
                ),
                child: TextButton(
                  onPressed: ()=> showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      backgroundColor: Color(0xff65A7E1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                      ),
                      content: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                width: 200,
                                height: 200,
                                child: Image.asset('assets/images/check 1.png')),
                            Container(
                              margin: EdgeInsets.only(top: 20, bottom: 20),
                              child: Text('Selamat Pendaftaran Anda Berhasil',
                              style: TextStyle(
                                fontSize: 16
                              ),),
                            ),
                            Container(

                              width: 100,
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white
                              ),
                              child: TextButton(
                                style: ButtonStyle(
                                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(10)))

                                ),
                                onPressed: (){Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => const LoginForm()));},
                                child: Text('Masuk'),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                  ,
                style: ButtonStyle(
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(10)))
                ), child: const Text('Daftar'),),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
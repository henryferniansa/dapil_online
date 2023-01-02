import 'package:dapil_online/UserLobby/katalog.dart';
import 'package:flutter/material.dart';

class BerandaUser extends StatefulWidget{
  final String uname;
  const BerandaUser({super.key, required this.uname});


  @override
  State<BerandaUser> createState() => _BerandaUserState();
}

class _BerandaUserState extends State<BerandaUser> {
  int index = 2;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Image.asset('assets/images/logo_kpu.png',
            width: 50,
            height: 50,),
            const Text('KANCAPIL 2022',
            style: TextStyle(
              fontSize: 12,
              color: Colors.black,
              fontWeight: FontWeight.bold,
              shadows: [Shadow(
              color: Colors.black26,
              offset: Offset(
                2.0,
                2.0,
              ),
            )]
            ),
            ),

          ],
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              style: const ButtonStyle(
              ),
              child: Container(
                height: 100,
                  width: 300,
                  decoration: BoxDecoration(
                    color: const Color(0xff65A7E1),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: const Center(child: Text('Calon Anggota Legislatif',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16
                  ),))),
              onPressed: (){Navigator.push(context, MaterialPageRoute(
                  builder: (context) => const Katalog()));},
            ),

          ],
        ),
      ),

      );
  }
}
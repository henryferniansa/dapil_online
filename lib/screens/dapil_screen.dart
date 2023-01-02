
import 'package:flutter/material.dart';

class DapilScreen extends StatelessWidget{
  const DapilScreen({super.key});



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color(0xff65A7E1),
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Text('Syamsul Arif',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold
            ),),
          ),
          SizedBox(height: 25,),
          Container(
            child: Image.asset('assets/images/pp.png'),
          ),
          SizedBox(height: 25,),
          Container(
            child: Text('Dapil Wilayah X',
            style: TextStyle(
            fontSize: 30, fontWeight: FontWeight.bold)),
          ),
          SizedBox(height: 25,),

          Center(
            child: Container(
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              width: 350,
              height: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white
              ),
              child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
            ),
          )
        ],
      ),
    );
  }
}
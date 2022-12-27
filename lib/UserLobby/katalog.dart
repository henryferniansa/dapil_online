
import 'package:flutter/material.dart';

class Katalog extends StatefulWidget{

  @override
  State<Katalog> createState() => _KatalogState();
}

class _KatalogState extends State<Katalog> {
  List<String> items = ['Provinsi Jatim', 'Provinsi Jateng', 'Provinsi Jabar'];
  String? selectedItem = 'Provinsi Jatim';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff65A7E1),
      body: Padding(
        padding: EdgeInsets.only(top: 40),
        child: Center(

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 60,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white
                ),

                child: Center(child: Text('Calon Anggota Legislatif',
                  style: TextStyle(
                      color: Color(0xff65A7E1),
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                  ),
                )),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                height: 40,
                width: 230,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white
                ),

                child: Center(
                    child: SizedBox(
                      width: 220,
                      child: DropdownButton<String>(
                        underline: SizedBox(),
                        value : selectedItem,
                        items : items
                            .map((item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(item, style: TextStyle(fontSize: 12, color: Color(0xff65A7E1))),
                        )).toList(),onChanged: (item) => setState(() => selectedItem=item),
                      ),
                    )
                ),
              ),
              GridView.count(
                primary: false,
                padding: const EdgeInsets.only(right: 30, left: 30, bottom: 30, top : 20),
                crossAxisSpacing: 10,
                childAspectRatio: (4/5),
                mainAxisSpacing: 5,
                crossAxisCount: 2,
                shrinkWrap: true,
                children: <Widget>[
                  TextButton(
                    child: Container(
                        padding: const EdgeInsets.only(right: 10, left: 10, top : 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children:[
                              Image.asset('assets/images/pp.png',
                                height: 100,
                                width: 100,
                              ),
                              Container(
                                height: 60,
                                margin: EdgeInsets.only(top: 5),
                                width: 100,
                                child: Expanded(
                                  child: const Text('Syamsul Arif Dapil Wilayah X',
                                    style : TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ]
                        )
                    ),
                    onPressed: (){},
                  ),
                  TextButton(
                    child: Container(
                        padding: const EdgeInsets.only(right: 10, left: 10, top : 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children:[
                              Image.asset('assets/images/pp.png',
                                height: 100,
                                width: 100,
                              ),
                              Container(
                                height: 60,
                                margin: EdgeInsets.only(top: 5),
                                width: 100,
                                child: Expanded(
                                  child: const Text('Syamsul Arif Dapil Wilayah X',
                                      style : TextStyle(
                                          fontSize: 14,
                                          color: Colors.black,
                                      ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ]
                        )
                    ),
                    onPressed: (){},
                  ),
                  TextButton(
                    child: Container(
                        padding: const EdgeInsets.only(right: 10, left: 10, top : 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children:[
                              Image.asset('assets/images/pp.png',
                                height: 100,
                                width: 100,
                              ),
                              Container(
                                height: 60,
                                margin: EdgeInsets.only(top: 5),
                                width: 100,
                                child: Expanded(
                                  child: const Text('Syamsul Arif Dapil Wilayah X',
                                    style : TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ]
                        )
                    ),
                    onPressed: (){},
                  ),
                  TextButton(
                    child: Container(
                        padding: const EdgeInsets.only(right: 10, left: 10, top : 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children:[
                              Image.asset('assets/images/pp.png',
                                height: 100,
                                width: 100,
                              ),
                              Container(
                                height: 60,
                                margin: EdgeInsets.only(top: 5),
                                width: 100,
                                child: Expanded(
                                  child: const Text('Syamsul Arif Dapil Wilayah X',
                                    style : TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ]
                        )
                    ),
                    onPressed: (){},
                  ),
                  TextButton(
                    child: Container(
                        padding: const EdgeInsets.only(right: 10, left: 10, top : 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children:[
                              Image.asset('assets/images/pp.png',
                                height: 100,
                                width: 100,
                              ),
                              Container(
                                height: 60,
                                margin: EdgeInsets.only(top: 5),
                                width: 100,
                                child: Expanded(
                                  child: const Text('Syamsul Arif Dapil Wilayah X',
                                    style : TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ]
                        )
                    ),
                    onPressed: (){},
                  ),
                  TextButton(
                    child: Container(
                        padding: const EdgeInsets.only(right: 10, left: 10, top : 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children:[
                              Image.asset('assets/images/pp.png',
                                height: 100,
                                width: 100,
                              ),
                              Container(
                                height: 60,
                                margin: EdgeInsets.only(top: 5),
                                width: 100,
                                child: Expanded(
                                  child: const Text('Syamsul Arif Dapil Wilayah X',
                                    style : TextStyle(
                                      fontSize: 14,
                                      color: Colors.black,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ]
                        )
                    ),
                    onPressed: (){},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
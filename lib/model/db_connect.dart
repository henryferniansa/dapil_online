import 'package:dapil_online/model/dapil_model.dart';
import 'package:http/http.dart' as http;
import 'dapil_model.dart';
import 'dart:convert';
class DBconnect{
  final url = Uri.parse('https://katalogdapil-default-rtdb.asia-southeast1.firebasedatabase.app/Dapil.json');
  Future<void> addDapil(Dapil dapil) async{
    http.post(url, body: json.encode({
      'nama' : dapil.nama,
      'wilayah' : dapil.wilayah,
    }));
  }

  Future<List<Dapil>> fetchDapil()async{
    return http.get(url).then((response){
      var data = json.decode(response.body) as Map<String, dynamic>;
      List<Dapil> dapils = [];
      data.forEach((key, value) {
        var dapil = Dapil(
          id: key,
          nama : value['nama'],
          wilayah: value['wilayah'],
        );

        dapils.add(dapil);

      });
      return dapils;
    });
  }
}

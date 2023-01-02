class Dapil{
  final String id;
  final String nama;
  final String wilayah;

  Dapil({
required this.id,
    required this.nama,
    required this.wilayah,
  });

  @override
  String toString() {

    return 'Question(id:$id,nama:$nama, wilayah:$wilayah)';
  }
}
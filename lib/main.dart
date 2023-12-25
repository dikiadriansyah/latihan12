import 'package:flutter/material.dart';

void main() {
  runApp(const AppKu());
}

class AppKu extends StatelessWidget {
  const AppKu({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Latihan 12',
      theme: ThemeData(
        // -----------------
        // dapat mengubah font family pada satu per satu widget Text, kita dapat membuat font yang kita daftarkan menjadi default. Caranya dengan menambahkan parameter fontFamily pada kelas ThemeData yang ada pada parameter theme di MaterialApp
        fontFamily: 'Oswald',
          // -----------------
          primarySwatch: Colors.blue
      ),
      home: const FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget{
  const FirstScreen({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contoh fonts'),
      ),
      body: Center(
        child:
        Text(
            'Belajar Fonts',
          style: TextStyle(
            fontFamily: 'Oswald',
            fontSize: 30
          ),
        ),
        /*
        Pada kode di atas kita menambahkan fontFamily pada TextStyle. Kita cukup panggil nama font family yang telah kita daftarkan pada pubspec.yaml.
         */
      ),
    );
  }
}
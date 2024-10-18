import 'package:flutter/material.dart';

void main() => runApp( MyApp());

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyApp({super.key});

  Widget titleSection = Container(
  padding: EdgeInsets.all(32),
  child: Row(
    children: [
      Expanded(
        /* soal 1*/
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /* soal 2*/
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: const Text(
                'Wisata Gunung di Batu',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              'Batu, Malang, Indonesia',
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
      /* soal 3*/
      Icon(
       Icons.star,
        color: Colors.red[500],
      ),
      const Text('41' ),
    ],
  ),
);

Widget textSection = Container(
  padding: const EdgeInsets.all(32),
  child: const Text(
    'Kota Wisata Batu dengan berbagai objek wisata alam maupun buatannya, terkenal memiliki hawa yang sejuk dan dingin. Hal itu tak lepas lantaran kota yang berada di antara wilayah Kabupaten Malang sebelah barat ini dijaga oleh delapan gunung besar.'
    'Delapan gunung besar mengelilingi Kota Wisata Batu. Mulai dari Gunung Anjasmoro (2.277 m), Gunung Arjuno (3.339 m), Gunung Banyak (1.306 m), Gunung Kawi (2.551 m), Gunung Panderman (2.045 m), Gunung Semeru (3.676 m), Gunung Welirang (3.156 m), dan Gunung Wukir (335 m). Gunung-gunung yang bisa didaki tersebut tentu saja menyajikan banyak pilihan bagi para wisatawan yang gemar mendaki gunung. Ada beberapa jalur pendakian yang tersedia dan siap untuk ditaklukkan.'
    '\n\nNama : Mochammad Zakaro Al Fajri'
    '\nNIM  : 2241720175'
    'Selamat mengerjakan 🙂.',
    softWrap: true,
  ),
);

Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }

  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    return MaterialApp(
      title: 'Flutter layout: Mochammad Zakaro Al Fajri, 2241720175',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/lake.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ]
        ), 
      ),
    );
  }
}
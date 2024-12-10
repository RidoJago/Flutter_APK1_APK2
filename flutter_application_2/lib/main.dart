import 'package:flutter/material.dart';

class StateTeksUtama extends State<TeksUtama> {
  var listNama = [
    'Januari',
    'Februari',
    'Maret',
    'April',
    'Mei',
    'Juni',
    'Juli',
    'Agustus',
    'September',
    'Oktober',
    'November',
    'Desember'
  ];
  var listWarna = [
    Colors.red,
    Colors.blue,
    const Color.fromARGB(255, 255, 141, 179),
    Colors.green,
    Colors.black,
    Colors.white,
    Colors.yellow,
    Colors.cyan,
    Colors.lime
  ];

  var listBulan = [
    'Bulan 1',
    'Bulan 2',
    'Bulan 3',
    'Bulan 4',
    'Bulan 5',
    'Bulan 6',
    'Bulan 7',
    'Bulan 8',
    'Bulan 9',
    'Bulan 10',
    'Bulan 11',
    'Bulan 12',
  ];

  int index = 0;

  void incrementIndex() {
    setState(() {
      index++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.cyan[50],
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                  spreadRadius: 10,
                  offset: Offset.fromDirection(-9.5, 9.0),
                  blurRadius: 10)
            ]),
        child: Column(
          children: [
            Text(
              listBulan[index % listBulan.length],
              textDirection: TextDirection.ltr,
            ),
            Text(
              listNama[index % listNama.length],
              textDirection: TextDirection.ltr,
              style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: listWarna[index % listWarna.length]),
            )
          ],
        ));
  }
}

class TeksUtama extends StatefulWidget {
  final state = StateTeksUtama();

  @override
  State<StatefulWidget> createState() => state;
}

void main() {
  TeksUtama teksUtama = TeksUtama();

  runApp(MaterialApp(
      title: '2024',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tahun 2024'),
        ),
        body: Center(
          child: Column(
            children: [teksUtama],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          tooltip: 'Random',
          child: Icon(Icons.refresh),
          onPressed: teksUtama.state.incrementIndex,
        ),
      )));
}

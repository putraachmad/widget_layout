import 'package:flutter/material.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[800],
          leading: const Icon(Icons.home),
          title: const Text('Flutter Layout'),
        ),

        // YANG DIMODIFIKASI
        body: Container(
          margin: const EdgeInsets.all(10.0), // CODE BARU UNTUK MENGATUR MARGIN
          child: Column(
            children: <Widget>[
              Row(
                children: const <Widget>[
                  Icon(Icons.archive),
                  Text(
                    'Artikel Terbaru',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Center(
                child: SizedBox(
                  width: 220,
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        AspectRatio(
                          aspectRatio: 3 / 2,
                          child: Image.asset(
                            'assets/borobudur.jpg',
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 2),
                          child: Text(
                            'Candi Borobudur',
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const Text(
                          'Foto: Jakub Hałun / Wikimedia Commons (CC BY-SA 4.0)',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 9),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

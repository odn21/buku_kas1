// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print, library_private_types_in_public_api, use_key_in_widget_constructors

import 'package:flutter/material.dart';

// Widget utama yang menampilkan halaman beranda dengan app bar gradient ungu dan biru dan beberapa card yang berisi informasi tentang saldo awal, kas masuk, kas keluar, dan saldo akhir.
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

// StatefulWidget untuk HomePage yang berisi beberapa properti dan method, di antaranya:
// - appBarGradient: Gradient warna ungu dan biru yang digunakan sebagai background app bar.
// - build: Method yang digunakan untuk membangun tampilan halaman beranda.
class _HomePageState extends State<HomePage> {
  final appBarGradient = LinearGradient(
    colors: [Colors.purple[900]!, Colors.blue[900]!],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Periode 2024/2025', style: TextStyle(color: Colors.white)),
        flexibleSpace: Container(
          decoration: BoxDecoration(gradient: appBarGradient),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Container(
                width: 300,
                height: 150,
                decoration: BoxDecoration(
                  // color: Colors.purple[200],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Card(
                  color: Color(0xff718FF9),
                  child: InkWell(
                    splashColor: Colors.purple.withAlpha(30),
                    onTap: () {
                      print('Card 1 tapped.');
                    },
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 38,
                          decoration: BoxDecoration(color: Color(0xff857ECE)),
                          child: Row(
                            children: [
                              Text(
                                'Saldo Awal',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Text('Rp. 3.000.000,00'),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
              Container(
                width: 300,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.purple[200],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Card(
                  color: Colors.purple[200],
                  child: InkWell(
                    splashColor: Colors.purple.withAlpha(30),
                    onTap: () {
                      print('Card 2 tapped.');
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Kas Masuk',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text('Rp. 100.000,00'),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
              Container(
                width: 300,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.purple[200],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Card(
                  color: Colors.purple[200],
                  child: InkWell(
                    splashColor: Colors.purple.withAlpha(30),
                    onTap: () {
                      print('Card 3 tapped.');
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Kas Keluar',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        SizedBox(height: 20),
                        Text('Rp. 50.000,00'),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
              Container(
                width: 300,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.purple[200],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Card(
                  color: Colors.purple[200],
                  child: InkWell(
                    splashColor: Colors.purple.withAlpha(30),
                    onTap: () {
                      print('Card 4 tapped.');
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Saldo Akhir',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20)),
                        SizedBox(height: 20),
                        Text('Rp. 3.050.000,00'),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            // Container dengan gradient warna ungu dan biru di bagian atas drawer.
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blue[900]!, Colors.purple[900]!],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
            ),
            // Method buildListTile digunakan untuk membangun tampilan list tile dengan gradient warna ungu dan biru.
            buildListTile(
              title: 'Bendahara',
              icon: Icons.person,
            ),
            SizedBox(
              height: 20,
            ),
            buildListTile(
              title: 'Beranda',
              icon: Icons.home,
              routeName: '/beranda',
            ),
            buildListTile(
              title: 'Kas Masuk',
              icon: Icons.add_circle_outline,
            ),
            buildListTile(
              title: 'Kas Keluar',
              icon: Icons.remove_circle_outline,
            ),
            buildListTile(
              title: 'Iuran',
              icon: Icons.group,
            ),
            buildListTile(
              title: 'Laporan',
              icon: Icons.description,
              routeName: '/laporan',
            ),
            buildListTile(
              title: 'Struktur Pengurus',
              icon: Icons.group_work,
            ),
            buildListTile(
              title: 'Pengaturan',
              icon: Icons.settings,
            ),
            buildListTile(
              title: 'Bantuan',
              icon: Icons.help,
            ),
          ],
        ),
      ),
    );
  }

  // Method untuk membangun tampilan list tile dengan gradient warnaungu dan biru.
  // Parameter:
  // - title: Judul dari list tile.
  // - icon: Icon yang ditampilkan di sebelah kiri judul.
  // - routeName: Nama rute yang akan dilewati jika list tile ini ditekan.
  Widget buildListTile({
    required String title,
    required IconData icon,
    String? routeName,
  }) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey[300]!, width: 1),
        ),
        gradient: LinearGradient(
          colors: [Colors.blue[900]!, Colors.purple[900]!],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: ListTile(
        leading: Icon(icon, color: Colors.white),
        title: Text(title, style: TextStyle(color: Colors.white)),
        onTap: () {
          if (routeName != null) {
            Navigator.pushNamed(
              context,
              routeName,
            );
          }
        },
      ),
    );
  }
}

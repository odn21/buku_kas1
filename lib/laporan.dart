import 'package:flutter/material.dart';

class ReportPage extends StatefulWidget {
  @override
  _ReportPageState createState() => _ReportPageState();
}

class _ReportPageState extends State<ReportPage> {
  final appBarGradient = LinearGradient(
    colors: [Colors.purple[900]!, Colors.blue[900]!],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Periode 2024/2025',
          style: TextStyle(color: Colors.white),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(gradient: appBarGradient),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Container(
                width: 300,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.purple[200],
                ),
                child: Card(
                  color: Colors.purple[200],
                  child: InkWell(
                    splashColor: Colors.purple.withAlpha(30),
                    onTap: () {
                      print('');
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'PAB',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text('Januari 2024'),
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
                          '',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(''),
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
                          '',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        SizedBox(height: 20),
                        Text(''),
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
                      print('');
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20)),
                        SizedBox(height: 20),
                        Text(''),
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

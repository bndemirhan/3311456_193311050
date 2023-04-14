import 'package:flutter/material.dart';
import 'screens/giris_sayfasi.dart';
import 'screens/hatirlatici_sayfasi.dart';
import 'screens/profile_sayfasi.dart';
import 'screens/takvim_sayfasi.dart';

void main() {
  runApp(MaterialApp(
    title: 'EVCİL HAYVAN DEFTERİM',
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('EVCİL HAYVAN DEFTERİM ')),
      body: Column(
        children: [
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: [
                PetCard(
                  petName: 'Evcil Hayvan Oyunları',
                  petIcon: Icons.pets,
                ),
                PetCard(
                  petName: 'Evcil Hayvan Bilgilendirme Notları',
                  petIcon: Icons.lightbulb,
                ),
                PetCard(
                  petName: 'Yakındaki Petshoplar',
                  petIcon: Icons.not_listed_location_outlined,
                ),
                PetCard(
                  petName: 'Evcil Hayvan Malzemeleri',
                  petIcon: Icons.construction,
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.calendar_month),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CalendarPage()),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.alarm),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AlarmPage()),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.account_circle_rounded),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class PetCard extends StatelessWidget {
  final String petName;
  final IconData petIcon;

  PetCard({required this.petName, required this.petIcon});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PetsDetailPage(habitName: petName),
            ),
          );
        },
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                petIcon,
                size: 48.0,
              ),
              SizedBox(height: 8.0),
              Text(
                petName,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PetsDetailPage extends StatelessWidget {
  final String habitName;

  PetsDetailPage({required this.habitName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(habitName)),
      body: Center(
        child: Text('Detay sayfası for $habitName'),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Profil extends StatelessWidget {
  const Profil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 206, 206, 206),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 20),
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('assets/profil.jpg'),
            ),
            const SizedBox(height: 30),
            itemProfile(
                'Name', 'Angga Agustino Maulana', CupertinoIcons.person),
            const SizedBox(height: 10),
            itemProfile('Phone', '03107085816', CupertinoIcons.phone),
            const SizedBox(height: 10),
            itemProfile('Npm', '21670053', CupertinoIcons.calendar),
            const SizedBox(height: 10),
            itemProfile('Prodi', 'Informatika', CupertinoIcons.book),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Back '),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(15),
                backgroundColor: const Color.fromARGB(255, 61, 61, 61),
              ),
            ),
          ],
        ),
      ),
    );
  }

  itemProfile(String title, String subtitle, IconData iconData) {
    return Container(
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 190, 185, 185),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 5),
                color: Colors.white.withOpacity(.2),
                spreadRadius: 2,
                blurRadius: 10)
          ]),
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        leading: Icon(iconData),
        trailing: Icon(Icons.arrow_forward, color: Colors.grey.shade400),
        tileColor: Colors.white,
      ),
    );
  }
}

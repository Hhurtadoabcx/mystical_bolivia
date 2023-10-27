import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 40),
            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('assets/img/user.png'),
            ),
            const SizedBox(height: 20),
            itemProfile('Nombre', 'Adan Condori', CupertinoIcons.person),
            const SizedBox(height: 10),
            itemProfile('Teléfono', '59156748379', CupertinoIcons.phone),
            const SizedBox(height: 10),
            itemProfile('Dirección', 'calle falsa 123, 0000 Tangamandapio',
                CupertinoIcons.location),
            const SizedBox(height: 10),
            itemProfile('Correo', 'eldiavlo@gmail.com', CupertinoIcons.mail),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFFF725E),
                    padding: const EdgeInsets.all(15),
                  ),
                  child: const Text('Edit Profile')),
            )
          ],
        ),
      ),
    );
  }

  itemProfile(String title, String subtitle, IconData iconData) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 5),
                color: Color(0xFFFF725E).withOpacity(.2),
                spreadRadius: 2,
                blurRadius: 10)
          ]),
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        leading: Icon(iconData),
        trailing: Icon(Icons.arrow_forward, color: Color(0xFFFF725E)),
        tileColor: Colors.white,
      ),
    );
  }
}

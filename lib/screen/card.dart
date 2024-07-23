import 'package:flutter/material.dart';

class MiCard extends StatelessWidget {
  const MiCard({super.key});

  @override
  Widget build(BuildContext context) {
    // code
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage("assets/images/profile.jpg"),
              radius: 60.0,
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              "Steven Brain",
              style: TextStyle(
                color: Colors.white,
                fontFamily: "Rubik",
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Flutter Development",
              style: TextStyle(
                color: Colors.grey[500],
                fontFamily: "Rubik",
                fontSize: 14,
                fontWeight: FontWeight.normal,
              ),
            ),
            const Divider(
              indent: 60,
              endIndent: 60,
            ),
            Card(
              margin:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              color: Colors.blueGrey.withOpacity(0.3),
              child: itemCard(Icons.phone, "+11 222 123 121"),
            ),
            Card(
              margin:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              color: Colors.blueGrey.withOpacity(0.3),
              child: itemCard(Icons.email, "stevenbrain@mail.com"),
            ),
          ],
        ),
      ),
    );
  }

  ListTile itemCard(IconData iconData, String text) {
    return ListTile(
      leading: Icon(
        iconData,
        color: Colors.white,
      ),
      title: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontFamily: "Rubik",
          fontWeight: FontWeight.w400,
          fontSize: 16,
        ),
      ),
    );
  }
}

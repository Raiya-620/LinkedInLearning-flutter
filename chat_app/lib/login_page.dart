import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Let\'s sign you in',
              style: TextStyle(
                  color: Colors.brown,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              textAlign: TextAlign.center,
              'Welcome \n Let\'s sign you in',
              style: TextStyle(color: Colors.blueGrey, fontSize: 20),
            ),
            Container(
              padding: EdgeInsets.all(30),
              margin: EdgeInsets.all(20),
              height: 300,decoration: BoxDecoration(color: Colors.blue, image: DecorationImage(image: NetworkImage('https://images.pexels.com/photos/1386604/pexels-photo-1386604.jpeg?auto=compress&cs=tinysrgb&w=600'))),)
          ],
        ),
      ),
    );
  }
}

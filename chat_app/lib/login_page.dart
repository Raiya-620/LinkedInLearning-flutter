import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final userEmailController = TextEditingController();
  final userPasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  void onLoginButtonPressed(){
    if(_formKey.currentState!= null && _formKey.currentState!.validate()){
      print(userEmailController.text);
      print(userPasswordController.text);
      print('Login successful');
    }else{
      print('Login unsuccessful');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Let\'s sign you in',
                style: TextStyle(
                  color: Colors.brown,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                textAlign: TextAlign.center,
                'Welcome \n Let\'s sign you in',
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 20,
                ),
              ),
              Container(
                padding: EdgeInsets.all(30),
                margin: EdgeInsets.all(20),
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      'https://images.pexels.com/photos/1386604/pexels-photo-1386604.jpeg?auto=compress&cs=tinysrgb&w=600',
                    ),
                  ),
                ),
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      validator: (value) {
                        if (value != null &&
                            value.isNotEmpty &&
                            value.length < 5) {
                          return 'Email address should be greater than 5';
                        } else if (value != null && value.isEmpty) {
                          return 'please enter your email';
                        } else {
                          return null;
                        }
                      },
                      controller: userEmailController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter your email',
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              TextFormField(
                controller: userPasswordController,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter your password',
                ),
              ),
              SizedBox(
                height: 24,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(),
                      backgroundColor: Colors.deepPurple),
                  onPressed: () {onLoginButtonPressed();},
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white),
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

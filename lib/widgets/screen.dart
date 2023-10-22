import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final textStyle = const TextStyle(fontSize: 16, color: Colors.white38);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Center(child: Text("Login to VK")),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              SizedBox(height: 20),
              Text(
                "Sign in to VK",
                style: TextStyle(fontSize: 21, color: Colors.white),
              ),
              SizedBox(height: 10),
              Text(
                "Enter the phone number or email address, and password linked to this account",
                style: textStyle,
              ),
              SizedBox(height: 25),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    fillColor: Colors.white,
                    labelText: "Phone or Email",
                    labelStyle: TextStyle(color: Colors.white)),
              ),
              SizedBox(height: 10),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    fillColor: Colors.white,
                    labelText: "Password",
                    labelStyle: TextStyle(color: Colors.white)),
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white)),
                  onPressed: () {},
                  child: Text(
                    "Login",
                    style: TextStyle(color: Colors.black54, fontSize: 20),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

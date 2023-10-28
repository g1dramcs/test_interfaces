import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _emailcontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();
  String? errorText = null;

  void _auth() {
    final login = _emailcontroller.text;
    final password = _passwordcontroller.text;
    if (login == "admin" && password == "admin") {
      errorText = null;
    } else {
      errorText = "Лох, ошибся. *(Джейсон Стэтхем)";
    }

    setState(() {});
  }

  final textStyle = const TextStyle(fontSize: 16, color: Colors.white);

  final textFieldDecorator = const InputDecoration(
      enabledBorder:
          OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
      fillColor: Colors.white,
      labelStyle: TextStyle(color: Colors.white));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Center(child: Text("Login to your account")),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              SizedBox(height: 20),
              Text(
                "Sign in",
                style: TextStyle(fontSize: 21, color: Colors.white),
              ),
              SizedBox(height: 10),
              Text(
                "Enter the phone number or email address, and password linked to this account",
                style: textStyle,
              ),
              SizedBox(height: 25),
              if (errorText != null)
                Text(
                  errorText!,
                  style: TextStyle(color: Colors.red),
                ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Email or Phone",
                  style: textStyle,
                ),
              ),
              TextField(
                controller: _emailcontroller,
                obscureText: false,
                decoration: textFieldDecorator,
              ),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Password",
                  style: textStyle,
                ),
              ),
              TextField(
                  controller: _passwordcontroller,
                  obscureText: true,
                  style: TextStyle(color: Colors.white),
                  decoration: textFieldDecorator),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white)),
                  onPressed: () {
                    _auth();
                  },
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

import 'package:flutter/material.dart';
import 'package:proje_frontend/widgets/main_layout.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  login() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MainLayout(),),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Card(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24, 16, 24, 16),
                    child: TextField(
                      decoration: InputDecoration(hintText: "Kullanıcı Adı"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24, 8, 24, 8),
                    child: TextField(
                      decoration: InputDecoration(hintText: "Şifre"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(24, 16, 24, 16),
                    child: ElevatedButton(
                      onPressed: login,
                      style: ButtonStyle(),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.login),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Login"),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

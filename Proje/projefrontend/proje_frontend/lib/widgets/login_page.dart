import 'package:flutter/material.dart';
import 'package:proje_frontend/helpers/request.dart';
import 'package:proje_frontend/models/response.dart';
import 'package:proje_frontend/models/user.dart';
import 'package:proje_frontend/widgets/main_layout.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var usernameController = TextEditingController();
  var passwordController = TextEditingController();

  login() {
    var username = usernameController.text;
    var password = passwordController.text;
    Request.postWithoutToken(
      "auth/login",
      User(username: username, password: password),
    ).then((Response response) {
      if (response.isSuccess) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MainLayout()),
        );
      }else{
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(response.message),
            duration: Duration(seconds: 2),
          ),
        );
      }
    });
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
                      controller: usernameController,
                      decoration: InputDecoration(hintText: "Kullanıcı Adı"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24, 8, 24, 8),
                    child: TextField(
                      controller: passwordController,
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

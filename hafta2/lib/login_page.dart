import 'package:flutter/material.dart';
import 'package:hafta2/Models/user.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var usernameController = TextEditingController();
  var passwordController = TextEditingController();
  User? user;
  void login() {
    //var user = User(1, "emirozturk", "123");
    //var user2 = User(1, "emirozturk", "123",);
    /*
      var user = User(
        id: 1,
        username: "emirozturk",
        password: "123",
      );
      var user2 = User(
        password: "123",
        id: 1,
        address: "129348102938091823",
        username: "emirozturk",
      );
      */
    setState(() {
      user = User(
        id: 1,
        username: usernameController.text,
        password: passwordController.text,
      );
    });
    if (user != null) {
      var x = user?.id;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(150, 0, 150, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Login",
            style: TextStyle(
              fontSize: 34,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: usernameController,
              decoration: InputDecoration(
                hintText: "Kullanıcı Adı",
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Şifre",
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: login,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.login),
                  SizedBox(
                    width: 10,
                    height: 10,
                  ),
                  Text("Giriş Yap"),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text("Kayıt Ol"),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text("Şifremi Unuttum"),
                ),
              ],
            ),
          ),
          //DEBUG İÇİN AMA ELBET BİR GÜN SİLİNECEK
          user != null
              ? Text("${user!.id} ${user!.username} ${user!.address}")
              : Text("User daha girilmedi"),
        ],
      ),
    );
  }
}

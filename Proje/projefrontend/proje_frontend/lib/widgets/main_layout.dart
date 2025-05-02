import 'package:flutter/material.dart';
import 'package:proje_frontend/widgets/similarity_page.dart';
import 'package:proje_frontend/widgets/user_mainpage.dart';

class MainLayout extends StatefulWidget {
  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  var pageList = [UserMainpage(), SimilarityPage()];
  var currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Icon(Icons.music_note),
      ),
      body: pageList[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Anasayfa"),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: "Benzerlik"),
        ],
      ),
    );
  }
}

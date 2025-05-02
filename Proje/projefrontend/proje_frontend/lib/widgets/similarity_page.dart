import 'package:flutter/material.dart';
import 'package:proje_frontend/data_management.dart';
import 'package:proje_frontend/models/user_with_similiarities.dart';

class SimilarityPage extends StatefulWidget {
  @override
  State<SimilarityPage> createState() => _SimilarityPageState();
}

class _SimilarityPageState extends State<SimilarityPage> {
  List<UserWithSimiliarities> userList = DataManagement.similarityList;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: userList.length,
        itemBuilder:
            (context, index) => Padding(
              padding: EdgeInsets.all(8),
              child: Card(
                elevation: 2,
                child: ListTile(
                  onTap: () {},
                  tileColor:
                      userList[index].similarityScore < 0.3
                          ? Colors.red
                          : userList[index].similarityScore < 0.8
                          ? Colors.amber
                          : Colors.green,
                  title: Text(userList[index].user.username,style: TextStyle(color: Colors.white),),
                  trailing: Text(
                    "${userList[index].similarityScore}",
                    style: TextStyle(fontSize: 18,color: Colors.white),
                  ),
                ),
              ),
            ),
      ),
    );
  }
}

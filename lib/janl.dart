import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tvch/BookList/Book.dart';
import 'package:tvch/BookList/book_list_Model.dart';
import 'package:tvch/BookList/book_list_Page.dart';
import 'package:tvch/add_book_model/add_book_model.dart';

void main() => runApp(SetHome());

class SetHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<BookListModel>(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "設定",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
        ),
        extendBodyBehindAppBar: true,
        body: Consumer<BookListModel>(builder: (context, model, child) {
          return ListView(
            children: <Widget>[
              ListTile(
                  leading: Icon(Icons.person),
                  title: Text('登録・ログイン'),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BookList(),
                        ));
                  }),
              ListTile(
                  leading: Icon(Icons.photo_album),
                  title: Text('オカルト'),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BookList(),
                        ));
                  }),
              ListTile(
                leading: Icon(Icons.phone),
                title: Text(""),
              ),
            ],
          );
        }),
      ),
    );
  }
}

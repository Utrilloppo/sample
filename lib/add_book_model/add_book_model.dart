import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class AddBookModel extends ChangeNotifier {
  String bookTitle = "";

  Future addBooktoFirebase() async {
    if (bookTitle.isEmpty) {
      throw ("見入力です");
    }
    FirebaseFirestore.instance.collection("books").add(
      {"title": bookTitle, "createdAt": Timestamp.now()},
    );
  }
}

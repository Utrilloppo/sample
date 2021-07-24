import 'package:cloud_firestore/cloud_firestore.dart';

class Book {
  Book(this.title);
  String title;
  Timestamp createdAt;
}

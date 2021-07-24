import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tvch/BookList/book_list_Model.dart';
import 'package:tvch/add_book_model/add_book_page.dart';

class BookList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<BookListModel>(
      create: (_) => BookListModel()..fetchBooks(),
      child: Scaffold(
        appBar: AppBar(
          title: Text("悲しいこと"),
        ),
        body: Consumer<BookListModel>(
          builder: (context, model, child) {
            final books = model.books;
            final listCard = books
                .map((book) => Card(
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 12, bottom: 12, left: 7),
                        child: (Text(book.title)),
                      ),
                    ))
                .toList();
            return ListView(children: listCard);
          },
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.arrow_forward_ios),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => AddBookPage()));
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'quote.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList()
  ),); 
}

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(author: 'Oscar Wilde', name: 'James is the one who is the genius of all'),
    Quote(author: 'James Memba', name: 'this is james'),
    Quote(author: 'james the great', name: 'James is a great guy who will always make great decisions')
  ];

  Widget quoteTemplate(quote){
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Column(
        children: [
          Text(
            quote.name,
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.grey[600]
            ),
          ), 
          SizedBox(height: 6.0),
          Text(
            quote.author, 
            style: TextStyle(
              fontSize: 14.0,
              color: Colors.grey[800],
            ),

          ),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'), 
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => quoteTemplate(quote)).toList(),
      ),
    );
  }
}
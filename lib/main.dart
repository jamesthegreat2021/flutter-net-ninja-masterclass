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
        children: quotes.map((quote) => QuoteWidget(quote: quote)).toList(),
      ),
    );
  }
}

class QuoteWidget extends StatelessWidget {
  const QuoteWidget({
    super.key,
    required this.quote,
  });

  final dynamic quote;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Card(
        margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
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
      ),
    );
  }
}
import 'package:flutter/material.dart';

class QuoteWidget extends StatelessWidget {
  const QuoteWidget({
    super.key,
    required this.quote,
    required this.delete,
  });

  final dynamic quote;
  final dynamic delete;

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
            SizedBox(height: 8.0),
            TextButton.icon(onPressed: delete,
             label: Text('delete'),
             icon: Icon(Icons.delete),
             ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:json_app/netNinza/QuoteCard.dart';
import 'package:json_app/netNinza/Quotes.dart';

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(author: 'Osca Wilde', text: 'Volks Wagon das auto'),
    Quote(author: 'Ashis', text: 'haramkhor salo'),
    Quote(author: 'Carry Minathi', text: 'to kese hein ap log')
  ];
  // Widget quoteTemplate(quote) {
  //   return QuoteCard(quote: quote);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Awesome Quote'),
          centerTitle: true,
        ),
        body: Column(
          children: quotes
              .map((quote) => QuoteCard(
                  quote: quote,
                  delete: () {
                    setState(() {
                      quotes.remove(quote);
                    });
                  }))
              .toList(),
        ));
  }
}

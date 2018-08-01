import 'package:flutter/material.dart';

class SJStool extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Snap Journal';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this would produce 2 rows.
          crossAxisCount: 2,
          children: [
            new Text('Hello World!'),
          ],
        ),
      ),
    );
  }
}
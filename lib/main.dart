import 'package:flutter/material.dart';
import 'widgets/DialpadButton.dart';
import 'pages/SJFood.dart';
import 'pages/SJMood.dart';
import 'pages/SJMed.dart';
import 'pages/SJExercise.dart';
import 'pages/SJSleep.dart';
import 'pages/SJStool.dart';

/*
void main() {
  runApp(SnapJournalDialPad());
}
*/
void main() {
  runApp(MaterialApp(
    title: 'Named Routes Demo',
    // Start the app with the "/" named route. In our case, the app will start
    // on the FirstScreen Widget
    initialRoute: '/',
    routes: {
      // When we navigate to the "/" route, build the FirstScreen Widget
      '/': (context) => SnapJournalDialPad(),
      // When we navigate to the "/second" route, build the SecondScreen Widget
      '/SJFood': (context) => SJFood(),
      '/SJMood': (context) => SJMood(),
      '/SJMed': (context) => SJMed(),
      '/SJWorkout': (context) => SJExercise(),
      '/SJSleep': (context) => SJSleep(),
      '/SJStool': (context) => SJStool(),
    },
  ));
}
class SnapJournalDialPad extends StatelessWidget {
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
            DialPadButton(Icons.restaurant, 'Food', '/SJFood', context),
            DialPadButton(Icons.mood, 'Mood', '/SJMood', context),
            DialPadButton(Icons.fitness_center, 'Exercise', '/SJWorkout', context),

            DialPadButton(Icons.local_hospital, 'Meds', '/SJMed', context),
            DialPadButton(Icons.local_hotel, 'Sleep', '/SJSleep', context),
            DialPadButton(Icons.wc, 'Stool', '/SJStool', context),
          ],
        ),
      ),
    );
  }
}
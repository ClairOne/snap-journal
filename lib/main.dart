import 'package:flutter/material.dart';
import 'package:snap_journal/theme/style.dart';
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
    title: 'Apple A Day',
    // Start the app with the "/" named route. In our case, the app will start
    // on the Dialpad Widget
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
      theme: appTheme,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this would produce 2 rows.
          crossAxisCount: 2,
          children: [
            dialPadButton(Icons.restaurant, 'Food', '/SJFood', context),
            dialPadButton(Icons.mood, 'Mood', '/SJMood', context),
            dialPadButton(Icons.fitness_center, 'Exercise', '/SJWorkout', context),

            dialPadButton(Icons.local_hospital, 'Meds', '/SJMed', context),
            dialPadButton(Icons.local_hotel, 'Sleep', '/SJSleep', context),
            dialPadButton(Icons.wc, 'Stool', '/SJStool', context),
          ],
        ),
      ),
    );
  }
}
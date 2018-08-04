import 'package:flutter/material.dart';

class SJSleep extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _SJSleepState();
}

class _SJSleepData {
  String SJWhenSleep = '';
  String SJWhenAwake = '';

  String SJWokeUpFeeling = '';

  String SJInterruptionCount = '';
  String SJInterruptionCauses = '';

  String SJSleepQuality = '';

  String SJCaffieneCount = '';
  String SJCaffieneTimeOfLast = '';

  String SJActivityHourBeforeSleep = '';

  String SJHow = '';
  String SJOverallMood = '';
}

class _SJSleepState extends State<SJSleep> {
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  _SJSleepData _data = new _SJSleepData();

  void submit() {
    // First validate form.
    if (this._formKey.currentState.validate()) {
      _formKey.currentState.save(); // Save our form now.

      print('Printing the Mood Event.');
      print('SJWhenSleep: ${_data.SJWhenSleep}');
      print('SJWhenAwake: ${_data.SJWhenAwake}');

      print('SJWokeUpFeeling: ${_data.SJWokeUpFeeling}');

      print('SJInterruptionCount: ${_data.SJInterruptionCount}');
      print('SJInterruptionCauses: ${_data.SJInterruptionCauses}');

      print('SJSleepQuality: ${_data.SJSleepQuality}');

      print('SJCaffieneCount: ${_data.SJCaffieneCount}');
      print('SJCaffieneTimeOfLast: ${_data.SJCaffieneTimeOfLast}');

      print('SJActivityHourBeforeSleep: ${_data.SJActivityHourBeforeSleep}');

      print('SJHow: ${_data.SJHow}');
      print('SJOverallMood: ${_data.SJOverallMood}');
    }
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Snap Journal - Sleep'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(20.0),
        child: new Form(
          key: this._formKey,
          child: new ListView(
            children: <Widget>[
              /* SJWhenSleep */
              new TextFormField(
                keyboardType: TextInputType.datetime, // @TODO SJWhenSleep: use a date time picker
                decoration: new InputDecoration(
                  hintText: 'YYYY-MM-DD H:i',
                  labelText: 'Bed time'
                ),
                // validator: this._validateEmail,
                onSaved: (String value) {
                  this._data.SJWhenSleep = value;
                }
              ),
              /* SJWhenAwake */
              new TextFormField(
                keyboardType: TextInputType.datetime, // @TODO SJWhenAwake: use a date time picker
                decoration: new InputDecoration(
                  hintText: 'YYYY-MM-DD H:i',
                  labelText: 'Woke up'
                ),
                // validator: this._validateEmail,
                onSaved: (String value) {
                  this._data.SJWhenAwake = value;
                }
              ),

              /* SJWokeUpFeeling */
              new TextFormField(
                keyboardType: TextInputType.text, // @TODO SJWokeUpFeeling: use a lookahead
                decoration: new InputDecoration(
                  hintText: 'Well rested, tired, etc...',
                  labelText: 'Woke up feeling'
                ),
                // validator: this._validateEmail,
                onSaved: (String value) {
                  this._data.SJWokeUpFeeling = value;
                }
              ),

              /* SJInterruptionCount */
              new TextFormField(
                keyboardType: TextInputType.number, // @TODO SJInterruptionCount: 
                decoration: new InputDecoration(
                  hintText: '',
                  labelText: 'Number of Sleep Interruptions'
                ),
                // validator: this._validateEmail,
                onSaved: (String value) {
                  this._data.SJInterruptionCount = value;
                }
              ),
              /* SJInterruptionCauses */
              new TextFormField(
                keyboardType: TextInputType.multiline, // @TODO SJInterruptionCauses:
                decoration: new InputDecoration(
                  hintText: 'Worry, cat wanted attention, etc...',
                  labelText: 'Causes for interruptions'
                ),
                // validator: this._validateEmail,
                onSaved: (String value) {
                  this._data.SJInterruptionCauses = value;
                }
              ),

              /* SJSleepQuality */
              new TextFormField(
                keyboardType: TextInputType.number, // @TODO SJSleepQuality: convert to 1-5 selector
                decoration: new InputDecoration(
                  hintText: '1-5 1=bad 3=average 5=awesome',
                  labelText: 'Sleep Quality'
                ),
                // validator: this._validateEmail,
                onSaved: (String value) {
                  this._data.SJSleepQuality = value;
                }
              ),

              /* SJCaffieneCount */
              new TextFormField(
                keyboardType: TextInputType.number, // @TODO SJCaffieneCount:
                decoration: new InputDecoration(
                  hintText: '',
                  labelText: 'Caffiene Count'
                ),
                // validator: this._validateEmail,
                onSaved: (String value) {
                  this._data.SJCaffieneCount = value;
                }
              ),
              /* SJCaffieneTimeOfLast */
              new TextFormField(
                keyboardType: TextInputType.datetime, // @TODO SJCaffieneTimeOfLast: use a date time picker
                decoration: new InputDecoration(
                  hintText: 'YYYY-MM-DD H:i',
                  labelText: 'Time of last caffiene intake'
                ),
                // validator: this._validateEmail,
                onSaved: (String value) {
                  this._data.SJCaffieneTimeOfLast = value;
                }
              ),

              /* SJActivityHourBeforeSleep */
              new TextFormField(
                keyboardType: TextInputType.multiline, // @TODO SJActivityHourBeforeSleep:
                decoration: new InputDecoration(
                  hintText: 'What were you doing the hour before going to sleep?',
                  labelText: 'Activity Before Bed'
                ),
                // validator: this._validateEmail,
                onSaved: (String value) {
                  this._data.SJHow = value;
                }
              ),

              /* SJHow */
              new TextFormField(
                keyboardType: TextInputType.text, // @TODO SJHow: look ahead on common emotions
                decoration: new InputDecoration(
                  hintText: 'How did it make you feel?',
                  labelText: 'How'
                ),
                // validator: this._validateEmail,
                onSaved: (String value) {
                  this._data.SJHow = value;
                }
              ),
              /* SJOverallMood */
              new TextFormField(
                keyboardType: TextInputType.number, // @TODO SJOverallMood: convert to 1-5 selector
                decoration: new InputDecoration(
                  hintText: '1-5 1=bad 3=average 5=awesome',
                  labelText: 'Overall Mood'
                ),
                // validator: this._validateEmail,
                onSaved: (String value) {
                  this._data.SJOverallMood = value;
                }
              ),

              new Container(
                width: screenSize.width,
                child: new RaisedButton(
                  child: new Text(
                    'Save',
                    style: new TextStyle(
                      color: Colors.white
                    ),
                  ),
                  onPressed: this.submit,
                  color: Colors.blue,
                ),
                margin: new EdgeInsets.only(
                  top: 20.0
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}
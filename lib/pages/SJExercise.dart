import 'package:flutter/material.dart';

class SJExcercise extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _SJExcerciseState();
}

class _SJExcerciseData {
  String SJWhen = '';
  String SJWhere = '';
  String SJExcercise = ''; // Excersize
  String SJTime = '';
  String SJDistance = '';
  String SJWeight = '';
  String SJReps = '';
  String SJSets = '';
  String SJEnergyBefore = '';
  String SJEnergyAfter = '';
  String SJHow = '';
  String SJLevel = '';
}

class _SJExcerciseState extends State<SJExcercise> {
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  _SJExcerciseData _data = new _SJExcerciseData();

  void submit() {
    // First validate form.
    if (this._formKey.currentState.validate()) {
      _formKey.currentState.save(); // Save our form now.

      print('Printing the Mood Event.');
      print('SJWhen: ${_data.SJWhen}');
      print('SJWhere: ${_data.SJWhere}');
      print('SJExcercise: ${_data.SJExcercise}');
      print('SJTime: ${_data.SJTime}');
      print('SJDistance: ${_data.SJDistance}');
      print('SJWeight: ${_data.SJWeight}');
      print('SJReps: ${_data.SJReps}');
      print('SJSets: ${_data.SJSets}');
      print('SJEnergyBefore: ${_data.SJEnergyBefore}');
      print('SJEnergyAfter: ${_data.SJEnergyAfter}');
      print('SJHow: ${_data.SJHow}');
      print('SJLevel: ${_data.SJLevel}');
    }
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Snap Journal - Mood'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(20.0),
        child: new Form(
          key: this._formKey,
          child: new ListView(
            children: <Widget>[
              /* SJWhen */
              new TextFormField(
                keyboardType: TextInputType.datetime, // @TODO SJWhen: use a date time picker
                decoration: new InputDecoration(
                  hintText: 'YYYY-MM-DD H:i',
                  labelText: 'When'
                ),
                // validator: this._validateEmail,
                onSaved: (String value) {
                  this._data.SJWhen = value;
                }
              ),
              /* SJWhere */
              new TextFormField(
                keyboardType: TextInputType.text, // @TODO SJWhere: use geo location
                decoration: new InputDecoration(
                  hintText: 'Where',
                  labelText: 'Where'
                ),
                // validator: this._validateEmail,
                onSaved: (String value) {
                  this._data.SJWhere = value;
                }
              ),
              /* SJExcercise */
              new TextFormField(
                keyboardType: TextInputType.text, // @TODO SJWho: use a contact lookup
                decoration: new InputDecoration(
                  hintText: 'Excercise',
                  labelText: 'Excercise'
                ),
                // validator: this._validateEmail,
                onSaved: (String value) {
                  this._data.SJExcercise = value;
                }
              ),
              /* SJTime */
              new TextFormField(
                keyboardType: TextInputType.number, // @TODO SJWhat: add inline tags
                decoration: new InputDecoration(
                  hintText: 'How many minutes?',
                  labelText: 'Time'
                ),
                // validator: this._validateEmail,
                onSaved: (String value) {
                  this._data.SJTime = value;
                }
              ),
              /* SJDistance */
              new TextFormField(
                keyboardType: TextInputType.text, // @TODO SJDistance: convert to distance widget
                decoration: new InputDecoration(
                  hintText: 'Distance',
                  labelText: 'Distance'
                ),
                // validator: this._validateEmail,
                onSaved: (String value) {
                  this._data.SJDistance = value;
                }
              ),
              /* SJWeight */
              new TextFormField(
                keyboardType: TextInputType.number, // @TODO SJDistance: convert to weight widget
                decoration: new InputDecoration(
                  hintText: 'Weight',
                  labelText: 'Weight'
                ),
                // validator: this._validateEmail,
                onSaved: (String value) {
                  this._data.SJWeight = value;
                }
              ),
              /* SJReps */
              new TextFormField(
                keyboardType: TextInputType.number, // @TODO SJReps:
                decoration: new InputDecoration(
                  hintText: '# of Reps',
                  labelText: 'Reps'
                ),
                // validator: this._validateEmail,
                onSaved: (String value) {
                  this._data.SJReps = value;
                }
              ),
              /* SJSets */
              new TextFormField(
                keyboardType: TextInputType.number, // @TODO SJSets
                decoration: new InputDecoration(
                  hintText: 'Sets',
                  labelText: 'Sets'
                ),
                // validator: this._validateEmail,
                onSaved: (String value) {
                  this._data.SJSets = value;
                }
              ),
              /* SJEnergyBefore */
              new TextFormField(
                keyboardType: TextInputType.number, // @TODO SJEnergyBefore: convert to 1-5 selector
                decoration: new InputDecoration(
                  hintText: '1-5 1=lowest 5=highest',
                  labelText: 'Energy Level Before'
                ),
                // validator: this._validateEmail,
                onSaved: (String value) {
                  this._data.SJEnergyBefore = value;
                }
              ),
              /* SJEnergyAfter */
              new TextFormField(
                keyboardType: TextInputType.number, // @TODO SJEnergyAfter: convert to 1-5 selector
                decoration: new InputDecoration(
                  hintText: '1-5 1=lowest 5=highest',
                  labelText: 'Energy After'
                ),
                // validator: this._validateEmail,
                onSaved: (String value) {
                  this._data.SJEnergyAfter = value;
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
              /* SJLevel */
              new TextFormField(
                keyboardType: TextInputType.number, // @TODO SJLevel: convert to 1-5 selector
                decoration: new InputDecoration(
                  hintText: '1-5 1=bad 3=average 5=awesome',
                  labelText: 'Overall Mood'
                ),
                // validator: this._validateEmail,
                onSaved: (String value) {
                  this._data.SJLevel = value;
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
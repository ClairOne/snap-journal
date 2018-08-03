import 'package:flutter/material.dart';

class SJMed extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _SJMedState();
}

class _SJMedData {
  String SJWhen = '';
  String SJWhere = '';

  String SJMedication = '';
  String SJDose = '';
  String SJHow = '';
  String SJOverallMood = '';
}

class _SJMedState extends State<SJMed> {
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  _SJMedData _data = new _SJMedData();

  void submit() {
    // First validate form.
    if (this._formKey.currentState.validate()) {
      _formKey.currentState.save(); // Save our form now.

      print('Printing the Mood Event.');
      print('SJWhen: ${_data.SJWhen}');
      print('SJWhere: ${_data.SJWhere}');
      print('SJMedication: ${_data.SJMedication}');
      print('SJDose: ${_data.SJDose}');
      print('SJHow: ${_data.SJHow}');
      print('SJOverallMood: ${_data.SJOverallMood}');
    }
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Snap Journal - Med'),
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
                  hintText: 'Where did it happen?',
                  labelText: 'Where'
                ),
                // validator: this._validateEmail,
                onSaved: (String value) {
                  this._data.SJWhere = value;
                }
              ),
              /* SJMedication */
              new TextFormField(
                keyboardType: TextInputType.text, // @TODO SJMedication: use a lookahead
                decoration: new InputDecoration(
                  hintText: 'What medication did you take',
                  labelText: 'Medication'
                ),
                // validator: this._validateEmail,
                onSaved: (String value) {
                  this._data.SJMedication = value;
                }
              ),
              /* SJDose */
              new TextFormField(
                keyboardType: TextInputType.text, // @TODO SJDose: add inline tags
                decoration: new InputDecoration(
                  hintText: 'How much did you take',
                  labelText: 'Dose'
                ),
                // validator: this._validateEmail,
                onSaved: (String value) {
                  this._data.SJDose = value;
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
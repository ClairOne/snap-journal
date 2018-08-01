import 'package:flutter/material.dart';

class SJMood extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _SJMoodState();
}

class _SJMoodData {
  String SJWho = '';
  String SJWhat = '';
  String SJWhen = '';
  String SJWhere = '';
  String SJHow = '';
  String SJLevel = '';
}

class _SJMoodState extends State<SJMood> {
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  _SJMoodData _data = new _SJMoodData();

  void submit() {
    // First validate form.
    if (this._formKey.currentState.validate()) {
      _formKey.currentState.save(); // Save our form now.

      print('Printing the Mood Event.');
      print('SJWho: ${_data.SJWho}');
      print('SJWhat: ${_data.SJWhat}');
      print('SJWhen: ${_data.SJWhen}');
      print('SJWhere: ${_data.SJWhere}');
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
                  hintText: 'Where did it happen?',
                  labelText: 'Where'
                ),
                // validator: this._validateEmail,
                onSaved: (String value) {
                  this._data.SJWhere = value;
                }
              ),
              /* SJWho */
              new TextFormField(
                keyboardType: TextInputType.text, // @TODO SJWho: use a contact lookup
                decoration: new InputDecoration(
                  hintText: 'Who was involved (directly and indirectly)',
                  labelText: 'Who'
                ),
                // validator: this._validateEmail,
                onSaved: (String value) {
                  this._data.SJWho = value;
                }
              ),
              /* SJWhat */
              new TextFormField(
                keyboardType: TextInputType.multiline, // @TODO SJWhat: add inline tags
                decoration: new InputDecoration(
                  hintText: 'Describe what happened',
                  labelText: 'What'
                ),
                // validator: this._validateEmail,
                onSaved: (String value) {
                  this._data.SJWhat = value;
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
                  hintText: '1-5 1=lowest ',
                  labelText: 'Emotional Intensity'
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
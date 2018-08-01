import 'package:flutter/material.dart';

class SJFood extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _SJFoodState();
}

class _SJFoodData {
  String SJWhen = '';
  String SJWhere = '';
  String SJWhat = '';
  String SJActivityBefore = '';
  String SJStateBefore = ''; // thoughts or Feelings Before Eating
  String SJHungerLevelBefore = '';
  String SJHungerLevelAfter = '';
  String SJPace = '';
  String SJHow = '';
  String SJLevel = '';
}

class _SJFoodState extends State<SJFood> {
  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  _SJFoodData _data = new _SJFoodData();

  void submit() {
    // First validate form.
    if (this._formKey.currentState.validate()) {
      _formKey.currentState.save(); // Save our form now.

      print('Printing the Mood Event.');
      print('SJWhen: ${_data.SJWhen}');
      print('SJWhere: ${_data.SJWhere}');
      print('SJWhat: ${_data.SJWhat}');
      print('SJActivityBefore: ${_data.SJActivityBefore}');
      print('SJStateBefore: ${_data.SJStateBefore}'); // thoughts or Feelings Before Eating
      print('SJHungerLevelBefore: ${_data.SJHungerLevelBefore}');
      print('SJHungerLevelAfter: ${_data.SJHungerLevelAfter}');
      print('SJPace: ${_data.SJPace}');
      print('SJHow: ${_data.SJHow}');
      print('SJLevel: ${_data.SJLevel}');
    }
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Snap Journal - Food'),
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
                  hintText: 'McDonald\'s',
                  labelText: 'Where'
                ),
                // validator: this._validateEmail,
                onSaved: (String value) {
                  this._data.SJWhere = value;
                }
              ),
              /* SJWhat */
              new TextFormField(
                keyboardType: TextInputType.multiline, // @TODO SJWhat: add inline tags
                decoration: new InputDecoration(
                  hintText: 'e.g. 32oz Diet Coke, cheeseburger and large french fry',
                  labelText: 'What did you eat/drink'
                ),
                // validator: this._validateEmail,
                onSaved: (String value) {
                  this._data.SJWhat = value;
                }
              ),
              /* SJActivityBefore */
              new TextFormField(
                keyboardType: TextInputType.text, // @TODO SJActivityBefore: use a lookahead
                decoration: new InputDecoration(
                  hintText: 'e.g. watching tv',
                  labelText: 'Activity Before Eating'
                ),
                // validator: this._validateEmail,
                onSaved: (String value) {
                  this._data.SJActivityBefore = value;
                }
              ),
              /* SJStateBefore */
              new TextFormField(
                keyboardType: TextInputType.text,
                decoration: new InputDecoration(
                  hintText: 'e.g. bored',
                  labelText: 'Thoughts/Feelings Before Eating'
                ),
                // validator: this._validateEmail,
                onSaved: (String value) {
                  this._data.SJStateBefore = value;
                }
              ),
              /* SJHungerLevelBefore */
              new TextFormField(
                keyboardType: TextInputType.number, // @TODO SJHungerLevelBefore: convert to 1-5 selector
                decoration: new InputDecoration(
                  hintText: '1-5 1=not hungry 5=starving ',
                  labelText: 'Level of Hunger Before Eating'
                ),
                // validator: this._validateEmail,
                onSaved: (String value) {
                  this._data.SJHungerLevelBefore = value;
                }
              ),
              /* SJHungerLevelAfter */
              new TextFormField(
                keyboardType: TextInputType.number, // @TODO SJHungerLevelAfter: convert to 1-5 selector
                decoration: new InputDecoration(
                  hintText: '1-5 1=starving 5=completely satisfied ',
                  labelText: 'Fullness AFTER Eating'
                ),
                // validator: this._validateEmail,
                onSaved: (String value) {
                  this._data.SJHungerLevelAfter = value;
                }
              ),
              /* SJPace */
              new TextFormField(
                keyboardType: TextInputType.number, // @TODO SJPace: convert to 1-5 selector
                decoration: new InputDecoration(
                  hintText: '1=slow 3=average 5=inhaled it',
                  labelText: 'Pace of Eating'
                ),
                // validator: this._validateEmail,
                onSaved: (String value) {
                  this._data.SJPace = value;
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
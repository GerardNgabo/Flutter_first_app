import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String user = '', pass = '';
    return MaterialApp(
      title: 'LOGIN UI',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Login Page'),
        ),
        body: Column(
          children: <Widget>[
            Card(
              child: ListTile(
                leading: Icon(Icons.account_box_rounded),
                title: Text('Login'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (text) {
                  user = text;
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'USERNAME',
                    hintText: 'username'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: (text) {
                  pass = text;
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'password ',
                    hintText: 'password'),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  print('username is $user and password is $pass');
                },
                child: Text('Login'))
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:portfolio/Screens/AboutScreen.dart';

class ProfileScreen extends StatelessWidget {
  static const routeName = '/profile';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Portfolio'),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Column(
            children: [
              // Image(
              //   image: AssetImage('images/krishn.jpg'),
              //   height: 300.0,
              // ),
              CircleAvatar(
                backgroundColor: Theme.of(context).accentColor,
                radius: 134,
                child: CircleAvatar(
                  backgroundColor: Theme.of(context).primaryColor,
                  backgroundImage: AssetImage('images/krishn.jpg'),
                  radius: 130,
                ),
              ),
              SizedBox(height: 40),
              Text(
                "Krishn Kumar",
                style: TextStyle(
                  fontSize: 30,
                  color: Theme.of(context).primaryColor,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              RaisedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(AboutScreen.routeName);
                },
                child: Text(
                  "About Me",
                  style: TextStyle(fontSize: 20),
                ),
                color: Theme.of(context).accentColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

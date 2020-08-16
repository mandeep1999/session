import 'package:flutter/material.dart';
import 'package:portfolio/Screens/ProfileScreen.dart';

class AboutScreen extends StatelessWidget {
  static const routeName = '/about';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              "General Info",
              style: TextStyle(
                  fontSize: 30, color: Theme.of(context).primaryColor),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  "Date of Birth :",
                  style: TextStyle(
                      fontSize: 20, color: Theme.of(context).primaryColor),
                ),
                Chip(
                  label: Text(
                    "15-07-1999",
                    style: TextStyle(fontSize: 15),
                  ),
                  avatar: Icon(Icons.date_range),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  "Facebook :",
                  style: TextStyle(
                      fontSize: 20, color: Theme.of(context).primaryColor),
                ),
                Chip(
                  label: Text(
                    "krishn_157",
                    style: TextStyle(fontSize: 15),
                  ),
                  avatar: Icon(Icons.supervisor_account),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  "Instagram :",
                  style: TextStyle(
                      fontSize: 20, color: Theme.of(context).primaryColor),
                ),
                Chip(
                  label: Text(
                    "krishn_157",
                    style: TextStyle(fontSize: 15),
                  ),
                  avatar: Icon(Icons.camera_enhance),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              "Bio",
              style: TextStyle(
                  fontSize: 30, color: Theme.of(context).primaryColor),
            ),
            Card(
              elevation: 8,
              color: Theme.of(context).accentColor,
              child: Container(
                width: 300,
                height: 100,
                child: Center(
                  child: Text(
                    "Just a lazy person -_-",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

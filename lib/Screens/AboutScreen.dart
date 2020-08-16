import 'package:flutter/material.dart';
import 'package:portfolio/Screens/ProfileScreen.dart';

class AboutScreen extends StatefulWidget {
  static const routeName = '/about';

  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {

  String bio;
  String temp;
  TextEditingController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    bio = "Just a lazy person -_-";
    controller = TextEditingController(text: bio);
  }

  @override
  Widget build(BuildContext context) {
    Future<void> showEdit() async {
      return showDialog<void>(
        context: context,
        barrierDismissible: true, // user must tap button!
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              'Edit your Bio!!',
              style: TextStyle(color: Theme.of(context).primaryColor),
            ),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  SizedBox(
                    height: 10.0,
                  ),
                  TextField(
                      controller: controller,
                    onChanged: (val) {
                      temp = val;
                    },
                  ),
                ],
              ),
            ),
            actions: <Widget>[
              FlatButton(
                child: Text(

                  'Done',
                  style: TextStyle(
                      fontSize: 20.0, color: Theme.of(context).accentColor),
                ),
                onPressed: () {
                  setState(() {
                    bio = temp == '' ? 'At least write something.' : temp;
                  });
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("About"),
        actions: [
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () async {
              await showEdit();
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40.0,horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[

              Text(
                "General Info",
                style: TextStyle(
                    fontSize: 30, color: Theme.of(context).primaryColor),
              ),SizedBox(height: 40.0,),
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
              ),SizedBox(height: 40.0,),
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
              ),SizedBox(height: 40.0,),
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
              SizedBox(height: 50),
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
                      bio,
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/**
 * Created with Android Studio.
 * User: 三帆
 * Date: 07/01/2019
 * Time: 10:31
 * email: sanfan.hx@alibaba-inc.com
 * tartget:  xxx
 */

import 'package:flutter/material.dart';


class AlertDialogDemo extends StatefulWidget {
  _Demo createState() => _Demo();
}

class _Demo extends State<AlertDialogDemo> {
  
  void showAlertDialog(BuildContext context) {
    showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('title'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('too long~~~'),
                Text('too long~~~'),
                Text('too long~~~'),
                Text('too long~~~'),
                Text('too long~~~'),
                Text('too long~~~'),
                Text('too long~~~'),
                Text('too long~~~'),
                Text('too long~~~'),
                Text('too long~~~'),
                Text('too long~~~'),
                Text('too long~~~'),
                Text('too long~~~'),
                Text('too long~~~'),
                Text('too long~~~'),
                Text('too long~~~'),
                Text('too long~~~'),
                Text('too long~~~'),
                Text('too long~~~'),
                Text('too long~~~'),
                Text('too long~~~'),
                Text('too long~~~'),
                Text('too long~~~'),
                Text('too long~~~'),
                Text('too long~~~'),
                Text('too long~~~'),
                Text('too long~~~'),
                Text('too long~~~'),
                Text('too long~~~'),
                Text('too long~~~'),
                Text('too long~~~'),
                Text('too long~~~'),
                Text('too long~~~'),
                Text('too long~~~'),
                Text('too long~~~'),
                Text('too long~~~'),
                Text('too long~~~'),
                Text('too long~~~'),
                Text('too long~~~'),
                Text('too long~~~'),
                Text('too long~~~'),
                Text('too long~~~'),
                Text('too long~~~'),
                Text('too long~~~'),
                Text('too long~~~'),
                Text('too long~~~'),
                Text('too long~~~'),
                Text('too long~~~'),
                Text('too long~~~'),
                Text('too long~~~'),
                Text('too long~~~'),
                Text('too long~~~'),
                Text('too long~~~'),
                Text('too long~~~'),
                Text('too long~~~'),
                Text('too long~~~'),
                Text('too long~~~'),
                Text('too long~~~'),
                Text('too long~~~'),
                Text('too long~~~'),
                Text('too long~~~'),
                Text('too long~~~'),
                Text('too long~~~'),
                Text('too long~~~'),
                Text('too long~~~'),
                Text('too long~~~'),
                Text('too long~~~'),
                Text('too long~~~'),
                Text('too long~~~'),
                Text('too long~~~'),
                Text('too long~~~'),
                Text('too long~~~'),
                Text('too long~~~'),
                Text('too long~~~'),
                Text('too long~~~'),
                Text('too long~~~'),
                Text('too long~~~'),
                Text('too long~~~'),
                Text('too long~~~'),

              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('关闭'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
  Widget build(BuildContext context) {
    return new RaisedButton(
        padding: new EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
        //padding
        child: new Text(
          '点我显示 AlertDialog',
          style: new TextStyle(
            fontSize: 18.0, //textsize
            color: Colors.white, // textcolor
          ),
        ),
        color: Theme.of(context).accentColor,
        elevation: 4.0,
        //shadow
        splashColor: Colors.blueGrey,
        onPressed: () {
          showAlertDialog(context);
      });
  }
}

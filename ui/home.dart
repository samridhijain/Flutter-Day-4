import 'package:flutter/material.dart';

myapp() {
  var Text1 = Text(
    'WELCOME',
    textDirection: TextDirection.ltr,
    textAlign: TextAlign.right,
  );

  alarmpress() {
    print("alarm icon clicked....");
  }

  emailpress() {
    print("email icon clicked....");
  }

  var AlarmIcon = Icon(
    Icons.alarm_on,
    color: Colors.amber.shade300,
  );

  var EmailIcon = Icon(Icons.email);

  var AlarmIconButton = IconButton(icon: AlarmIcon, onPressed: alarmpress);

  var EmailIconButton = IconButton(icon: EmailIcon, onPressed: emailpress);

  var MyAppBar = AppBar(
    title: Text1,
    backgroundColor: Colors.cyan,
    leading: AlarmIcon,
    actions: <Widget>[
      AlarmIconButton,
      EmailIconButton,
    ],
  );

  var Url =
      'https://raw.githubusercontent.com/samridhijain/Flutter-Day-4/master/flutterimage.jpg';

  var BackgroundUrl = Image.network(
    Url,
    width: double.infinity,
    height: double.infinity,
  );

  var MyHome = Scaffold(
    appBar: MyAppBar,
    body: BackgroundUrl,
    backgroundColor: Colors.black38,
  );

  var Design = MaterialApp(
    home: MyHome,
    debugShowCheckedModeBanner: false,
  );
  return Design;
}

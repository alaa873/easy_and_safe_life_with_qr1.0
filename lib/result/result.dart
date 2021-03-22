import 'package:flutter/material.dart';
class Result extends StatefulWidget {
  @override
  _RusultState createState() => _RusultState();
}

class _RusultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
                appBar: AppBar(
                  backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                  elevation: 1,
           title: Text('Result',style: TextStyle(color: Colors.indigo),),
                  leading: IconButton(
                    icon: Icon(
                      Icons.arrow_back_sharp,
                      color: Colors.indigo,
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),

          centerTitle: true,
        ),
        body: Container(

        ),
      ),
    );
  }
}

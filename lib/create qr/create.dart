import 'package:easy_and_safe_life_with_qr/result/result.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CreateQR extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return mYStataQR();
  }
}

class mYStataQR extends State<CreateQR> {
  static const routeName = "/create-screen";
  bool _visible = false;
  bool _visible1 = false;
  bool _visible2 = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              'Creat QR',
              style: TextStyle(color: Colors.indigo),
            ),
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            elevation: 1,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_sharp,
                color: Colors.indigo,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          // backgroundColor: Colors.indigo,
          body: SingleChildScrollView(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Choose a type of Your QR",
                        style: TextStyle(fontSize: 22),
                      ),
                    ),
                    InkWell(
                      child: button(
                          tittle: 'Text', iconData: Icons.arrow_drop_down),
                      onTap: () {
                        setState(() {
                          _visible = !_visible;
                        });
                      },
                      borderRadius: BorderRadius.circular(25),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Visibility(
                      child: textForm(),
                      visible: _visible,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    InkWell(
                      child: button(
                          tittle: 'Image', iconData: Icons.arrow_drop_down),
                      onTap: () {
                        setState(() {
                          _visible1 = !_visible1;
                        });
                      },
                      borderRadius: BorderRadius.circular(25),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Visibility(
                      child: imgForm(),
                      visible: _visible1,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    InkWell(
                      child: button(
                          tittle: 'Link', iconData: Icons.arrow_drop_down),
                      onTap: () {
                        setState(() {
                          _visible2 = !_visible2;
                        });
                      },
                      borderRadius: BorderRadius.circular(25),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Visibility(
                      child: linkForm(),
                      visible: _visible2,
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}

class textForm extends StatefulWidget {
  @override
  _conState createState() => _conState();
}

class _conState extends State<textForm> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 320,
        //width: 350,

        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  TextFormField(
                      toolbarOptions: ToolbarOptions(
                        copy: true,
                        cut: true,
                        paste: true,
                        selectAll: true,
                      ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(bottom: 3),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        helperStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        hintText: 'Frist Name',
                      ),
                      validator: (value) {
                        if (value.isEmpty) {
                          return "First name required";
                        } else {
                          return null;
                        }
                      }),
                  TextFormField(
                      toolbarOptions: ToolbarOptions(
                        copy: true,
                        cut: true,
                        paste: true,
                        selectAll: true,
                      ),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(bottom: 3),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        helperStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        hintText: 'Last Name',
                      ),
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Last name required";
                        } else {
                          return null;
                        }
                      }),
                  TextFormField(
                      toolbarOptions: ToolbarOptions(
                        copy: true,
                        cut: true,
                        paste: true,
                        selectAll: true,
                      ),
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(bottom: 3),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        helperStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        hintText: 'Email',
                      ),
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Email required";
                        } else {
                          return null;
                        }
                      }),
                  TextFormField(
                    toolbarOptions: ToolbarOptions(
                      copy: true,
                      cut: true,
                      paste: true,
                      selectAll: true,
                    ),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(bottom: 3),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      helperStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      hintText: 'Phone',
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Phone required";
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  RaisedButton(
                    onPressed: () {
                      if (formKey.currentState.validate()) {
                      //  store data
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Result()));
                      }
                    },
                    child: Text('Save'),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class imgForm extends StatefulWidget {
  @override
  _imgFormState createState() => _imgFormState();
}

class _imgFormState extends State<imgForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                  onTap: () {},
                  child: Icon(
                    Icons.image,
                    size: 50,
                    color: Colors.indigo,
                  )),
              SizedBox(
                height: 5,
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Result()));
                },
                child: Text('Save'),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class linkForm extends StatefulWidget {
  @override
  _linkFormState createState() => _linkFormState();
}

class _linkFormState extends State<linkForm> {
  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return Container(
      height: 120,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: formKey,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Link',
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Link required";
                      } else {
                        return null;
                      }
                    },
                  ),
                  RaisedButton(
                    onPressed: () {
                      if (formKey.currentState.validate()) {
                        //store data
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Result()));
                      }
                    },
                    child: Text('Save'),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class button extends StatelessWidget {
  final String tittle;
  final IconData iconData;
  button({this.tittle, this.iconData});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 300,
      decoration: BoxDecoration(
        border: Border.all(width: 1.3, color: Colors.grey),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              tittle,
              style: TextStyle(fontSize: 18),
            ),
            Icon(
              iconData,
              size: 28,
            )
          ],
        ),
      ),
    );
  }
}

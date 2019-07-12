import 'package:flutter/material.dart';

class FormDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Theme(
        data: ThemeData(primaryColor: Colors.black),
        child: Container(
          padding: EdgeInsets.all(16),
          child: RegisterForm(),
        ),
      ),
    ));
  }
}

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final registerFormkey = GlobalKey<FormState>();
  String username, password;

  void register() {
    registerFormkey.currentState.save();
    registerFormkey.currentState.validate();

    debugPrint("username = $username");
    debugPrint("password = $password");
  }

  String validatorUsername(String val) {
    if (val.isEmpty) {
      return "username is required";
    }

    return null;
  }

  String validatorPassword(String val) {
    if (val.isEmpty) {
      return "password is required";
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: registerFormkey,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(labelText: "用户名"),
            onSaved: (val) => username = val,
            validator: validatorUsername,
          ),
          TextFormField(
            obscureText: true, // 密码
            decoration: InputDecoration(labelText: "密码"),
            onSaved: (val) => password = val,
            validator: validatorPassword,
          ),
          SizedBox(
            height: 32,
          ),
          Container(
            width: double.infinity,
            child: RaisedButton(
              color: Theme.of(context).accentColor,
              child: Text(
                'register',
                style: TextStyle(color: Colors.white),
              ),
              elevation: 0,
              onPressed: register,
            ),
          ),
        ],
      ),
    );
  }
}

class TextFieldDemo extends StatefulWidget {
  TextFieldDemo({Key key}) : super(key: key);

  _TextFieldDemoState createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  final controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    controller.text = "what's your name";
    controller.addListener(() {
      debugPrint("input:${controller.text}");
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      // onChanged: (value){
      //   debugPrint(value);
      // },
      controller: controller,
      onSubmitted: (value) {
        debugPrint(value);
      },
      decoration: InputDecoration(
        icon: Icon(Icons.accessibility_new),
        labelText: 'name',
        hintText: 'please input you name',
        // border: InputBorder.none,
        border: OutlineInputBorder(),
        filled: true,
      ),
    );
  }
}

class ThemeDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
    );
  }
}

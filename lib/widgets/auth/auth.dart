// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_declarations

import 'package:flutter/material.dart';

class AuthWidget extends StatefulWidget {
  const AuthWidget({Key? key}) : super(key: key);

  @override
  _AuthWidgetState createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  @override
  Widget build(BuildContext context) {
    final textStyle = const TextStyle(
      fontSize: 16,
      color: Colors.black,
    );
    return Scaffold(
      appBar: AppBar(title: Text('Login to your account or sign up.')),
      body: ListView(
        children: [_HeaderWidget()],
      ),
    );
  }
}

class _HeaderWidget extends StatelessWidget {
  const _HeaderWidget({Key? key}) : super(key: key);
  final textStyle = const TextStyle(
    fontSize: 16,
    color: Colors.black,
  );
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(children: [
        SizedBox(
          height: 25,
        ),
        _FormWidget(),
        SizedBox(height: 25),
        Text(
          'If you do not have an account, registering for an account is free and simple.',
          style: textStyle,
        ),
        SizedBox(height: 5),
        ElevatedButton(onPressed: () {}, child: Text('Register')),
      ]),
    );
  }
}

class _FormWidget extends StatefulWidget {
  const _FormWidget({Key? key}) : super(key: key);

  @override
  __FormWidgetState createState() => __FormWidgetState();
}

class __FormWidgetState extends State<_FormWidget> {
  final _loginTextController = TextEditingController();
  final _passwordTextController = TextEditingController();

  String? errorText = null;

  void _auth() {
    final login = _loginTextController.text;
    final password = _passwordTextController.text;

    if (login == 'admin' && password == 'admin') {
      errorText = null;
      print('Success');
      Navigator.pushNamed(context, '/appscreen');
    } else {
      errorText = 'Please, check your log/pass and try again.';
    }
    setState(() {});
  }

  void _resetPassword() {
    print('resetPassword');
  }

  @override
  Widget build(BuildContext context) {
    final textStyle = const TextStyle(
      fontSize: 16,
      color: Colors.black,
    );

    final textFieldDecorator = const InputDecoration(
        border: OutlineInputBorder(),
        contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        isCollapsed: true);
    final errorText = this.errorText;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        if (errorText != null) ...{
          Text(
            errorText,
            style: TextStyle(
              fontSize: 17,
              color: Colors.red,
            ),
          ),
          SizedBox(height: 20),
        },
        Text('Username', style: textStyle),
        SizedBox(
          height: 5,
        ),
        TextField(
          controller: _loginTextController,
          decoration: textFieldDecorator,
        ),
        SizedBox(
          height: 20,
        ),
        Text('Password', style: textStyle),
        SizedBox(
          height: 5,
        ),
        TextField(
          controller: _passwordTextController,
          decoration: textFieldDecorator,
          obscureText: true,
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Color.fromRGBO(122, 39, 234, 0.8),
                    ),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                    textStyle: MaterialStateProperty.all(
                      TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(horizontal: 15, vertical: 8))),
                onPressed: _auth,
                child: Text('Login')),
            SizedBox(
              width: 30,
            ),
            TextButton(
                onPressed: _resetPassword,
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(
                      Color.fromRGBO(122, 39, 234, 0.8)),
                  textStyle: MaterialStateProperty.all(
                    TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                ),
                child: Text('Reset password'))
          ],
        )
      ],
    );
  }
}

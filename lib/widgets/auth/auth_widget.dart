import 'package:flutter/material.dart';
import 'package:tmdb_app/style/button_styles.dart';
import 'package:tmdb_app/style/text_field_style.dart';
import 'package:tmdb_app/style/text_styles.dart';

class AuthWidget extends StatefulWidget {
  const AuthWidget({Key? key}) : super(key: key);

  @override
  _AuthWidgetState createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login to your account'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: const [
            _FormWidget(),
            _HeaderWidget(),
          ],
        ),
      ),
    );
  }
}

class _FormWidget extends StatefulWidget {
  const _FormWidget({Key? key}) : super(key: key);
  @override
  State<_FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<_FormWidget> {
  final _loginTextController = TextEditingController(text: 'admin');
  final _passwordTextController = TextEditingController(text: 'admin');

  String? errorText;

  void _auth() {
    final login = _loginTextController.text;
    final password = _passwordTextController.text;

    if (login == 'admin' && password == 'admin') {
      print('auth');
      errorText = null;
      Navigator.of(context).pushReplacementNamed('/main_screen');
    } else {
      print('Auth error');
      errorText = 'Wrong login or password!';
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final errorText = this.errorText;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            decoration: textFieldStyle('Username'),
            controller: _loginTextController,
          ),
          const SizedBox(height: 20),
          TextField(
              decoration: textFieldStyle('Password'),
              controller: _passwordTextController,
              obscureText: true),
          if (errorText != null) ...[
            const SizedBox(height: 8),
            Text(errorText, style: TextStyles.text1RegularRed),
          ],
          const SizedBox(height: 26),
          Row(
            children: [
              ElevatedButton(
                onPressed: _auth,
                style: ButtonStyles.littleMainButton,
                child: const Text('Login'),
              ),
              const SizedBox(width: 16),
              TextButton(
                onPressed: () {},
                style: ButtonStyles.littleTransparentButton,
                child: const Text('Reset password'),
              )
            ],
          )
        ],
      ),
    );
  }
}

class _HeaderWidget extends StatelessWidget {
  const _HeaderWidget({Key? key}) : super(key: key);

  final String descriptionText1 =
      'In order to use the editing and rating capabilities of TMDB, as well as get personal recommendations you will need to login to your account. If you do not have an account, registering for an account is free and simple.';

  final String descriptionText2 =
      'If you signed up but didn\'t get your verification email.';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(descriptionText1, style: TextStyles.text1Regular),
          const SizedBox(height: 8),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyles.littleMainButton,
            child: const Text('Register'),
          ),
          const SizedBox(height: 20),
          Text(descriptionText2, style: TextStyles.text1Regular),
          const SizedBox(height: 8),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyles.littleMainButton,
            child: const Text('Verify email'),
          ),
        ],
      ),
    );
  }
}

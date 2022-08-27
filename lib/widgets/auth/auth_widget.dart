import 'package:flutter/material.dart';
import 'package:tmdb_app/style/button_styles.dart';
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
  @override
  Widget build(BuildContext context) {
    const textFieldDecaration = InputDecoration(
      border: OutlineInputBorder(),
      contentPadding: EdgeInsets.symmetric(horizontal: 13, vertical: 10),
      isCollapsed: true,
    );
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Username', style: TextStyles.headline1RegularGray),
          const SizedBox(height: 4),
          const TextField(decoration: textFieldDecaration),
          const SizedBox(height: 16),
          const Text('Password', style: TextStyles.headline1RegularGray),
          const SizedBox(height: 4),
          const TextField(decoration: textFieldDecaration, obscureText: true),
          const SizedBox(height: 32),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {},
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

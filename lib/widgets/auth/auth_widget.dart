import 'package:flutter/material.dart';

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
        title: const Text('TMDB'),
      ),
      body: ListView(
        children: const [
          HeaderWidget(),
          FormWidget(),
        ],
      ),
    );
  }
}

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  final String headerText = 'Login to your account';
  final String descriptionText1 =
      'In order to use the editing and rating capabilities of TMDB, as well as get personal recommendations you will need to login to your account. If you do not have an account, registering for an account is free and simple. Click here to get started.';
  final String descriptionText2 =
      'If you signed up but didn\'t get your verification email, click here to have it resent.';

  @override
  Widget build(BuildContext context) {
    const headerTextStyle = TextStyle(
      fontSize: 26,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    );
    const descriptionTextStyle = TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    );
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(headerText, style: headerTextStyle),
          const SizedBox(height: 10),
          Text(descriptionText1, style: descriptionTextStyle),
          const SizedBox(height: 10),
          Text(descriptionText2, style: descriptionTextStyle),
        ],
      ),
    );
  }
}

class FormWidget extends StatefulWidget {
  const FormWidget({
    super.key,
  });

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  @override
  Widget build(BuildContext context) {
    const formTextStyle = TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w400,
      color: Color(0xff333741),
    );
    const textFieldDecaration = InputDecoration(
      border: OutlineInputBorder(),
      contentPadding: EdgeInsets.symmetric(horizontal: 13, vertical: 10),
      isCollapsed: true,
    );
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text('Username', style: formTextStyle),
          SizedBox(height: 8),
          TextField(decoration: textFieldDecaration),
          SizedBox(height: 16),
          Text('Password', style: formTextStyle),
          SizedBox(height: 8),
          TextField(decoration: textFieldDecaration),
        ],
      ),
    );
  }
}

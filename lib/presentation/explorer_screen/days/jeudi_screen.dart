import 'package:flutter/material.dart';


class JeudiScreen extends StatefulWidget {
  const JeudiScreen({Key? key}) : super(key: key);

  @override
  _JeudiScreenState createState() => _JeudiScreenState();
}

class _JeudiScreenState extends State<JeudiScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      child: Center(
        child: Text("Jeudi"),
      ),
    );
  }
}

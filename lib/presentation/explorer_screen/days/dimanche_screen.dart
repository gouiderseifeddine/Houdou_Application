import 'package:flutter/material.dart';


class DimancheScreen extends StatefulWidget {
  const DimancheScreen({Key? key}) : super(key: key);

  @override
  _DimancheScreenState createState() => _DimancheScreenState();
}

class _DimancheScreenState extends State<DimancheScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      child: Center(
        child: Text("Dimanche"),
      ),
    );  }
}

import 'package:flutter/material.dart';

class TelaCard extends StatefulWidget {
  @override
  _TelaCardState createState() => _TelaCardState();
}

class _TelaCardState extends State<TelaCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        width: 450,
        height: 150,
        child: Card(
          color: Colors.red,
          elevation: 20,
          child: GestureDetector(
            onTap: () => setState(() {
              //_launched = _launchInBrowser(url);
            }),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class MyFancyButton extends StatelessWidget {

  final String label;

  final GestureTapCallback onPressed;

  MyFancyButton({@required this.label, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        fillColor: Colors.purple,
        splashColor: Colors.deepPurple,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 7.0,
            horizontal: 19.0
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(Icons.add, color: Colors.yellow),
              Text(label,
              style: TextStyle(color: Colors.white),),
            ],
          ),
        ),
        shape: StadiumBorder(),
        onPressed: onPressed);
  }
}

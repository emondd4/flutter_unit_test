import 'package:flutter/material.dart';

class CounterDisplay extends StatelessWidget {
  const CounterDisplay({Key? key, required this.number}) : super(key: key);

  final int number;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(bottom: 22),
            child: Text(
              'COUNTER APP',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.black54,
                letterSpacing: 2.0,
              ),
            ),
          ),
          Text(
            '$number',
            style: TextStyle(
              fontSize: 80,
              color: setColor(),
            ),
          ),
        ],
      ),
    );
  }

  Color setColor() {
    if (number > 0) {
      return Colors.green;
    } else if (number < 0) {
      return Colors.red;
    } else {
      return Colors.grey;
    }
  }
}

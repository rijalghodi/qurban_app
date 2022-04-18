import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CallCenterButton extends StatelessWidget {
  final IconData? buttonIcon;
  final String? buttonText;

  CallCenterButton({@required this.buttonIcon, @required this.buttonText});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          primary: Theme.of(context).colorScheme.onSurface,
        ),
        child: SizedBox(
          height: 40,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 10),
                  Icon(buttonIcon),
                  SizedBox(width: 10),
                  Text(buttonText as String),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

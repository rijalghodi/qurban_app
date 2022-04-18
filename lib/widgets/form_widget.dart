import 'package:flutter/material.dart';

class FormWidget extends StatelessWidget {
  final String? atribute;

  FormWidget({@required this.atribute});

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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(atribute as String),
                  Icon(Icons.chevron_right_sharp),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

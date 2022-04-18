import 'package:flutter/material.dart';

class TransactionRowWidget extends StatelessWidget {
  final String? name;
  final Widget? photo;
  final int? price;

  TransactionRowWidget({
    @required this.name,
    @required this.photo,
    @required this.price,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.1,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              photo as Widget,
              SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name as String),
                  Text('Rp $price'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

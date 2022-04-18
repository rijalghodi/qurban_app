import 'package:flutter/material.dart';
import 'package:purple_qurban_project/widgets/transaction_bar/check_transaction.dart';

class BottomSheetWidget extends StatefulWidget {
  final int? price;

  BottomSheetWidget({
    @required this.price,
    Key? key,
  }) : super(key: key);

  @override
  State<BottomSheetWidget> createState() => _BottomSheetWidgetState();
}

class _BottomSheetWidgetState extends State<BottomSheetWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: Theme.of(context).secondaryHeaderColor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.shopping_bag),
            SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Total Belanjaan Saya'),
                  Text('Rp' + widget.price.toString()), //anehhh bangettttt
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () => showModalBottomSheet(
                  context: context, builder: (context) => CheckTransaction()),
              child: const Text('Lihat Rincian'),
            ),
          ],
        ),
      ),
    );
  }
}

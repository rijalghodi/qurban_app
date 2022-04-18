import 'package:flutter/material.dart';
import './transaction_row.dart';

class CheckTransaction extends StatefulWidget {
  const CheckTransaction({Key? key}) : super(key: key);

  @override
  State<CheckTransaction> createState() => _CheckTransactionState();
}

class _CheckTransactionState extends State<CheckTransaction> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.5,
      child: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.07,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: const [
                  Icon(Icons.shopping_bag),
                  SizedBox(width: 10),
                  Text('Keranjang Belanjaan'),
                ],
              ),
            ),
          ),
          Container(
              height: MediaQuery.of(context).size.height * 0.36,
              child: TransactionRow()),
          Container(
            height: MediaQuery.of(context).size.height * 0.07,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(onPressed: () {}, child: Text('Kembali')),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Lanjutkan'),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

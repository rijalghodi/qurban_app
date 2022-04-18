import 'package:flutter/material.dart';
import 'package:purple_qurban_project/widgets/transaction_bar/transaction_row_widget.dart';
import '../hewan_data/hewan_class.dart';

class TransactionRow extends StatelessWidget {
  final List<HewanClass> HewanWantToBuy = [
    HewanClass(
        name: 'Sapi Pocin 200 kg',
        promotionPhoto: 'image/qurban_lunas/sapiku.jpg',
        price: 300000),
    HewanClass(
        name: 'Sapi Pocin 300 kg',
        promotionPhoto: 'image/qurban_lunas/sapiku.jpg',
        price: 300000),
    HewanClass(
        name: 'Sapi Pocin 400 kg',
        promotionPhoto: 'image/qurban_lunas/sapiku.jpg',
        price: 300000),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: HewanWantToBuy.length,
        itemBuilder: (context, index) {
          return TransactionRowWidget(
            name: HewanWantToBuy[index].name,
            photo: Image.asset(HewanWantToBuy[index].promotionPhoto as String),
            price: HewanWantToBuy[index].price,
          );
        });
  }
}

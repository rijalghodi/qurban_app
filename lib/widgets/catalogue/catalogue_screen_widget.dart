import 'package:flutter/material.dart';
import './catalogue_banner_widget.dart';
import '../hewan_data/qurban_lunas_list.dart';
import '../product_banner/product_list.dart';

class CatalogueScreenWidget extends StatelessWidget {
  final String? productText;

  CatalogueScreenWidget({@required this.productText});

  List hewanList = [
    {
      productList[0].productName: qurbanLunasList,
      productList[1].productName: qurbanLunasList,
      productList[2].productName: qurbanLunasList,
      productList[3].productName: qurbanLunasList,
    }
  ];

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
          itemCount: hewanList[0][productText].length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            childAspectRatio: 5 / 6,
          ),
          itemBuilder: (context, index) => CatalogueBannerWidget(
                promotionPhoto: hewanList[0][productText][index].promotionPhoto,
                name: hewanList[0][productText][index].name,
                price: hewanList[0][productText][index].price,
              )),
    );
  }
}
// hewanList[0][productName].photo
import 'package:flutter/material.dart';
import 'package:purple_qurban_project/widgets/product_banner/product_banner_widget.dart';
import './product_list.dart';

class ProductBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: productList.length,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 30.0,
          mainAxisSpacing: 30.0,
        ),
        itemBuilder: (context, index) => ProductBannerWidget(
              productImage: productList[index].productIcon,
              proudctText: productList[index].productName,
            ));
  }
}

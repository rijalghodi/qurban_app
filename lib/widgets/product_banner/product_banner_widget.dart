import 'package:flutter/material.dart';
import 'package:purple_qurban_project/widgets/catalogue/catalogue_screen.dart';

class ProductBannerWidget extends StatelessWidget {
  final Widget? productImage;
  final String? proudctText;

  ProductBannerWidget({
    @required this.productImage,
    @required this.proudctText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 100,
      child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CatalogueScreen(
                  productImage: productImage,
                  proudctText: proudctText,
                ),
              ),
            );
          },
          style: ElevatedButton.styleFrom(
            primary: Theme.of(context).colorScheme.surface,
            onPrimary: Theme.of(context).colorScheme.onSurface,
            padding: EdgeInsets.zero,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
                child: productImage,
              ),
              Text(
                proudctText as String,
              ),
            ],
          )),
    );
  }
}

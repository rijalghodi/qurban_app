import 'package:flutter/material.dart';
import '../show_up/show_up.dart';

class CatalogueBannerWidget extends StatelessWidget {
  final String? name;
  final int? price;
  final String? promotionPhoto;

  CatalogueBannerWidget(
      {@required this.name,
      @required this.price,
      @required this.promotionPhoto});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ShowUp(),
            ),
          );
        },
        style: ElevatedButton.styleFrom(
          primary: Theme.of(context).colorScheme.surface,
          onPrimary: Theme.of(context).colorScheme.onSurface,
          padding: EdgeInsets.zero,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Flexible(
              child: Image.asset(
                promotionPhoto as String,
                fit: BoxFit.fitWidth,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(4.0, 8.0, 8.0, 4.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    name as String,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  Text(
                    'Rp$price',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:purple_qurban_project/widgets/product_banner/product_banner.dart';

class HomeQurban extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:
                  Image.asset('image/home_banner/shopee.jpg', fit: BoxFit.fill),
            ),
            Center(
              child: Text(
                'Produk Kami',
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
              child: SizedBox(
                height: 300,
                child: ProductBanner(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Column(
//       children: [
//         Container(
//           height: 300,
//           width: 400,
//           child: Image.asset('image/home_banner/shopee.jpg', fit: BoxFit.fill),
//         ),
//         ProductBanner(),
//       ],
//     );
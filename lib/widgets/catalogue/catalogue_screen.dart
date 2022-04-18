import 'package:flutter/material.dart';
import 'package:purple_qurban_project/widgets/catalogue/search_tab.dart';
import './catalogue_screen_widget.dart';
import 'package:purple_qurban_project/theme.dart';
import '../transaction_bar/check_transaction.dart';
import './bottom_sheet_widget.dart';

class CatalogueScreen extends StatelessWidget {
  final Widget? productImage;
  final String? proudctText;

  CatalogueScreen({
    @required this.productImage,
    @required this.proudctText,
  });

  void addNewTransaction(BuildContext ctx) {
    showModalBottomSheet(
        context: ctx,
        builder: (bctx) {
          return CheckTransaction();
        });
  }

  Widget build(BuildContext context) {
    final appBar = AppBar(
      title: Text(proudctText as String),
      automaticallyImplyLeading: true,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () => Navigator.pop(context, false),
      ),
    );
    return MaterialApp(
      theme: themeData,
      home: Scaffold(
        appBar: appBar,
        bottomSheet: BottomSheetWidget(
          price: 200000,
        ),
        body: ListView(
          children: [
            SizedBox(
              height: 50,
              child: SearchTab(),
            ),
            SizedBox(
              height: (MediaQuery.of(context).size.height -
                      appBar.preferredSize.height -
                      MediaQuery.of(context).padding.top) *
                  0.9,
              child: CatalogueScreenWidget(productText: proudctText),
            ),
          ],
        ),
      ),
    );
  }
}

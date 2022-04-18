import 'package:flutter/material.dart';

class Catalogue extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text('Portofolio'),
        ),
        body: const Text('Ini Portofolio Saya'),
      ),
    );
  }
}


        // SizedBox(height: 40.0),
        // Padding(
        //   padding: const EdgeInsets.fromLTRB(100, 0, 100, 0),
        //   child: RaisedButton(
        //     onPressed: () {},
        //     color: Colors.deepPurple[700],
        //     child: Row(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: [
        //         Icon(
        //           Icons.shopping_cart_sharp,
        //           color: Colors.white,
        //         ),
        //         SizedBox(width: 10.0),
        //         Text(
        //           'KERANJANG',
        //           style: TextStyle(
        //             color: Colors.white,
        //           ),
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
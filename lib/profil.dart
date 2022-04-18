// import 'package:flutter/material.dart';

// class profil_qurban extends StatefulWidget {
//   @override
//   State<profil_qurban> createState() => _profil_qurbanState();
// }

// class _profil_qurbanState extends State<profil_qurban> {
//   int uang = 1000;
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Center(
//             child: CircleAvatar(
//               backgroundImage: AssetImage('image/profile/eunsang.png'),
//               radius: 40.0,
//             ),
//           ),
//           Divider(
//             height: 40.0,
//             color: Colors.grey,
//           ),
//           Row(
//             children: [
//               Icon(
//                 Icons.account_circle,
//                 color: Colors.black,
//               ),
//               SizedBox(width: 10.0),
//               Text(
//                 'NAMA',
//                 style: TextStyle(
//                   color: Colors.black,
//                   letterSpacing: 1.0,
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(height: 10.0),
//           Text(
//             'Faza Bil Haq',
//             style: TextStyle(
//               color: Colors.deepPurple[700],
//               fontSize: 27.0,
//               fontWeight: FontWeight.bold,
//               letterSpacing: 1.0,
//             ),
//           ),
//           SizedBox(height: 30),
//           Row(
//             children: [
//               Icon(
//                 Icons.email,
//                 color: Colors.black,
//               ),
//               SizedBox(width: 10.0),
//               Text(
//                 'EMAIL',
//                 style: TextStyle(
//                   color: Colors.black,
//                   letterSpacing: 1.0,
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(height: 10.0),
//           Text(
//             'faza@gmail.com',
//             style: TextStyle(
//               color: Colors.deepPurple[700],
//               fontSize: 18.0,
//               fontWeight: FontWeight.bold,
//               letterSpacing: 1.0,
//             ),
//           ),
//           SizedBox(height: 30),
//           Text(
//             'SALDO',
//             style: TextStyle(
//               color: Colors.black,
//               letterSpacing: 1.0,
//             ),
//           ),
//           SizedBox(height: 10.0),
//           Text(
//             'Rp $uang',
//             style: TextStyle(
//               color: Colors.deepPurple[700],
//               fontSize: 18.0,
//               fontWeight: FontWeight.bold,
//               letterSpacing: 1.0,
//             ),
//           ),
//           SizedBox(
//             height: 40.0,
//           ),
//           Center(
//             child: RaisedButton(
//               onPressed: () {},
//               color: Colors.deepPurple[700],
//               child: Padding(
//                 padding: const EdgeInsets.all(10.0),
//                 child: Text(
//                   'Perbaharui Profil',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 16.0,
//                   ),
//                 ),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

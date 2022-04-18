import 'package:flutter/material.dart';
import 'package:purple_qurban_project/widgets/form.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          Row(
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage('image/profile/smiling_titan.jpg'),
                radius: 40.0,
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Rijal Ghodi',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  const Text('Terdaftar Sejak 12 Juni 2022'),
                ],
              ),
            ],
          ),
          AccountForm(),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.amber,
                  onPrimary: Colors.deepPurple,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50))),
              onPressed: () {},
              child: SizedBox(
                width: 80,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.logout),
                      Text('Keluar'),
                    ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

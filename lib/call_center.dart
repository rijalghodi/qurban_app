import 'package:flutter/material.dart';
import 'widgets/call_center_button.dart';

class CallCenter extends StatelessWidget {
  const CallCenter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'image/call_center/people.jpg',
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 20.0),
          Text(
            'Silahkan menghubungi Customar Service kami melalui channel di bawah ini',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyText1,
          ),
          const SizedBox(height: 20.0),
          CallCenterButton(
            buttonIcon: Icons.whatsapp,
            buttonText: 'Whatsapp AIR QURBAN',
          ),
          CallCenterButton(
            buttonIcon: Icons.mail_sharp,
            buttonText: 'Email kami',
          ),
          CallCenterButton(
            buttonIcon: Icons.phone,
            buttonText: 'Call center',
          ),
        ],
      ),
    );
  }
}

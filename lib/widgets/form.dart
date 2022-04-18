import 'package:flutter/material.dart';
import 'package:purple_qurban_project/widgets/form_widget.dart';

class AccountForm extends StatelessWidget {
  final List<FormWidget> _formList = [
    FormWidget(atribute: 'Nama'),
    FormWidget(atribute: 'Email'),
    FormWidget(atribute: 'Nomor Telepon'),
    FormWidget(atribute: 'Alamat'),
    FormWidget(atribute: 'Kata Sandi'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: ListView.builder(
        itemCount: _formList.length,
        itemBuilder: (context, index) => FormWidget(
          atribute: _formList[index].atribute,
        ),
      ),
    );
  }
}

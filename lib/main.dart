import 'package:flutter/material.dart';
import 'package:my_contact_app/features/contacts/presentation/my_contacts.dart';

void main(List<String> args) {
  runApp(MyContact());
}

class MyContact extends StatelessWidget {
  const MyContact({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyContactsDesign(),
    );
  }
}

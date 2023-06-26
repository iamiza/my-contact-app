import 'package:flutter/material.dart';
import 'package:my_contact_app/features/contacts/data/contact.dart';
import 'package:my_contact_app/features/contacts/presentation/contact_search_deligate.dart';
import 'package:url_launcher/url_launcher.dart';

List<Contact> contacts = [
  Contact('John Doe', '+1 123-456-7890'),
  Contact('Jane Smith', '+1 234-567-8901'),
  Contact('David Johnson', '+1 345-678-9012'),
  Contact('Emily Davis', '+1 456-789-0123'),
  Contact('Michael Wilson', '+1 567-890-1234'),
  Contact('Olivia Taylor', '+1 678-901-2345'),
  Contact('Ethan Anderson', '+1 789-012-3456'),
  Contact('Sophia Martinez', '+1 890-123-4567'),
  Contact('Daniel Thompson', '+1 901-234-5678'),
  Contact('Ava Clark', '+1 012-345-6789'),
];

class MyContactsDesign extends StatelessWidget {
  const MyContactsDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contacts"),
        actions: [
          IconButton(
              onPressed: () {
                showSearch(context: context, delegate: ContactSearchDelegate());
              },
              icon: Icon(Icons.search))
        ],
      ),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: ListTile(
                    leading: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: const Icon(
                        Icons.person_2_rounded,
                        color: Colors.black,
                      ),
                    ),
                    title: Text(contacts[index].name),
                    subtitle: Text(contacts[index].contactno),
                    trailing: IconButton(
                      icon: Icon(Icons.call, color: Colors.greenAccent),
                      onPressed: () {
                        launchUrl(
                            Uri.parse('tel:${contacts[index].contactno}'));
                      },
                    )),
              )
            ],
          );
        },
      ),
    );
  }
}

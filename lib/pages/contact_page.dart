import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  // Пример списка контактов
  final List<Map<String, String>> contacts = const [
    {'name': 'Марьям Узерли', 'phone': '+996 700 111 222'},
    {'name': 'Бурджу Бириджик', 'phone': '+996 700 333 444'},
    {'name': 'Алихан', 'phone': '+996 700 555 666'},
    {'name': 'Саида', 'phone': '+996 700 777 888'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Контакты')),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          final contact = contacts[index];
          return ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.green,
              child: Icon(Icons.person, color: Colors.white),
            ),
            title: Text(contact['name']!),
            subtitle: Text(contact['phone']!),
            onTap: () {
              
            },
          );
        },
      ),
    );
  }
}

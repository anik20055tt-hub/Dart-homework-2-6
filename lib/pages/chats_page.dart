import 'package:flutter/material.dart';

class ChatsPage extends StatelessWidget {
  const ChatsPage({super.key});

  // Пример данных чатов
  final List<Map<String, String>> chats = const [
    {'name': 'Марьям Узерли', 'message': 'Привет! Как дела?', 'time': '10:30'},
    {'name': 'Бурджу Бириджик', 'message': 'Встречаемся сегодня?', 'time': '09:45'},
    {'name': 'Алихан', 'message': 'Скинь фото', 'time': 'Вчера'},
    {'name': 'Саида', 'message': 'Спасибо!', 'time': 'Понедельник'},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chats.length,
      itemBuilder: (context, index) {
        final chat = chats[index];
        return ListTile(
          leading: const CircleAvatar(
            backgroundColor: Colors.blue,
            child: Icon(Icons.person, color: Colors.white),
          ),
          title: Text(chat['name']!),
          subtitle: Text(chat['message']!),
          trailing: Text(chat['time']!),
          onTap: () {
            
          },
        );
      },
    );
  }
}

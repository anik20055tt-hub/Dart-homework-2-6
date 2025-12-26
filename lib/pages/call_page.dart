import 'package:flutter/material.dart';

class CallPage extends StatelessWidget {
  const CallPage({super.key});

  // Пример списка звонков
  final List<Map<String, String>> calls = const [
    {'name': 'Марьям Узерли', 'type': 'Входящий', 'time': '10:30'},
    {'name': 'Бурджу Бириджик', 'type': 'Исходящий', 'time': '09:45'},
    {'name': 'Алихан', 'type': 'Пропущенный', 'time': 'Вчера'},
    {'name': 'Саида', 'type': 'Входящий', 'time': 'Понедельник'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Звонки')),
      body: ListView.builder(
        itemCount: calls.length,
        itemBuilder: (context, index) {
          final call = calls[index];
          Icon callIcon;

          // Выбираем иконку в зависимости от типа звонка
          switch (call['type']) {
            case 'Входящий':
              callIcon = const Icon(Icons.call_received, color: Colors.green);
              break;
            case 'Исходящий':
              callIcon = const Icon(Icons.call_made, color: Colors.blue);
              break;
            case 'Пропущенный':
              callIcon = const Icon(Icons.call_missed, color: Colors.red);
              break;
            default:
              callIcon = const Icon(Icons.call, color: Colors.grey);
          }

          return ListTile(
            leading: const CircleAvatar(
              backgroundColor: Colors.blue,
              child: Icon(Icons.person, color: Colors.white),
            ),
            title: Text(call['name']!),
            subtitle: Text(call['type']!),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(call['time']!),
                callIcon,
              ],
            ),
            onTap: () {
              
            },
          );
        },
      ),
    );
  }
}

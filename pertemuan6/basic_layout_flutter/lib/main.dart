import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Pavlova Dessert',
      home: PavlovaPage(),
    );
  }
}

class PavlovaPage extends StatelessWidget {
  const PavlovaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Strawberry Pavlova')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Strawberry Pavlova',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Pavlova is a meringue-based dessert named after the Russian ballerina Anna Pavlova. '
                    'Pavlova features a crisp crust and soft, light inside, topped with fruit and whipped cream.',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 8),
                  const Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber),
                      Icon(Icons.star, color: Colors.amber),
                      Icon(Icons.star, color: Colors.amber),
                      Icon(Icons.star_half, color: Colors.amber),
                      Icon(Icons.star_border),
                      SizedBox(width: 8),
                      Text('170 Reviews'),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InfoTile(
                          icon: Icons.schedule,
                          label: 'PREP:',
                          value: '25 min'),
                      InfoTile(
                          icon: Icons.timer, label: 'COOK:', value: '1 hr'),
                      InfoTile(
                          icon: Icons.restaurant,
                          label: 'FEEDS:',
                          value: '4-6'),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Image.asset(
                'images/pavlova.jpeg',
                fit: BoxFit.cover,
                height: 200,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class InfoTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  InfoTile({required this.icon, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 40),
        SizedBox(height: 4),
        Text(label, style: TextStyle(fontWeight: FontWeight.bold)),
        Text(value),
      ],
    );
  }
}

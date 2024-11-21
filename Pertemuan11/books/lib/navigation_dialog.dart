
import 'package:flutter/material.dart';

class NavigationDialogScreen extends StatefulWidget {
  const NavigationDialogScreen({super.key});

  @override
  State<NavigationDialogScreen> createState() => _NavigationDialogScreenState();
}

class _NavigationDialogScreenState extends State<NavigationDialogScreen> {
  Color color = Colors.blue.shade700;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        title: const Text("Navigation Dialog Screen"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _showColorDialog(context);
          },
          child: const Text('Change Color'),
        ),
      ),
    );
  }

  _showColorDialog(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (_) {
        return AlertDialog(
          title: const Text('Very important question'),
          content: const Text('Please choose a color'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                color = Colors.pink.shade700;
                setState(() {});
                Navigator.pop(context, color);
              },
              child: const Text('Pink'),
            ),
            TextButton(
              onPressed: () {
                color = Colors.purple.shade700;
                setState(() {});
                Navigator.pop(context, color);
              },
              child: const Text('Purple'),
            ),
            TextButton(
              onPressed: () {
                color = Colors.grey.shade700;
                setState(() {});
                Navigator.pop(context, color);
              },
              child: const Text('Grey'),
            ),
          ],
        );
      },
    );
  }
}

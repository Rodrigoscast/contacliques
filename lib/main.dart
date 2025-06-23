import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: ClickCounterApp()));
}

class ClickCounterApp extends StatefulWidget {
  @override
  State<ClickCounterApp> createState() => _ClickCounterAppState();
}

class _ClickCounterAppState extends State<ClickCounterApp> {
  int _count = 0;

  void _increment() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contador de Cliques')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Você clicou $_count vezes.', style: TextStyle(fontSize: 20)),
            SizedBox(height: 20),
            ElevatedButton(onPressed: _increment, child: Text('Clique aqui')),
          ],
        ),
      ),
    );
  }
}

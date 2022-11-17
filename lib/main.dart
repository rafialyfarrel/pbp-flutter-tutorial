import 'package:flutter/material.dart';
import 'package:lab06/page/form.dart';
import 'package:lab06/page/to_do_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
    const MyApp({super.key});

    @override
    Widget build(BuildContext context) {
        return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(),
        );
    }
}

class MyHomePage extends StatefulWidget {
    const MyHomePage({super.key});

    final String title = 'Flutter Demo Home Page';

    @override
    State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
    title: Text(widget.title),
  ),
  drawer: Drawer( // Menambahkan drawer menu
      child: Column(
        children: [
          ListTile( // Menambahkan clickable menu
            title: const Text('Counter'),
            onTap: () {
              Navigator.pushReplacement( //route menu ke halaman utama
                context,
                MaterialPageRoute(builder: (context) => const MyFormPage()),
              );
            },
          ),
          ListTile(
            title: const Text('Form'),
            onTap: () {
              Navigator.pushReplacement( //route menu ke halaman form
                context,
                MaterialPageRoute(builder: (context) => const MyFormPage()),
              );
            },
          ),
          ListTile(
            title: const Text('To Do'),
            onTap: () {
              Navigator.pushReplacement( //route menu ke halaman to do
                context,
                MaterialPageRoute(builder: (context) => const ToDoPage()),
              );
            },
          ),
        ],
      ),
    ),
  body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have clicked the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

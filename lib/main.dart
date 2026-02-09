import 'package:flutter_2_provider/provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => MyuserProvider()),
      ],
      child: const MaterialApp(title: "Title", home: MyHomePage()),
    ),
  );
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Title'), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Contador: ${context.watch<MyuserProvider>().counter}",
              style: TextStyle(fontFamily: "Arial", color: Colors.red),
            ),
            ElevatedButton(
              onPressed: () {
                context.watch<MyuserProvider>().updateCounter(updateAmount: 1);
                // ignore: avoid_print
                print("Counter: ${context.watch<MyuserProvider>().counter}");
              },
              child: Text("Boton"),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (context) => const SecondRoute(),
                ),
              );
            },
            child: const Icon(Icons.home),
          ),
          FloatingActionButton(
            onPressed: () {
              context.watch<MyuserProvider>().updateCounter(updateAmount: 1);
              print("Counter: ${context.watch<MyuserProvider>().counter}");
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 13.0),
          FloatingActionButton(
            onPressed: () {
              context.watch<MyuserProvider>().updateCounter(updateAmount: -1);
              print("Counter: ${context.watch<MyuserProvider>().counter}");
            },
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}

class SecondRoute extends StatefulWidget {
  const SecondRoute({super.key});

  @override
  State<SecondRoute> createState() => _SecondRouteState();
}

int secondCounter = 0;

class _SecondRouteState extends State<SecondRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second Route')),
      body: Scaffold(
        appBar: AppBar(
          title: const Text('Title'),
          centerTitle: true,
          actions: [
            FloatingActionButton(
              onPressed: () {
                context.watch<MyuserProvider>().resetCounter();
              },
              child: const Icon(Icons.refresh),
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Contador: ${context.watch<MyuserProvider>().counter}",
                style: TextStyle(color: Colors.red),
              ),
              ElevatedButton(
                onPressed: () {
                  context.watch<MyuserProvider>().updateCounter(updateAmount: -1);
                  // ignore: avoid_print
                },
                child: Text("Boton"),
              ),
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {
                context.watch<MyuserProvider>().updateCounter(updateAmount: 1);
              },
              child: const Icon(Icons.add),
            ),
            const SizedBox(height: 13.0),
            FloatingActionButton(
              onPressed: () {
                context.watch<MyuserProvider>().updateCounter(updateAmount: -1);
              },
              child: const Icon(Icons.remove),
            ),
          ],
        ),
      ),
    );
  }
}

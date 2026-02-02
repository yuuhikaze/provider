import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_2_provider/provider/user_provider.dart';

class MySettings extends StatefulWidget {
  const MySettings({super.key});

  @override
  State<MySettings> createState() => _MySettingsState();
}

class _MySettingsState extends State<MySettings> {
  TextEditingController nombeControlado = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Settings'),
        ),
        body: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Text("nombre de usuario: ",
                      style: TextStyle(
                          fontSize: 25.0, fontWeight: FontWeight.bold)),
                  Text(
                    context.watch<MyuserProvider>().username,
                    style:
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              TextField(
                controller: nombeControlado,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  context
                      .read<MyuserProvider>()
                      .cambiarNombre(nuevouserName: nombeControlado.text);
                },
                child: Text(
                  "Guardar",
                ),
              ),
            ],
          ),
        ));
  }
}


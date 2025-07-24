import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Button(),
    );
  }
}

class Button extends StatefulWidget {
  const Button({super.key});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Custom Button Challenge',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 350,
              height: 50,
              child: ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.green)),
                  onPressed: () {},
                  child: const Text(
                    'Button',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )),
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
                width: 350,
                height: 50,
                child: OutlinedButton(
                    onPressed: () {},
                    child: const Text('Outline Button',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                ),
            ),
            SizedBox(height: 25,),
            SizedBox(
              width: 350,
              height: 50,
              child: FilledButton(onPressed: () {}, child: Text('Filled Button'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


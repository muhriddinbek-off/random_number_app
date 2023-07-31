import 'package:flutter/material.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade200,
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/home.png'),
            const SizedBox(height: 35),
            ElevatedButton(
                style: ButtonStyle(minimumSize: const MaterialStatePropertyAll(Size(160, 56)), backgroundColor: const MaterialStatePropertyAll(Colors.green), shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)))),
                onPressed: () {
                  Navigator.pushNamed(context, "/scienses");
                },
                child: const Text('Next', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: Colors.white))),
          ],
        ),
      ),
    );
  }
}

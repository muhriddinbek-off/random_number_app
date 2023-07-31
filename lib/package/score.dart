import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:random_number_app/provider/changeprovider.dart';

class Score extends StatelessWidget {
  const Score({super.key});

  @override
  Widget build(BuildContext context) {
    var answer = Provider.of<ModalProvider>(context).answer;

    return Scaffold(
      backgroundColor: Colors.blue.shade200,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue.shade200,
        elevation: 0,
        leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.blue, size: 30),
            onPressed: () {
              Navigator.pushNamed(context, "Ona-tili");
              Provider.of<ModalProvider>(context, listen: false).getRemove();
            }),
        title: const Text('Umumiy Ballar', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700, color: Colors.blueAccent)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text('Score', style: TextStyle(fontSize: 35, fontWeight: FontWeight.w800, color: Colors.blue)),
          ),
          const SizedBox(height: 20),
          Center(child: Text('$answer/5', style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold))),
          const SizedBox(height: 30),
          ElevatedButton(
              style: ButtonStyle(
                minimumSize: const MaterialStatePropertyAll(Size(250, 66)),
                backgroundColor: const MaterialStatePropertyAll(Colors.green),
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
              ),
              onPressed: () {
                Navigator.pushNamed(context, 'Ona-tili');
                Provider.of<ModalProvider>(context, listen: false).getRemove();
              },
              child: const Text('Qayta urinib ko\'rish', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
          const SizedBox(height: 30),
          ElevatedButton(
              style: ButtonStyle(
                minimumSize: const MaterialStatePropertyAll(Size(250, 66)),
                backgroundColor: const MaterialStatePropertyAll(Colors.grey),
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
              ),
              onPressed: () {
                Navigator.pushNamed(context, "/scienses");
                Provider.of<ModalProvider>(context, listen: false).getRemove();
              },
              child: const Text('Bosh sahifaga qaytish', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
        ],
      ),
    );
  }
}

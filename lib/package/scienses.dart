import 'package:flutter/material.dart';
import 'package:random_number_app/widget/fanlar_royxati.dart';

class SciensesPage extends StatelessWidget {
  const SciensesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade400,
        centerTitle: true,
        title: const Text('Fanlar', style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700, color: Colors.white)),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.height * 0.01, vertical: MediaQuery.of(context).size.height * 0.12),
        child: ListOfSubjects(),
      ),
    );
  }
}

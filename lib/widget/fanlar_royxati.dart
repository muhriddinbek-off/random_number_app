import 'package:flutter/material.dart';
import 'package:random_number_app/models/number_modal.dart';

class ListOfSubjects extends StatelessWidget {
  const ListOfSubjects({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: categories.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisExtent: 250),
        itemBuilder: (context, index) {
          final category = categories[index];
          return Container(
              padding: const EdgeInsets.all(8),
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(color: Colors.green.shade100, blurRadius: 7),
                ],
              ),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "/topics", arguments: category);
                },
                child: Column(
                  children: [
                    SizedBox(height: 180, child: Image.asset(category['img'])),
                    Text(
                      category['name'],
                      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.green),
                    ),
                  ],
                ),
              ));
        });
  }
}

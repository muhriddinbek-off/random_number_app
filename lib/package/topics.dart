import 'package:flutter/material.dart';

import '../models/number_modal.dart';

class Topics extends StatelessWidget {
  const Topics({super.key});

  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.green),
        toolbarHeight: 100,
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'Sizga yoqqan sinfni tanlang',
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18, color: Colors.green),
        ),
      ),
      body: Column(
        children: [
          Text(
            category['name'],
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700, color: Colors.green.shade400),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.height * 0.03, vertical: MediaQuery.of(context).size.height * 0.12),
              child: ListView.builder(
                  itemCount: categories[0]['topic'].length,
                  itemBuilder: (context, index) {
                    final topics = category['topic'][index];
                    return InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, category['name']);
                      },
                      child: Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          height: 56,
                          decoration: BoxDecoration(
                            color: Colors.blue.shade50,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black26,
                                offset: Offset(0, 4),
                                blurRadius: 4,
                              ),
                            ],
                          ),
                          child: Text(topics, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w800, color: Colors.blue))),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}

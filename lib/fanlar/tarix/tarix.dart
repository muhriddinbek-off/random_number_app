import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/get_number.dart';
import '../../provider/changeprovider.dart';

class Tarix extends StatefulWidget {
  const Tarix({super.key});

  @override
  State<Tarix> createState() => _TarixState();
}

class _TarixState extends State<Tarix> {
  int quetionsnum = 0;
  IconData close = Icons.close;
  IconData done = Icons.done;
  List<IconData> iconlar = [];

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<ModalProvider>(context);
    final answer = counter.answer;
    final quiz = quetions[quetionsnum];
    print(quiz);
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      appBar: AppBar(
        toolbarHeight: 70,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.green),
        elevation: 0,
        backgroundColor: Colors.blue.shade50,
        title: const Text('Test', style: TextStyle(fontSize: 23, fontWeight: FontWeight.w700, color: Colors.green)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
          children: [
            SizedBox(
              height: 40,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: iconlar.length,
                  itemBuilder: (context, index) {
                    return Container(
                        margin: const EdgeInsets.only(left: 15),
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.black38),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Icon(iconlar[index], color: Colors.redAccent, size: 30));
                  }),
            ),
            const SizedBox(height: 20),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(25),
              height: 170,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Text(quiz['savol'], textAlign: TextAlign.center, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white70)),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 300,
              child: ListView.builder(
                  itemCount: quetions[0]['variant'].length,
                  itemBuilder: (context, index) {
                    final variantlar = quiz['variant'][index];
                    return InkWell(
                      onTap: () {
                        setState(() {});
                        if (variantlar['isSelect'] == true) {
                          counter.getAdd();
                          iconlar.add(done);
                        }
                        if (variantlar['isSelect'] == false) {
                          iconlar.add(close);
                        }
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        alignment: Alignment.centerLeft,
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        height: 56,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          variantlar['text'],
                          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white70),
                        ),
                      ),
                    );
                  }),
            ),
            const SizedBox(height: 35),
            ElevatedButton(
                style: ButtonStyle(
                  minimumSize: const MaterialStatePropertyAll(Size(170, 66)),
                  backgroundColor: const MaterialStatePropertyAll(Colors.red),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
                ),
                onPressed: () {
                  setState(() {});
                  quetionsnum++;
                  if (quetionsnum == 5) {
                    Navigator.pushNamed(context, 'score');
                    quetionsnum--;
                  }
                },
                child: const Text(
                  'Keyingi savol',
                  style: TextStyle(fontSize: 22, color: Colors.white),
                )),
            const SizedBox(height: 26),
            Center(child: Text('$answer/5', style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w800, color: Colors.black45))),
          ],
        ),
      ),
    );
  }
}

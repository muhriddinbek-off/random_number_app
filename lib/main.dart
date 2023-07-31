import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:random_number_app/fanlar/bialogiya/bialogiya.dart';
import 'package:random_number_app/fanlar/geografiya/geografiya.dart';
import 'package:random_number_app/fanlar/ona-tili/ona-tili.dart';
import 'package:random_number_app/fanlar/tarix/tarix.dart';
import 'package:random_number_app/package/score.dart';
import 'package:random_number_app/provider/changeprovider.dart';

import 'package/main_menu.dart';
import 'package/scienses.dart';
import 'package/topics.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ModalProvider>(
      create: (context) => ModalProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: "/main-menu",
        routes: {
          "/main-menu": (context) => const MainMenu(),
          "/scienses": (context) => const SciensesPage(),
          "/topics": (context) => const Topics(),
          "Bialogiya": (context) => const Bialogiya(),
          "Ona-tili": (context) => const OnaTili(),
          "Geografiya": (context) => const Geografiya(),
          "Tarix": (context) => const Tarix(),
          "score": (context) => const Score(),
        },
      ),
    );
  }
}

import 'package:bank_gold/tela_iinicial/tela_inicial.dart';
import 'package:bank_gold/tela_iinicial/teste.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bank Gold',
      theme: ThemeData.dark(),
      initialRoute: "/inicial",
      routes: {
        "/inicial": (context) => const TelaInicial(),
        "/teste": (context) => const Teste()
      },
    );
  }
}

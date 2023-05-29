import 'package:bank_gold/screens/tela_cotacao/tela_cotacao.dart';
import 'package:bank_gold/screens/tela_inicial/tela_inicial.dart';
import 'package:bank_gold/screens/tela_principal/tela_principal.dart';
import 'package:bank_gold/screens/tela_transferencia/tela_transferencia.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bank Gold',
      // MUDANDO O TEMA DO APLICATIVO PARA O MODO ESCURO
      theme: ThemeData.dark(),
      //DEFININDO A TELA INICIAL
      initialRoute: "/inicial",
      // DEFININDO O ENDEREÇO DAS TELAS DO APP COM ROTAS NOMEADAS
      routes: {
        "/inicial": (context) => const TelaInicial(),
        "/principal": (context) => const TelaPrincipal(),
        "/cotacao": (context) => const TelaCotacao(),
        "/transferir": (context) => const TelaTransferencia()
      },
    );
  }
}

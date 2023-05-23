import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class Teste extends StatelessWidget {
  const Teste({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/imgs/2.png"), fit: BoxFit.cover)),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Image.asset(
                  "assets/imgs/logo.png",
                  height: 170,
                ),
              ),
              Text(
                "BANK GOLD",
                style: GoogleFonts.montserrat(
                    fontSize: 26,
                    color: const Color.fromRGBO(218, 177, 88, 1),
                    decoration: TextDecoration.none),
              ),
              const Expanded(child: Text("Bem vindo(a)"))
            ],
          ),
        ),
      ),
    );
    ;
  }
}

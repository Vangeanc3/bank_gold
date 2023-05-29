import 'package:bank_gold/components/box_card.dart';
import 'package:bank_gold/components/btn_ink.dart';
import 'package:flutter/material.dart';

class TelaTransferencia extends StatelessWidget {
  const TelaTransferencia({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(19, 16, 19, 1),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/imgs/7.png"), fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Material(
                color: Colors.transparent,
                child: BoxCard(
                  degrade: LinearGradient(
                      colors: [Colors.black, Colors.grey.shade600],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      stops: const [0.2, 1]),
                  filho: Row(
                    children: [
                      Image.asset("assets/imgs/logo.png", height: 70),
                      const Text(
                        "Transferir",
                        style: TextStyle(
                            fontSize: 24,
                            color: Color.fromRGBO(218, 177, 88, 1)),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Material(
              color: Colors.transparent,
              child: BoxCard(
                  degrade: const LinearGradient(
                      colors: [Colors.black, Color.fromRGBO(218, 177, 88, 1)],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      stops: [0.2, 1]),
                  filho: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Wrap(
                        alignment: WrapAlignment.start,
                        spacing: 50,
                        runSpacing: 20,
                        children: [
                          SizedBox(
                            width: 100,
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              maxLines: 1,
                              expands: false,
                              maxLength: 3,
                              decoration: const InputDecoration(
                                hintText: "Banco",
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 150,
                            child: TextFormField(
                              maxLines: 1,
                              expands: false,
                              maxLength: 10,
                              decoration: const InputDecoration(
                                hintText: "Tipo de conta",
                              ),
                            ),
                          ),
                          TextFormField(
                            maxLines: 1,
                            expands: false,
                            keyboardType: TextInputType.number,
                            maxLength: 14,
                            decoration: const InputDecoration(
                              hintText: "CPF ou CNPJ",
                            ),
                          ),
                          TextFormField(
                            maxLines: 1,
                            expands: false,
                            maxLength: 30,
                            decoration: const InputDecoration(
                              hintText: "Nome completo",
                            ),
                          ),
                          SizedBox(
                            width: 100,
                            child: TextFormField(
                              maxLines: 1,
                              expands: false,
                              keyboardType: TextInputType.number,
                              maxLength: 4,
                              decoration: const InputDecoration(
                                hintText: "Agência",
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 150,
                            child: TextFormField(
                              maxLines: 1,
                              expands: false,
                              keyboardType: TextInputType.number,
                              maxLength: 8,
                              decoration: const InputDecoration(
                                hintText: "Conta",
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: InkWell(
                              onTap: () {},
                              child: const BtnInk(
                                texto: "Continuar",
                                corTexto: Colors.black,
                                cor: Colors.white,
                              ),
                            ),
                          )
                        ]),
                  )),
            )
          ]),
        ),
      ),
    );
  }
}

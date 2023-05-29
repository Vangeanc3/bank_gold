import 'dart:convert';

import 'package:http/http.dart' as http;

class CotacaoService {
  // URL DA API QUE VAI SER CONSUMIDA PELO CLIENTE
  static const String url = "https://api.hgbrasil.com/finance";

  // FUNÇÃO QUE VAI CHAMAR A API E RETORNA OS DADOS
  Future<Map<String, dynamic>> verCotacao() async {
    // FAZENDO A SOLICITAÇÃO DA API
    http.Response resposta = await http.get(Uri.parse(url));

    // VERIFICA SE PODE OCORRER ERROS AO SOLICITAR OS DADOS, CASO TENHA ERROS, IRA RETORNA UMA EXCEÇÃO
    if (resposta.statusCode != 200) {
      throw Exception();
    }
    //DADOS
    Map<String, dynamic> resultado = json.decode(resposta.body);

    // DADOS RETORNADOS
    return resultado["results"]["currencies"];
  }
}

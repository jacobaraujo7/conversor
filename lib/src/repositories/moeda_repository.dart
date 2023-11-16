import 'dart:convert';

import 'package:conversor/src/models/moeda_model.dart';
import 'package:http/http.dart';
import 'package:xml/xml.dart';

class MoedaRepository {
  final client = Client();

  Future<List<MoedaModel>> getMoedas() async {
    final response = await client.get(Uri.parse('https://economia.awesomeapi.com.br/xml/available/uniq'));
    final xmlRaw = response.body;
    return parseMoedas(xmlRaw);
  }

  List<MoedaModel> parseMoedas(String xmlRaw) {
    final document = XmlDocument.parse(xmlRaw);

    final elements = document.children.last.children.whereType<XmlElement>();
    final moedas = <MoedaModel>[];

    for (var element in elements) {
      final model = MoedaModel(
        code: element.localName,
        name: element.innerText,
      );
      moedas.add(model);
    }

    return moedas;
  }

  Future<double> cotacao(MoedaModel moedaIn, MoedaModel moedaOut) async {
    final search = '${moedaIn.code}-${moedaOut.code}';

    final response = await client.get(Uri.parse('https://economia.awesomeapi.com.br/json/last/$search'));
    final jsonRaw = response.body;
    return parseCotacao(jsonRaw, search);
  }

  double parseCotacao(String jsonRaw, String search) {
    search = search.replaceFirst('-', '');
    final json = jsonDecode(jsonRaw);
    final model = json[search];
    final cotacao = model['bid'];
    return double.parse(cotacao);
  }
}

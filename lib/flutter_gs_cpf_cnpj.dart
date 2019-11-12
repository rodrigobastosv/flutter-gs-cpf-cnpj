library flutter_gs_cpf_cnpj;

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter_gs_cpf_cnpj/pessoa_juridica.dart';

class FlutterGSCpfCnpj {

  static const BASE_URL = 'http://10.0.0.81';
  static const PORT = 8018;
  static const CPF = 'cpf';
  static const CNPJ = 'cnpj';

  static Future<PessoaJuridica> buscarPessoaJuridica(String cnpj) async {
    final response = await http.get('$BASE_URL:$PORT/$CNPJ/$cnpj');
    return PessoaJuridica.fromJson(jsonDecode(response.body));
  }
}
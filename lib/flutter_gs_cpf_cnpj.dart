library flutter_gs_cpf_cnpj;

import 'dart:convert';

import 'package:http/http.dart' as http;

import 'pessoa_fisica.dart';
import 'pessoa_juridica.dart';

class FlutterGSCpfCnpj {

  static const BASE_URL = 'http://10.0.0.81';
  static const PORT = 8018;
  static const CPF = 'cpf';
  static const CNPJ = 'cnpj';

  static Future<PessoaJuridica> buscarPessoaJuridica(String cnpj) async {
    try {
      final response = await http.get('$BASE_URL:$PORT/$CNPJ/$cnpj');
      return PessoaJuridica.fromJson(jsonDecode(response.body));
    } catch(e) {
      throw e;
    }
  }

  static Future<PessoaFisica> buscarPessoaFisica(String cpf, [String dtNascimento = '00-00-0000']) async {
    try {
      final response = await http.get('$BASE_URL:$PORT/$CPF/$cpf/$dtNascimento');
      return PessoaFisica.fromJson(jsonDecode(response.body));
    } catch(e) {
      throw e;
    }
  }
}
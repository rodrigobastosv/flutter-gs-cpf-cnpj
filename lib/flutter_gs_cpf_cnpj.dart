library flutter_gs_cpf_cnpj;

import 'dart:convert';

import 'package:cpf_cnpj_validator/cnpj_validator.dart';
import 'package:cpf_cnpj_validator/cpf_validator.dart';
import 'package:http/http.dart' as http;

import 'pessoa_fisica.dart';
import 'pessoa_juridica.dart';

class FlutterGSCpfCnpj {
  static const CPF = 'cpf';
  static const CNPJ = 'cnpj';

  static Future<PessoaJuridica> buscarPessoaJuridica(
      {String urlBase, int port, String cnpj}) async {
    if (CNPJValidator.isValid(cnpj)) {
      try {
        final response = await http.get('$urlBase:$port/$CNPJ/$cnpj');
        return PessoaJuridica.fromJson(jsonDecode(response.body));
      } catch (e) {
        throw e;
      }
    } else {
      throw Exception('CNPJ inválido');
    }
  }

  static Future<PessoaFisica> buscarPessoaFisica(
      {String urlBase,
      String cpf,
      int port,
      String dtNascimento = '00-00-0000'}) async {
    if (CPFValidator.isValid(cpf)) {
      try {
        final response =
            await http.get('$urlBase:$port/$CPF/$cpf/$dtNascimento');
        return PessoaFisica.fromJson(jsonDecode(response.body));
      } catch (e) {
        throw e;
      }
    } else {
      throw Exception('CPF inválido');
    }
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_gs_cpf_cnpj/flutter_gs_cpf_cnpj.dart';
import 'package:flutter_gs_cpf_cnpj/pessoa_fisica.dart';
import 'package:flutter_gs_cpf_cnpj/pessoa_juridica.dart';

void main() => runApp(MyApp());

const BASE_URL = 'http://10.0.0.81';
const PORT = 8018;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TesteCpfCnpj(),
    );
  }
}

class TesteCpfCnpj extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          FutureBuilder<PessoaJuridica>(
            future: FlutterGSCpfCnpj.buscarPessoaJuridica(
                urlBase: BASE_URL, cnpj: '10401916000107'),
            builder: (_, snapshot) {
              if (snapshot.hasData) {
                print(snapshot.data);
                return Text('');
              } else if (snapshot.hasError) {
                print(snapshot.error);
                return Text('');
              }
              return Container();
            },
          ),
          FutureBuilder<PessoaFisica>(
            future: FlutterGSCpfCnpj.buscarPessoaFisica(
                urlBase: BASE_URL, cpf: '04001152201'),
            builder: (_, snapshot) {
              if (snapshot.hasData) {
                print(snapshot.data);
                return Text('');
              } else if (snapshot.hasError) {
                print(snapshot.error);
                return Text('');
              }
              return Container();
            },
          ),
        ],
      ),
    );
  }
}

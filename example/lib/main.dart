import 'package:flutter/material.dart';
import 'package:flutter_gs_cpf_cnpj/flutter_gs_cpf_cnpj.dart';
import 'package:flutter_gs_cpf_cnpj/pessoa_juridica.dart';

void main() => runApp(MyApp());

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
              future: FlutterGSCpfCnpj.buscarPessoaJuridica('10401916000107'),
              builder: (_, snapshot) {
                if (snapshot.hasData) {
                  print(snapshot.data);
                  return Text('');
                }
                return Container();
              },
          ),
          FutureBuilder<PessoaFisica>(
            future: FlutterGSCpfCnpj.buscarPessoaJuridica('10401916000107'),
            builder: (_, snapshot) {
              if (snapshot.hasData) {
                print(snapshot.data);
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


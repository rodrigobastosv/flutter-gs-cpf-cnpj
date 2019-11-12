import 'package:flutter/material.dart';
import 'package:flutter_gs_cpf_cnpj/flutter_gs_cpf_cnpj.dart';
import 'package:flutter_gs_cpf_cnpj/pessoa_fisica.dart';
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
              future: FlutterGSCpfCnpj.buscarPessoaJuridica('1040191600010711'),
              builder: (_, snapshot) {
                if (snapshot.hasData) {
                  print(snapshot.data);
                  return Text('');
                } else if(snapshot.hasError) {
                  print(snapshot.error);
                  return Text('');
                }
                return Container();
              },
          ),
          FutureBuilder<PessoaFisica>(
            future: FlutterGSCpfCnpj.buscarPessoaFisica('0400115220111'),
            builder: (_, snapshot) {
              if (snapshot.hasData) {
                print(snapshot.data);
                return Text('');
              } else if(snapshot.hasError) {
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


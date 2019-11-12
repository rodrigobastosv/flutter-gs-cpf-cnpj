class PessoaFisica {
  String cpf;
  String nome;

  PessoaFisica({this.cpf, this.nome});

  PessoaFisica.fromJson(Map<String, dynamic> json) {
    cpf = json['cpf'];
    nome = json['nome'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cpf'] = this.cpf;
    data['nome'] = this.nome;
    return data;
  }

  @override
  String toString() {
    return 'PessoaFisica{cpf: $cpf, nome: $nome}';
  }
}
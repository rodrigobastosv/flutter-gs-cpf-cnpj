class PessoaJuridica {
  String cnpj;
  String razao;
  String fantasia;
  String logradouro;
  String numero;
  String complemento;
  String cep;
  String bairro;
  String municipio;
  String uf;

  PessoaJuridica(
      {this.cnpj,
        this.razao,
        this.fantasia,
        this.logradouro,
        this.numero,
        this.complemento,
        this.cep,
        this.bairro,
        this.municipio,
        this.uf});

  PessoaJuridica.fromJson(Map<String, dynamic> json) {
    cnpj = json['cnpj'];
    razao = json['razao'];
    fantasia = json['fantasia'];
    logradouro = json['logradouro'];
    numero = json['numero'];
    complemento = json['complemento'];
    cep = json['cep'];
    bairro = json['bairro'];
    municipio = json['municipio'];
    uf = json['uf'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cnpj'] = this.cnpj;
    data['razao'] = this.razao;
    data['fantasia'] = this.fantasia;
    data['logradouro'] = this.logradouro;
    data['numero'] = this.numero;
    data['complemento'] = this.complemento;
    data['cep'] = this.cep;
    data['bairro'] = this.bairro;
    data['municipio'] = this.municipio;
    data['uf'] = this.uf;
    return data;
  }
}
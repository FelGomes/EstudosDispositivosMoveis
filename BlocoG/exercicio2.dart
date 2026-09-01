// Acrescente um construtor nomeado Produtor.semTelefone que dispense o telefone.


class Produtor {
  final String nome;
  final String cidade;
  final String? telefone;

  Produtor({required this.nome, required this.cidade, this.telefone});


  Produtor.semTelefone({
    required this.nome,
    required this.cidade

  }) : telefone = "Sem telefone cadastrado";




  @override
  String toString() {
    // TODO: implement toString
    return "Nome: $nome | Cidade: $cidade | telefone ${telefone ?? "Nao informado"}";
  }
}

void main() {
  Produtor pro = Produtor(nome: 'Jose', cidade: "Holambra", telefone: "6240028922");
  Produtor pro1 = Produtor.semTelefone(nome: 'Felipe', cidade: 'Manaus');

  print(pro);

  print(pro1);
}

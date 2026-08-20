// crie a classe Produtor com nome, cidade e telefone (que pode não existir). Use campos
// final e construtor com parâmetros nomeados obrigatórios.

class Produtor {
  final String nome;
  final String cidade;
  final String? telefone;

  Produtor({required this.nome, required this.cidade, this.telefone});




  @override
  String toString() {
    // TODO: implement toString
    return "Nome: $nome | Cidade: $cidade | telefone ${telefone ?? "Nao informado"}";
  }
}

void main() {
  Produtor pro = Produtor(nome: 'Jose', cidade: "Holambra", telefone: "6240028922");

  print(pro);
}

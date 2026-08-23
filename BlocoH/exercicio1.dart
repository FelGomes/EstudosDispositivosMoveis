/**
 * Crie um enum Atividade com plantio, adubação, pulverização e colheita. Use-o em um
switch que devolva uma descrição de cada atividade.
 */

enum Atividade { plantio, adubacao, pulverizacao }

class Cultura {
  late String nome;
  late Atividade status;

  Cultura(String nome, Atividade status) {
    this.nome = nome;
    this.status = status;
  }

  void verificarCultivo() {
    switch (status) {
      case Atividade.plantio:
        print("O cultivo foi plantado!");
        break;


      case Atividade.adubacao:
        print("O cultivo foi adubado");
        break;

      case Atividade.pulverizacao:
        print("O cultivo foi puverizado");
        break;

      default:
        print("Não houve essa opção!");
        break;
    }
  }
}

void main() {
  Cultura c = Cultura("felipe", Atividade.adubacao);

  print(c.nome);
  print(c.status);

  c.verificarCultivo();
}

// Acrescente um bloco finally ao exercício anterior e confirme, por experimento, que ele
// executa tanto no caso de sucesso quanto no de erro

enum Fazenda {
  plantio('Plantio', false),
  adubacao('Adubação', false),
  pulverizacao("Pulverização", true);

  final String rotulo;
  final bool is_defensivo;

  const Fazenda(this.rotulo, this.is_defensivo);
}

class Agricultura {
  late String nome;
  late double area;
  late Fazenda fazenda;

  Agricultura(String nome, double area, Fazenda fazenda) {
    this.nome = nome;
    this.area = area;
    this.fazenda = fazenda;
  }

  double verificarPlantio(double area) {
    if (area <= 0) {
      throw ArgumentError("Area nao deve ser 0 ou menor que 0");
    }

    return area;
  }

  void validarErros(double valor) {
    try {
      verificarPlantio(valor);
    } on ArgumentError catch (e) {
      print("Dado invalido $e");
    } catch (e) {
      print("Erro inesperado $e");


    } finally {
      print("De todo jeito caiu nessa parada aqui!");
    }
  }

  @override
  String toString() {
    // TODO: implement toString
    return "Plantação $nome, Area: $area | Rotulo: ${fazenda.rotulo} Existe sistema defensivo: ${fazenda.is_defensivo}";
  }
}

void main() {
  Agricultura agriculturas = Agricultura('Soja', 1111, Fazenda.plantio);

  print(agriculturas);
  agriculturas.validarErros(agriculturas.area);
  
}

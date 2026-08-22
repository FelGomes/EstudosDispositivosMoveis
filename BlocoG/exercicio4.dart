// Sobrescreva toString em Talhao e imprima um objeto diretamente com print.

class TalhaoCultura {
  late String nome;
  late String cidade;
  late String cultura;
  late double hectar;

  TalhaoCultura(String nome, String cidade, String cultura, double hectar) {
    this.nome = nome;
    this.cidade = cidade;
    this.cultura = cultura;
    this.hectar = hectar;
  }

  @override
  String toString() {
    // TODO: implement toString
    return "$nome, voce mora em $cidade, sua cultura é de: $cultura, e é de $hectar ha";
  }
}

void main() {
  TalhaoCultura ta = TalhaoCultura("Felipe", "Ceres", "Cana-de-açucar", 900);

  print(ta);
}

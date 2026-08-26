// Relatório da propriedade: a partir de uma lista de objetos Talhao, imprima um relatório com
// área total, área por cultura, percentual de cada cultura e o talhão de maior área. Toda a
// formatação deve sair no padrão brasileiro.

class Talhao {
  late String cultura;
  late double area;

  Talhao(String cultura, double area) {
    this.cultura = cultura;
    this.area = area;
  }

  static double calcularAreaTotalDeCultura(List<Talhao> talhao) {
    double resultadoFinal = 0;

    for (var area in talhao) {
      if (area.area <= 0) {
        return 0;
      }

      resultadoFinal += area.area;

      
    }

    return resultadoFinal;
  }

  /***
   * 
   * static Map<String, double> calcularPercentualDeCadaCultura(List<Talhao> talhoes, areaTota) {
   * 
   * Map<String, double> percentual = {};

    for (var talhao in talhoes) {

      if (talhao.area <= 0) {
        break;
      }

        double calculo = (talhao.area / areaTotal) * 100;

        calculo = double.parse(calculo.toStringAsFixed(2));

        percentual[//talhao.cultura] = calculo;
    }

      return percentual;
   * 
   * 
   * }
   * 
   * 
   * 
   * 
   */

  static List<double> calcularPercentualDeCadaCultura(
    List<Talhao> talhoes,
    areaTotal,
  ) {
    List<double> percentual = [];
    double calculo;

    for (var talhao in talhoes) {
      if (talhao.area <= 0) {
        break;
      }
      calculo = (talhao.area / areaTotal) * 100;

      calculo = double.parse(calculo.toStringAsFixed(2));
      percentual.add(calculo);
    }
    return percentual;
  }

  static String verificarMaiorArea(List<Talhao> talhao) {
    double maior = 0;
    late String culturaMaior;

    for (var talhao in talhao) {
      if (talhao.area > maior) {
        maior = talhao.area;
        culturaMaior = talhao.cultura;
      }
    }

    return "A maior cultura é a ${culturaMaior} com uma area de ${maior}";
  }
}

void main() {
  List<Talhao> talhao = [
    Talhao('soja', 100),
    Talhao('milho', 200.90),
    Talhao('cana-de-açucar', 210),
  ];

  double areaTotal = Talhao.calcularAreaTotalDeCultura(talhao);

  String areaTotalFormatado =
    areaTotal.toStringAsFixed(2).replaceAll('.', ',');

  print("A area total de todas as culturas é de ${areaTotalFormatado} ha");

  for (var areaPorCultura in talhao) {
    print("${areaPorCultura.cultura}: ${areaPorCultura.area}");
  }

  print(
    "O percentual de cada cultura é de: ${Talhao.calcularPercentualDeCadaCultura(talhao, areaTotal)}",
  );
  print(Talhao.verificarMaiorArea(talhao));
}

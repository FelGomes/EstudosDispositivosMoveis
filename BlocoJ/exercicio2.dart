// Registro de atividades: crie uma classe Registro com talhão, atividade (enum), data e
// observação opcional. Monte uma lista de registros, valide a data com exceção e imprima o
// histórico agrupado por talhã

enum Atividade { pulverizacao, plantio, adubacao, irrigacao, colheita }

class Talhao {
  late String cultura;
  late double areaHectares;
  late String cidade;

  Talhao(String cultura, double areaHectares, String cidade) {
    this.cultura = cultura;
    this.areaHectares = areaHectares;
    this.cidade = cidade;
  }
}

class Registro {
  late Talhao talhao;
  late Atividade atividade;
  late DateTime data;
  String? obersavacao;

  Registro({
    required this.talhao,
    required this.atividade,
    required this.data,
    this.obersavacao,
  }) {
    validarData(data);
  }

  void validarData(DateTime data) {
    DateTime dataAtual = DateTime.now();

    if (data.isAfter(dataAtual)) {
      throw Exception(
        "A data informada nao pode ser maior que a data atual, informe uma nova!",
      );
    }
  }


  @override
  String toString() {
    // TODO: implement toString
    return "Cultura: ${talhao.cultura} | Hectares: ${talhao.areaHectares} | Cidade: ${talhao.cidade} | Atividade: $atividade | Data: $data | Observação: ${obersavacao?? "Nao foi informado uma observação!"}";
  }
}

void main() {
  Talhao milho = Talhao("milho", 1000, 'Ceres');
  Talhao cana = Talhao('cana', 2000, "Rialma");

  List<Registro> registro = [
    Registro(
      talhao: milho,
      atividade: Atividade.adubacao,
      data: DateTime(2026, 8, 26),
      obersavacao: "Adubação feita com sucesso",
    ),
    Registro(
      talhao: milho,
      atividade: Atividade.plantio,
      data: DateTime(2026, 5, 05),
      obersavacao: "Plantio feito com sucesso",
    ),
    Registro(
      talhao: milho,
      atividade: Atividade.pulverizacao,
      data: DateTime(2026, 8, 31),
      obersavacao: "Pulverização feita com sucesso",
    ),
    Registro(
      talhao: milho,
      atividade: Atividade.colheita,
      data: DateTime(2026, 9, 2026),
      
    ),
    
  ];


  for(var elements in registro){
    print(elements);
  }
}

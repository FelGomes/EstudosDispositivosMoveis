// Crie uma lista de objetos Talhao e repita sobre ela as agregações do Bloco E: área total,
// filtro por cultura e o maior talhão. Compare com a versão que usava mapas.

class Talhao {
  late String nome;
  late double area;

  Talhao(String nome, double area) {
    this.nome = nome;
    this.area = area;
  }

  // FUnção para acumular valores de listas

  static double somarLista(List<Talhao> valores) {
    var resultado = valores.fold<double>(0, (a, valores) => a + valores.area);

    return resultado;
  }

  // função do tipo lista que recebe uma lista
  /**
   * where serve para filtrar, quando um dado for maior que 10
   * Map para juntar/manipular a função
   * To List para converter os dados
   */

  static List<String> filtrarArea(List<Talhao> valores) {
    return valores
        .where((dados) => dados.area > 10)
        .map((dados) => "${dados.nome} - ${dados.area}")
        .toList();
  }


  //**
  //Função do tipo Objeto que recebe uma lista
  //for in o primeiro apelido é o que iremos utilizar */

  static Talhao verificaMaior (List<Talhao> valores) {
    Talhao maior = valores[0];

    for (var valores in valores) {
      if (valores.area > maior.area) {
        maior = valores;
      }

    }
      return maior;
  }
}


/**
 * COmo iremos passar mais de um valor, podemos "instanciar" em formato de lista, mas desse modo, teremos que acessar via static
 */
void main() {
  List<Talhao> talhao = [
    Talhao("Milho", 90),
    Talhao('Soja', 100),
    Talhao('Feijao', 4),
  ];

  print(Talhao.somarLista(talhao));
  print(Talhao.filtrarArea(talhao));
  print(Talhao.verificaMaior(talhao).area);
}

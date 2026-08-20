// Crie a classe Talhao com nome, área e cultura. Acrescente um campo calculado que
// devolva a área em alqueires e outro que informe se o talhão tem menos de 20 ha.

// import '../BlocoA/exercicio2.dart';
// import 'exercicio2.dart';

class Talhao {
  String nome;
  double area;
  String cultura;

  Talhao({
    required this.nome,
    required this.area,
    required this.cultura
  });


  get calcularAreaAlqueires => area/4.84;

  bool get validar => area < 20;

  double calcularAlqueires(hectares) {
    return hectares * 4.84;
  }

  String validarAlqueires(alqueires) {

    if(alqueires < 20){
      return "Valor abaixo de 20";


    }

    return "Valor acima de 20!";
  }


  @override
  String toString() {
    // TODO: implement toString
    return "Nome: $nome | Area: $area | Cultura: $cultura";
  }
}


void main(){


  Talhao tralhao = Talhao(nome: "Felipe", area: 100.9, cultura: 'Soja');

  print(tralhao.calcularAlqueires(1000));

  var resultado = tralhao.calcularAlqueires(1000);

  print(tralhao.validarAlqueires(resultado));


  print("Area em alqueires ${tralhao.calcularAreaAlqueires.toStringAsFixed(2)}");
  print("A area é menor que 20 hectares? ${tralhao.validar}");


}

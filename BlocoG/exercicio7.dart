// Crie uma classe abstrata Cultura com nome e ciclo em dias, e duas subclasses concretas.
// Guarde as duas em uma lista do tipo da classe abstrata e percorra imprimindo o resumo de
// cada uma.


abstract class Cultura {

late String nome;
late int dias;

Cultura(String nome, int dias){
  this.nome = nome;
  this.dias = dias;
}

  String resumo() {
    // TODO: implement toString
    return "$nome tem ciclo de $dias";
  }


}



class Milho extends Cultura {


  Milho(String nome, int dias) : super(nome, dias);

  

  

}


class Soja extends Cultura {

  Soja(String nome, int dias) : super(nome, dias);

}



void main() {

  List<Cultura> culturas = [
    Milho('milho', 120),
    Soja('Soja', 110),
  ];


  for(var element in culturas) {
    print(element.resumo());
  }


}
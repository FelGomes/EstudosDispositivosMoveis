// Transforme o enum anterior em um enum com campos, guardando também um rótulo em
// português e se a atividade exige registro de defensivo.



// Criando um enum com propriedade e metodos
enum Atividade { 

  //cada valor possui um rotulo e se existe um sistema defensivo
  plantio("Plantio", false),
  adubacao("Adubação", false),
  pulverizacao("Pulverização", true);


  //depois criamos as varaiveis
  final String rotulo;
  final bool isDefensivo;


  // criamos o construtor

  const Atividade(this.rotulo, this.isDefensivo);


 }


 class Agricultura {

  late String nome;
  late Atividade atividade;


  Agricultura(String nome, Atividade atividade) {
    this.nome = nome;
    this.atividade = atividade;
  }


  @override
  String toString() {
    // TODO: implement toString
    return "$nome: ${atividade.rotulo} | Exige sistema defensivo: ${atividade.isDefensivo}";
  }
 }


void main() {

    List<Agricultura> agriculturas = [
      Agricultura("Soja", Atividade.plantio),
      Agricultura("Milho", Atividade.adubacao),
      Agricultura("Cana-de-açucar", Atividade.pulverizacao),
      
    ];


    for(var agricultura in agriculturas) {

      print(agricultura);
      

    }


    print(agriculturas.length);




}






 






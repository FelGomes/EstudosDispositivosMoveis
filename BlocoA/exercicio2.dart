var nomeProdutor = "Henrique Selvagem"; // Tipagem String
var cidade = "Holambra"; // Tipagem String
var areaPropriedade = 890.81; //float or double
var anoSafra = 2021; //int -> sem aspas

void main() {
  print("Ola, me chamo $nomeProdutor, sou de $cidade, minha propriedade tem $areaPropriedade hectares e minha safra é de $anoSafra");
  print(areaPropriedade.runtimeType);
  print(nomeProdutor.runtimeType);
  print(cidade.runtimeType);
  print(anoSafra.runtimeType);

}
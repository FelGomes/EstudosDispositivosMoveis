// Bloco A Exercicio 1


final String nomeProdutor = "Felipe";
final String cidade = "Ceres";
final double areaPropriedade = 890.12;
final String anoSafra = "2026";

String descreverMinhaSafra() {
  return  "Ola, me chamo $nomeProdutor, moro em: $cidade tenho uma area de propriedade de  $areaPropriedade hectares e minha safra é no ano de: $anoSafra";
}


void main() {
  print(descreverMinhaSafra());
}
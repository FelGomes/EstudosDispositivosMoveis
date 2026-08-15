/**
Converta uma área em hectares para alqueires goianos e imprima o resultado com duas
casas decimais.
 */


 void main() {

  const alqueireGoiano = 4.84;

  final hectares = 9808.90;

  print(conversaoAlqueireParaHectares(hectares, alqueireGoiano));



 }


 String conversaoAlqueireParaHectares(double hectares, double alqueireGoiano) {

    var valorConvertido = (hectares/ alqueireGoiano);
    valorConvertido = double.parse(valorConvertido.toStringAsFixed(2));

    return "$hectares hectares convertendo para alqueire Goiano da: $valorConvertido";

 }
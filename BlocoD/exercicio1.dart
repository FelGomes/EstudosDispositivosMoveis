// Classifique uma produtividade em três faixas: abaixo de 50 sc/ha, entre 50 e 70, e acima de
// 70. Use if/else



final double quantidadeSaca = 909;
final double hectares = 41;


void main() {

  var resultado = calcularProdutividade(quantidadeSaca, hectares);

  print(verificarPordutividade(resultado));

}



String? verificarPordutividade( double? resultado){


  if(resultado == null) {
    return "A quantidade de hectares nao pode ser 0 ou igual a 0!";
  }

  if(resultado < 50){
    return "Quantidade abaixo do esperado";


  } else if(resultado >= 50 && resultado <= 70) {
    return "Quantidade de produtividade normal";

  } else {
    return "Quantidade de super faturação!";
  }


}



double? calcularProdutividade(double quantidadeSaca, double hectares) {

  if(hectares <= 0) {
    return null;
  }

  return quantidadeSaca/hectares;

}
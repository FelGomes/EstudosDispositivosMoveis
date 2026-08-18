// Refaça a classificação anterior usando switch como expressão (a forma com => que
// devolve um valor).


final double quantidadeSaca = 9109;
final double hectares = 23;


void main() {

  var resultado = calcularProdutividade(quantidadeSaca, hectares);

  print(verificarPordutividade(resultado));

}



String? verificarPordutividade( double? resultado){


 switch(resultado){

    case == null:
      return "Hectares nao pode ser 0 ou meno quer 0";

    case < 50: 
      return "Abaixo do esperado";

    case <= 50 && >=70:
      return "Na média";

    case > 70:
      return "Acima do esperado!";

    default:
        return "Valor indefinido";


  
 }


}



double? calcularProdutividade(double quantidadeSaca, double hectares) {

  if(hectares <= 0) {
    return null;
  }

  return quantidadeSaca/hectares;

}
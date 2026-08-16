/**
 * Escreva uma função com retorno double? que calcule sacas por hectare e devolva nulo
 * quando a área for zero ou negativa. Trate o resultado no main com uma verificação
 * explícita, sem usar o operador !.
 */


double saca = 12134134;
double hectares = 0;


void main() {
  var resultado = calculeSacaParaHectar(saca, hectares);


  if(resultado == null) {
    print("Erro: A area não pode ser zero ou negativa, Calculo impossivel!");

  } else {
    print("A produtividade da safra é de: $resultado sacas por hectares");
  }



}



double? calculeSacaParaHectar(double saca, double hectare){

  if(hectare <=0){
    return null;
  }


  return saca/hectare;

}
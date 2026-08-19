/* Escreva uma função que receba a área em hectares e devolva o valor em alqueires
goianos. Escreva também a versão com sintaxe de seta
 * 
 * 
 * */



double hectares = 200;


void main() {
  
  
  print(calcularHectaresToAlqueires(hectares));
  
  print(arrowFunction(hectares));
  
  
  
  
}

//Função normal
double? calcularHectaresToAlqueires(double hectares) {
  
  if(hectares <= 0) {
    return null;
  }
  
  var resultado = double.parse( (hectares/4.84).toStringAsFixed(2)); 
  
  return resultado;
  
} 


//Função seta, mais conhecida como arrow function
double? arrowFunction(a) =>  a/4.84;
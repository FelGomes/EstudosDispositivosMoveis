/*Escreva uma função de formatação que receba um número e, opcionalmente, o número de
casas decimais, com 1 como padrão. Chame-a das duas formas: com e sem o segundo
argumento.*/

//Esse segundo parametro serve para mostrar a quantidade de casas, dessa forma, ela opcional
void formatacao(double numero1, [int casas = 1] ){
  
 print("Numero: ${numero1.toStringAsFixed(casas)}");
}


void main() {
  
  var numero1= 10.90;
 
  
  
  
  formatacao(numero1, 3);
}
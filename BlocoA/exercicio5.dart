/**
5. Declare três cotações de saca. Imprima a maior, a menor e a média, todas com duas
casas. Dica: a > b ? a : b resolve a comparação de dois valores
 */

 void main() {

  final double sacaA = 120.013;
  final double sacaB = 129.231;
  final double sacaC = 241.001;

  print(compararSacas(sacaA, sacaB, sacaC));
  print("A média da saca é de: " + mediaSaca(sacaA, sacaB, sacaC).toStringAsFixed(2));

 }

 String compararSacas(double sacaA, double sacaB, double sacaC) {

   final maior = (sacaA > sacaB && sacaA > sacaC) ? sacaA : (sacaB > sacaC ? sacaB : sacaC);
   final menor = (sacaA < sacaB && sacaA < sacaC) ? sacaA : (sacaB < sacaC ? sacaB : sacaC);

  return "O maior cotação é: " + maior.toStringAsFixed(2) + " e a menor cotação é: " + menor.toStringAsFixed(2);

 }


 double mediaSaca(double sacaA, double sacaB, double sacaC){
  return (sacaA + sacaB + sacaC)/3;
 }


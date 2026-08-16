// import 'dart:ffi';

/**
 * Escreva uma função que receba double? chuvaMm e devolva um texto: "sem registro"
 * quando for nula, "seca" abaixo de 20 mm e "normal" acima disso
 */

void main() {

  double? valorMm;


  print(chuvaMm(valorMm));

}




String chuvaMm(double? valorMm) {
  if (valorMm == null) {
    return "Sem registro";

  } else if (valorMm < 20) {
    return "Seca";

  } else {
    return "Normal";


  }

}

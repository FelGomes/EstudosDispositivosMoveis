// Imprima uma tabela de conversão de hectares para alqueires goianos, de 10 em 10, de 10
// até 100 hectares.

String? calcularHectaresParaAlqueires(double alqueiresGoiano){

  if(alqueiresGoiano <= 0){
    return "Sem valor";
  }

  for(int ha = 0; ha <= 100; ha += 10){
    double alqueires = ha/alqueiresGoiano;

    print("${ha} hectares equivale a ${alqueires.toStringAsFixed(2)}");
  }



}


void main() {

const double alqueiresGoiano = 4.84;

print(calcularHectaresParaAlqueires(alqueiresGoiano));


}

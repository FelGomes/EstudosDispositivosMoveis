// Percorra uma lista de áreas e some apenas as maiores que zero, usando continue para
// pular as demais. Interrompa o laço com break se a soma passar de 200 ha



void main(){
List<double> areas = [190.90, 12.3, 0, 123.98, -10.2, 100.23];


double somaTotal = 0;

for (var element in areas) {

  if(element < 0){
    continue;

  }


  somaTotal += element;


  if(somaTotal > 200) {
    print("A quantidade de hectares passou de 200, deu ${somaTotal.toStringAsFixed(2)}");
    break;
  }
  
}



}


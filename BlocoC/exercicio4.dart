// A partir da string ' soja , milho , sorgo ', produza uma lista com as três culturas sem
// espaços em excesso e em letras maiúsculas.


var graos = ' soja , milho , sorgo ';

// Quando se utiliza varias funções, utilize separadas

void main() {

  print(graos.trim().toUpperCase().split(","));


}
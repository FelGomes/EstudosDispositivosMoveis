// A partir da string ' soja , milho , sorgo ', produza uma lista com as três culturas sem
// espaços em excesso e em letras maiúsculas.


final String graos = ' soja , milho , sorgo ';

// Quando se utiliza varias funções, utilize separadas

void main() {

   final List<String> cultura = graos.split(",")
   .map((c) => c.trim())
   .map((c) => c.toUpperCase())
   .toList();

   print(graos);
   print(cultura);


}
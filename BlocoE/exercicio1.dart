// Crie uma lista de culturas. Acrescente uma, remova outra e imprima o tamanho, o primeiro
// e o último elemento.



List<String> culturas = ['milho', 'Feijao', 'Arroz'];


void main() {
  print(culturas);

  aumentarLista();

  print(culturas);

  diminuirLista();

  print(culturas);

  print(culturas.length);
  print(culturas.first);
  print(culturas.last);

 
}


void aumentarLista() {
  culturas.add('soja');
}


void diminuirLista() {
  culturas.remove('Feijao');
}

 
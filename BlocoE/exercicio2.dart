// Crie uma lista com culturas repetidas e converta-a em um conjunto para eliminar as
// repetições. Imprima os dois e compare.

// Função map serve para eleminiar elementos duplicados
List<String> culturas = ['soja', 'milho', 'feijao', 'arroz', 'soja'];

void main(){
  print(culturas);

  Set<String> newlist = culturas.toSet();

  print(newlist);
}



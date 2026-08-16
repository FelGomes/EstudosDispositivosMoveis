// Imprima um valor monetário no formato brasileiro, com o cifrão escapado corretamente e
// vírgula como separador decimal. Dica: toStringAsFixed seguido de replaceAll.

String valorBrasileiro = "245143,09";


void main(){
  print("R\$ ${double.parse(valorBrasileiro.replaceAll(",", ".")).toStringAsFixed(2)}");
}
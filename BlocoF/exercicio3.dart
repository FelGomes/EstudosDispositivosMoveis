/*Escreva uma função com parâmetros nomeados: nome e área são obrigatórios (required),
cultura tem valor padrão. Chame-a invertendo a ordem dos argumentos e confirme que
funciona.*/


String nome = "Escola Fazenda";
double area = 800;

void culturar({
  
  required String nome,
  required double area,
  String cultura = "Soja"   
  
}) {
  print("Nome: $nome");
  print("Area: $area ha");
  print("Cultura: $cultura");
} 


void main() {
  
  culturar (
    nome: "felipe",
    area: 90,
  
  
  
  );
}
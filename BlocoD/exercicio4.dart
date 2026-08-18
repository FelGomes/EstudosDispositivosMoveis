// Simule a colheita: partindo de 5.000 sacas em estoque, retire 350 por dia e imprima
// quantos dias levam até o estoque acabar. Use while.



void main () {


int dias = 0;

int sacas = 5000;

// enquanto for maior que 0, faça!
while(sacas > 0) {

  sacas -= 350;
  dias ++;
}

print("Para chegar a um estoque 0 de saca, demorou cerca de ${dias}");


}
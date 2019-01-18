//CAIXA ELETRONICO


int valorSolicitado, valorAtual, contador;
int cont1, cont2, cont5, cont10, cont20, cont50, cont100;

void setup() {

  valorSolicitado = int(random(20, 1499));
  valorAtual = 0;
  contador = valorSolicitado - valorAtual;


  while (contador != 0) {

    if (contador >= 100) {
      valorAtual = (contador%100); 
      cont100 = int(contador/100); 
    }                             
    if (contador < 100 && contador >=50) {
      valorAtual = (contador%50);
      cont50 = int(contador/50);
    }
    if (contador < 50 && contador >=20) {
      valorAtual = (contador%20);
      cont20 = int(contador/20);
    }
    if (contador < 20 && contador >=10) {
      valorAtual = (contador%10);
      cont10 = int(contador/10);
    }
    if (contador < 10 && contador >=5) {
      valorAtual = (contador%5);
      cont5 = int(contador/5);
    }
    if (contador < 5 && contador >=2) {
      valorAtual = (contador%2);
      cont2 = int(contador/2);
    }

    if (contador < 2 && contador >=1) {
      valorAtual = (contador%1);
      cont1 = int(contador/1);
    }

    contador = (valorSolicitado+valorAtual) - valorSolicitado;
  }  


  println("O valor solicitado foi R$", valorSolicitado);
  println("seu dinheiro vira em: ");  
  if (cont100!=0)println(cont100, " notas de 100");
  if (cont50!=0)println(cont50, " notas de 50");
  if (cont20!=0)println(cont20, " notas de 20");
  if (cont10!=0)println(cont10, " notas de 10");
  if (cont5!=0)println(cont5, " notas de 5");
  if (cont2!=0)println(cont2, " notas de 2");
  if (cont1!=0)println(cont1, " moeda de 1");
}

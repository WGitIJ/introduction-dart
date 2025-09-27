// Implementa una funció que pren com a entrada tres variables i retorna la més
// gran de les tres. Feu això sense utilitzar la funció Dart max().

void main(){
  int a = 3;
  int b = 4;
  int c = 1;

  if(a>b && a>c){
    print(a);
  } else if(b>a && b>c){
    print(b);
  } else {
    print(c);
  }
}
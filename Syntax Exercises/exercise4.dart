// Implementa una funció que pren com a entrada tres variables i retorna la més
// gran de les tres. Feu això sense utilitzar la funció Dart max().

void main(){
  numGrande(2,40,6);
}

void numGrande(int a, int b, int c){

  if(a>b && a>c){
    print(a);
  } else if(b>a && b>c){
    print(b);
  } else {
    print(c);
  }
}



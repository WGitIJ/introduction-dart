import 'dart:math';

void main(){
  print(listaNumPrimeras(5));

}

String listaNumPrimeras(int n){
  List<int> primos = [];
  int num = 2;
  while(primos.length < n){
    if(esPrimo(num)){
      primos.add(num);
    }
    num++;
  }
  return primos.toString();
}

bool esPrimo(int num) {
  if(num < 2) return false;
  for(int i = 2; i <= sqrt(num); i++){
    if(num % i == 0){
      return false;
    }
  }
  return true;
}
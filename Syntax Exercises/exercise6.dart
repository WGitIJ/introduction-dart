// Realitza un programa que generi un nombre aleatori entre 1 i 100, i
// seguidament comprovi si aquest nombre és primer o no. Pots fer servir la
// llibreria import 'dart:math';

import 'dart:math';

void main(){
  var randomNumber = Random().nextInt(100);
  print("El numero aleatorio es: $randomNumber");
  if(isPrime(randomNumber)){
    print("El numero $randomNumber es primo");
  } else {
    print("El numero $randomNumber no es primo");
  }
}

bool isPrime(int number){
  if(number <= 1) return false;
  for(int i = 2; i <= sqrt(number); i++){
    if(number % i == 0) return false;
  }
  return true;
}
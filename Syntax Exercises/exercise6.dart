// Realitza un programa que generi un nombre aleatori entre 1 i 100, i
// seguidament comprovi si aquest nombre és primer o no. Pots fer servir la
// llibreria import 'dart:math';

import 'dart:math';

void main(){
  var randomNumber = Random().nextInt(100);
  print("El numero aleatorio es: $randomNumber");

  if(randomNumber % 2 == 0){
    print("El número es par");
  } else{
    print("El número no es primo");
  }
}
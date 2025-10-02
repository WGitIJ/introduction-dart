// Escriu un programa que donada una longitud (expressada numericament int),
// generi una contrasenya segura de la longitud esmentada totalment aleatòria
// amb caràcters alfanumèrics.

import 'dart:math';

void main(){
  passwordGenerator(8);
}

void passwordGenerator(int length){
  String alphanum = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
  String password = '';

  Random random = Random();
  for(int i=0; i<length; i++){
    int index = random.nextInt(alphanum.length);
    password = password + alphanum[index];
  }

  print(password);
}


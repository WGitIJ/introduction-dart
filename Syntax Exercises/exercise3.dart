//Donada una cadena de texte, imprimiu si aquesta cadena és un palíndrom o no.

void main(){
  String palindromo = 'Juego';
  palindromo = palindromo.toLowerCase();
  String reversed = palindromo.split('').reversed.join('');

  if(palindromo == reversed){
    print("Es un palindromo");
  } else {
    print("No es un palindromo");
  }

}
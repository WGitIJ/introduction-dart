//Escriviu un programa (mitjançant funcions!) Que donada una cadena llarga
// que contingui diverses paraules (en format string), torni a imprimir a
// l'usuari la mateixa cadena, però amb les paraules en ordre invers.

void main(){
  print(inversWord("Wisdom es guapo"));
}

String inversWord(String word){
  word = word.toLowerCase();
  String wordReversed = word.split("").reversed.join("");
  return wordReversed;
}
void main(){
  printSquare(5);
}
// TODO: Implementa la funció printSquare que imprimeixi un quadrat de n x n
void printSquare(int n){
  // Design elements
  String hLine = " ---";
  String cLine = "|   ";

  // For
  for(var i = 0; i < n; i++){
    print(hLine * n);
    print((cLine)*(n + 1));
  }
  print(hLine * n);
}
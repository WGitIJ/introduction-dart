//programa que retorni una llista que contingui només els elements comuns entre
// ells (sense duplicats). Assegureu-vos que el programa funcioni en dues
// llistes de mides diferents.

void main(){
  var a = [1,1,2,3,5,8,13,21,34,55,89];
  var b = [1,2,3,4,5,6,7,8,9,10,11,12,13];

  var commonElements =[];

  for (var i = 0; i < a.length; i++) {
    for (var j = 0; j < b.length; j++) {
      if(a[i] == b[j]){
        if(!commonElements.isEmpty && a[i] != commonElements[i]){
          commonElements.add(a[i]);
        }
        print("Este valor ya esta en el array");
      }
    }
  }

  print(commonElements);
}
void main() {
  var a = [1,4,9,16,25, 36,49,64,81,100];
  var pairs = [];

  for (var number in a){
    if(number % 2 == 0){
      pairs.add(number);
    }
  }

  print(pairs);
}
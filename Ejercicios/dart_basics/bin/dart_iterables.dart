void main(){
  // Lista
  List<int> scores = [10, 20, 30, 40, 50];

  print(scores[0]); 
  for (var i=0; i<3; i ++) {
    print(scores[i]);
  }
  print(scores);

  scores.remove(10);
  print(scores);

  scores.add(60);
  print(scores);

  print("El primero elemento es ${scores.first}");
  print("El último elemento es ${scores.last}");

  for (var s in scores) {
    print(s);
  }

  scores.forEach(print);

  }
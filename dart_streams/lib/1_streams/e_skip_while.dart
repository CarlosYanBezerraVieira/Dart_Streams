Future<void> main(List<String> args) async {
  print("inicio");
  final interval = Duration(seconds: 1);
  var stream = Stream<int>.periodic(interval, callback);
  stream = stream.take(5).skipWhile((numero) {
    print("numero que chego na skipeWhile  : $numero");
    return numero < 5;
  });
  await for (var i in stream) {
    print("numero chego no await for $i ");
    print(i);
  }
  print("fim");
}

int callback(int valor) {
  print("valor callback : $valor");
  return valor * 2;
}

Future<void> main(List<String> args) async {
  print("inicio");
  final interval = Duration(seconds: 1);
  var stream = Stream<int>.periodic(interval, callback);
  //continua rodando até que condição seja falsa
  stream = stream.takeWhile((int numero) {
    print("numero que chego no take while $numero");
    return numero < 10;
  });
  await for (var i in stream) {
    print("numero chego no await for $i ");
    print(i);
  }
  print("fim");
}

int callback(int valor) {
  return valor + 1;
}

Future<void> main(List<String> args) async {
  print("inicio");
  final interval = Duration(seconds: 1);
  var stream = Stream<int>.periodic(interval, callback);
  stream = stream.asBroadcastStream();

//realiza o evento do seu escopo toda vez que a variavel é modificada
  stream.listen((numero) {
    print("Listen value1: $numero");
  });
  stream.listen((numero) {
    print("Listen value2: $numero");
  });

  print("fim");
}

int callback(int valor) {
  print("valor callback : $valor");
  return valor * 2;
}

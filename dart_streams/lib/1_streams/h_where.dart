Future<void> main(List<String> args) async {
  print("inicio");
  final interval = Duration(seconds: 1);
  var stream = Stream<int>.periodic(interval, callback);
  //filtra os valores que atendem a condição
  stream = stream.where((valor) => valor % 6 == 0).take(3);
//realiza o evento do seu escopo toda vez que a variavel é modificada
  stream.listen((numero) {
    print("Listen value: $numero");
  });

  print("fim");
}

int callback(int valor) {
  print("valor callback : $valor");
  return (valor + 1) * 2;
}

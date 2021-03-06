Future<void> main(List<String> args) async {
  print("inicio");
  final interval = Duration(seconds: 1);
  var stream = Stream<int>.periodic(interval, callback);
  stream = stream.take(5);
  //aguarda até proceso acaba e armazena tudo em data para que possa acessa todos valores de uma vez
  final data = await stream.toList();
  print(data);
  print("fim");
}

int callback(int valor) {
  print("valor callback : $valor");
  return valor * 2;
}

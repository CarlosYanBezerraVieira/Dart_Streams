Future<void> main(List<String> args) async {
  print("inicio");
  final interval = Duration(seconds: 1);
  var stream = Stream<int>.periodic(interval, callback);
  //pula os dois primeiros
  stream = stream.take(5).skip(2);
  await for (var i in stream) {
    print("numero chego no await for $i ");
    print(i);
  }
  print("fim");
}

int callback(int valor) {
  print("valor callback : $valor");
  return valor + 1;
}

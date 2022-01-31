Future<void> main(List<String> args) async {
  print("inicio");
  final interval = Duration(seconds: 1);
  var stream = Stream<int>.periodic(interval, callback);
  //para no quinto elemento
  stream = stream.take(5);
  await for (var i in stream) {
    print(i);
  }
  print("fim");
}

int callback(int valor) {
  return valor + 1;
}

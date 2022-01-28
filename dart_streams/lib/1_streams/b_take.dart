Future<void> main(List<String> args) async {
  print("inicio");
  final interval = Duration(seconds: 1);
  var stream = Stream<int>.periodic(interval, callback);
  stream = stream.take(5);
  await for (var i in stream) {
    print(i);
  }
  print("fim");
}

int callback(int segundos) {
  return segundos + 1;
}

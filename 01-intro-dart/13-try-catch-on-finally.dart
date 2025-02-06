void main() async {
  print("Inicio del programa");

  try {
    final value = await httpGet("https://test.com");
    print("Exito: $value");
  } on Exception catch (err) {
    print("Tenemos una excepcion: $err");
  } catch (err) {
    print("OOPS!: $err");
  } finally {
    print("Fin del try-catch");
  }

  print("Fin del programa");
}

Future<String> httpGet(String url) async {
  await Future.delayed(Duration(seconds: 1));

  throw Exception("No hay parametros en el URL");

  //   throw "Error en la peticion";
  //   return "Tenemos un valor de la peticion";
}

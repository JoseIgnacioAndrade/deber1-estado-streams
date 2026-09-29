import '../repositories/contador_repository.dart';

class ObtenerContador {
  final ContadorRepository _repository;

  ObtenerContador(this._repository);

  Future<int> call() {
    return _repository.leer();
  }
}

import 'package:shared_preferences/shared_preferences.dart';
import '../../domain/repositories/contador_repository.dart';

class ContadorPrefsRepository implements ContadorRepository {
  static const String _key = 'contador';
  final SharedPreferences? _prefs;

  ContadorPrefsRepository([this._prefs]);

  @override
  Future<int> leer() async {
    final prefs = _prefs ?? await SharedPreferences.getInstance();
    return prefs.getInt(_key) ?? 0;
  }

  @override
  Future<void> guardar(int valor) async {
    final prefs = _prefs ?? await SharedPreferences.getInstance();
    await prefs.setInt(_key, valor);
  }
}

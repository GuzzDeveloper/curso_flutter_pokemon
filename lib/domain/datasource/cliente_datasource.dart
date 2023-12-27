import 'package:curso_flutter_pokemon/domain/entities/cliente.dart';

abstract class ClienteDatasource {
  Future<Cliente> getCliente(String id);
  Future<List<Cliente>> getClientes(String id);
  Future<List<Cliente>> deleteCliente(String id);
  Future<List<Cliente>> updateCliente(String id);
}

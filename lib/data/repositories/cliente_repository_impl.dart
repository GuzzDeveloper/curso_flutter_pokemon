import 'package:curso_flutter_pokemon/domain/datasource/cliente_datasource.dart';
import 'package:curso_flutter_pokemon/domain/entities/cliente.dart';
import 'package:curso_flutter_pokemon/domain/repositories/cliente_repository.dart';

class ClienteRepositoryImpl implements ClienteRepository {
  final ClienteDatasource datasource;

  ClienteRepositoryImpl(this.datasource);
  @override
  Future<List<Cliente>> deleteCliente(String id) {
    return datasource.deleteCliente(id);
  }

  @override
  Future<Cliente> getCliente(String id) {
    return datasource.getCliente(id);
  }

  @override
  Future<List<Cliente>> getClientes(String id) {
    return datasource.getClientes(id);
  }

  @override
  Future<List<Cliente>> updateCliente(String id) {
    return updateCliente(id);
  }
}

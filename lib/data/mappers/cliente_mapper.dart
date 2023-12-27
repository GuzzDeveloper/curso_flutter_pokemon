import 'package:curso_flutter_pokemon/data/models/cliente_model.dart';

import '../../domain/entities/cliente.dart';

class ClienteMapper {
  static Cliente toCliente(ClienteModel clienteModel) =>
      Cliente(nombre: clienteModel.noCuente, saldo: clienteModel.saldo);
}

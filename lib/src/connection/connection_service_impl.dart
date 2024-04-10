import 'package:connectivity_plus/connectivity_plus.dart';

import 'i_connection_service.dart';

class ConnectionServiceImpl implements IConnectionService {
  final Connectivity connectivity;

  ConnectionServiceImpl({required this.connectivity});

  @override
  Future<bool> hasConnection() async {
    final connection = await connectivity.checkConnectivity();
    return !connection.contains(ConnectivityResult.none);
  }
}

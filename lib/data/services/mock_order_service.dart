import 'package:ably_flutter/ably_flutter.dart';
import 'package:trackit/core/utils/debug_logger.dart';

class MockOrderService {
  final ClientOptions _clientOptions;
  late final Realtime _realtime;
  late final RealtimeChannel _channel;
  late final RealtimeChannel _channel1;

  MockOrderService(this._clientOptions) {
    _realtime = Realtime(options: _clientOptions);
    _realtime.connection
        .on(ConnectionEvent.connected) // Any type of `ConnectionEvent` can be specified
        .listen((ConnectionStateChange stateChange) async {
      "ABLY CONNECTION ESTABLIASED".logger;
       _channel = _realtime.channels.get('orders');
       _channel1 = _realtime.channels.get('orders-status');
      // Handle connection state change events
    });
    // Subscribe to order updates
  }

  void getOrderDetails() async {
    
  }

  // Simulate updating order data
  void updateOrderData(Map<String, dynamic> orderData) {
    // Publish order update to the channel
    _channel.publish(name: 'order_event', data: orderData);
  }

  // Close the Ably connection when no longer needed
  void closeConnection() {
    _realtime.close();
  }
}

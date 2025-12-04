import 'dart:async';
import 'dart:convert';
import 'package:web_socket_channel/io.dart';
import 'package:flutter_study2/Btc/BtcJSONHandler.dart';

class BinanceConnectionHandler {
  IOWebSocketChannel? _channel;
  StreamSubscription? _sub;

  final String url;

  BinanceConnectionHandler(this.url);

  Future<void> connect() async {
    _channel = IOWebSocketChannel.connect(url);

    _sub = _channel!.stream.listen(
      onMessage,
      onError: (e) => { onError(e), reconnect() },
      onDone: () => onDone(),
      cancelOnError: true,
    );

    print("WS connected");
  }

  void onMessage(dynamic message) {
    final jsonData = jsonDecode(message);
    final ticker = BitcoinJSONHandler.fromJson(jsonData);

    print('Son fiyat: ${ticker.lastPrice}');
    print('24h değişim: ${ticker.priceChangePercent}%');
    print('En yüksek / En düşük: ${ticker.highPrice} / ${ticker.lowPrice}');
    print('Hacim: ${ticker.volume} BTC');
    print('Bid/Ask: ${ticker.bestBid} / ${ticker.bestAsk}');
  }

  void onError(error) {
    print("Hata: $error");
  }

  void reconnect() {
    print('3 saniye sonra tekrar bağlanıyor...');
    Future.delayed(Duration(seconds: 3), () {
      connect();
    });
  }

  void onDone() {
    print("Bağlantı kapandı.");
  }

  Future<void> disconnect() async {
    await _sub?.cancel();
    await _channel?.sink.close();
    print("WS temiz kapatıldı");
  }
}

void main() async {
  BinanceConnectionHandler binanceConnectionHandlerByWss = BinanceConnectionHandler(
      "wss://stream.binance.com:9443/ws/btcusdt@ticker");
  await binanceConnectionHandlerByWss.connect();
}

import 'dart:convert';

class BitcoinJSONHandler {
  final String symbol;       // BTCUSDT
  final double lastPrice;    // c
  final double priceChange;  // p
  final double priceChangePercent; // P
  final double highPrice;    // h
  final double lowPrice;     // l
  final double volume;       // v
  final double quoteVolume;  // q
  final double bestBid;      // b
  final double bestAsk;      // a

  BitcoinJSONHandler({
    required this.symbol,
    required this.lastPrice,
    required this.priceChange,
    required this.priceChangePercent,
    required this.highPrice,
    required this.lowPrice,
    required this.volume,
    required this.quoteVolume,
    required this.bestBid,
    required this.bestAsk,
  });

  // JSON’dan objeye çevirme, kendi ctoru buna sahip dart.
  factory BitcoinJSONHandler.fromJson(Map<String, dynamic> json) {
    return BitcoinJSONHandler(
      symbol: json['s'],
      lastPrice: double.parse(json['c']),
      priceChange: double.parse(json['p']),
      priceChangePercent: double.parse(json['P']),
      highPrice: double.parse(json['h']),
      lowPrice: double.parse(json['l']),
      volume: double.parse(json['v']),
      quoteVolume: double.parse(json['q']),
      bestBid: double.parse(json['b']),
      bestAsk: double.parse(json['a']),
    );
  }

  // Objeyi JSON’a çevirme (isteğe bağlı)
  Map<String, dynamic> toJson() {
    return {
      's': symbol,
      'c': lastPrice.toString(),
      'p': priceChange.toString(),
      'P': priceChangePercent.toString(),
      'h': highPrice.toString(),
      'l': lowPrice.toString(),
      'v': volume.toString(),
      'q': quoteVolume.toString(),
      'b': bestBid.toString(),
      'a': bestAsk.toString(),
    };
  }
}

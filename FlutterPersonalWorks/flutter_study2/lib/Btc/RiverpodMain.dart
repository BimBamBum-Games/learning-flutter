import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterProvider = StateProvider<int>((ref) => 0);

void main() {
  final globalContainer = ProviderContainer();
  runApp(const UncontrolledProviderScope(key: globalContainer, child: TimeCounterApp()));
  countTime(globalContainer, counterProvider);
}

class TimeCounterApp extends StatelessWidget {
  const TimeCounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const TimeCounter(),
    );
  }
}

Future<void> countTime(ProviderContainer container, StateProvider spb) async {
  while(true){
    await Future.delayed(const Duration(seconds: 1));
    StateController<dynamic> stateController = container.read(spb.notifier);
    stateController.state++;
  }
}

class TimeCounter extends StatefulWidget {
  const TimeCounter({super.key});

  @override
  State<TimeCounter> createState() => _TimeCounterState();
}

class _TimeCounterState extends State<TimeCounter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Time Counter'),
      ),
      body: Center(
        child: Consumer(
          builder: (context, ref, child) {
            final counter = ref.watch(counterProvider);
            return Text("$counter", style: TextStyle(fontSize: 50),);
          }
        ),
      )
    );
  }
}

import 'package:material_ui/material_ui.dart';

void main() {
  runApp(const HalloWeltApp());
}

class HalloWeltApp extends StatelessWidget {
  const HalloWeltApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hallo Welt',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
      ),
      home: const HalloWeltSeite(),
    );
  }
}

class HalloWeltSeite extends StatelessWidget {
  const HalloWeltSeite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hallo Welt'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Text(
          'Hallo Welt! 👋',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Refactor Example',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: const HomePage(),
    );
  }
}


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('الصفحة الرئيسية')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('Row and Column Widget'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const RowAndColumnWidget()),
                );
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text('Row and Stack Widget'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const RowAndStackWidget()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}


class RowAndColumnWidget extends StatelessWidget {
  const RowAndColumnWidget({super.key});


  Widget buildIconRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        Icon(Icons.star, color: Colors.amber, size: 30),
        Icon(Icons.favorite, color: Colors.red, size: 30),
        Icon(Icons.thumb_up, color: Colors.blue, size: 30),
        Icon(Icons.lightbulb, color: Colors.orange, size: 30),
      ],
    );
  }


  Widget buildTextColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text('1. تعلم Flutter', style: TextStyle(fontSize: 16)),
        Text('2. كتابة واجهات', style: TextStyle(fontSize: 16)),
        Text('3. استخدام Widgets', style: TextStyle(fontSize: 16)),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Row + Column')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'أيقونات داخل صف:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            buildIconRow(),
            const SizedBox(height: 30),
            const Text(
              'نصوص داخل عمود:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            buildTextColumn(),
          ],
        ),
      ),
    );
  }
}


class RowAndStackWidget extends StatelessWidget {
  const RowAndStackWidget({super.key});


  Widget buildIconRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        Icon(Icons.home, size: 30),
        Icon(Icons.search, size: 30),
        Icon(Icons.notifications, size: 30),
        Icon(Icons.settings, size: 30),
      ],
    );
  }


  Widget buildStackBox() {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(width: 250, height: 250, color: Colors.blue),
        Positioned(
          top: 20,
          child: Container(width: 100, height: 100, color: Colors.green),
        ),
        const Positioned(
          bottom: 20,
          child: Text(
            'داخل Stack',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Row + Stack')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text(
              'تصميم Stack:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            buildStackBox(),
            const SizedBox(height: 30),
            const Text(
              'أيقونات داخل صف:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            buildIconRow(),
          ],
        ),
      ),
    );
  }
}
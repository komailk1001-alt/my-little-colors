import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.landscapeRight,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'لوني الصغير',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'FredokaOne',
        scaffoldBackgroundColor: const Color(0xFFE6F2FF),
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.palette, size: 100, color: Colors.orange),
            const SizedBox(height: 30),
            const Text('لوني الصغير', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
            const SizedBox(height: 40),
            _buildButton('ابدأ التلوين', Icons.brush, context),
            const SizedBox(height: 20),
            _buildButton('معرض أعمالي', Icons.photo_library, context),
          ],
        ),
      ),
    );
  }

  Widget _buildButton(String label, IconData icon, BuildContext context) {
    return SizedBox(
      width: 280,
      height: 65,
      child: ElevatedButton.icon(
        onPressed: () {
          // هنا يمكن إضافة شاشة التلوين لاحقًا
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('قيد التطوير!')),
          );
        },
        icon: Icon(icon, size: 28),
        label: Text(label, style: const TextStyle(fontSize: 22)),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        ),
      ),
    );
  }
}

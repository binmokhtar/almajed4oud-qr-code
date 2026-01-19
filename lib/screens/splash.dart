import 'package:flutter/material.dart';
import 'package:qr_code/helpers/extensions.dart';
import 'package:qr_code/screens/main_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _bootstrap();
  }

  Future<void> _bootstrap() async {
    await precacheImage(const AssetImage('assets/logo/almajed2.png'), context);
    await Future.delayed(const Duration(milliseconds: 500));

    if (!mounted) return;

    Navigator.of(
      context,
    ).pushReplacement(MaterialPageRoute(builder: (_) => const MainScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/logo/almajed2.png', width: 100.s),
            SizedBox(height: 20.s),
            SizedBox(
              width: 30.s,
              height: 30.s,
              child: CircularProgressIndicator(strokeWidth: 5.s, color: Colors.cyan),
            ),
          ],
        ),
      ),
    );
  }
}

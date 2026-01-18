import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qr_code/bloc/qr_code_bloc.dart';
import 'package:qr_code/screens/splash.dart';
import 'package:qr_code/services/responsive_services.dart';
import 'package:qr_code/services/get_it_services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  dependencies();
  runApp(BlocProvider(create: (context) => QRCodeBloc(), child: const QRCode()));
}

class QRCode extends StatelessWidget {
  const QRCode({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
    title: 'Almajed QR Code',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyan),
      fontFamily: 'Alexandria',
    ),
    builder: (context, child) => LayoutBuilder(
      builder: (context, constraints) {
        getIt<ResponsiveService>().init(MediaQuery.of(context), constraints);
        return child!;
      },
    ),

    home: const SplashScreen(),
  );
}

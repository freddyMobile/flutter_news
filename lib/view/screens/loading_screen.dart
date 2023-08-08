import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Container(
          height: size.height * 0.5,
          width: size.height * 0.5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: LottieBuilder.asset('assets/loading.json'),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:third_wave_app/notifier/third_wave_menu.notifier.dart';
import 'package:third_wave_app/views/third_wave_menu.view.dart';

// [SOURCE CODE IN BIO 🚀]
// [SOURCE CODE IN BIO 🚀]
// [SOURCE CODE IN BIO 🚀]

void main() {
  runApp(const Core());
}

class Core extends StatelessWidget {
  const Core({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThirdWaveMenuNotifier(),
      child: const Lava(),
    );
  }
}

class Lava extends StatelessWidget {
  const Lava({super.key});
     
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: ((context, orientation, deviceType) {
      return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ThirdWaveCoffeeBaseView(),
      );
    }));
  }
}

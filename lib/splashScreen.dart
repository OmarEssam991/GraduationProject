import 'package:finalui/FirstPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({Key? key}) : super(key: key);

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> with SingleTickerProviderStateMixin {
  @override
  void initState(){
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(const Duration(seconds: 3),(){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder:
          (_) => const FirstPage()));
    }
    );
  }
  @override
  void dispose(){
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [Colors.green, Colors.orange],
          begin: Alignment.topRight,
            end: Alignment.bottomLeft)),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
          const [SizedBox
            (height: 100,
              child: Image(image:
          AssetImage('assets/icons/logo-removebg-preview.png'))
          ),
            SizedBox(height: 20,),
            Text('Own Pet',style: TextStyle(color: Colors.white, fontSize: 35),)],
        ),
      ),
    );
  }
}

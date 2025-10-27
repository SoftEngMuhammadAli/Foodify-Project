import 'package:flutter/material.dart';
import 'package:foodify/utils/size_config.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Foodify',
          style: TextStyle(
            fontSize: SizeConfig.text(20),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SizedBox(
        height: SizeConfig.screenHeight,
        width: SizeConfig.screenWidth,
        child: Center(
          child: Text(
            'Welcome to Foodify!',
            style: TextStyle(fontSize: SizeConfig.text(18)),
          ),
        ),
      ),
    );
  }
}

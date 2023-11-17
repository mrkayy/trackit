import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trackit/presentation/home_screen/controller.dart';

class HomeScreen extends GetView<HomeScreenController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('HomeScreenPage')),
    );
  }
}

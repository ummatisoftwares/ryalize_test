import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test/app/modules/componets/TapBar.dart';
import 'package:test/app/modules/home/views/body.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topBar(context, 1),
      body: Column(
        children: [
          body(context)
        ],
      ),
    );
  }
}

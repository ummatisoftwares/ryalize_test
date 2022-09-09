import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test/app/modules/componets/TapBar.dart';
import 'package:test/app/modules/home2/views/body.dart';
import '../controllers/home2_controller.dart';

class Home2View extends GetView<Home2Controller> {
  const Home2View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topBar(context, 2),
      body: body(context),
    );
  }
}

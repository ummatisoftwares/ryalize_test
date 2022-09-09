import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test/app/modules/componets/TapBar.dart';
import 'package:test/app/modules/home3/views/body.dart';
import '../controllers/home3_controller.dart';
import 'package:test/app/modules/home3/controllers/home3_controller.dart';

class Home3View extends GetView<Home3Controller> {
  const Home3View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topBar(context, 3),
      body: body(context)
    );
  }
}

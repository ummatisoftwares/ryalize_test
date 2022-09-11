import 'package:get/get.dart';

import '../controllers/home4_controller.dart';

class Home4Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Home4Controller>(
      () => Home4Controller(),
    );
  }
}

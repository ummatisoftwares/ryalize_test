import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:test/app/data/helper/dialog_helper.dart';
import 'package:test/app/data/services/app_exceptions.dart';
import 'package:test/app/data/services/base_client.dart';
import 'package:test/app/modules/componets/base_controller.dart';

class Home4Controller extends GetxController with BaseController{
  //TODO: Implement Home4Controller

  var getTextController = TextEditingController().obs;
  var getResult = ''.obs;

  var postTextController = TextEditingController().obs;
  var postResult = ''.obs;
  var request = {'message': 'Codding Codding & Codding!!!'}.obs;

  @override
  void onInit() {
    super.onInit();
    getTextController.value.text = 'https://jsonplaceholder.typicode.com/todos/1';
    postTextController.value.text = 'https://jsonplaceholder.typicode.com/posts';
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void getData() async {
    showLoading('Fetching data');
    var response = await BaseClient().get(getTextController.value.text, '').catchError(handleError);
    if (response == null) return;
    hideLoading();
    print(response);
    getResult.value = response;
  }

  void postData() async {
    showLoading('Posting data...');
    var response = await BaseClient().post(postTextController.value.text , '', request).catchError((error) {
      if (error is BadRequestException) {
        var apiError = json.decode(error.message!);
        DialogHelper.showErroDialog(description: apiError["reason"]);
      } else {
        handleError(error);
      }
    });
    if (response == null) return;
    hideLoading();
    print(response);
    postResult.value = response;
  }

}

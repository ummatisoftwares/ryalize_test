import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home3Controller extends GetxController {

  var selectedService = 'Child Care'.obs;
  var selectedLanguage = 'Child Care'.obs;
  List services = ['Child Care', 'Senior Care', 'Home Care', 'Other Services'];
  List languages = [].obs;
  var languageController = TextEditingController().obs;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  selectService(String service) async {
    selectedService.value = service;
  }

  showDialog() async{
    Get.defaultDialog(
      title: 'Languages',
      content: SizedBox(
        width: 300,
        height: 100,
        child: Center(
          child: Obx(
            ()=> Wrap(
              spacing: 8,
              children: [
                chip("English"),
                chip("Spanish"),
                chip("Mandarin"),
              ],
            ),
          ),
        ),
      ),
    );
  }

  GestureDetector chip(String lang) {
    return GestureDetector(
        onTap: (){
          if(languages.contains(lang)){
            languages.remove(lang);
            setLanguage();
          }
          else{
            languages.add(lang);
            setLanguage();
          }
        },
          child: Chip(
            label: Text(lang),
            backgroundColor: languages.contains(lang)? Color(0xFF79C5C7) : Colors.grey[300]
          )
      );
  }

  void setLanguage() {
    String temp = '';
    for(var i=0; i<languages.length; i++ ){
      i!=0? temp+=', ':null;
      temp += languages[i];
    }
    languageController.value.text = temp;
  }
}

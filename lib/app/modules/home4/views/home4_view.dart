import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home4_controller.dart';

class Home4View extends GetView<Home4Controller> {
  const Home4View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RestFul APIs'),
        centerTitle: true,
      ),
      body: Obx(
        ()=> Column(
          children: [
            SizedBox(height: 50,),
            Text("Get API:"),
            Container(
              child: TextField(
                controller: controller.getTextController.value,
              ),
            ),
            Text("Result:"),
            Container(
              child: Text(controller.getResult.value)
            ),
            ElevatedButton(
                onPressed: (){
                  controller.getData();
                },
                child: Text("Submit")
            ),
            SizedBox(height: 50,),
            Text("Post API:"),
            Container(
              child: TextField(
                controller: controller.postTextController.value,
              ),
            ),
            Text("Body:"),
            Container(
              child: Text(
                controller.request.toString()
              ),
            ),
            Text("Post Result:"),
            Container(
                child: Text(controller.postResult.value)
            ),
            ElevatedButton(
                onPressed: (){
                  controller.postData();
                },/**/
                child: Text("Submit")
            ),
          ],
        ),
      )
    );
  }
}

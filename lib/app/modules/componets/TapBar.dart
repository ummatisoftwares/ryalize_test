import 'package:flutter/material.dart';
import 'package:get/get.dart';

PreferredSize topBar(BuildContext context, int pageID) {
  return PreferredSize(
    preferredSize: Size(double.infinity, MediaQuery.of(context).size.height*0.2),
    child: Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height*0.15,
          color: const Color(0xFF79C5C7),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 0),
                width: MediaQuery.of(context).size.width*0.18,
                height: 1,
                color: Colors.white,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width*0.125,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 0),
                width: MediaQuery.of(context).size.width*0.18,
                height: 1,
                color: Colors.white,
              ),
            ],
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height*0.15,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              customTab(id: "1", title: "Select\nYour Role", status: pageID>1? "done": "notDone"),
              customTab(id: "2", title: "Personal\nInformation", status: pageID>2? "done": "notDone"),
              customTab(id: "3", title: "Professional\nInformation", status: pageID>3? "done": "notDone"),
            ],
          ),
        ),
      ],
    ),
  );
}

GestureDetector customTab({required String id, required String title, required String status}) {
  return GestureDetector(
    onTap: (){
      if(status=="done") {
        Get.back();
      }
    },
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 24),
        Container(
          width: 30,
          height: 30,
          decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle
          ),
          child: Center(
            child: status == "done"?
            const Icon(Icons.done, color: Color(0xFF79C5C7),)
                :
            Text(id, style: const TextStyle(color: Color(0xFF79C5C7), fontSize: 16, fontWeight: FontWeight.w600),),
          ),
        ),
        const SizedBox(height: 8),
        SizedBox(
            width: 100,
            child: Text(title, style: const TextStyle(fontSize: 10, color: Colors.white, letterSpacing: 1), textAlign: TextAlign.center,)),
      ],
    ),
  );
}
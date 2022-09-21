import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/homecontroller.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final box = GetStorage();
  TextEditingController namecontroller = TextEditingController();
  HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
            controller: namecontroller,
          ),
          ElevatedButton(
            onPressed: () {
              controller.storeData(namecontroller.text);
            },
            child: const Text('Submit'),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Obx(() => Text(controller.homePageModel.name.value)),
          )
        ],
      ),
    );
  }
}

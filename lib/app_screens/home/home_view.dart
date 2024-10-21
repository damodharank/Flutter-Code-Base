import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home_controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            icon: Icon(controller.isDarkTheme.value
                ? Icons.dark_mode
                : Icons.light_mode),
            onPressed: controller.toggleTheme,
          ),
          DropdownButton<String>(
            value: controller.selectedLanguage.value,
            icon: const Icon(Icons.language),
            onChanged: (String? newValue) {
              if (newValue != null) {
                controller.changeLanguage(newValue);
              }
            },
            items: <String>['en', 'ar', 'fr', 'de']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value.toUpperCase()),
              );
            }).toList(),
          ),
        ],
      ),
      body: GetBuilder<HomeController>(
        builder: (_) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'welcome'.tr,
                ),
                Text(
                  '${controller.sampleText.value.tr}',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

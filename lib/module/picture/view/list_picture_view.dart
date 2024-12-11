import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core.dart';

class ListPictureView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ListPictureController controller = Get.find();

    controller.fetchPictures();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'List Photo',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Obx(() {
        if (controller.pictures.isEmpty) {
          return const Center(
            child: CircularProgressIndicator(
              color: Colors.blueGrey,
            ),
          );
        }

        return ListView.builder(
          padding: const EdgeInsets.all(8.0),
          itemCount: controller.pictures.length,
          itemBuilder: (context, index) {
            final picture = controller.pictures[index];
            return GestureDetector(
              onTap: () {
                controller.toDetailPage(picture);
              },
              child: ListContentWidget(
                data: picture,
              ),
            );
          },
        );
      }),
    );
  }
}
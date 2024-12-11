import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core.dart';

class DetailPictureView extends StatelessWidget {
  final int id;

  DetailPictureView({required this.id});

  @override
  Widget build(BuildContext context) {
    final DetailPictureController controller = Get.find();
    controller.fetchPictureDetail(id);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Photo'),
      ),
      body: Obx(() {
        if (controller.pictureDetail.isEmpty) {
          return const Center(
            child: CircularProgressIndicator(color: Colors.blueGrey),
          );
        }
        return DetailContentWidget(data: controller.pictureDetail);
      }),
    );
  }
}
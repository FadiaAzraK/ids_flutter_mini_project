import 'package:get/get.dart';
import 'package:dio/dio.dart';
import '../../../core.dart';

class PictureBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PictureService>(
      () => PictureService(dio: Dio()),
    );

    Get.lazyPut<ListPictureController>(
      () => ListPictureController(pictureService: Get.find()),
    );

    Get.create<DetailPictureController>(
      () => DetailPictureController(pictureService: Get.find()),
    );
  }
}
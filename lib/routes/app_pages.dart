import 'package:get/get.dart';
import '../../../core.dart';
import 'app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.listPicture,
      page: () => ListPictureView(),
    ),
    GetPage(
      name: AppRoutes.detailPicture,
      page: () => DetailPictureView(id: Get.arguments),
    ),
  ];
}
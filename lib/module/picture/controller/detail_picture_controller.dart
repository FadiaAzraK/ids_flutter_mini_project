import 'package:get/get.dart';
import '../../../core.dart';

class DetailPictureController extends GetxController {
  final PictureService pictureService;
  var pictureDetail = {}.obs;

  DetailPictureController({required this.pictureService});

  Future<void> fetchPictureDetail(int id) async {
    try {
      final data = await pictureService.fetchPictureDetail(id);
      pictureDetail.assignAll(data);
    } catch (e) {
      Get.snackbar('Error', 'Failed to load picture detail');
    }
  }
}
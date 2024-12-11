import 'package:get/get.dart';
import '../../../core.dart';

class ListPictureController extends GetxController {
  final PictureService pictureService;
  final pictures = [].obs;

  ListPictureController({required this.pictureService});

  Future<void> fetchPictures({int limit = 10, int page = 1}) async {
    try {
      final data = await pictureService.fetchPictures(limit: limit, page: page);
      for (var picture in data) {
        picture['id'] = int.parse(picture['id'].toString());
      }
      pictures.assignAll(data);
    } catch (e) {
      Get.snackbar('Error', 'Failed to load pictures');
    }
  }

  void toDetailPage(Map picture) {
    Get.to(() => DetailPictureView(id: picture['id']));
  }
}
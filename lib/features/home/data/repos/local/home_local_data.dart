import 'package:hive/hive.dart';

import '../../model/doctor.dart';

class HomeLocalData {
  final Box<Category> categoryBox = Hive.box<Category>('categories');
  final Box<String> imageCacheBox = Hive.box<String>('image');

  Future<void> saveCategories(HomeResponse homeResponse) async {
    await categoryBox.clear();

    for (var category in homeResponse.data!) {
      await categoryBox.add(category!);
    }
  }

  List<Category> getCachedCategories() {
    return categoryBox.values.toList();
  }

  cachimage() async {
    if (!imageCacheBox.containsKey('constantImage')) {
      await imageCacheBox.put('constantImage',
          "https://images.pexels.com/photos/5327656/pexels-photo-5327656.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1");
    }
  }

  String getConatstImage() {
    return imageCacheBox.get("constantImage")!;
  }
}

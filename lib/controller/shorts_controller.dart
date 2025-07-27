import 'package:get/get.dart';

class ShortsController extends GetxController {
  var mytext = "Subscribe".obs;
  var cahnnel_name = "Doremon Official shorts".obs;
  var discription = "Cartoon | 1.2M subscribers \n1.5M views | 1 day ago".obs;

  void changeValue() {
    mytext.value = mytext.value == "Subscribed✨" ? "Subscribe" : "Subscribed✨";
  }
}

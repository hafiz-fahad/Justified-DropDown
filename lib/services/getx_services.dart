import 'package:get/get.dart';

class DropDownController extends GetxController {

  String dropDownSelectedValue;

  updateDropDownSelectedValue(String updateDropDownSelectedValue) {
    dropDownSelectedValue = updateDropDownSelectedValue;
    update();
  }
}
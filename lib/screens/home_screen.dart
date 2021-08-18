import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jutified_drop_down/model/drop_down.dart';
import 'package:jutified_drop_down/services/getx_services.dart';

class HomeScreen extends StatelessWidget {

  List sampleList =
  [
    "Value 1",
    "Value 2",
    "Value 3",
    "Value 4",
    "Value 5",
  ];

  onChangeDropDown(String value){
    Get.find<DropDownController>()
        .updateDropDownSelectedValue(value);
  }

  @override
  Widget build(BuildContext context) {

    final DropDownController dropDownController = Get.put(DropDownController());

    return Scaffold(
      appBar: AppBar(
        title: AutoSizeText("Justified DropDown"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GetBuilder<DropDownController>(
                  builder: (_){
                    return JustifiedDropDown(
                      controller: _.dropDownSelectedValue,
                      dropDownList: sampleList,
                      hintText: "Select Value",
                      onchange: onChangeDropDown,
                      dropDownBoxColor: Colors.grey,
                      opacityOfDropDownBox: 0.9,
                      dropDownListTextColor: Colors.white,
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'dart:async';

import 'package:camera/camera.dart';
import 'package:tflite/tflite.dart';
import 'package:senyumin_flutter/camera/result.dart';
import 'package:senyumin_flutter/camera/app_helper.dart';

class TFLiteHelper {
  static List<Result> _outputs = List();
  static var modelLoaded = false;
  static StreamController<List<Result>> tfLiteResultsController =
      new StreamController.broadcast();

  static Future<String> loadModel() async {
    AppHelper.log("loadModel", "Loading model..");

    return Tflite.loadModel(
      model: "assets/model/kerasScratch.tflite",
      labels: "assets/model/labels.txt",
    );
  }

  static classifyImage(CameraImage image) async {
    await Tflite.runModelOnFrame(
            bytesList: image.planes.map((plane) {
              return plane.bytes;
            }).toList(),
            numResults: 5)
        .then((value) {
      if (value.isNotEmpty) {
        AppHelper.log("classifyImage", "Results loaded. ${value.length}");

        //Clear previous results
        _outputs.clear();

        value.forEach((element) {
          _outputs.add(Result(
              element['expression'],  element['label']));

          AppHelper.log("classifyImage",
              "${element['expression']} ,  ${element['label']}");
        });
      }

      //Send results
      tfLiteResultsController.add(_outputs);
    });
  }

  static void disposeModel() {
    Tflite.close();
  }
}

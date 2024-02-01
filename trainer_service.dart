import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:screen_design/helper/helper_method.dart';

class TrainerService {
  static Future<dynamic> getTrainerData() async {
    dynamic data;
    var token =await  HelperMethod.getToken();

    try {
     // final response = await http.get(Uri.parse('https://pencilbox.edu.bd/api/trainers'));

      final response = await http.get(Uri.parse('https://dev.bitbirds.net/PB/api/v1/trainers'),
        headers: {
          'Authorization': 'Bearer $token',
        },
      );

      print('response Trainer ${response.body}');
      print('Trainer got Token $token');
      if (response.statusCode == 200) {
        data = jsonDecode(response.body.toString());
        return data;
      } else {
        return data;
      }
    } catch (e) {
      return data;
    }
  }



  static Future<dynamic> TrainingSchedulesService() async {
    dynamic data;

    final response = await http
        .get(Uri.parse('https://pencilbox.edu.bd/api/training_schedules'));

    try {
      if (response.statusCode == 200) {
        data = jsonDecode(response.body.toString());
        return data;
      } else {
        return data;
      }
    } catch (e) {
      return data;
    }
  }
}

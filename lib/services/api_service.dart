import 'package:http/http.dart' as http;
import 'package:bayabasme_data_test/models/diagnosis_condition_model.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ApiServices {
  static const String url = 'https://bayabas.kr/diagnosis/item/1';

  static Future<List<Datum>> getQuestion() async {
    try {
      final response = await http.get(Uri.parse(url));
      if(response.statusCode == 200) {
        final List<Datum> datum = datumListFromJson(response.body).data;
        return datum;
      } else {
        Fluttertoast.showToast(msg: 'Error occurred. Please try again');
        return <Datum>[];
      }
    } catch (e) {
      Fluttertoast.showToast(msg: e.toString());
      return <Datum>[];
    }
  }
}

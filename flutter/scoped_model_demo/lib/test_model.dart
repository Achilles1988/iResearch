import 'package:scoped_model/scoped_model.dart';

class TestModel extends Model {
  String recordedData;
  void setRecordedData(String recordedData)
  {
    this.recordedData = recordedData;
    notifyListeners();
  }
}
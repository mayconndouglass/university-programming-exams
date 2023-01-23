import 'dart:convert';
import 'data.dart';
import 'dart:io';
import 'exceptions.dart';

class JSONData extends Data {
  static List<dynamic> _archiveJSON = [];

  @override
  void load(String fileName) {
    File file = File('./arquivos/$fileName');
    if (checkType(fileName) && empty(file)) {
      _archiveJSON = jsonDecode(file.readAsStringSync());
    }
  }

  @override
  void save(String fileName) {
    String saveTemp = '';
    String archive = jsonEncode(_archiveJSON);
    List<String> archiveList = archive.split(',');
    final outFile = File('./arquivos/$fileName');

    if (hasData && checkType(fileName)) {
      for (var arq in archiveList) {
        if (arq == archiveList[archiveList.length - 1]) {
          saveTemp += arq;
          outFile.createSync();
          outFile.writeAsStringSync(saveTemp);
          break;
        }
        saveTemp += arq + ',\n';
        outFile.createSync();
        outFile.writeAsStringSync(saveTemp);
      }
    } else {
      throw EmptyMemoryError();
    }
  }

  @override
  void clear() {
    _archiveJSON = [];
  }

  @override
  bool get hasData => _archiveJSON.isEmpty ? false : true;

  @override
  String get data {
    if (hasData) {
      String saveTemp = '';
      String archive = jsonEncode(_archiveJSON);
      List<String> archiveList = archive.split(',');

      for (var arq in archiveList) {
        if (arq == archiveList[archiveList.length - 1]) {
          saveTemp += arq;
          break;
        }
        saveTemp += '$arq,\n';
      }
      return saveTemp;
    } else {
      throw EmptyMemoryError();
    }
  }

  @override
  set data(String data) {
    _archiveJSON.add(data);
  }

  @override
  List<String> get fields {
    List<String> fields = [];
    if (hasData) {
      _archiveJSON[0].keys.forEach((item) {
        fields.add(item);
      });
      return fields;
    } else {
      throw EmptyMemoryError();
    }
  }

  bool checkType(String fileName) =>
      fileName.split('.')[1] == 'json' ? true : throw InvalidTypeError();
}

import 'data.dart';
import 'dart:io';
import 'package:xml/xml.dart';
import 'exceptions.dart';

class XMLData extends Data {
  late List<String> _archiveXML;
  late List<String> lFields = [];

  @override
  void load(String fileName) {
    _archiveXML = [];

    final file = File('./arquivos/$fileName');
    String fileString = file.readAsStringSync();
    final xml = XmlDocument.parse(fileString);
    final records = xml.findAllElements('record');
    int first = 0;

    if (checkType(fileName) && empty(file)) {
      for (var record in records) {
        _archiveXML.add(record.toString());
        if (first == 0) {
          for (var atr in record.attributes) {
            lFields.add(atr.name.toString());
          }
          first += 1;
        }
      }
    }
  }

  @override
  void save(String fileName) {
    String saveTemp = '<data>\n';
    final outFile = File('./arquivos/$fileName');
    outFile.createSync();

    if (hasData && checkType(fileName)) {
      for (var arq in _archiveXML) {
        saveTemp += '  $arq\n';
        outFile.writeAsStringSync(saveTemp);
        if (arq == _archiveXML[_archiveXML.length - 1]) {
          saveTemp += '</data>';
          outFile.writeAsStringSync(saveTemp);
          break;
        }
      }
    } else {
      throw EmptyMemoryError();
    }
  }

  @override
  void clear() {
    _archiveXML = [];
  }

  @override
  bool get hasData => _archiveXML.isEmpty ? false : true;

  @override
  get data {
    String saveTemp = '<data>\n';
    if (hasData) {
      for (var arq in _archiveXML) {
        saveTemp += '  $arq\n';
        if (arq == _archiveXML[_archiveXML.length - 1]) {
          saveTemp += '</data>';
          break;
        }
      }
      return saveTemp;
    } else {
      throw EmptyMemoryError();
    }
  }

  @override
  set data(data) {
    //_archiveXML.add(data);
    final xml = XmlDocument.parse(data);
    final records = xml.findAllElements('record');

    for (var record in records) {
      _archiveXML.add(record.toString());
    }
  }

  @override
  List<String> get fields => lFields;

  bool checkType(String fileName) =>
      fileName.split('.')[1] == 'xml' ? true : throw InvalidTypeError();
}

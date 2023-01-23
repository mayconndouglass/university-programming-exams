import 'dart:io';
import 'data.dart';
import 'exceptions.dart';

enum DataType {
  csv,
  tsv,
}

abstract class DelimitedData extends Data {
  final DataType type;
  late List<String> archive;

  DelimitedData({required this.type, required this.archive});

  @override
  void load(String fileName) {
    File file = File('./arquivos/$fileName');
    if (checkType(fileName) && empty(file) && checkFieldName(file)) {
      archive = file.readAsLinesSync();
    }
  }

  @override
  void save(String fileName) {
    String saveTemp = '';
    final outFile = File('./arquivos/$fileName');

    if (hasData && checkType(fileName)) {
      for (var arq in archive) {
        saveTemp += arq + '\n';
        outFile.createSync();
        outFile.writeAsStringSync(saveTemp);
      }
    } else {
      throw EmptyMemoryError();
    }
  }

  @override
  void clear() {
    archive = [];
  }

  @override
  bool get hasData => archive.isEmpty ? false : true;

  @override
  String get data {
    String saveTemp = '';

    if (hasData) {
      for (var arq in archive) {
        saveTemp += '$arq\n';
      }
      return saveTemp;
    } else {
      throw EmptyMemoryError();
    }
  }

  @override
  set data(String data) => archive.add(data);

  @override
  List<String> get fields {
    if (archive.isEmpty) {
      return archive;
    } else if (type == DataType.tsv) {
      List<String> temp = archive[0].split('\t');
      //temp.removeWhere((item) => item == '');
      return temp;
    } else if (type == DataType.csv) {
      return archive.isEmpty ? archive : archive[0].split(',');
    } else {
      throw TypeError();
    }
  }

  bool checkType(String fileName) {
    if (type == DataType.tsv) {
      return fileName.split('.')[1] == 'tsv' ? true : throw InvalidTypeError();
    } else if (type == DataType.csv) {
      return fileName.split('.')[1] == 'csv' ? true : throw InvalidTypeError();
    } else {
      throw TypeError();
    }
  }

  bool checkFieldName(File file) {
    if (type == DataType.tsv) {
      return file.readAsLinesSync()[0] == 'id  name  email phone'
          ? true
          : throw InvalidFieldsError();
    } else if (type == DataType.csv) {
      return file.readAsLinesSync()[0] == 'id,name,email,phone'
          ? true
          : throw InvalidFieldsError();
    } else {
      throw TypeError();
    }
  }

  String get separator;
}

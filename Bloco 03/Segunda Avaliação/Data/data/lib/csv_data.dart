import 'delimited_data.dart';

class CSVData extends DelimitedData {
  static List<String> _archiveCSV = [];

  CSVData() : super(type: DataType.csv, archive: _archiveCSV);

  @override
  String get separator => ',';
}

import 'delimited_data.dart';

class TSVData extends DelimitedData {
  static List<String> _archiveTSV = [];

  TSVData() : super(type: DataType.tsv, archive: _archiveTSV);

  @override
  String get separator => '\t';
}

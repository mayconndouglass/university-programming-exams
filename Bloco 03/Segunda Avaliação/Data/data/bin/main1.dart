import '../lib/csv_data.dart';
import '../lib/data.dart';
import '../lib/tsv_data.dart';

void main() {
  var csv = CSVData();
  var tsv = TSVData();
  String test = '7214, Silva, douglas@email.com,12345678912';
  String test2 = '7214  Silva douglas@email.com 12345678912';

  tsv.load('sample.tsv');
  //tsv.clear();
  csv.load('sample.csv');
  print('teste save');

  csv.save('CSV.csv');

  tsv.save('TSV.tsv');

  tsv.data = test2;
  csv.data = test;
  print(tsv.data);
  print(csv.data);

  print(tsv.fields);
  print(csv.fields);
  print(tsv.separator);
  print(csv.separator);
  try {
    tsv.load('empty.tsv');
  } catch (e) {
    print(e);
  }
}

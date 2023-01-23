import 'package:data/csv_data.dart';
import 'package:data/tsv_data.dart';
import 'package:data/json_data.dart';
import 'package:data/xml_data.dart';

void main() {
  var csv = CSVData();
  String recordCSV = '7214,Silva,douglas@email.com,12345678912';
  //-------------TESTES CLASS CSV------------
  print('CSV');

  print('-' * 40);
  csv.load('sample.csv');
  csv.save('create.csv');

  print('Metodo get data:');
  print('-' * 40);
  print(csv.data);
  csv.data = recordCSV;

  print('Metodo get data dps de um set:');
  print('-' * 40);
  print(csv.data);

  print('Fields:\n${csv.fields}');
  print('');

  print('Hasdata:\n${csv.hasData}');
  print('');
  csv.clear();
  print('Hasdata depois do clear:\n${csv.hasData}');
  print('');
  print('Separator:\n${csv.separator}');
  print('');
  print('');

  //-------------TESTES CLASS TSV------------
  var tsv = TSVData();
  String recordTSV = '7214  Silva douglas@email.com 12345678912';

  print('TSV');
  print('-' * 40);
  tsv.load('sample.tsv');
  tsv.save('create.tsv');

  print('Metodo get data:');
  print('-' * 40);
  print(tsv.data);
  tsv.data = recordTSV;

  print('Metodo get data dps de um set:');
  print('-' * 40);
  print(tsv.data);

  print('Fields:\n${tsv.fields}');
  print('');

  print('hasdata:\n${tsv.hasData}');
  print('');
  tsv.clear();
  print('hasdata depois do clear:\n${tsv.hasData}');
  print('');
  print('Separator:\n${tsv.separator}');
  print('');
  print('');

  //-------------TESTES CLASS JSON------------
  var json = JSONData();
  String recordJSON =
      '{id: 7214, name: Silva, email: douglas@email.com, phone: 12345678912}';

  print('JSON');

  print('-' * 40);
  json.load('sample.json');
  json.save('create.json');

  print('Metodo get data:');
  print('-' * 40);
  print(json.data);
  json.data = recordTSV;

  print('');
  print('Metodo get data dps de um set:');
  print('-' * 40);
  print(json.data);

  print('');
  print('Fields:\n${json.fields}');
  print('');

  print('hasdata:\n${json.hasData}');
  print('');
  json.clear();
  print('hasdata depois do clear:\n${json.hasData}');
  print('');
  print('');

  //-------------TESTES CLASS XML------------
  var xml = XMLData();
  String recordXML =
      '<data><record id="7214" name="silva soares" email="soares@email.com" phone="12345678912"/></data>';

  print('XML');
  print('Fields:\n${xml.fields}');

  print('-' * 40);
  xml.load('sample.xml');
  xml.save('create.xml');

  print('Metodo get data:');
  print('-' * 40);
  print(xml.data);
  xml.data = recordXML;

  print('');
  print('Metodo get data dps de um set:');
  print('-' * 40);
  print(xml.data);

  print('');
  print('Fields:\n${xml.fields}');
  print('');

  print('hasdata:\n${xml.hasData}');
  print('');
  xml.clear();
  print('hasdata depois do clear:\n${xml.hasData}');
  print('');
  print('');

  //-------------TESTES EXCEÇÕES------------
  print('Exceções');
  print('');
  print('Lendo arquivo em branco: ');
  try {
    csv.load('empty.csv');
  } catch (e) {
    print(e);
  }

  print('');
  print('Arquivo sem nome de campos: ');
  try {
    csv.load('noFields.csv');
  } catch (e) {
    print(e);
  }

  print('');
  print('Save sem dados na memória: ');
  try {
    csv.save('TCreate.csv');
  } catch (e) {
    print(e);
  }

  print('');
  print('Arquivo com tipo errado: ');
  try {
    csv.load('sample.tsv');
  } catch (e) {
    print(e);
  }
  try {
    tsv.load('sample.json');
  } catch (e) {
    print(e);
  }
  try {
    json.load('sample.xml');
  } catch (e) {
    print(e);
  }
  try {
    xml.load('sample.json');
  } catch (e) {
    print(e);
  }
  //Testei apenas com um tipo de arquivo pq todos contém as mesmas exceções.
  print('');
  print('');
  print('Alunos:\nMaycon Douglas\nBreno Vasconcelos\nLuis Felipe Saraiva');
}

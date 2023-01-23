import 'dart:io';
import 'package:data/csv_data.dart';
import 'package:data/xml_data.dart';

void main() {
  var x = XMLData();
  var c = CSVData();
  x.load('sample.xml');
  x.save('XML.xml');
  print(x.hasData);
  print(x.fields);
  String xml =
      '<data><record id="7214" name="silva soares" email="soares@email.com" phone="85922468273"/></data>';

  x.data = xml;
  print(x.data);
  c.load('sample.csv');
  c.data;
}

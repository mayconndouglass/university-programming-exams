import '../lib/json_data.dart';

void main() {
  var j = JSONData();
  String ja =
      '{id: 7214, name: Silva, email: douglas@email.com, phone: 12345678912}';
  j.load('sample.json');
  j.data = ja;
  //print(j.fields);
  //j.save('JSON.json');
  //j.mostrando();
  //j.clear();
  print(j.data);
  //try {
  //j.save('pac.json');
  //} catch (e) {
  // print(e);
  //}
  //print(j.hasData);
  //print(j.data);
  //print(j.fields);
}

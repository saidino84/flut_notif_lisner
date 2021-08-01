import 'dart:convert';
import 'dart:io';

import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';

class HomeController extends GetxController {
  var _i = 0.obs;
  int get i => _i.value;
  increment() {
    _i++;
    print(' 1');
    get_dirs();
    print('2');
  }

  var dirs = <Directory>[].obs;
  Future<List<Directory>?>? externalStorageDirectories;
  // update();
  Future<List<Directory>?>? get get_externalStorageDirectories async {
    var dados = await getExternalStorageDirectories();
    print(dados);
    return dados;
  }

  Future<File?> get_dirs() async {
    File? db;
    var root = await getExternalStorageDirectories();
    var path = root![0].absolute;
    var d = Directory(root[0].path + '/dbs').create().then((value) {
      var db = File(value.path + '/dados.json');
      db.create().then((db_file) {
        print(db_file.exists());
        db = db_file;

        // db.writeAsStringSync("messages:{'hoje':['saide','mario'] }");
        print(db.absolute);
        // write_data(db);
      });
    });

    return db;
  }

  void write_data(File? json_db) {
    var data = json.decode(json_db!.path);
    print(data);
  }
}

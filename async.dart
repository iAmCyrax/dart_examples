import 'dart:io';

void main() {
  createDescriptions({'foo', 'bar'});
}

Future<void> createDescriptions(Iterable<String> objects) async {
  for (final String object in objects) {
    try {
      File file = File('$object.txt');
      if (await file.exists()) {
        DateTime modified = await file.lastModified();
        print('File for $object already exists. It was modified on $modified.');
        continue;
      }
      await file.create();
      await file.writeAsString('Start describing $object in this file');
    } on IOException catch (e) {
      print('Cannot create description for $object: $e');
    }
  }
}

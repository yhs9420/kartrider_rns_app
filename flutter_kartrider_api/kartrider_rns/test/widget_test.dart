// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
import 'package:xml/xml.dart';

void main() {
  final bookshelfXml = '''<?xml version="1.0"?>
    <bookshelf>
      <book>
        <title lang="english">Growing a Language</title>
        <price>29.99</price>
      </book>
      <book>
        <title lang="english">Learning XML</title>
        <price>39.95</price>
      </book>
      <price>132.00</price>
    </bookshelf>''';
  test('코로나 전체 통계', () {
    final document = XmlDocument.parse(bookshelfXml);
    final items = document.findAllElements('item');
    items.forEach((node) {
      node.findAllElements('accDefRate').map((e) => e.text).forEach(print);
    });
  });
}

class RiderInfoModel {
  String? accessId;
  String? name;

  RiderInfoModel({
    this.accessId,
    this.name,
  });
}

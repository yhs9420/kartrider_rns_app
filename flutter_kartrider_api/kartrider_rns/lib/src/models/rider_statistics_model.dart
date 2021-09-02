import 'package:kartrider_rns/src/utils/xml_utils.dart';
import 'package:xml/xml.dart';

class RiderStatisticsModel {
  String? accessId;
  String? name;

  RiderStatisticsModel({
    this.accessId,
    this.name,
  });

  factory RiderStatisticsModel.fromXml(XmlElement xml) {
    return RiderStatisticsModel(
      accessId: XmlUtils.searchResult(xml, 'accessId'),
      name: XmlUtils.searchResult(xml, 'name'),
    );
  }
}

import 'package:socialapp_loginflow/utils/constants.dart';

class TopicSelectionModel {
  TopicSelectionModel({this.iconPath, this.name, this.isChecked});

  String? iconPath;
  String? name;
  checkboxStatus? isChecked;

  factory TopicSelectionModel.fromJson(Map<String, dynamic>? json) => TopicSelectionModel(
        iconPath: json?["iconPath"],
        name: json?["name"],
        isChecked: checkboxStatus.unchecked,
      );

  Map<String, dynamic> toJson() => {"iconPath": iconPath, "name": name, "isChecked": isChecked};
}

class ChannelSelectionModel {
  ChannelSelectionModel({this.iconPath, this.name, this.sortDesc, this.isChecked});

  String? iconPath;
  String? name;
  String? sortDesc;
  checkboxStatus? isChecked;

  factory ChannelSelectionModel.fromJson(Map<String, dynamic>? json) => ChannelSelectionModel(
        iconPath: json?["iconPath"],
        name: json?["name"],
        sortDesc: json?["sortDesc"],
        isChecked: checkboxStatus.unchecked,
      );

  Map<String, dynamic> toJson() => {"iconPath": iconPath, "name": name, "sortDesc": sortDesc, "isChecked": isChecked};
}

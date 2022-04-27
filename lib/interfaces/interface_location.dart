import 'dart:convert';

import 'package:http/http.dart' as http;


Future<List> getLocations() async {
  final response =
      await http.get(Uri.parse("http://192.168.88.249:8081/api/location"));
  
  if (response.statusCode == 200){

  final jsonResponse  = jsonDecode(response.body);
  return jsonResponse['result'];
  }

  return [];


}




class Location {
  String title;
  String description;
  Division division;
  int number;
  String schedule;
  String urlImage;
  String urlLocation;
  Division user;

  Location(
      {
      this.title,
      this.description,
      this.division,
      this.number,
      this.schedule,
      this.urlImage,
      this.urlLocation,
      this.user});

  Location.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    description = json['description'];
    division = json['division'] != null
        ? new Division.fromJson(json['division'])
        : null;
    number = json['number'];
    schedule = json['schedule'];
    urlImage = json['urlImage'];
    urlLocation = json['urlLocation'];
    user = json['user'] != null ? new Division.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['description'] = this.description;
    if (this.division != null) {
      data['division'] = this.division.toJson();
    }
    data['number'] = this.number;
    data['schedule'] = this.schedule;
    data['urlImage'] = this.urlImage;
    data['urlLocation'] = this.urlLocation;
    if (this.user != null) {
      data['user'] = this.user.toJson();
    }
    return data;
  }
}

class Division {
  String name;

  Division({this.name});

  Division.fromJson(Map<String, dynamic> json) {
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    return data;
  }
}

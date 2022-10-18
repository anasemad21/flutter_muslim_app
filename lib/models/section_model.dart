class SectionModel {
  int? id;
  String? name;
  String? reference;
  String? content;
  SectionModel(this.id, this.name,this.reference,this.content);
  // var list = Iterable<int>.generate(10).toList();
  SectionModel.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = json["name"];
    reference=json["reference"];
    content=json["content"];


  }
}


class Note {
  String name = "";
  String city = "";

  Note(this.name, this.city);

  Note.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    city = json['city'];
  }
}
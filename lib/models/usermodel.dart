class UserModel {
  String name;
  String id;
  String profilepic;
  UserModel({this.id, this.name, this.profilepic});

  Map<String, dynamic> toMap() {
    return {"id": id, "name": name, "profilepic": profilepic};
  }

  factory UserModel.parseMap(Map<String, dynamic> data) {
    return UserModel(
        id: data["id"], name: data["name"], profilepic: data["profilepic"]);
  }
}

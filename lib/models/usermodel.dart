class UserModel {
  String name;
  String id;
  String profilepic;
  String token;
  String email;
  UserModel({this.id, this.name, this.profilepic,this.token,this.email});

  Map<String, dynamic> toMap() {
    return {"id": id, "name": name, "profilepic": profilepic,'email':token,"email":email};
  }

  factory UserModel.parseMap(Map<String, dynamic> data) {
    return UserModel(
        id: data["id"], name: data["name"], profilepic: data["profilepic"],token:data['token'],email: data['email']);
  }
}

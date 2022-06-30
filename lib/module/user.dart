import 'dummy_data.dart';

class User{
  String? name;
  String? image;

  User.fromJson(){
    name= data['name'] as String?;
    image=data['image'] as String?;
  }
}
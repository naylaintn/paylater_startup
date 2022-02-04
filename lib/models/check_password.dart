import 'user_data.dart';

class CheckPassword{

  String userId;
  String pass;
  String token;
  String roles;
  UserModel userData;
  String balance;
  String responseCode;
  String responseMessage;

  CheckPassword({
    this.userId="",
    this.pass="",
    this.token="",
    this.roles="",
    required this.userData,
    this.balance="",
    this.responseCode="",
    this.responseMessage="",
  });

  factory CheckPassword.fromJson(Map<String, dynamic> parsedJson){

    return CheckPassword(

      userId: parsedJson['userId'] as String,
      pass: parsedJson['pass'] as String,
      token: parsedJson['token'] as String,
      roles: parsedJson['roles'] as String,
      userData: UserModel(),
      balance: parsedJson['balance'] as String,
      responseCode: parsedJson['responseCode'] as String,
      responseMessage: parsedJson['responseMessage'] as String,

    );
  }

  Map<String, dynamic> toJson() => {
    'userId': userId,
    'pass': pass,
  };


}

class CheckUser{

  String userId;
  String pass;
  String token;
  String roles;
  String balance;
  UserModel userData;
  String responseCode;
  String responseMessage;

  CheckUser({
    this.userId="",
    this.pass="",
    this.token="",
    this.roles="",
    required this.userData ,
    this.balance="",
    this.responseCode="",
    this.responseMessage="",
  });

  factory CheckUser.fromJson(Map<String, dynamic> parsedJson){

    return CheckUser(

      userId: parsedJson['userId'] as String,
      pass: parsedJson['pass'] as String,
      token: parsedJson['token'] as String,
      roles: parsedJson['roles'] as String,
      userData: UserModel.fromJson(parsedJson['userData']),
      balance: parsedJson['balance'] as String,
      responseCode: parsedJson['responseCode'] as String,
      responseMessage: parsedJson['responseMessage'] as String,

    );
  }

  Map<String, dynamic> toJson() => {
    'userId': userId,
    'pass': pass,
    'userData': userData,
  };


}
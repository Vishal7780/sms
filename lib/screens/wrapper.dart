import 'package:flutter/material.dart';
import 'package:sms_spam_detector/models/user.dart';
import 'package:sms_spam_detector/screens/Home/Home.dart';
import 'package:sms_spam_detector/screens/authenticate/authenticate.dart';
import 'package:sms_spam_detector/screens/authenticate/register.dart';
import 'package:sms_spam_detector/screens/authenticate/sign_in.dart';
import 'package:provider/provider.dart';
class wrapper extends StatelessWidget {
  const wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user=Provider.of<UserClass?>(context);
    print(user);
    if(user==null){
      print("object");
      return Authenticate();
    }
    else{
      print("holla");
      return Home();
    }
  }
}
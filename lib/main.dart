import 'package:sms_spam_detector/screens/Home/Home.dart';
import 'package:sms_spam_detector/screens/authenticate/authenticate.dart';
import 'package:flutter/material.dart';
import 'package:sms_spam_detector/models/user.dart';
import 'package:sms_spam_detector/screens/wrapper.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:sms_spam_detector/services/auth.dart';
import 'package:provider/provider.dart';




void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(

      options: const FirebaseOptions(apiKey: "AIzaSyDwOMVFlpaCyE1EBWz-PBQ5tZjN_q3vuxw",
          appId: "",
          messagingSenderId: "",
          projectId: "smsspamdetection-c6035")
  );
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {

  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<UserClass?>.value(
      catchError: (_,__) {},
      initialData: null,

      value: AuthService().user,


      child: MaterialApp(
          theme: ThemeData(brightness: Brightness.light),
          darkTheme: ThemeData(brightness: Brightness.dark),
          themeMode: ThemeMode.system,
          debugShowCheckedModeBanner: false,


          home:wrapper()
      ),
    );
  }
}
import 'package:codeveloper_portfolio/Data/ContactsData.dart';
import 'package:codeveloper_portfolio/Data/ProjectsData.dart';
import 'package:codeveloper_portfolio/Data/membersData.dart';
import 'package:codeveloper_portfolio/View/Home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase.dart';
import 'firebase_options.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  WidgetsFlutterBinding.ensureInitialized();
  getMembersData();
  // put you member data function here
  MemberClass.setMembers(
    await getMembersData()
  );
  ProjectClass.setProjects(
    // put your projects data here
      await getProjectData()
  );
  ContactClass.setContacts({
    'whatsApp': 'https://www.whatsapp.com',
    'linkedin': 'https://www.linkedin.com',
    'facebook': 'https://www.facebook.com',
    'instagram': 'https://www.instagram.com',
    'tiktok': 'https://www.tiktok.com',
  });WidgetsFlutterBinding.ensureInitialized();

  runApp(const GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.height);
    print(MediaQuery.of(context).size.width);
    return Scaffold(
      body: Home(),
    );
  }
}

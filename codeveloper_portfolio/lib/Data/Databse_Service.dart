import 'dart:developer';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

String CurrentDateTime = DateFormat('MMMM dd, HH:mm:ss').format(DateTime.now());

final firestore = FirebaseFirestore.instance;

// class DatabaseService {

// }
// class MemberClass {
//   static List<List<String>> members = [];

//   static Future<void> fetchMembers() async {
//     final FirebaseFirestore firestore = FirebaseFirestore.instance;
//     final QuerySnapshot snapshot = await firestore.collection('members').get();

//     members = snapshot.docs.map((doc) {
//       final data = doc.data() as Map<String, dynamic>;
//       return [
//         data['image'] as String,
//         data['name'] as String,
//         data['role'] as String,
//       ];
//     }).toList();
//   }
// }

// class ProjectClass {
//   static List<List<dynamic>> projects = [];

//   static Future<void> fetchProjects() async {
//     final FirebaseFirestore firestore = FirebaseFirestore.instance;
//     final QuerySnapshot snapshot = await firestore.collection('projects').get();

//     projects = snapshot.docs.map((doc) {
//       final data = doc.data() as Map<String, dynamic>;
//       return [
//         data['image'] as String,
//         data['name'] as String,
//         data['description'] as String,
//         data['video'] as String,
//         (data['gallery'] as List).cast<String>(),
//         data['links'] as Map<String, dynamic>,
//       ];
//     }).toList();
//   }
// }

// class ContactClass {
//   static Map<String, String> contacts = {};

//   static Future<void> fetchContacts() async {
//     final FirebaseFirestore firestore = FirebaseFirestore.instance;
//     final DocumentSnapshot snapshot = await firestore.collection('contacts').doc('social_links').get();

//     if (snapshot.exists) {
//       contacts = Map<String, String>.from(snapshot.data() as Map<String, dynamic>);
//     }
//   }
// }


class DatabaseService {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  // Upload initial data
  Future<void> uploadInitialData() async {
    try {
      // Upload Members Data
      final membersCollection = firestore.collection('members');
      final List<Map<String, dynamic>> membersData = [
        {
          'image': 'https://...',
          'name': 'Mohammed Hosny',
          'role': 'Database'
        },
        // Add other members...
      ];
      
      for (var member in membersData) {
        await membersCollection.add(member);
      }

      // Upload Projects Data
      final projectsCollection = firestore.collection('projects');
      final List<Map<String, dynamic>> projectsData = [
        {
          'image': 'https://...',
          'name': 'project 1',
          'description': 'Facebook is...',
          'video': 'https://...',
          'gallery': [/* array of image URLs */],
          'links': {
            'app': 'https://www.facebook.com',
            'website': 'https://www.youtube.com',
            'github': 'https://www.github.com',
          }
        },
        // Add other projects...
      ];

      for (var project in projectsData) {
        await projectsCollection.add(project);
      }

      // Upload Contacts Data
      await firestore.collection('contacts').doc('social_links').set({
        'whatsApp': 'https://www.whatsapp.com',
        'linkedin': 'https://www.linkedin.com',
        'facebook': 'https://www.facebook.com',
        'instagram': 'https://www.instagram.com',
        'tiktok': 'https://www.tiktok.com',
      });
    } catch (e) {
      print('Error uploading data: $e');
    }
  }

  // Fetch data methods
  Future<List<List<String>>> fetchMembers() async {
    try {
      final snapshot = await firestore.collection('members').get();
      return snapshot.docs.map((doc) {
        final data = doc.data();
        return [
          data['image'] as String,
          data['name'] as String,
          data['role'] as String,
        ];
      }).toList();
    } catch (e) {
      print('Error fetching members: $e');
      return [];
    }
  }

  Future<List<List<dynamic>>> fetchProjects() async {
    try {
      final snapshot = await firestore.collection('projects').get();
      return snapshot.docs.map((doc) {
        final data = doc.data();
        return [
          data['image'],
          data['name'],
          data['description'],
          data['video'],
          data['gallery'],
          data['links'],
        ];
      }).toList();
    } catch (e) {
      print('Error fetching projects: $e');
      return [];
    }
  }

  Future<Map<String, String>> fetchContacts() async {
    try {
      final doc = await firestore.collection('contacts').doc('social_links').get();
      if (doc.exists) {
        return Map<String, String>.from(doc.data()!);
      }
      return {};
    } catch (e) {
      print('Error fetching contacts: $e');
      return {};
    }
  }
}
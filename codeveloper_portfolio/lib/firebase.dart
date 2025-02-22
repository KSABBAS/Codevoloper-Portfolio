
import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore db = FirebaseFirestore.instance;
// Create a new user with a first and last name
  void addMembersData()
{

final Members = <String, dynamic>{
  "Hosny":
  [
    'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
    'Mohammed Hosny',
    'Database'
  ],
  "Kareem saeed":
  [
    'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
    'Kareem Saeed',
    'Ui'
  ],
  "Ahmed youssef": [
    'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
    'Ahmed Yossef',
    'Ui'
  ],
  "Ali hassan": [
    'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
    'Ali Hasan',
    'Data Structure'
  ],
  "Kareem Ahmad": [
    'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
    'Kareem Ahmed',
    'Ui/Ux'
  ],
  "Ahd Elsaid": [
    'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
    'Ahd Alsaeed',
    'Ui'
  ],
  "Shahd fathy": [
    'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
    'Shahd Fathy',
    'Database'
  ],
  "Hajer mohammad": [
    'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
    'Hajer Mohammed',
    'Ui'
  ],
  "Sama Amr": [
    'https://i5.wلاى                                                    almartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
    'Sama Amr',
    'Ui'
  ]
};
// Add a new document with a generated ID
db.collection("members").add(Members).then((DocumentReference doc) =>
print('DocumentSnapshot added with ID: ${doc.id}'));
}

// add project 1 data
Future<void> addProject1Data()
async {
  final project1  = <String, dynamic>{
"description" :[
'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
'project 1',
'Facebook is a social media platform launched in 2004 by Mark Zuckerberg and his team. It allows users to connect with friends and family, share photos, videos, and updates, and participate in communities or groups of shared interest. Over the years, Facebook has expanded its features, including Messenger, Marketplace, and live streaming. It also owns other major platforms like Instagram and WhatsApp. It is one of the largest social networks globally, fostering personal and professional connections while being a hub for news, entertainment, and marketing.',
'https://media.istockphoto.com/id/1340061464/video/homegrown-organic-red-apples-in-fruit-orchard-during-sunset.mp4?s=mp4-640x640-is&k=20&c=0t86lF9q6OgLSj3KXH7G1ovnRxDLG2AJ3wM73vx_1NA=',
  ],
    "images": [
      'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
      'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
      'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
      'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
      'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
      'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
      'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
      'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
      'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
      'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
      'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
      'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
      'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
      'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
    ],
"Links" : {
"app":"https://www.facebook.com",
"website":"https://www.youtube.com",
"github":"https://www.github.com",
},
  };
  DocumentReference docRef = FirebaseFirestore.instance.collection("projects").doc("project1");
    try {
      // Use `set` to overwrite the document or `update` to modify specific fields
      await docRef.set(project1, SetOptions(merge: true));

    print('2Map added successfully to the specific document!');
  } catch (e) {
    print('Failed to add map: $e');
  }

}

// add project 2 data
Future<void> addProject2Data()
async {
  final project2  = <String, dynamic>{
    "description" : [
    'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
    'project 2',
'Facebook is a social media platform launched in 2004 by Mark Zuckerberg and his team. It allows users to connect with friends and family, share photos, videos, and updates, and participate in communities or groups of shared interest. Over the years, Facebook has expanded its features, including Messenger, Marketplace, and live streaming. It also owns other major platforms like Instagram and WhatsApp. It is one of the largest social networks globally, fostering personal and professional connections while being a hub for news, entertainment, and marketing.',
'https://media.istockphoto.com/id/1340061464/video/homegrown-organic-red-apples-in-fruit-orchard-during-sunset.mp4?s=mp4-640x640-is&k=20&c=0t86lF9q6OgLSj3KXH7G1ovnRxDLG2AJ3wM73vx_1NA=',
],
    "images": [
      'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
      'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
      'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
      'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
      'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
      'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
      'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
      'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
      'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
      'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
      'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
      'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
      'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
      'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
    ],
    "Links" : {
      "app":"https://www.facebook.com",
      "website":"https://www.youtube.com",
      "github":"https://www.github.com",
    },
  };
  DocumentReference docRef = FirebaseFirestore.instance.collection("projects").doc("project2");
  try {
    // Use `set` to overwrite the document or `update` to modify specific fields
    await docRef.set(project2, SetOptions(merge: true));

    print('2Map added successfully to the specific document!');
  } catch (e) {
    print('Failed to add map: $e');
  }
}


// add project 3 data

Future<void> addProject3Data()
async {
  final project3  = <String, dynamic>{
    "description" :[
    'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
    'project 3',
'Facebook is a social media platform launched in 2004 by Mark Zuckerberg and his team. It allows users to connect with friends and family, share photos, videos, and updates, and participate in communities or groups of shared interest. Over the years, Facebook has expanded its features, including Messenger, Marketplace, and live streaming. It also owns other major platforms like Instagram and WhatsApp. It is one of the largest social networks globally, fostering personal and professional connections while being a hub for news, entertainment, and marketing.',
'https://media.istockphoto.com/id/1340061464/video/homegrown-organic-red-apples-in-fruit-orchard-during-sunset.mp4?s=mp4-640x640-is&k=20&c=0t86lF9q6OgLSj3KXH7G1ovnRxDLG2AJ3wM73vx_1NA=',
],
    "images": [
      'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
      'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
      'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
      'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
      'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
      'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
      'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
      'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
      'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
      'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
      'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
      'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
      'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
      'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
    ],
    "Links" : {
      "app":"https://www.facebook.com",
      "website":"https://www.youtube.com",
      "github":"https://www.github.com",
    },
  };
  DocumentReference docRef = FirebaseFirestore.instance.collection("projects").doc("project3");
  try {
    // Use `set` to overwrite the document or `update` to modify specific fields
    await docRef.set(project3, SetOptions(merge: true));

    print('3Map added successfully to the specific document!');
  } catch (e) {
    print('Failed to add map: $e');
  }
}


//add project 4 data
Future<void> addProject4Data()
async {
  final project4  = <String, dynamic>{
    "description" :[
    'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
    'project 4',
'Facebook is a social media platform launched in 2004 by Mark Zuckerberg and his team. It allows users to connect with friends and family, share photos, videos, and updates, and participate in communities or groups of shared interest. Over the years, Facebook has expanded its features, including Messenger, Marketplace, and live streaming. It also owns other major platforms like Instagram and WhatsApp. It is one of the largest social networks globally, fostering personal and professional connections while being a hub for news, entertainment, and marketing.',
'https://media.istockphoto.com/id/1340061464/video/homegrown-organic-red-apples-in-fruit-orchard-during-sunset.mp4?s=mp4-640x640-is&k=20&c=0t86lF9q6OgLSj3KXH7G1ovnRxDLG2AJ3wM73vx_1NA=',
],
    "images": [
      'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
      'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
      'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
      'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
      'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
      'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
      'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
      'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
      'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
      'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
      'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
      'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
      'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
      'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
    ],
    "Links" : {
      "app":"https://www.facebook.com",
      "website":"https://www.youtube.com",
      "github":"https://www.github.com",
    },
  };
  DocumentReference docRef = FirebaseFirestore.instance.collection("projects").doc("project4");
  try {
    // Use `set` to overwrite the document or `update` to modify specific fields
    await docRef.set(project4, SetOptions(merge: true));

    print('4Map added successfully to the specific document!');
  } catch (e) {
    print('Failed to add map: $e');
  }
}

// add project 4 data
Future<void> addProject5Data()
async {
  final project5  = <String, dynamic>{
    "description" :[
    'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
    'project 5',
'Facebook is a social media platform launched in 2004 by Mark Zuckerberg and his team. It allows users to connect with friends and family, share photos, videos, and updates, and participate in communities or groups of shared interest. Over the years, Facebook has expanded its features, including Messenger, Marketplace, and live streaming. It also owns other major platforms like Instagram and WhatsApp. It is one of the largest social networks globally, fostering personal and professional connections while being a hub for news, entertainment, and marketing.',
'https://media.istockphoto.com/id/1340061464/video/homegrown-organic-red-apples-in-fruit-orchard-during-sunset.mp4?s=mp4-640x640-is&k=20&c=0t86lF9q6OgLSj3KXH7G1ovnRxDLG2AJ3wM73vx_1NA=',
],
    "images": [
      'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
      'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
      'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
      'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
      'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
      'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
      'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
      'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
      'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
      'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
      'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
      'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
      'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
      'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
    ],
    "Links" : {
      "app":"https://www.facebook.com",
      "website":"https://www.youtube.com",
      "github":"https://www.github.com",
    },
  };
  DocumentReference docRef = FirebaseFirestore.instance.collection("projects").doc("project5");
  try {
    // Use `set` to overwrite the document or `update` to modify specific fields
    await docRef.set(project5, SetOptions(merge: true));

    print('5Map added successfully to the specific document!');
  } catch (e) {
    print('Failed to add map: $e');
  }
}


// add project 6 data
Future<void> addProject6Data() async {
  final project6 = <String, dynamic>{
  "description" : [
    'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
    'project 6',
    'Facebook is a social media platform launched in 2004 by Mark Zuckerberg and his team. It allows users to connect with friends and family, share photos, videos, and updates, and participate in communities or groups of shared interest. Over the years, Facebook has expanded its features, including Messenger, Marketplace, and live streaming. It also owns other major platforms like Instagram and WhatsApp. It is one of the largest social networks globally, fostering personal and professional connections while being a hub for news, entertainment, and marketing.',
    'https://media.istockphoto.com/id/1340061464/video/homegrown-organic-red-apples-in-fruit-orchard-during-sunset.mp4?s=mp4-640x640-is&k=20&c=0t86lF9q6OgLSj3KXH7G1ovnRxDLG2AJ3wM73vx_1NA=',
  ],
  "images": [
  'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  ],
  "Links" : {
  "app":"https://www.facebook.com",
  "website":"https://www.youtube.com",
  "github":"https://www.github.com",
  },
  };
  DocumentReference docRef = FirebaseFirestore.instance.collection("projects").doc("project6");
  try {
    // Use `set` to overwrite the document or `update` to modify specific fields
    await docRef.set(project6, SetOptions(merge: true));

    print('6Map added successfully to the specific document!');
  } catch (e) {
    print('Failed to add map: $e');
  }
}

//add contact data to the firebase
void addContactsData(){
    final contact = <String, dynamic>{
      'whatsApp': 'https://www.whatsapp.com',
      'linkedin': 'https://www.linkedin.com',
      'facebook': 'https://www.facebook.com',
      'instagram': 'https://www.instagram.com',
      'tiktok': 'https://www.tiktok.com',
    };

    try{
      db.collection("Contacts").add(contact);
    }catch(e){
      print("there was something wrong");
    }
}








Future<List> getMembersData()
async {
    List members=[];
    late Map CommingData;
  await db.collection("members").get().then((event) {
    for (var doc in event.docs) {
      CommingData=doc.data();
      break;
    }
    for (int i =0;i<CommingData.length;i++){
      members.add(CommingData[CommingData.keys.elementAt(i)]);
    }
    // print(members);
  });
  return members;
}

Future<void> getMemperDataPrint() async {
  List members=[];
  late Map CommingData;
  await db.collection("members").get().then((event) {
    for (var doc in event.docs) {
      CommingData=doc.data();
      break;
    }
    for (int i =0;i<CommingData.length;i++){
      members.add(CommingData[CommingData.keys.elementAt(i)]);
    }
    print(members);
  });
}

Future<List> getProjectData() async {
  QuerySnapshot querySnapshot = await db.collection("projects").get();
  Map CommeingData = <String, dynamic>{};
  List projects = [];
  for(QueryDocumentSnapshot doc in querySnapshot.docs){
    Map data= doc.data() as Map<String, dynamic>;
    CommeingData.addAll(data);
    CommeingData["description"].add(CommeingData["images"]);
    CommeingData["description"].add(CommeingData["Links"]);
    projects.add(CommeingData["description"]);


  }
  return projects;
}

Future<Map> getContactsData() async {
     DocumentSnapshot doc = await db.collection("Contacts").doc("QeRd8VM4c2a1YGSz2YXt").get();
     Map data = doc.data() as Map;
     return data;
}
import 'package:codeveloper_portfolio/Data/ContactsData.dart';
import 'package:codeveloper_portfolio/Data/Databse_Service.dart';
import 'package:codeveloper_portfolio/Data/ProjectsData.dart';
import 'package:codeveloper_portfolio/Data/membersData.dart';
import 'package:codeveloper_portfolio/View/Home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // put you member data function here
  // MemberClass.setMembers([
  //   [
  //     'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //     'Mohammed Hosny',
  //     'Database'
  //   ],
  //   [
  //     'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //     'Kareem Saeed',
  //     'Ui'
  //   ],
  //   [
  //     'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //     'Ahmed Yossef',
  //     'Ui'
  //   ],
  //   [
  //     'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //     'Ali Hasan',
  //     'Data Structure'
  //   ],
  //   [
  //     'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //     'Kareem Ahmed',
  //     'Ui/Ux'
  //   ],
  //   [
  //     'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //     'Ahd Alsaeed',
  //     'Ui'
  //   ],
  //   [
  //     'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //     'Shahd Fathy',
  //     'Database'
  //   ],
  //   [
  //     'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //     'Hajer Mohammed',
  //     'Ui'
  //   ],
  //   [
  //     'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //     'Sama Amr',
  //     'Ui'
  //   ]
  // ]);
  // ProjectClass.setProjects([
  //   [
  //     'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //     'project 1',
  //     'Facebook is a social media platform launched in 2004 by Mark Zuckerberg and his team. It allows users to connect with friends and family, share photos, videos, and updates, and participate in communities or groups of shared interest. Over the years, Facebook has expanded its features, including Messenger, Marketplace, and live streaming. It also owns other major platforms like Instagram and WhatsApp. It is one of the largest social networks globally, fostering personal and professional connections while being a hub for news, entertainment, and marketing.',
  //     'https://media.istockphoto.com/id/1340061464/video/homegrown-organic-red-apples-in-fruit-orchard-during-sunset.mp4?s=mp4-640x640-is&k=20&c=0t86lF9q6OgLSj3KXH7G1ovnRxDLG2AJ3wM73vx_1NA=',
  //     [
  //       'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //       'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //       'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //       'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //       'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //       'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //       'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //       'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //       'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //       'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //       'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //       'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //       'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //       'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //     ],
  //     {
  //       "app":"https://www.facebook.com",
  //       "website":"https://www.youtube.com",
  //       "github":"https://www.github.com",
  //     }
  //   ],
  //   [
  //     'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //     'project 2',
  //     'Facebook is a social media platform launched in 2004 by Mark Zuckerberg and his team. It allows users to connect with friends and family, share photos, videos, and updates, and participate in communities or groups of shared interest. Over the years, Facebook has expanded its features, including Messenger, Marketplace, and live streaming. It also owns other major platforms like Instagram and WhatsApp. It is one of the largest social networks globally, fostering personal and professional connections while being a hub for news, entertainment, and marketing.',
  //     'https://media.istockphoto.com/id/1340061464/video/homegrown-organic-red-apples-in-fruit-orchard-during-sunset.mp4?s=mp4-640x640-is&k=20&c=0t86lF9q6OgLSj3KXH7G1ovnRxDLG2AJ3wM73vx_1NA=',
  //     [
  //       'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //       'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //       'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //       'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //       'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //       'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //       'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //       'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //       'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //       'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //       'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //       'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //       'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //       'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //     ],
  //     {
  //       "app":"https://www.facebook.com",
  //       "website":"https://www.youtube.com",
  //       "github":"https://www.github.com",
  //     }
  //   ],
  //   [
  //     'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //     'project 3',
  //     'Facebook is a social media platform launched in 2004 by Mark Zuckerberg and his team. It allows users to connect with friends and family, share photos, videos, and updates, and participate in communities or groups of shared interest. Over the years, Facebook has expanded its features, including Messenger, Marketplace, and live streaming. It also owns other major platforms like Instagram and WhatsApp. It is one of the largest social networks globally, fostering personal and professional connections while being a hub for news, entertainment, and marketing.',
  //     'https://media.istockphoto.com/id/1340061464/video/homegrown-organic-red-apples-in-fruit-orchard-during-sunset.mp4?s=mp4-640x640-is&k=20&c=0t86lF9q6OgLSj3KXH7G1ovnRxDLG2AJ3wM73vx_1NA=',
  //     [
  //       'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //       'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //       'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //       'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //       'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //       'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //       'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //       'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //       'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //       'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //       'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //       'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //       'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //       'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //     ],
  //     {
  //       "app":"https://www.facebook.com",
  //       "website":"https://www.youtube.com",
  //       "github":"https://www.github.com",
  //     }
  //   ],
  //   [
  //     'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //     'project 4',
  //     'Facebook is a social media platform launched in 2004 by Mark Zuckerberg and his team. It allows users to connect with friends and family, share photos, videos, and updates, and participate in communities or groups of shared interest. Over the years, Facebook has expanded its features, including Messenger, Marketplace, and live streaming. It also owns other major platforms like Instagram and WhatsApp. It is one of the largest social networks globally, fostering personal and professional connections while being a hub for news, entertainment, and marketing.',
  //     'https://media.istockphoto.com/id/1340061464/video/homegrown-organic-red-apples-in-fruit-orchard-during-sunset.mp4?s=mp4-640x640-is&k=20&c=0t86lF9q6OgLSj3KXH7G1ovnRxDLG2AJ3wM73vx_1NA=',
  //     [
  //       'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //       'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //       'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //       'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //       'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //       'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //       'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //       'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //       'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //       'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //       'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //       'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //       'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //       'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //     ],
  //     {
  //       // "app":"https://www.facebook.com",
  //       // "website":"https://www.youtube.com",
  //       "github":"https://www.github.com",
  //     }
  //   ],
  //   [
  //     'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //     'project 5',
  //     'Facebook is a social media platform launched in 2004 by Mark Zuckerberg and his team. It allows users to connect with friends and family, share photos, videos, and updates, and participate in communities or groups of shared interest. Over the years, Facebook has expanded its features, including Messenger, Marketplace, and live streaming. It also owns other major platforms like Instagram and WhatsApp. It is one of the largest social networks globally, fostering personal and professional connections while being a hub for news, entertainment, and marketing.',
  //     'https://media.istockphoto.com/id/1340061464/video/homegrown-organic-red-apples-in-fruit-orchard-during-sunset.mp4?s=mp4-640x640-is&k=20&c=0t86lF9q6OgLSj3KXH7G1ovnRxDLG2AJ3wM73vx_1NA=',
  //     [
  //       'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //       'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //       'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //       'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //       'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //       'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //       'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //       'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //       'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //       'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //       'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //       'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //       'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //       'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //     ],
  //     {
  //       "app":"https://www.facebook.com",
  //       "website":"https://www.youtube.com",
  //       "github":"https://www.github.com",
  //     }
  //   ],
  //   [
  //     'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //     'project 6',
  //     'Facebook is a social media platform launched in 2004 by Mark Zuckerberg and his team. It allows users to connect with friends and family, share photos, videos, and updates, and participate in communities or groups of shared interest. Over the years, Facebook has expanded its features, including Messenger, Marketplace, and live streaming. It also owns other major platforms like Instagram and WhatsApp. It is one of the largest social networks globally, fostering personal and professional connections while being a hub for news, entertainment, and marketing.',
  //     'https://media.istockphoto.com/id/1340061464/video/homegrown-organic-red-apples-in-fruit-orchard-during-sunset.mp4?s=mp4-640x640-is&k=20&c=0t86lF9q6OgLSj3KXH7G1ovnRxDLG2AJ3wM73vx_1NA=',
  //     [
  //       'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //       'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //       'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //       'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //       'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //       'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //       'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //       'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //       'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //       'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //       'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //       'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //       'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //       'https://i5.walmartimages.com/seo/Eversweet-Everbearing-Strawberry-25-Bare-Root-Plants-Super-Sweet_fc6dadf1-3f9d-45c0-bcde-e736b3cbc2fc_1.1600be416b58c7d60fad696446dec0c5.jpeg',
  //     ],
  //     {
  //       "app":"https://www.facebook.com",
  //       "website":"https://www.youtube.com",
  //       "github":"https://www.github.com",
  //     }
  //   ],
  // ]);
  // ContactClass.setContacts({
  //   'whatsApp': 'https://www.whatsapp.com',
  //   'linkedin': 'https://www.linkedin.com',
  //   'facebook': 'https://www.facebook.com',
  //   'instagram': 'https://www.instagram.com',
  //   'tiktok': 'https://www.tiktok.com',
  // });
  await Future.wait([
    MemberClass.fetchMembers(),
    ProjectClass.fetchProjects(),
    ContactClass.fetchContacts(),
  ]);
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
    return const Scaffold(
      body: Home(),
    );
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:tikotk_clone/Controllers/auth_controller.dart';
import 'package:tikotk_clone/Views/Screens/add_Video.dart';
import 'package:tikotk_clone/Views/Screens/profile.dart';
import 'package:tikotk_clone/Views/Screens/search.dart';
import 'package:tikotk_clone/Views/Screens/video.dart';



List pages = [
  VideoScreen(),
  SearchScreen(),
  const AddVideoScreen(),
  Text('Message Screen'),
  ProfileScreen(uid: authController.user.uid),
];
//COLORS

const backgroundColor = Colors.black12;
var buttonColor = Colors.red[400];
const borderColor = Colors.grey;


var firebaseAuth = FirebaseAuth.instance;
var firebaseStorage = FirebaseStorage.instance;
var firestore = FirebaseFirestore.instance;

var authController = AuthController.instance;
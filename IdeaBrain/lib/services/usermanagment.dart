import'package:cloud_firestore/cloud_firestore.dart';



   class UserMangement{
     storeNewUser(user){
       print('Kalana');
         Firestore.instance.collection('/users').add({
           'email':user.email,
           'uid':user.uid
         }).then((value){

         }).catchError((e){
           print(e);
         });
     }
   }
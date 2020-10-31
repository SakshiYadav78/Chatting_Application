import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:convo_app/widget/widget.dart';
import 'package:convo_app/helper/authenticate.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  String email="";
  TextEditingController emailEditingController = new TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFDE7),
      appBar:appBarMain(context) ,
      body: Container(
        padding: EdgeInsets.all(24),
        child: Column(

crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
          Text("Enter the email to reset the password.",style: TextStyle(color: Colors.black, fontSize: 16,) ),

    Form(
    key: formKey,
    child: Column(
    children: [
    TextFormField(
    controller: emailEditingController,
    style: simpleTextStyle(),
    validator: (val){

    return RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(val) ?
    null : "Enter correct email";
    },

    decoration: textFieldInputDecoration("email"),
    ),],),),
        SizedBox(height: 18),


GestureDetector(
onTap: () {
      if(formKey.currentState.validate()){
      FirebaseAuth.instance.sendPasswordResetEmail(email: emailEditingController.text).then((value){
      Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (context) => Authenticate()));
      } );
      }
},
child: Container(
padding: EdgeInsets.symmetric(vertical: 8),
decoration: BoxDecoration(
borderRadius: BorderRadius.circular(30),
boxShadow: [new BoxShadow(
color: Colors.black,
blurRadius: 5.0,
),],
gradient: LinearGradient(
colors: [
const Color(0xFFFFF9C4),
const Color(0xFFE1F5FE)
],
)),
width: MediaQuery.of(context).size.width,
child: Text(
"Sign In",
style: biggerTextStyle(),
textAlign: TextAlign.center,
),
),
),
  ],),),);}}

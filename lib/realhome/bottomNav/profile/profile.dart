import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:food_delivery/widgets/button.dart';


class Profile extends StatelessWidget {

  const Profile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double text = MediaQuery.of(context).textScaleFactor;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left:20.0,right: 20),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Profile",style: TextStyle(fontSize: text*30,fontWeight: FontWeight.normal),),
                  Icon(FontAwesome.shopping_cart,size: 40,)
                ],),
          Center(
            child: Container(
              height:100,
              width: 100,
              child:Image.asset("lib/images/mok.png"),
              decoration: BoxDecoration(
                color: Colors.orange[200],
                shape: BoxShape.circle,
              ),
            ),
          ),
              Row(
               mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(FontAwesome.pencil,color: Colors.deepOrange,),

                  Text("Edit Profile",style: TextStyle(fontSize: 15,color: Colors.deepOrange),),
                ],
              ),
              Text("Hi there Emilia",style: TextStyle(fontWeight: FontWeight.bold,fontSize: text*20),),
              GestureDetector(onTap:(){},child: Text("Sign Out")),
              Field(labelText: "Name",hintpext:"Emilia Calrke",obscured: false, keyboardType: TextInputType.name),
              Field(labelText: "Email",hintpext:"emiliaclarke@email.com",obscured: false, keyboardType: TextInputType.emailAddress),
              Field(labelText: "Mobile No",hintpext:"emiliaclarke@email.com",obscured: false, keyboardType: TextInputType.phone),
              Field(labelText: "Address",hintpext:"No 23, 6th Lane, Colombo 03",obscured: false,keyboardType:TextInputType.streetAddress),
              Field(labelText: "Password",hintpext:"**********",obscured: true),
              Field(labelText: "Confirm Password",hintpext:"**********",obscured: false,),
              Buttons(onPressed: (){},texp: "Save",width: width / 1.3,
                  height: height / 15,)
            ],
          ),
        ),
      ),
    );
  }
}



class Field extends StatelessWidget {
  final bool obscured;
  final String hintpext,labelText;
  final keyboardType;
  final icon;


  Field({this.obscured, this.hintpext, this.keyboardType, this.icon ,this.labelText});
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double text = MediaQuery.of(context).textScaleFactor;

    return Container(
      width: width / 1.3,
      height: height / 15,
      child: Material(
        elevation: 0,
        borderRadius: BorderRadius.all(Radius.circular(36)),
        color: Colors.black12,
        child: Padding(
          padding: const EdgeInsets.only(left: 50, top: 6, right: 30),
          child: TextField(
            decoration: InputDecoration(
labelText: labelText,
                floatingLabelBehavior:FloatingLabelBehavior.always,
                border: InputBorder.none, hintText: hintpext,
                hintStyle: TextStyle(
                    fontSize: text * 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
                prefixIcon: icon),
            style: TextStyle(fontSize: text * 13),
            keyboardType: keyboardType,
            textInputAction: TextInputAction.done,
            obscureText: obscured,
          ),
        ),
      ),
    );
  }
}

import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

class Profilepage extends StatefulWidget {
  const Profilepage({Key? key}) : super(key: key);

  @override
  ProfilePageState createState() => ProfilePageState();
}

class ProfilePageState extends State<Profilepage> {
  File? _image;
  late DocumentSnapshot userData;
     @override
void initState(){
  super.initState();
  getData();
}
  
      getData() async {
          
   DocumentSnapshot documentSnapshot = (await FirebaseFirestore.instance
        .collection("User")
        .doc("gKiIASRfKpJrq5fXNTUZ")
        .get()); 
     print(documentSnapshot.data());
    setState(() {
          userData = documentSnapshot;
    }); 
  }



  final dateController = TextEditingController();
  @override
  void dispose() {
    dateController.dispose();
    super.dispose();
  }

  String dropdownvalue = 'Female';
  var items = [
    'Male',
    'Female',
    'Prefer Not to Say',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(' Profile'),
        actions: <Widget>[
         
        ],
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/icons/pets5.jpg"),
                fit: BoxFit.cover)),
        child: SingleChildScrollView(
          child: Form(
            child: Center(
              child: Column(
                children: [
                  InkWell(
                  
                    child: CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 50,
                      backgroundImage: _image != null
                      ? FileImage(_image!)
    : NetworkImage(userData['url']),
                          
                    ),
                  ),
                  userData != null ? 
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 300.0,
                      child: TextFormField(
                        readOnly: true,
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                            initialValue: userData['name'],
                        decoration: InputDecoration(
                          
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                            
                            hintText: 'Full Name',
                            prefixIcon: Icon(Icons.people)),
                      ),
                    ),
                  ) : Text('Loading User Data...'),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 300.0,
                      child: TextFormField(
                        readOnly: true,
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                            initialValue:userData['email'],
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                            hintText: 'Email',
                            prefixIcon: Icon(Icons.email)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 300.0,
                      child: TextFormField(
                        readOnly: true,
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                            initialValue:userData['phone no'],
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                            hintText: 'Phone No',
                            prefixIcon: Icon(Icons.phone)),
                      ),
                    ),
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 300.0,
                      child: DropdownButtonFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.people_outlined),
                          border: OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(30.0),
                            ),
                          ),
                        ),
                        value: dropdownvalue,
                        icon: const Icon(Icons.keyboard_arrow_down),
                        items: items.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(
                              items,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          );
                        }).toList(),
                        onChanged: null,
                      ),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                          child: SizedBox(
                        width: 300.0,
                        child: TextFormField(
                          readOnly: true,
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                          controller: dateController,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.date_range),
                            hintText: 'Oct 23, 1986',
                             hintStyle: TextStyle(
                color: Colors.black, // Change hint text color
                fontWeight: FontWeight.bold, // Adjust font weight if needed
              ),
                            border: OutlineInputBorder(
                              borderRadius: const BorderRadius.all(
                                const Radius.circular(30.0),
                              ),
                            ),
                          ),
                          onTap: () async {
                     
                          },
                        ),
                      )))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  
}

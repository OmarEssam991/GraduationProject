import 'dart:io';
import 'package:path/path.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_core/firebase_core.dart';

class ImagePickerScreen extends StatefulWidget {
  final String? categoryid  ;
  const ImagePickerScreen ( {super.key, required this.categoryid});

  @override
  State<ImagePickerScreen> createState() => SecondPage();
}

// de Screen bta3t el 'add' enk t3ml upload l ad

class SecondPage extends State<ImagePickerScreen>  {
   GlobalKey<FormState> formState = GlobalKey<FormState>();
  String selectedAnimal = '';
  String selectedState = '';
  File? image;
  String? url;
  final ImagePicker picker = ImagePicker();
  final name = TextEditingController();
  final age = TextEditingController();
  final  allergies = TextEditingController();
  final  other = TextEditingController();
  final  owner  = TextEditingController();
  final  phone = TextEditingController();
  bool isLoading = false;

  //we can upload image from camera or from gallery based on parameter
  Future getImage(ImageSource media) async {
    var img = await picker.pickImage(source: media);
    if (img != null){

      image = File(img!.path);

      var imagename = basename(img!.path);

      var CatPics = FirebaseStorage.instance.ref(imagename);
      await CatPics.putFile(image!);
       url = await CatPics.getDownloadURL();

    }

    setState(() {});
  }
  
  

  addad() async {
     CollectionReference animals = FirebaseFirestore.instance
        .collection(selectedAnimal)
        .doc(widget.categoryid)
        .collection(selectedState);
  if (selectedAnimal.isNotEmpty && selectedState.isNotEmpty) {
    try {
      isLoading = true;
      setState(() {});
      DocumentReference response = await animals.add(
        {

        "name": name.text,
        "age": age.text,
        "allergies": allergies.text,
        "other": other.text,
        "owner": owner.text,
        "phone": phone.text,
         "url" : url,

        });
  

      print("Pet Added Successfully");
      
    } catch (e) {
      isLoading = false;
      setState(() {});
      print("Error $e ");
    }
  } else {
    print("Selected animal or state is null");
  }
}
 @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    name.dispose();
  }
  


  void myAlert() {
    showDialog(
        context: this.context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            title: Text('Please choose media to select'),
            content: Container(
              height: MediaQuery.of(context).size.height / 6,
              child: Column(
                children: [
                  ElevatedButton(
                    //if user click this button, user can upload image from gallery
                    onPressed: () {
                      Navigator.pop(context);
                      getImage(ImageSource.gallery);
                    },
                    style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(Colors.green)),
                    child: Row(
                      children: [
                        Icon(Icons.image),
                        Text('From Gallery'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                      getImage(ImageSource.camera);
                    },
                    style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(Colors.green)),
                    child: Row(
                      children: [
                        Icon(Icons.camera),
                        Text('From Camera'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Upload Your Pet'),
      ),
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/icons/pets5.jpg"),
                fit: BoxFit.cover)),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onTap: () {
                        myAlert();
                      },
                      child: url != null
                          ? Image.network(
                             
                              url!,
                              fit: BoxFit.cover,
                              width: MediaQuery.of(context).size.width,
                              height: 300,
                            )
                          : Container(
                              width: 150,
                              height: 150,
                              decoration: BoxDecoration(
                                color: Colors.lightGreen,
                              ),
                              child: Icon(
                                Icons.add_a_photo,
                                size: 24,
                              ),
                            ),
                    ),
                  ),
                ],
              ),

 Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Animals:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            RadioListTile(
              title: Text('Cats'),
              value: 'Cats',
              groupValue: selectedAnimal,
              onChanged: (value) {
                setState(() {
                  selectedAnimal = value!;
                });
              },
            ),
            RadioListTile(
              title: Text('Dogs'),
              value: 'Dogs',
              groupValue: selectedAnimal,
              onChanged: (value) {
                setState(() {
                  selectedAnimal = value!;
                });
              },
            ),
             RadioListTile(
              title: Text('Birds'),
              value: 'Birds',
              groupValue: selectedAnimal,
              onChanged: (value) {
                setState(() {
                  selectedAnimal = value!;
                });
              },
            ),
             RadioListTile(
              title: Text('Other'),
              value: 'Other',
              groupValue: selectedAnimal,
              onChanged: (value) {
                setState(() {
                  selectedAnimal = value!;
                });
              },
            ),
            
            SizedBox(height: 20),
            Text(
              'State:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            RadioListTile(
              title: const Text('Adoption'),
              value: 'Adoption',
              groupValue: selectedState,
              onChanged: (value) {
                setState(() {
                  selectedState = value!;
                });
              },
            ),
            RadioListTile(
              title: const Text('Mating'),
              value: 'Mating',
              groupValue: selectedState,
              onChanged: (value) {
                setState(() {
                  selectedState = value!;
                });
              },
            ),
            RadioListTile(
              title: const Text('Rescue'),
              value: 'Rescue',
              groupValue: selectedState,
              onChanged: (value) {
                setState(() {
                  selectedState = value!;
                });
              },
            ),
          ],
        ),
      ),
               Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 8),
                child: TextField(
                  controller: name ,
                  style: TextStyle(
                      color: Colors.green, fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                       filled: true,
      fillColor: Colors.white,
                      border: OutlineInputBorder(),
                      hintText: 'Pet Name ',
                      prefixIcon: Icon(Icons.pets)),
                ),
              ),


               Padding(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 8),
                child: TextField(
                  controller: age ,
                  style: TextStyle(
                      color: Colors.green, fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                     filled: true,
      fillColor: Colors.white,
                      border: OutlineInputBorder(),
                      hintText: 'Age ',
                      prefixIcon: Icon(Icons.numbers)),
                ),
              ),
               Padding(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 8),
                child: TextField(
                  controller:  allergies ,
                  style: TextStyle(
                      color: Colors.green, fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                     filled: true,
      fillColor: Colors.white,
                      border: OutlineInputBorder(),
                      hintText: 'Special Allergies/Meds ',
                      prefixIcon: Icon(Icons.sick)),
                ),
              ),
               Padding(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 8),
                child: TextField(
                  controller:  other,
                  style: TextStyle(
                      color: Colors.green, fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                     filled: true,
      fillColor: Colors.white,
                      border: OutlineInputBorder(),
                      hintText: 'Other ',
                      prefixIcon: Icon(Icons.more_horiz)),
                ),
              ),
               Padding(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 8),
                child: TextField(
                  controller: owner ,
                  style: TextStyle(
                      color: Colors.green, fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                     filled: true,
      fillColor: Colors.white,
                      border: OutlineInputBorder(),
                      hintText: 'Owners Name ',
                      prefixIcon: Icon(Icons.people)),
                ),
              ),
               Padding(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 8),
                child: TextField(
                  controller: phone ,
                  style: TextStyle(
                      color: Colors.green, fontWeight: FontWeight.bold),
                  decoration: InputDecoration(
                     filled: true,
                     fillColor: Colors.white,
                     
                      border: OutlineInputBorder(borderSide: BorderSide(color: Colors.green),),
                      hintText: 'Phone number ',
                      prefixIcon: Icon(Icons.phone)),
                ),
              ),
              Center(
                child: SizedBox(
                  width: 160.0,
                  height: 40.0,
                  child: ElevatedButton(
                    child: Text(
                      'Submit',
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                    onPressed: () {
                     addad();
                     Navigator.pop(context);
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
